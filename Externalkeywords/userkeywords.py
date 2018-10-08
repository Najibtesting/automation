import os
from selenium import webdriver
import time
import win32com.client


def creat_folder():
    driver = webdriver.Chrome()
    driver.maximize_window()
    driver.get('http://glamm.com/demo_aviochem/')
    shell = win32com.client.Dispatch("WScript.Shell")
    shell.Sendkeys("username")
    driver.get('url')
    shell = win32com.client.Dispatch("WScript.Shell")
    shell.Sendkeys("username")
    shell.Sendkeys("{TAB}")
    shell.Sendkeys("password")
    shell.Sendkeys("{ENTER}")
    time.sleep(5)
    driver.quit()


def creat_sub_folder():
    os.mkdir("C:\\Najib1\\hello")


def creatfoldero(namefolder):
    os.mkdir("C:\\"+namefolder)
