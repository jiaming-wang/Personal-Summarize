# -*- coding: utf-8 -*-
import numpy as np
import re
import sys
import scipy.misc
import subprocess
import os.path
import cv2
from PIL import Image  
from vifp import *
import matplotlib.pyplot as plt

def average(seq): 
 return float(sum(seq)) / len(seq)

def showarray(seq): 
 im = seq.astype(np.uint8)
 im = Image.fromarray(im)
 plt.imshow(im)
 plt.show()
 im.save("1.bmp","bmp")
 
vif = []
#img = cv2.imread(r"C:\Users\wang\Desktop\1\1.png")

for i in range(1,2):
    sth = r'C:\Users\wang\Desktop\附加实验\20noise\vdsr-c/'+str(i)+'.bmp' #SR
    sth1 = r'F:\研究生\数据集\fei原始\test/'+str(i)+'.bmp' #HR
    img=Image.open(sth)
    if(img.mode=="RGB"):
        img=img.convert("YCbCr")
        img_arr=np.array(img)[:,:,0]
        img_arr=img_arr.astype(np.float32)
    else:
        img_arr=np.array(img).astype(np.float32)
#    showarray(img_arr)
    img1=Image.open(sth1)
    img1=img1.convert("YCbCr")
    img_arr1=np.array(img1)[:,:,0]
    img_arr1=img_arr1.astype(np.float32)
#    showarray(img_arr1)
#    img=np.array(img)
#    img1=np.array(img1)
    vif.append(vifp_mscale(img_arr1,img_arr))

print(average(vif))
