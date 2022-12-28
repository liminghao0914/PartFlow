# -*- coding: utf-8 -*-
__author__ = 'liminghao'

import csv
from math import sqrt

import keras
from flask import render_template, Blueprint, jsonify
from jinja2 import Markup, Environment, FileSystemLoader
from keras.utils.np_utils import to_categorical
from pyecharts.globals import CurrentConfig
# 关于 CurrentConfig，可参考 [基本使用-全局变量]
# CurrentConfig.GLOBAL_ENV = Environment(loader=FileSystemLoader("./templates/pyecharts"))
from pyecharts import options as opts
from pyecharts.charts import Bar, WordCloud, Line, Graph
from itertools import groupby
import pprint

from sklearn.metrics import mean_squared_log_error, balanced_accuracy_score, r2_score

from modules.collector import *
from database import *
import os

# Uncomment the line below to make GPU unavaliable
# os.environ["CUDA_VISIBLE_DEVICES"] = "-1"
charts = Blueprint("charts", __name__)
model_S = keras.models.load_model("algorithm/LSTM_4")
model_T = keras.models.load_model("algorithm/LSTM_time")
serial = csv.reader(open("/home/li/Desktop/inJARctor_server/cache/methods_id.csv"))
serial_T = list(map(list, zip(*serial)))
serial = list(map(list, zip(*serial_T)))
all_methods_count = len(serial_T[0])


def mongodb_process(uid):
    myclient = pymongo.MongoClient("mongodb://localhost:27017/")
    mydb = myclient["db"]
    mycol = mydb[uid]
    mydict = {}
    for x in mycol.find({}):
        method = x.get("status").split("Delta")[0] + x.get("descript")
        if x.get("class") not in mydict.keys():
            mydict[x.get("class")] = {method: [[x.get("runtime"), x.get("timestamp")]]}
        else:
            if method not in mydict[x.get("class")].keys():
                mydict[x.get("class")][method] = [[x.get("runtime"), x.get("timestamp")]]
            else:
                mydict[x.get("class")][method] += [[x.get("runtime"), x.get("timestamp")]]
    # pp = pprint.PrettyPrinter(indent=2)
    # pp.pprint(mydict)
    return mydict


def all_timestamp_sort(uid):
    mydict = mongodb_process(uid)
    u = []
    for clazz in mydict.keys():
        for method in mydict[clazz].keys():
            for t in mydict[clazz][method]:
                u.append([clazz, method + "#Start", t[1] - t[0]])
                u.append([clazz, method + "#End", t[1]])
    u_sorted = sorted(u, key=lambda x: x[2])
    return u_sorted


def runtime_filter(clazz, threshold, time_list):
    tmp = []
    for tt in time_list:
        if tt[-1] >= threshold and clazz in tt[0]:
            tmp.append(tt)
    return tmp


def get_all_nodes():
    serial = csv.reader(open("./cache/methods_id.csv"))
    serial_T = list(map(list, zip(*serial)))
    serial = list(map(list, zip(*serial_T)))
    all_nodes = []
    for i in range(len(serial)):
        all_nodes.append(serial[i][0] + "#Start")
        all_nodes.append(serial[i][0] + "#End")
    return all_nodes


def getname(tlist):
    clazz = tlist[0]
    method = tlist[1]
    name = clazz + '.' + method
    return name


