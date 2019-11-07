#! /usr/bin/python3

import subprocess as subp
import sys
import os
import datetime

'''
Input: filename, [img folder]

line on file: URL, output name

For line in file:
  Detect input type
  if type=0:
    Download1 source
  else if type=2:
    Download1 source
  Convert source
  copy output
  '''
def resize(folder):
    folder=os.path.normpath(folder)
    cmd="mogrify -resize 1356x1080 "
    cmd+=folder+"/*.jpg"
    print(cmd)
    subp.check_output(cmd,shell=True)
    cmd="mogrify -gravity center -background white -extent 1356x1080 "
    cmd+=folder+'/*.jpg'
    print(cmd)
    subp.check_output(cmd,shell=True)

def getfolder(url,folder):
    cmd= "wget --no-verbose -nd -r -l 2 -P "+folder
    cmd+= " -A jpg -e robots=off "+url
    subp.check_output(cmd,shell=True)

def getfile(url,folder):
    subp.check_output('wget -P '+folder+' '+url, shell=True)

def convert_folder(folder, ofile):
    resize(folder)
    count=subp.check_output('ls '+folder+'/*.jpg | wc -l',shell=True)
    print('count:',count)
    fr=float(count)/60.0
    cmd= "ffmpeg -y -framerate "+str(fr)
    cmd+=" -pattern_type glob -i '"+folder
    cmd+="/*.jpg' -r 25 -vcodec libx264 -pix_fmt yuv420p "
    cmd+='-vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" '
    cmd+= folder+'/'+ofile
    print('convert folder:',cmd)
    subp.check_output(cmd,shell=True)

def convert_file(folder,filename,ofile):
    resize(folder)
    filename=folder+'/'+filename
    cmd="ffmpeg -y -loop 1 -i "+filename
    cmd+=' -vcodec libx264 -pix_fmt yuv420p -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" -t 60 '
    cmd+= folder+'/'+ofile
    print('convert:',cmd)
    subp.check_output(cmd,shell=True)

def copy_ssh(filename):
    subp.call('/home/miguel/ioa_forecast2video/copy_anima.sh '+filename, shell=True)

def clr_imgfolder(folder):
    folder=os.path.normpath(folder)
    print('dir:', folder)
    subp.call('rm '+folder+'/*.jpg',shell=True)

filename=sys.argv[1]
try:
    img_folder=sys.argv[2]
except:
    img_folder='../img'

if not os.path.isdir(img_folder):
    subp.check_output(['mkdir',img_folder])
with open(filename,'r') as sfile:
    for line in sfile:
        try:
            [url,ofilename]=line.split('#')[0].split()
        except:
            continue
        print('cleaning',img_folder)
        clr_imgfolder(img_folder)
        try:
            if url[-1]=='/':
                getfolder(url,img_folder)
                convert_folder(img_folder,ofilename)
            else:
#insert date
                today=datetime.datetime.now().strftime("%Y_%m_%d_00")
                path,nfile=url.rsplit('/',1)
                newurl=path+'/'+today+'/'+nfile
                getfile(newurl,img_folder)
                convert_file(img_folder, url.split('/')[-1],ofilename)
            copy_ssh(img_folder+'/'+ofilename)
        except:
            print('error',sys.exc_info())
            continue
