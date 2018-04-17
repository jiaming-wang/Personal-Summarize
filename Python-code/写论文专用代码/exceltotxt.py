# -*- coding:utf-8 -*- 
'''
 * @Author: wjm 
 * @Date: 2018-04-03 23:36:28 
 * @Last Modified by:   wjm 
 * @Last Modified time: 2018-04-03 23:36:28 
 * @Desc: excel数据转换为latex代码
'''

import xlrd
import numpy as np
wb = xlrd.open_workbook("C:\\Users\\wang\\Desktop\\2.xlsx")
www=str(1)+"  "
sh = wb.sheet_by_name('8zky')  
h=47#起始高-1
w=1#起始宽-1
num=1
img_n=40#测试样本数量
conpare_n=8#算法数量
for h_1 in range(h,img_n+h):
    num=num+1
    arr = []
    for w_1 in range(w,conpare_n+w):
        cellName = sh.cell(h_1,w_1).value
        n='%.4f' % cellName
        arr.append(n)
        
    print (arr)
    positon = np.argmax(arr)
 
    for i in range(0,conpare_n):
        if(i==positon):
           www=www+"&"+"\\textbf{"+arr[i]+"} "
        else: 
           www=www+"&"+arr[i]+" "
           
    if(num==41):
        www=www+" \\\\ \hline"+"\n"
    else:
        www=www+" \\\\ \hline"+"\n"+str(num)+"  " 
    
if www:
   with open('C:/Users/wang/Desktop/2.txt', "w") as f:
       f.write(www + "\n")   