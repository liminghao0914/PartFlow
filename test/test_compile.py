# -*- coding: utf-8 -*-
"""
-------------------------------------------------
   File Name：     test_compile
   Description :
   Author :       liminghao
   date：          2020-11-17
-------------------------------------------------
   Change Activity:
                   2020-11-17:
-------------------------------------------------
"""
__author__ = 'liminghao'
import subprocess
from config import *


class Compile(object):
    def __init__(self, jarfile):
        self.jarfile = jarfile

    def run(self):
        subprocess.run("cd "+PATH, shell=True)
        subprocess.run(DX_PATH+"dx --dex --output classes.dex "+self.jarfile, shell=True)
        subprocess.run("baksmali d classes.dex", shell=True)
        subprocess.run("apktool b app-debug", shell=True)
        subprocess.run("jarsigner -keystore debug.keystore app-debug.apk release", shell=True)
