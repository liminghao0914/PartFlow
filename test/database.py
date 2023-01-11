# -*- coding: utf-8 -*-
__author__ = 'liminghao'

from flask import render_template, Blueprint
from jinja2 import Markup, Environment, FileSystemLoader
from pyecharts.globals import CurrentConfig
from pyecharts import options as opts
from pyecharts.charts import Bar, WordCloud, Line
from itertools import groupby
import pprint
import json
import numpy as np
import matplotlib.pyplot as plt
import pymongo


def uid_load(uid):
    f = open(uid + ".json", 'r')
    content = f.read()
    rj = json.loads(content)
    f.close()
    return rj


def process(clazz, method, rj):
    status = rj.get("status")
    runtime = []
    for pkg in status:
        if clazz == pkg.get("class") and method == pkg.get("method"):
            runtime.append([pkg.get("timestamp"), pkg.get("runtime")])
    arr = np.array(runtime)
    title = clazz + "." + method.split("Delta")[0] + "()"
    if len(arr) != 0:
        runtime_new = np.array(list(set([tuple(t) for t in arr])))
        # pp = pprint.PrettyPrinter(indent=2)
        # pp.pprint(rj)
        # print(rj)
        # print(arr)
        runtime_new = np.sort(runtime_new, axis=0)
        runtime_list_T = list(runtime_new.T)
        runtime_list_T_avg = np.mean(runtime_list_T, axis=1)[1]
        # print(runtime_list_T_avg)
        return title, runtime_list_T_avg
        # print(runtime_new.T)
        # plt.plot(runtime_list_T[0], runtime_list_T[1])
        # plt.show()
    else:
        return title, -1


def get_mem(meminfo):
    return int(meminfo.split(" ")[0])


def jsonfile_process():
    f = open("devices_info.json", 'r')
    content = f.read()
    rj = json.loads(content)
    f.close()
    runtime_hardware = []
    for uid in rj.keys():
        if rj[uid]["CPU_ABI"] == "armeabi-v7a":
            title, runtime = process("com.androvid.videokit.HomeActivity", "onCreateDelta", uid_load(uid))
            if bool(runtime):
                CPU_CORES = rj[uid]["CPU_CORES"]
                MEMORY = get_mem(rj[uid]["MEMORY"])
                runtime_hardware.append([CPU_CORES, MEMORY, runtime])
            else:
                continue
    print(runtime_hardware)
    runtime_hardware_T = np.array(runtime_hardware).T
    xd = runtime_hardware_T[0]
    yd = runtime_hardware_T[1]
    zd = runtime_hardware_T[2]
    ax1 = plt.axes(projection='3d')
    ax1.set_xlabel('CPU_CORES')
    ax1.set_ylabel('MEMORY')
    ax1.set_zlabel('runtime')
    ax1.scatter3D(xd, yd, zd, cmap='Blues')
    plt.title(title)
    plt.show()


def mongodb_process(uid):
    myclient = pymongo.MongoClient("mongodb://localhost:27017/")
    mydb = myclient["db"]
    mycol = mydb[uid]
    mydict = {}
    for x in mycol.find({}):
        if x.get("class") not in mydict.keys():
            mydict[x.get("class")] = {x.get("status"): [[x.get("runtime"), x.get("timestamp")]]}
        else:
            if x.get("status") not in mydict[x.get("class")].keys():
                mydict[x.get("class")][x.get("status")] = [[x.get("runtime"), x.get("timestamp")]]
            else:
                mydict[x.get("class")][x.get("status")] += [[x.get("runtime"), x.get("timestamp")]]
    pp = pprint.PrettyPrinter(indent=2)
    pp.pprint(mydict)
    return mydict


def avg_runtime_sort():
    mydict = mongodb_process("DF40BDE799701DB2C16EAC962056D847")
    mylist = []
    for clazz in mydict.keys():
        for method in mydict[clazz].keys():
            # print(np.array(mydict[clazz][method]).mean(axis=0,dtype=int))
            u = [clazz, method, np.array(mydict[clazz][method]).mean(axis=0, dtype=int)[0]]
            mylist.append(u)
    # print(sorted(mylist, key=lambda x: x[2]))


def all_runtime_area():
    mydict = mongodb_process("DF40BDE799701DB2C16EAC962056D847")
    for clazz in mydict.keys():
        for method in mydict[clazz].keys():
            p = np.array(mydict[clazz][method], dtype=int).T
            plt.plot(p[1], p[0], label=clazz + method)
    plt.show()


# all_runtime_area()


