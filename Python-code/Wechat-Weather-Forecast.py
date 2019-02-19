# -*- coding:utf-8 -*- 
'''
 * @Author: wjm 
 * @Date: 2018-04-08 20:42:15 
 * @Last Modified by:   wjm 
 * @Last Modified time: 2018-04-08 20:42:15 
 * @Desc: 微信定时发送天气预报
'''
import requests
import json
import itchat
import urllib3
import time
import re
import urllib.request as urllib2
import schedule


def gettq(userName):
    hearders = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36"
    url = "https://tianqi.moji.com/weather/china/hubei/wuhan"  ##要爬去天气预报的网址
    par = '(<meta name="description" content=")(.*?)(">)'  ##正则匹配，匹配出网页内要的内容

    ##获取网页
    html = urllib2.urlopen(url)
    html = html.read().decode("utf-8")
    ##提取需要爬取的内容
    cml = re.search(par, html).group(2)

    localtime1 = time.strftime("%Y-%m-%d")
    localtime2 = time.strftime("%H:%M:%S")
    a = "当前时间:%s %s" % (localtime1, localtime2)
    title = a
    msg = cml
    content = a + '\n'+ cml
    print (content)
    itchat.send(content, toUserName=userName)

if __name__ == '__main__':
    itchat.auto_login(hotReload=True)  ##登录
    users = itchat.search_friends(name=u'xx')  ##通信录备注的名称
    userName = users[0]['UserName']  ##找到UserName
    schedule.every().day.at("20:41").do(gettq, userName) ##定时任务
    # schedule.every(20).seconds.do(gettq, userName)
    while True:
        schedule.run_pending()
        time.sleep(10)