def function_tree(uid) -> Graph:
    tlist = runtime_filter("androvid", 0, all_timestamp_sort(uid))
    tlist_T = list(map(list, zip(*tlist)))  # 1:class 2:method
    # with open("./modules/documents/les-miserables.json", "r", encoding="utf-8") as f:
    #     j = json.load(f)
    #     nodes = j["nodes"]
    #     links = j["links"]
    #     categories = j["categories"]
    method_dict = {}

    for i in range(len(tlist) - 1):
        clazz = tlist[i][0]
        name = getname(tlist[i])
        if clazz not in method_dict.keys():
            method_dict[clazz] = {}
            method_dict[clazz][name] = []
            method_dict[clazz][name].append(getname(tlist[i + 1]))
        else:
            if name not in method_dict[clazz].keys():
                method_dict[clazz][name] = []
                method_dict[clazz][name].append(getname(tlist[i + 1]))
            else:
                if getname(tlist[i + 1]) not in method_dict[clazz][name]:
                    method_dict[clazz][name].append(getname(tlist[i + 1]))
    # print(method_dict)
    nodes = []
    links = []
    categories = []
    # categories.append(opts.GraphCategory(name="nouse", symbol_size=0.1))
    for clazz in method_dict.keys():
        categories.append(opts.GraphCategory(name=clazz, symbol_size=0.1))
        for node in method_dict[clazz].keys():
            size = len(method_dict[clazz][node]) * 3
            nodes.append(opts.GraphNode(name=node, symbol_size=3, category=clazz))
            for link in method_dict[clazz][node]:
                # pass
                links.append(opts.GraphLink(source=node, target=link, symbol='none'))
    print(nodes[0].opts)
    print(links[0].opts)
    c = (
        Graph(init_opts=opts.InitOpts(width="100%", height="1000px", renderer="svg"))
            .add(
            "status",
            nodes=[],
            links=[],
            layout="circular",
            is_roam=True,
            is_rotate_label=True,
            linestyle_opts=opts.LineStyleOpts(color="source", curve=0.1, width=1, opacity=0.7),
            label_opts=opts.LabelOpts(position="right", is_show=False),
            categories=categories,
            gravity=0.01,
            repulsion=100,
            edge_length=[10, 200],
            is_draggable=True,
            emphasis={
                "focus": 'adjacency',
                "lineStyle": {
                    "width": 5,
                    "opacity": 0.5,
                }},
        )
            .set_global_opts(
            title_opts=opts.TitleOpts(title="Global Markov Graph"),
            legend_opts=opts.LegendOpts(orient="vertical", pos_left="2%", pos_top="30%", type_="scroll", pos_bottom="50%"),
        )

    )
    return c


# TODO 增添新的字典，method_id不全
def all_time_chart(pkg) -> Bar:
    all_nodes = get_all_nodes()
    nodes = []
    categories = []
    categories.append(opts.GraphCategory(name="nouse", symbol_size=0.1))
    for node in all_nodes:
        nodes.append(opts.GraphNode(name=node, symbol_size=1, category="nouse"))
    c = (
        Graph(init_opts=opts.InitOpts(width="100%", height="1000px", renderer="svg"))
            .add(
            "all",
            nodes=nodes,
            links=[],
            layout='circular',
            categories=categories,
            label_opts=opts.LabelOpts(position="right", is_show=False))
    )
    return c


# 模板渲染
# @charts.route("/<uid>")
# def index(uid):
#     c = all_time_chart(uid)
#     return Markup(c.render_embed())
# pass

#
# @charts.route("/vis")
# def vis():
#     return render_template("vis.html")

@charts.route("/functree/<uid>")
def functree(uid):
    # print(functree)
    # return render_template(
    #     "graph.html",
    #     myechart=functree.render_embed()
    # )
    return render_template("graph.html")


@charts.route("/getdata/<uid>")
def getdata(uid):
    ft = function_tree(uid)
    return ft.dump_options_with_quotes()


@charts.route("/gettemplate/<pkg>")
def gettemplate(pkg):
    atc = all_time_chart(pkg)
    return atc.dump_options_with_quotes()


@charts.route("/getdynamicdata/<uid>")
def getdynamicdata(uid):
    tlist = runtime_filter("androvid", 0, all_timestamp_sort(uid))
    tlist_T = list(map(list, zip(*tlist)))

    def get_index(lst=None, item=''):
        return [index for (index, value) in enumerate(lst) if value == item]

    new_index = get_index(tlist_T[1], 'attachBaseContext(Landroid/content/Context;)V#Start')[-1]
    new_tlist = tlist[new_index:]
    links_dict = {}
    nodes_dict = {}
    links = []
    nodes = []
    for i in range(len(new_tlist) - 1):
        state = getname(new_tlist[i])
        target = getname(new_tlist[i + 1])
        link_name = state + " > " + target
        if link_name not in links_dict.keys():
            links_dict[link_name] = {"source": state, "target": target, "count": 1}
        else:
            links_dict[link_name]["count"] += 1
    for node in new_tlist:
        state = getname(node)
        if state not in nodes_dict.keys():
            nodes_dict[state] = {"name": state, "class": node[0], "count": 1}
        else:
            nodes_dict[state]["count"] += 1
    for key in links_dict.keys():
        link = links_dict[key]
        # size = sqrt(sqrt(link.get("count")*50))
        links.append(opts.GraphLink(source=link.get("source"), target=link.get("target"),
                                    value=link.get("count"), symbol='none').opts)
    for key in nodes_dict.keys():
        node = nodes_dict[key]
        size = sqrt(node.get("count") * 10)
        nodes.append(opts.GraphNode(name=node.get("name"), symbol_size=size, value=node.get("count"),
                                    category=node.get("class")).opts)

    return jsonify({"links": links, "nodes": nodes, "seq": new_tlist})


