#!/usr/bin/python3
import datetime
from os.path import normpath
import sys


'''
create special path
'''

def insert_date(root,post):
    '''
    root- base path
    '''
    date=datetime.datetime.now()
    date=date.strftime("%Y%m%d")
    path=root+date+post 
    return path

try:
    filename=sys.argv[1]
except:
    print('')
    exit(0)
with open(filename) as ifile:
    for line in ifile:
        try:
            [root,post,outfile]=line.split('#')[0].split()
        except:
            print('#',line.split('#')[1][:-1])
            continue
        path=insert_date(root,post)
        print(path+' '+outfile)
