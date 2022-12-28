# -*- coding: utf-8 -*-
__author__ = 'liminghao'
from flask import Blueprint, request
import json
from itertools import groupby
import pprint
from numpy import mean

from utils.response import Response
from utils.data import Analyzer
collector = Blueprint("collector", __name__)
analyzer = Analyzer()
pp = pprint.PrettyPrinter(indent=2)

@collector.route("/remote", methods=['POST'])
def collect():
    data = request.get_data()
    jd = json.loads(data)
    # print(jd)
    analyzer.read(jd)
    analyzer.process()
    return Response.success()


def getGroupedJSON(uid):
    sessionJSON = analyzer.getsessionJSON(uid)
    pp.pprint(sessionJSON)
    sessionJSON["status"] = {k: list(v) for k, v in groupby(sessionJSON["status"], key=lambda x: x["class"])}
    pp.pprint(sessionJSON)
    return sessionJSON


def getXaxis(uid):
    Xaxis = []
    j = getGroupedJSON(uid)
    for key in j["status"].keys():
        Xaxis.append(key)
    return Xaxis

def getYaxis(uid):
    Yaxis = []
    """
    [   {"method": "onCreateDelta",
        "runtime": [22,32]},
        {"method": "onCreateDelta",
        "runtime": [22,32]}
        ]
    """
    methodInfo = {
        "method": "",
        "runtime": int(),
        "class": "",
    }
    j = getGroupedJSON(uid)
    # pp.pprint(j)
    for key in j["status"].keys():
        val = j["status"][key]
        unit = {k: list(v) for k, v in groupby(val, key=lambda x: x["method"])}

        for method in unit:
            info = unit[method]
            runtime = []
            for item in info:
                runtime.append(item["runtime"])
            m = methodInfo.copy()
            m["method"] = method
            m["runtime"] = mean(runtime)
            m["class"] = key
            Yaxis.append(m)
    # pp.pprint(Yaxis)
    new_Yaxis = {k: list(v) for k, v in groupby(Yaxis, key=lambda x: x["method"])}
    # pp.pprint(new_Yaxis)
    return new_Yaxis





