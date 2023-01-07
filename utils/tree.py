# -*- coding: utf-8 -*-
"""
-------------------------------------------------
   File Name：     TreeAnalyzer
   Description :
   Author :       liminghao
   date：          2020-11-13
-------------------------------------------------
   Change Activity:
                   2020-11-13:
-------------------------------------------------
"""
__author__ = 'liminghao'
import subprocess
from config import *


class Process(object):
    def __init__(self, dotoutput, fileinput):
        dotoutput = OUTPUT + dotoutput
        # TODO 后期加入正则自定义
        # self.cmdl = JDEPS + REGEX + VERBOSE_CLASS + RECRUSIVE + INCLUDE + FILTER + dotoutput + fileinput
        self.cmdl = JDEPS + dotoutput + VERBOSE_CLASS + fileinput

    def run(self):
        subprocess.run(self.cmdl, shell=True)


