#!/usr/bin/env python
# -*- coding: utf-8 -*-
'''
/*
 * @Author: wjm 
 * @Date: 2019-02-18 16:53:51 
 * @Last Modified by: wjm
 * @Last Modified time: 2019-02-18 17:10:36
 * @Des: Auto Check In for sucloud
*/
'''
import time
from selenium import webdriver
 
# 模拟浏览器打开网站
browser = webdriver.Chrome(executable_path='E:\chrome\chromedriver')
browser.get('https://www.sucloud.pro/auth/login')
# 将窗口最大化
browser.maximize_window()

email = ['****','****','****']
for i in range(0,len(email)):
    browser.find_element_by_xpath(
        "//*[@id='email']").send_keys(email[i])
    browser.find_element_by_xpath(
        "//*[@id='passwd']").send_keys("****")
    # 在输入用户名和密码之后,点击登陆按钮
    browser.find_element_by_xpath("//*[@id='login']").click()
    # 延时，以便网页加载所有元素，避免之后找不到对应的元素
    time.sleep(1)
    msg = browser.find_element_by_xpath("//*[@id='msg']")
    msg_text = msg.text
    try:
        if msg_text == '邮箱或者密码错误.':
            print ('邮箱或者密码错误!')
        else: 
            print('账号%s登陆成功!' %email[i])
            time.sleep(1.5)
            browser.switch_to.window(browser.window_handles[-1])
            time.sleep(1.5)
            #定位到元素所在位置
            browser.execute_script("window.scrollBy(0,800)","")
            remain = browser.find_element_by_xpath("//*[@id='remain']")
            print("剩余流量:%s！" % remain.text)
            try:
                #button在div中，无法直接执行click
                btn_div = browser.find_element_by_css_selector("[class='btn btn-brand btn-flat']")
                browser.execute_script("arguments[0].click();", btn_div)
                #刷新页面查询流量
                browser.refresh()
                time.sleep(1)
                remain = browser.find_element_by_xpath("//*[@id='remain']")
                print("最新剩余流量:%s！" % remain.text)
            except:
                print ("已签到！")
    except Exception as e:
        print ("错误：", format(e))
    if i == len(email)-1:
        browser.close()
    else:
        browser.get('https://www.sucloud.pro/user/logout')
        browser.switch_to.window(browser.window_handles[-1])
time.sleep(2)
