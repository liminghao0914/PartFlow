# -*- coding: utf-8 -*-
__author__ = 'liminghao'
from flask import Flask

from config import *
from .charts import charts
from .update import update
from .collector import collector
# from .analyze import analyze
from .visualization import visualization

app = Flask(__name__)

app.register_blueprint(charts)
app.register_blueprint(update)
app.register_blueprint(collector, url_prefix='/api/v1/collector')
app.register_blueprint(visualization)


