#
# coding: utf-8

#added parameter input
from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support.ui import Select
import time 
import os
import sys
import datetime
from pyvirtualdisplay import Display
#from selenium.webdriver.firefox.options import Options

usage='''
owgis_rec2 url menu1 menu2 ofile pos
url - URL page
examples:
http://pronosticos.unam.mx:8080/meteorologico/
http://pronosticos.unam.mx:8080/global/
http://pronosticos.unam.mx:8080/oleaje/
menu1 - option for dropDownLevels1
examples:
    For meteorologico:
        República Mexicana
        Centro de México
    For global:
        HYCOM
        GFS
menu2 - option for dropDownLevels2
examples:
    Wind
    Temperature
    Humidity
ofile - output file.
examples:
    video.mp4
pos. map zoom and position, None for default
example:
    "3,[-90,22]"
'''

print(sys.argv)
video_tsize=60
#video_tsize=6
#getting parameters
if len(sys.argv)!=6:
    print(usage)
    exit(0)
url=sys.argv[1]
menu1=sys.argv[2]
menu2=sys.argv[3]
ofile=sys.argv[4]
pos=sys.argv[5]

display=Display(visible=0,size=(2560,1440))
display.start()
print('start display:', display.backend,display.screen,os.environ['DISPLAY'])
print('Open browser')
#options = webdriver.firefox.options.Options()
#options.add_argument("--kiosk")

options = webdriver.chrome.options.Options()
#options.add_argument("--kiosk");
options.add_argument("--disable-infobars")
options.add_argument('--headless' )
options.add_argument('--no-sandbox' )
options.add_argument('--disable-dev-shm-usage')
capabilities ={'chromeOptions':{ 'useAutomationExtension':False}}
browser = webdriver.Firefox()
#browser = webdriver.Opera()
#browser = webdriver.Chrome(chrome_options=options, desired_capabilities=capabilities)
#print('move to second screen')
#browser.set_window_position(0,0)
browser.set_window_size(2560,1440)
print('fullscreen ON')
#browser.fullscreen_window()
print('open page',url)
browser.get(url)
time.sleep(5)
#browser.execute_script("animatePositionMap(0, [-100,0]);")
#time.sleep(1)
#option menu
print('select')
menu_sel1=Select(browser.find_element_by_id('dropDownLevels1'))
menu_sel1.select_by_visible_text(menu1)
time.sleep(3)
menu_sel2=Select(browser.find_element_by_id('dropDownLevels2'))
menu_sel2.select_by_visible_text(menu2)
time.sleep(3)
#select date
#print('select days')
#init_date=browser.find_element_by_id('cal-start')
#init_date=init_date.find_element_by_link_text('16')
#end_date=browser.find_element_by_id('cal-end')
#end_date=end_date.find_element_by_link_text('19')
#init_date.click()
#time.sleep(1)
#end_date.click()

if pos!='None':
    print('zoom')
    browser.execute_script("animatePositionMap("+pos+', 0, "EPSG:4326");')
    time.sleep(2)

print('minimize menus')
browser.execute_script("owgis.layouts.draggable.minimizeWindow('optionalsMinimize', 'optionalMenuParent')")
browser.execute_script("owgis.layouts.draggable.minimizeWindow('mainMenuMinimize', 'mainMenuParent')")
time.sleep(1)
print('select low')
a_res = browser.find_elements_by_xpath("//input[@name='video_res' and @value='low']")
a_res[0].click()
time.sleep(3)


browser.execute_script( "owgis.ncwms.animation.dispAnimation();")
print('Running animation')
print('*'*50)
#anima = browser.find_element_by_id('p-animation')
#anima.click()
browser.execute_script( "owgis.ncwms.animation.dispAnimation();")

load=browser.find_element_by_id('loadperc')
def get_percent(perc_str):
    for perc in perc_str.split():
        try:
            val=int(perc)
            return val
        except:
            pass
    return 100

        
time.sleep(5)
print('load:',get_percent(load.text))
for i in range(90):
    time.sleep(2)
    pc_val=get_percent(load.text)
    print('Iter:',i,end=' ')
    print('load:',pc_val, end='\r')
    if pc_val==100:
        break
print('Rewind')
browser.execute_script( "updateAnimationStatus('paused');")
browser.execute_script( "animFirstFrame();")
browser.execute_script("updateAnimationStatus('playing');")
print('recording...',end=' ')
tempfile=ofile.rsplit('/',1)[0]+'/tempfile.mp4'
print(tempfile)
os.system('ffmpeg  -y -video_size 2560x1440 -framerate 30 -f x11grab -i '+\
        os.environ['DISPLAY']+'.0+0,0 -c:v libx264 -pix_fmt yuv420p -crf 0 -preset ultrafast '+\
        tempfile+' &')
#time.sleep(60)
time.sleep(video_tsize)
os.system('pkill ffmpeg')
print('Stop animation')
print('*'*50)
time.sleep(1)
stop = browser.find_element_by_class_name('warning')
stop.click()
browser.quit()
print('encoding...')
os.system('ffmpeg -y -i '+tempfile+' -c:v libx264 -pix_fmt yuv420p -vf scale=1920:1080 '+ofile)
display.stop()
print('Bye')

