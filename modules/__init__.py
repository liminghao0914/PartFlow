# -*- coding: utf-8 -*-
"""
-------------------------------------------------
   File Name：     __init__
   Description :  注册模块
   Author :       liminghao
   date：          2020-11-13
-------------------------------------------------
   Change Activity:
                   2020-11-13:
-------------------------------------------------
"""
__author__ = 'liminghao'
from flask import Flask

from config import *
from .charts import charts
from .update import update
from .collector import collector
from .analyze import analyze
from .dotgraph import dotgraph
from .figures import figures
from .visualization import visualization

app = Flask(__name__)

app.register_blueprint(charts)
app.register_blueprint(update)
app.register_blueprint(collector)
app.register_blueprint(collector, url_prefix='/api/v1/collector')
app.register_blueprint(analyze)
app.register_blueprint(analyze, url_prefix='/api/v1/analyze')
app.register_blueprint(dotgraph)
app.register_blueprint(figures)
app.register_blueprint(visualization)


