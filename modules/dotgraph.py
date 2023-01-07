# -*- coding: utf-8 -*-
"""
-------------------------------------------------
   File Name：     dotgraph
   Description :
   Author :       liminghao
   date：          2020-11-16
-------------------------------------------------
   Change Activity:
                   2020-11-16:
-------------------------------------------------
"""
__author__ = 'liminghao'
from flask import Blueprint, render_template
import json
import re

from config import *
dotgraph = Blueprint("dotgraph", __name__)


def read_dot(path):
    files = [x for x in os.listdir(path) if 'dot' in x]
    dot_list = []
    for file in files:
        f = open(os.path.join(path, file))
        lines = f.read()
        new_lines = re.sub(' \(.*?\)', '', lines)
        dot_list.append(new_lines)
    return dot_list, files


@dotgraph.route('/dotgraph')  # TODO 美化
def run_graphviz():
    return render_template("Webgraphviz.htm")


@dotgraph.route('/readdot')
def init():
    dot_dict = {}
    dot_list, files = read_dot(os.path.join(PATH, DOTOUTPUT))
    for idx, dot in enumerate(dot_list):
        dot_dict[str(idx + 1)] = {'name': files[idx], 'content': dot}
    dot_json = json.dumps(dot_dict)
    return dot_json


