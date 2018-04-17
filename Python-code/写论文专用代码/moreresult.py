# -*- coding:utf-8 -*-
'''
 * @Author: wjm 
 * @Date: 2018-04-03 23:37:01 
 * @Last Modified by:   wjm 
 * @Last Modified time: 2018-04-03 23:37:01 
 * @Desc: 附加材料图像处理
'''

from PIL import Image
import numpy as np
from p import *
import os
global p
p = '4web'


def b():
    var = '.png'
    for m in range (1,41):
        im1 = Image.open("F:/研究生/ME/RRDN/sf/"+p1+"/results4/bic/"+str(m)+"_bic.tif")
        im1.save("F:/研究生/moreresult/supplement/img/"+p+"b"+str(m)+var)

def lsr():
    var = '.png'
    for m in range (1,41):
        im1 = Image.open("F:/研究生/ME/RRDN/sf/"+p1+"/results4/lsr/"+str(m)+"_lsr.tif")
        im1.save("F:/研究生/moreresult/supplement/img/"+p+"lsr"+str(m)+var)

def lle():
    var = '.png'
    for m in range (1,41):
        im1 = Image.open("F:/研究生/ME/RRDN/sf/"+p1+"/results4/lle/"+str(m)+"_lle.tif")
        im1.save("F:/研究生/moreresult/supplement/img/"+p+"lle"+str(m)+var)

def lcr():
    var = '.png'
    for m in range (1,41):
        im1 = Image.open("F:/研究生/ME/RRDN/sf/"+p1+"/results4/lcr/"+str(m)+"_lcr.tif")
        im1.save("F:/研究生/moreresult/supplement/img/"+p+"lcr"+str(m)+var)

def line():
    var = '.png'
    for m in range (1,41):
        im1 = Image.open("F:/研究生/ME/RRDN/sf/"+p1+"/results4/line/"+str(m)+"_line.tif")
        im1.save("F:/研究生/moreresult/supplement/img/"+p+"line"+str(m)+var)

#用于图片去边
def srcnn_shave():
    var = '.png'
    for root,dirs,files in os.walk('F:/研究生/ME/RRDN/rrdn/4beiweb/SRCNN/srcnnweb4'):
        for filespath in files:
            n=os.path.join(root,filespath)
            name=os.path.split(n)[1]
            name0=name.split('_')[0]
            im=Image.open(n)
            im_array=np.array(im)
            if (im_array.shape!=(128,128)):
                x = 8 #(144-128) /2
                y = 8
                w = 128#new width
                h = 128#new height
                region = im.crop((x, y, x+w, y+h))
                im_array=np.array(region)
                #im.close()
                #os.remove(n)
                region.save("F:/研究生/moreresult/supplement/img/"+p+"srcnn"+name0+var)
            else:
                im.save("F:/研究生/moreresult/supplement/img/"+p+"srcnn"+name0+var)
            #im.save("F:/研究生/moreresult/supplement/img/"+p+"srcnn"+name0+var)

            #用于图片去边
def vdsr_shave():
    var = '.png'
    for root,dirs,files in os.walk('F:/研究生/ME/RRDN/rrdn/4beiweb/VDSR/1-v'):
        for filespath in files:
            n=os.path.join(root,filespath)
            name=os.path.split(n)[1]
            name0=name.split('.')[0]
            #print(name0)
            im=Image.open(n)
            im_array=np.array(im)
            if (im_array.shape!=(128,128)):
                x = 8 #(144-128) /2
                y = 8
                w = 128#new width
                h = 128#new height
                region = im.crop((x, y, x+w, y+h))
                im_array=np.array(region)
                #im.close()
                #os.remove(n)
                region.save("F:/研究生/moreresult/supplement/img/"+p+"vdsr"+name0+var)
            else:
                im.save("F:/研究生/moreresult/supplement/img/"+p+"vdsr"+name0+var)

def rrdn_shave():
    var = '.png'
    for root,dirs,files in os.walk('F:/研究生/ME/RRDN/rrdn/4beiweb/RRDN/2-v'):
        for filespath in files:
            n=os.path.join(root,filespath)
            name=os.path.split(n)[1]
            name0=name.split('.')[0]
            im=Image.open(n)
            im_array=np.array(im)
            if (im_array.shape!=(128,128)):
                x = 8 #(144-128) /2
                y = 8
                w = 128#new width
                h = 128#new height
                region = im.crop((x, y, x+w, y+h))
                im_array=np.array(region)
                #im.close()
                #os.remove(n)
                region.save("F:/研究生/moreresult/supplement/img/"+p+"rrdn"+name0+var)
            else:
                im.save("F:/研究生/moreresult/supplement/img/"+p+"rrdn"+name0+var)

def test_shave():
    var = '.png'
    for root,dirs,files in os.walk('F:/研究生/ME/RRDN/rrdn/webfaceset/test'):
        for filespath in files:
            n=os.path.join(root,filespath)
            name=os.path.split(n)[1]
            name0=name.split('.')[0]
            #print(name0)
            im=Image.open(n)
            im_array=np.array(im)
            if (im_array.shape!=(128,128)):
                x = 8 #(144-128) /2
                y = 8
                w = 128#new width
                h = 128#new height
                region = im.crop((x, y, x+w, y+h))
                im_array=np.array(region)
                #im.close()
                #os.remove(n)
                region.save("F:/研究生/moreresult/supplement/img/"+p+"test"+name0+var)
            else:
                im.save("F:/研究生/moreresult/supplement/img/"+p+"test"+name0+var)
            #im.save("F:/研究生/moreresult/supplement/img/"+p+"test"+name0+var)

vdsr_shave()