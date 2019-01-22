#
# coding: utf-8

#added parameter input
from selenium import webdriver
#from selenium.webdriver.common.desired_capabilities import DesiredCapabilities
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support.ui import Select
import time 
import os
import sys
import datetime

usage='''
owgis_rec2 url menu1 menu2 ofile
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
'''

#getting parameters
if len(sys.argv)!=5:
    print(usage)
    exit(0)
url=sys.argv[1]
menu1=sys.argv[2]
menu2=sys.argv[3]
ofile=sys.argv[4]
#firefox_capabilities = DesiredCapabilities.FIREFOX
#firefox_capabilities['marionette'] = True
#firefox_capabilities['binary'] = '/usr/bin/firefox'
print('Open browser')

browser = webdriver.Firefox()
print('move to second screen')
browser.set_window_position(1920,0)
print('fullscreen ON')
browser.fullscreen_window()
print('open page')
browser.get(url)
time.sleep(6)
print('zoom')
#browser.execute_script("animatePositionMap(0, ol3view.getCenter());")
browser.execute_script("animatePositionMap(0.1, [-100,0]);")
time.sleep(1)

#option menu
print('select')
menu_sel1=Select(browser.find_element_by_id('dropDownLevels1'))
menu_sel1.select_by_visible_text(menu1)
time.sleep(3)
menu_sel2=Select(browser.find_element_by_id('dropDownLevels2'))
menu_sel2.select_by_visible_text(menu2)
time.sleep(1)
print('select low')
a_res = browser.find_elements_by_xpath("//input[@name='video_res' and @value='low']")
a_res[0].click()
time.sleep(3)
#select date
print('select days')
now=datetime.datetime.now()
print('date:',now)
now=now.strftime("%d")
now=str(int(now))
print(now)
init_date=browser.find_element_by_id('cal-start')
init_date=init_date.find_element_by_link_text(now)
#end_date=browser.find_element_by_id('cal-end')
#end_date=end_date.find_element_by_link_text('19')
init_date.click()
time.sleep(3)
#end_date.click()

print('minimize menus')
browser.execute_script("owgis.layouts.draggable.minimizeWindow('optionalsMinimize', 'optionalMenuParent')")
browser.execute_script("owgis.layouts.draggable.minimizeWindow('mainMenuMinimize', 'mainMenuParent')")

canvas=browser.find_element_by_class_name("ol-unselectable")
print(canvas.get_attribute("style"))
#browser.execute_script('arguments[0].style="position: relative; overflow: hidden; width: 50%; height:100%; touch-action: none;";',canvas)
#browser.execute_script('arguments[0].height="2500";',canvas)
#print(canvas.get_attribute("style"))
#print('height:',canvas.get_attribute("height"))
print('resolution:',browser.execute_script("return ol3view.getResolution;"))
print('scale:',browser.execute_script("return ol3view.getScale;"))
print('size:',browser.execute_script("return ol3view.getSize;"))
pos=browser.execute_script("return ol3view.getCenter;")
print('pos:',pos)
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
for i in range(300):
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
os.system('ffmpeg  -y -video_size 2560x1440 -framerate 30 -f x11grab -i :0.0+1920,0 -c:v libx264 -pix_fmt yuv420p -crf 0 -preset ultrafast '+tempfile+' &')
time.sleep(60)
os.system('pkill ffmpeg')
print('Stop animation')
print('*'*50)
time.sleep(1)
stop = browser.find_element_by_class_name('warning')
stop.click()
browser.quit()
print('encoding...')
os.system('ffmpeg -y -i '+tempfile+' -c:v libx264 -pix_fmt yuv420p -vf scale=1920:1080 '+ofile)
print('Bye')