@charts.route("/getseq/<clazz>/<uid>")
def getseq(clazz, uid):
    tlist = runtime_filter(clazz, 0, all_timestamp_sort(uid))
    return jsonify(tlist)


@charts.route("/getpred/<uid>", methods=['GET', 'POST'])
def getpred(uid):
    tlist = runtime_filter("androvid", 0, all_timestamp_sort(uid))

    def get_index(lst=None, item=''):
        return [index for (index, value) in enumerate(lst) if value == item]

    # fname = request.form.getlist('name[]')
    # timestamp = request.form.getlist('timestamp[]')
    fname = json.loads(request.form.get("name"))
    timestamp = json.loads(request.form.get("timestamp"))
    if len(fname) < -1:
        return jsonify("fff")
    else:
        # print(model_S.summary())
        # print(model_T.summary())
        n_features = all_methods_count * 2
        n_input = 15
        # x_input_data = data[-n_input:]
        x_input_raw = []
        method_time = []
        for i in range(len(timestamp) - 1):
            method_time.append(round(((timestamp[i + 1] - timestamp[i]) / 1000000), 2))
        for name in fname:
            if "#Start" in name:
                x_input_raw.append(int(serial[get_index(serial_T[0], name.split("#Start")[0])[0]][1]))
            else:
                x_input_raw.append(int(serial[get_index(serial_T[0], name.split("#End")[0])[0]][1]) + all_methods_count)
        # print(x_input_raw)
        result = []
        # x_input_raw = x_input_raw[:50]
        n_acc = 0
        s_prob = 0
        t_msle = 0
        for i in range(len(x_input_raw) - n_input):
            x_input_data = x_input_raw[i:i + n_input]
            y_label = x_input_raw[i + n_input]
            x_onehot = to_categorical(x_input_data, num_classes=n_features)
            x_input = np.array(x_onehot).reshape((1, n_input, n_features))
            yhat = model_S.predict(x_input, verbose=0)
            y_index = np.argmax(yhat, axis=1)
            y_value = np.squeeze(y_index)
            s_prob += yhat[0][y_label]
            if y_label == y_value:
                n_acc += 1
            if y_value < all_methods_count:
                y_name = serial[y_value + 1][0] + "#Start"
            else:
                y_name = serial[y_value - 1 - all_methods_count][0] + "#End"
            if y_label < all_methods_count:
                y_label = serial[y_label - 1][0] + "#Start"
            else:
                y_label = serial[y_label - 1 - all_methods_count][0] + "#End"
            yhat_tmp = model_T.predict(x_input, verbose=0)
            y_value_tmp = np.squeeze(yhat_tmp)
            y_label_tmp = method_time[i]
            if y_value_tmp < 0:
                y_value_tmp = 0
            msle = r2_score([y_label_tmp,y_label_tmp], [y_value_tmp,y_value_tmp])
            t_msle += msle
            result.append({
                "name": y_name,
                "probability": str(yhat[0][y_value]),
                "time": str(y_value_tmp),
                "label_name": y_label,
                "label_time": str(y_label_tmp)
            })
        # print(result)
        num = len(x_input_raw) - n_input
        return jsonify({
            "result": result,
            "statics": {
                "acc": str(n_acc / num),
                "MSLE": str(t_msle / num),
                "prob": str(s_prob / num)
            }
        })



