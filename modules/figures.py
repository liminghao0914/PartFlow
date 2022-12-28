# -*- coding: utf-8 -*-
__author__ = 'liminghao'
from flask import render_template, Blueprint
from jinja2 import Markup, Environment, FileSystemLoader
from pyecharts.globals import CurrentConfig
from pyecharts import options as opts
from pyecharts.charts import Bar, WordCloud, Line
from itertools import groupby
import pprint
from utils.config import *

from modules.collector import *
from config import *

figures = Blueprint("figures", __name__)


def uid_load(uid):
    f = open(JSONOUTPUT+uid+".json", 'r')
    content = f.read()
    rj = json.loads(content)
    f.close()
    return rj


def process(clazz, rj):
    # status = rj.get("status")
    # for pkg in status:
    #     if clazz==pkg.get("class"):
    rj["status"] = {k: list(v) for k, v in
                                  groupby(rj["status"], key=lambda x: x["class"])}






