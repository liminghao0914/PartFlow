import json
import pprint
import time
from math import sqrt
import numpy as np
import pymongo
from flask import Blueprint, render_template, request, jsonify
from keras.utils.np_utils import to_categorical
from pyecharts import options as opts
import os
import re
from pyecharts.charts import Graph

from scipy import sparse
from scipy.spatial.distance import cityblock

from modules.charts import getname, serial, serial_T, all_methods_count, model_S, model_T

visualization = Blueprint("visualization", __name__)
myclient = pymongo.MongoClient("mongodb://localhost:27017/")
mydb = myclient["db"]
mydevices = mydb["devices_info"]


def mongodb_process(uid):
    mycol = mydb[uid]
    mydict = {}
    for x in mycol.find({}):
        method = x.get("status").split("Delta")[0] + x.get("descript")
        if x.get("class") not in mydict.keys():
            mydict[x.get("class")] = {method: [[x.get("runtime"), x.get("timestamp"), x.get("timestamp2")]]}
        else:
            if method not in mydict[x.get("class")].keys():
                mydict[x.get("class")][method] = [[x.get("runtime"), x.get("timestamp"), x.get("timestamp2")]]
            else:
                mydict[x.get("class")][method] += [[x.get("runtime"), x.get("timestamp"), x.get("timestamp2")]]
    return mydict


def all_timestamp_sort(uid):
    mydict = mongodb_process(uid)
    u = []
    for clazz in mydict.keys():
        for method in mydict[clazz].keys():
            for t in mydict[clazz][method]:
                u.append([clazz, method + "#Start", t[1] - t[0], t[2] - int(t[0] / 1000000)])
                u.append([clazz, method + "#End", t[1], t[2]])
    u_sorted = sorted(u, key=lambda x: x[2])
    return u_sorted


def runtime_filter(clazz, threshold, time_list):
    tmp = []
    for tt in time_list:
        if tt[-1] >= threshold and clazz in tt[0]:
            tmp.append(tt)
    return tmp


@visualization.route("/vis")
def vis():
    return render_template("vis.html")


@visualization.route("/find_mongodb", methods=['GET', 'POST'])
def find_mongodb():
    myquery = {}
    for key in request.form.keys():
        value = eval(request.form.get(key))
        if value != '':
            myquery[key] = value
    print(myquery)
    mydoc = mydevices.find(myquery)
    devices = []
    for d in mydoc:
        d.pop("_id")
        devices.append(d)
    print(devices)
    return jsonify(result=devices)


@visualization.route("/search_date", methods=['GET', 'POST'])
def search_date():
    date = request.form.get("date")
    package = request.form.get("pkg")
    timeArray = time.strptime(date, "%Y-%m-%d")
    start_daytime = time.mktime(timeArray) * 1000
    end_daytime = start_daytime + 86400000
    uid = request.form.get("uid")
    runtime_list = []
    tlist = runtime_filter(package, 0, all_timestamp_sort(uid))
    tlist_T = list(map(list, zip(*tlist)))

    def get_index(lst=None, item=''):
        return [index for (index, value) in enumerate(lst) if value == item]

    start_index = get_index(tlist_T[1], 'attachBaseContext(Landroid/content/Context;)V#Start')
    tlist_sequential = []
    for i in range(len(start_index) - 1):
        tlist_sequential.append(tlist[start_index[i]:start_index[i + 1]])
    tlist_sequential.append(tlist[start_index[-1]:])
    for index, tlist in enumerate(tlist_sequential):
        start_time = time.strftime("%H:%M:%S", time.localtime(float(int(tlist[0][3]) / 1000)))
        end_time = time.strftime("%H:%M:%S", time.localtime(float(int(tlist[-1][3]) / 1000)))
        interval_time = str(float((int(tlist[-1][3]) - int(tlist[0][3])) / 1000)) + "s"
        if int(tlist[0][3]) > start_daytime and int(tlist[-1][3]) < end_daytime:
            runtime_list.append({
                "index": index,
                "date": date,
                "st": start_time,
                "et": end_time,
                "lt": interval_time,
            })
    return jsonify(result=runtime_list)


@visualization.route("/fetch_date", methods=['GET', 'POST'])
def fetch_date():
    uid = request.form.get("uid")
    package = request.form.get("pkg")
    mydict = {}
    date_num = []
    tlist = runtime_filter(package, 0, all_timestamp_sort(uid))
    tlist_T = list(map(list, zip(*tlist)))

    def get_index(lst=None, item=''):
        return [index for (index, value) in enumerate(lst) if value == item]

    start_index = get_index(tlist_T[1], 'attachBaseContext(Landroid/content/Context;)V#Start')
    tlist_sequential = []
    for i in range(len(start_index) - 1):
        tlist_sequential.append(tlist[start_index[i]:start_index[i + 1]])
    tlist_sequential.append(tlist[start_index[-1]:])
    for tlist in tlist_sequential:
        timestamp = time.localtime(float(int(tlist[0][3]) / 1000))
        day = time.strftime("%Y-%m-%d", timestamp)
        if day not in mydict.keys():
            mydict[day] = 1
        else:
            mydict[day] += 1
    for day in mydict.keys():
        date_num.append([day, mydict[day]])
    return jsonify(result=date_num)


@visualization.route("/getdynamicdata2", methods=['GET', 'POST'])
def getdynamicdata2():
    uid = request.form.get("uid")
    package = request.form.get("pkg")
    tlist = runtime_filter(package, 0, all_timestamp_sort(uid))
    tlist_T = list(map(list, zip(*tlist)))

    def get_index(lst=None, item=''):
        return [index for (index, value) in enumerate(lst) if value == item]

    new_index = get_index(tlist_T[1], 'attachBaseContext(Landroid/content/Context;)V#Start')[-1]
    new_tlist = tlist[new_index:]
    tableData = []
    for i, t in enumerate(new_tlist):
        clazz = t[0]
        method = t[1].split("#")[0]
        time = int(t[2] / 1000000)
        status = t[1].split("#")[1]
        tableData.append({
            "number": i + 1,
            "method": method,
            "class": clazz,
            "time": time,
            "status": status
        })
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

    return jsonify({"links": links, "nodes": nodes, "seq": new_tlist, "tableData": tableData})


@visualization.route('/getdata', methods=['GET', 'POST'])
def getdata():
    uid = request.form.get("uid")
    package = request.form.get("pkg")
    tlist = runtime_filter(package, 0, all_timestamp_sort(uid))
    tlist_T = list(map(list, zip(*tlist)))

    def get_index(lst=None, item=''):
        return [index for (index, value) in enumerate(lst) if value == item]

    new_tlist = tlist.copy()
    tableData = []
    for i, t in enumerate(new_tlist):
        clazz = t[0]
        method = t[1].split("#")[0]
        time = int(t[2] / 1000000)
        status = t[1].split("#")[1]
        tableData.append({
            "number": i + 1,
            "method": method,
            "class": clazz,
            "time": time,
            "status": status
        })
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
        nodes.append(opts.GraphNode(name=node.get("name"), symbol_size=3, value=node.get("count"),
                                    category=node.get("class")).opts)

    return jsonify({"links": links, "nodes": nodes, "seq": new_tlist, "tableData": tableData})


@visualization.route('/getindexdata', methods=['GET', 'POST'])
def getindexdata():
    uid = request.form.get("uid")
    index = request.form.get("index")
    package = request.form.get("pkg")
    tlist = runtime_filter(package, 0, all_timestamp_sort(uid))
    tlist_T = list(map(list, zip(*tlist)))

    def get_index(lst=None, item=''):
        return [index for (index, value) in enumerate(lst) if value == item]

    new_index_start = get_index(tlist_T[1], 'attachBaseContext(Landroid/content/Context;)V#Start')[int(index)]
    new_index_end = get_index(tlist_T[1], 'attachBaseContext(Landroid/content/Context;)V#Start')[int(index) + 1]
    new_tlist = tlist[new_index_start:new_index_end]
    tableData = []
    for i, t in enumerate(new_tlist):
        clazz = t[0]
        method = t[1].split("#")[0]
        time = int(t[2] / 1000000)
        status = t[1].split("#")[1]
        tableData.append({
            "number": i + 1,
            "method": method,
            "class": clazz,
            "time": time,
            "status": status
        })
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

    return jsonify({"links": links, "nodes": nodes, "seq": new_tlist, "tableData": tableData})


def get_index(lst=None, item=''):
    return [index for (index, value) in enumerate(lst) if value == item]


def generate_treelist(seq):
    dep = []
    d = 0
    tmp_stack = []
    tmp_tree = []
    for i, c in enumerate(seq):
        name = c[0] + "." + c[1].split("#")[0]
        if "#Start" in c[1]:
            d += 1
            dep.append(d)
            tmp_stack.append({
                "name": name,
                "start_time": c[2],
                "index": i,
            })
        if "#End" in c[1]:
            dep.append(d)
            flag = True
            for node in reversed(tmp_stack):
                if node["name"] == name:
                    tmp_tree.append({
                        "name": name,
                        "value": c[2] - node["start_time"],
                        "time_start": node["start_time"],
                        "time_end": c[2],
                        "depth": d,
                        "index": i
                    })
                    tmp_stack.remove(node)
                    d -= 1
                    flag = False
                    break
                else:
                    continue
            if flag:
                print("_________")
                print(tmp_stack)
                print(c)
                print("_________")
    tree_list = []
    # clear other threads function
    extra_indices = []
    for wrong_ndoe in tmp_stack:
        extra_indices.append(wrong_ndoe["index"])
    for i in range(len(tmp_tree)):
        # clear other threads function
        item1 = tmp_tree[i]
        for delta, index in enumerate(extra_indices):
            if item1["index"] > index:
                item1["depth"] -= (delta + 1)
                break
        if item1["depth"] == 1:
            tree_list.append({
                "id": i + 1,
                "name": item1["name"],
                "value": float(item1["value"] / 1000000),
                "parent_id": 0,
                "depth": item1["depth"],
                "time_start": item1["time_start"],
                "time_end": item1["time_end"],
            })
            continue
        for j in range(i, len(tmp_tree)):
            item2 = tmp_tree[j]
            if item1["depth"] - 1 == item2["depth"]:
                tree_list.append({
                    "id": i + 1,
                    "name": item1["name"],
                    "value": float(item1["value"] / 1000000),
                    "parent_id": j + 1,
                    "depth": item1["depth"],
                    "time_start": item1["time_start"],
                    "time_end": item1["time_end"],
                })
                break
    return tree_list


def generate_tree(tree_list):
    res = {}
    for v in tree_list:
        v["parent_id"] = v["parent_id"] if v["parent_id"] else 0
        res.setdefault(v["id"], v).update(v)
        res.setdefault(v["parent_id"], {}).setdefault("children", []).append(res.get(v["id"], v))
    # pp = pprint.PrettyPrinter(indent=2)
    # pp.pprint(res[0]["children"])
    return res[0]["children"]


@visualization.route('/getinnerstatus', methods=['GET', 'POST'])
def getinnerstatus():
    uid = request.form.get("uid")
    index = request.form.get("index")
    package = request.form.get("pkg")
    mindex_start = int(request.form.get("index_method"))
    tlist = runtime_filter(package, 0, all_timestamp_sort(uid))
    tlist_T = list(map(list, zip(*tlist)))
    new_index_start = get_index(tlist_T[1], 'attachBaseContext(Landroid/content/Context;)V#Start')[int(index)]
    new_index_end = get_index(tlist_T[1], 'attachBaseContext(Landroid/content/Context;)V#Start')[int(index) + 1]
    new_tlist = tlist[new_index_start:new_index_end]
    clazz_start = new_tlist[mindex_start][0]
    method_start = new_tlist[mindex_start][1].split("#")[0]
    name_start = clazz_start + "." + method_start
    for i in range(mindex_start + 1, len(new_tlist)):
        clazz = new_tlist[i][0]
        method = new_tlist[i][1].split("#")[0]
        status = new_tlist[i][1].split("#")[1]
        name = clazz + "." + method
        if name == name_start and status == "End":
            mindex_end = i
    selected_tlist = new_tlist[mindex_start:mindex_end + 1]
    print(mindex_start, mindex_end)
    tree = generate_tree(generate_treelist(selected_tlist))
    return jsonify(result=tree)


def generate_depth(seq):
    tmp_outermost = []
    tmp_index = 0
    depth_list = []
    for i, c in enumerate(seq):
        name_start = c[0] + "." + c[1].split("#")[0]
        time_start = c[2]
        if i < tmp_index:
            continue
        else:
            if "#Start" in c[1]:
                for j in range(i, len(seq)):
                    name_end = seq[j][0] + "." + seq[j][1].split("#")[0]
                    time_end = seq[j][2]
                    if name_start == name_end and "#End" in seq[j][1]:
                        tmp_outermost.append({
                            "name": name_end,
                            "value": float((time_end - time_start) / 1000000),
                            "depth": 1,
                            "index_start": i,
                            "index_end": j,
                        })
                        tmp_index = j
                        break
    for base_node in tmp_outermost:
        index_start = base_node["index_start"]
        index_end = base_node["index_end"]
        tree_list = generate_treelist(seq[index_start: index_end + 1])
        depth_list += tree_list
    # depth_list += tmp_outermost
    return depth_list


def euclidean_dist_one(uid1):
    base_path = "./modules/documents/"
    vec1 = sparse.load_npz(base_path + uid1 + '_markov.npz')
    vec2 = sparse.coo_matrix(np.zeros(vec1.shape))
    count1 = sparse.load_npz(base_path + uid1 + '_count.npz')
    count2 = sparse.coo_matrix(np.zeros(vec1.shape))
    method_start_count1 = {}
    for i in range(len(count1.data)):
        m1 = count1.row[i]
        if m1 not in method_start_count1.keys():
            method_start_count1[m1] = count1.data[i]
        else:
            method_start_count1[m1] += count1.data[i]
    method_start_count2 = {}
    for i in range(len(count2.data)):
        m1 = count2.row[i]
        if m1 not in method_start_count2.keys():
            method_start_count2[m1] = count2.data[i]
        else:
            method_start_count2[m1] += count2.data[i]
    for i in range(len(count1.data)):
        vec1.data[i] *= method_start_count1[vec1.row[i]] / sum(count1.data)
    for i in range(len(count2.data)):
        vec2.data[i] *= method_start_count2[vec2.row[i]] / sum(count2.data)
    vec1 = vec1.todense()
    vec2 = vec2.todense()
    area1_1 = np.vsplit(np.hsplit(vec1, 2)[0], 2)[0]
    area2_1 = np.vsplit(np.hsplit(vec1, 2)[1], 2)[0]
    area3_1 = np.vsplit(np.hsplit(vec1, 2)[0], 2)[1]
    area4_1 = np.vsplit(np.hsplit(vec1, 2)[1], 2)[1]
    area1_2 = np.vsplit(np.hsplit(vec2, 2)[0], 2)[0]
    area2_2 = np.vsplit(np.hsplit(vec2, 2)[1], 2)[0]
    area3_2 = np.vsplit(np.hsplit(vec2, 2)[0], 2)[1]
    area4_2 = np.vsplit(np.hsplit(vec2, 2)[1], 2)[1]
    cos_list_1 = []
    for col1, col2 in zip(area1_1, area1_2):
        s = cityblock(col1, col2)
        if np.isnan(s):
            pass
        else:
            cos_list_1.append(s)
            # print(s)
    avg_cos_1 = np.sum(cos_list_1)
    cos_list_2 = []
    for col1, col2 in zip(area2_1, area2_2):
        s = cityblock(col1, col2)
        if np.isnan(s):
            pass
        else:
            cos_list_2.append(s)
            # print(s)
    avg_cos_2 = np.sum(cos_list_2)
    cos_list_3 = []
    for col1, col2 in zip(area3_1, area3_2):
        s = cityblock(col1, col2)
        if np.isnan(s):
            pass
        else:
            cos_list_3.append(s)
            # print(s)
    avg_cos_3 = np.sum(cos_list_3)
    cos_list_4 = []
    for col1, col2 in zip(area4_1, area4_2):
        s = cityblock(col1, col2)
        if np.isnan(s):
            pass
        else:
            cos_list_4.append(s)
            # print(s)
    avg_cos_4 = np.sum(cos_list_4)
    # print([cos_list_1.index(max(cos_list_1)), cos_list_2.index(max(cos_list_2)), cos_list_3.index(max(cos_list_3)),
    #        cos_list_4.index(max(cos_list_4))])
    print([avg_cos_1, avg_cos_2, avg_cos_3, avg_cos_4])
    return [(avg_cos_1 + avg_cos_4) / 2, (avg_cos_2 + avg_cos_3) / 2]


def euclidean_dist(uid1, uid2):
    base_path = "./modules/documents/"
    vec1 = sparse.load_npz(base_path + uid1 + '_markov.npz')
    vec2 = sparse.load_npz(base_path + uid2 + '_markov.npz')
    count1 = sparse.load_npz(base_path + uid1 + '_count.npz')
    count2 = sparse.load_npz(base_path + uid2 + '_count.npz')
    method_start_count1 = {}
    print(len(vec1.data))
    print(len(vec2.data))
    for i in range(len(count1.data)):
        m1 = count1.row[i]
        if m1 not in method_start_count1.keys():
            method_start_count1[m1] = count1.data[i]
        else:
            method_start_count1[m1] += count1.data[i]
    method_start_count2 = {}
    for i in range(len(count2.data)):
        m1 = count2.row[i]
        if m1 not in method_start_count2.keys():
            method_start_count2[m1] = count2.data[i]
        else:
            method_start_count2[m1] += count2.data[i]
    for i in range(len(count1.data)):
        vec1.data[i] *= method_start_count1[vec1.row[i]] / sum(count1.data)
    for i in range(len(count2.data)):
        vec2.data[i] *= method_start_count2[vec2.row[i]] / sum(count2.data)
    vec1 = vec1.todense()
    vec2 = vec2.todense()
    area1_1 = np.vsplit(np.hsplit(vec1, 2)[0], 2)[0]
    area2_1 = np.vsplit(np.hsplit(vec1, 2)[1], 2)[0]
    area3_1 = np.vsplit(np.hsplit(vec1, 2)[0], 2)[1]
    area4_1 = np.vsplit(np.hsplit(vec1, 2)[1], 2)[1]
    area1_2 = np.vsplit(np.hsplit(vec2, 2)[0], 2)[0]
    area2_2 = np.vsplit(np.hsplit(vec2, 2)[1], 2)[0]
    area3_2 = np.vsplit(np.hsplit(vec2, 2)[0], 2)[1]
    area4_2 = np.vsplit(np.hsplit(vec2, 2)[1], 2)[1]
    cos_list_1 = []
    for col1, col2 in zip(area1_1, area1_2):
        s = cityblock(col1, col2)
        if np.isnan(s):
            pass
        else:
            cos_list_1.append(s)
            # print(s)
    avg_cos_1 = np.sum(cos_list_1)
    cos_list_2 = []
    for col1, col2 in zip(area2_1, area2_2):
        s = cityblock(col1, col2)
        if np.isnan(s):
            pass
        else:
            cos_list_2.append(s)
            # print(s)
    avg_cos_2 = np.sum(cos_list_2)
    cos_list_3 = []
    for col1, col2 in zip(area3_1, area3_2):
        s = cityblock(col1, col2)
        if np.isnan(s):
            pass
        else:
            cos_list_3.append(s)
            # print(s)
    avg_cos_3 = np.sum(cos_list_3)
    cos_list_4 = []
    for col1, col2 in zip(area4_1, area4_2):
        s = cityblock(col1, col2)
        if np.isnan(s):
            pass
        else:
            cos_list_4.append(s)
            # print(s)
    avg_cos_4 = np.sum(cos_list_4)
    print([avg_cos_1, avg_cos_2, avg_cos_3, avg_cos_4])
    dist_list1 = [list(sparse.coo_matrix(cos_list_1).col), list(sparse.coo_matrix(cos_list_1).data)]
    dist_list2 = [list(sparse.coo_matrix(cos_list_2).col), list(sparse.coo_matrix(cos_list_2).data)]
    dist_list3 = [list(sparse.coo_matrix(cos_list_3).col), list(sparse.coo_matrix(cos_list_3).data)]
    dist_list4 = [list(sparse.coo_matrix(cos_list_4).col), list(sparse.coo_matrix(cos_list_4).data)]
    dist_list1_T = list(map(list, zip(*sorted(list(map(list, zip(*dist_list1))), key=lambda x: x[1]))))
    dist_list2_T = list(map(list, zip(*sorted(list(map(list, zip(*dist_list2))), key=lambda x: x[1]))))
    dist_list3_T = list(map(list, zip(*sorted(list(map(list, zip(*dist_list3))), key=lambda x: x[1]))))
    dist_list4_T = list(map(list, zip(*sorted(list(map(list, zip(*dist_list4))), key=lambda x: x[1]))))
    # print(dist_list1_T)
    x1 = [str(x) for x in dist_list1_T[0][::-1]]
    y1 = dist_list1_T[1][::-1]
    x2 = [str(x) for x in dist_list2_T[0][::-1]]
    y2 = dist_list2_T[1][::-1]
    x3 = [str(x) for x in dist_list3_T[0][::-1]]
    y3 = dist_list3_T[1][::-1]
    x4 = [str(x) for x in dist_list4_T[0][::-1]]
    y4 = dist_list4_T[1][::-1]
    ###
    dict1 = {}
    dict2 = {}
    dict3 = {}
    dict4 = {}
    all_x = []
    y1_y = []
    y2_y = []
    y3_y = []
    y4_y = []
    for (x, y) in zip(x1, y1):
        dict1[x] = y
    for (x, y) in zip(x2, y2):
        dict2[x] = y
    for (x, y) in zip(x3, y3):
        dict3[x] = y
    for (x, y) in zip(x4, y4):
        dict4[x] = y
    all_x = list(set(list(dict1.keys()) + list(dict2.keys()) + list(dict3.keys()) + list(dict4.keys())))
    for x in all_x:
        try:
            y1_y.append(dict1[x])
        except:
            y1_y.append(0)
        try:
            y2_y.append(dict2[x])
        except:
            y2_y.append(0)
        try:
            y3_y.append(dict3[x])
        except:
            y3_y.append(0)
        try:
            y4_y.append(dict4[x])
        except:
            y4_y.append(0)
    return {
        "vector": [(avg_cos_1 + avg_cos_4) / 2, (avg_cos_2 + avg_cos_3) / 2],
        "matrix": {
            "x": all_x,
            "y1": y1_y,
            "y2": y2_y,
            "y3": y3_y,
            "y4": y4_y,
        }
    }


@visualization.route('/getinnerstatusfortimeline', methods=['GET', 'POST'])
def getinnerstatusfortimeline():
    uid = request.form.get("uid")
    index = request.form.get("index")
    package = request.form.get("pkg")
    start_time = float(request.form.get("start_time")) * 1000000
    end_time = float(request.form.get("end_time")) * 1000000
    tlist = runtime_filter(package, 0, all_timestamp_sort(uid))
    tlist_T = list(map(list, zip(*tlist)))
    new_index_start = get_index(tlist_T[1], 'attachBaseContext(Landroid/content/Context;)V#Start')[int(index)]
    new_index_end = get_index(tlist_T[1], 'attachBaseContext(Landroid/content/Context;)V#Start')[int(index) + 1]
    new_tlist = tlist[new_index_start:new_index_end]
    oritime = new_tlist[0][2]
    for i, new_t in enumerate(new_tlist):
        if start_time + oritime == new_t[2]:
            mindex_start = i
        if end_time + oritime == new_t[2]:
            mindex_end = i
    selected_tlist = new_tlist[mindex_start:mindex_end + 1]
    print(mindex_start, mindex_end)
    tree = generate_tree(generate_treelist(selected_tlist))
    return jsonify(result=tree)


@visualization.route('/gettimeline', methods=['GET', 'POST'])
def gettimeline():
    uid = request.form.get("uid")
    index = request.form.get("index")
    package = request.form.get("pkg")
    tlist = runtime_filter(package, 0, all_timestamp_sort(uid))
    tlist_T = list(map(list, zip(*tlist)))
    new_index_start = get_index(tlist_T[1], 'attachBaseContext(Landroid/content/Context;)V#Start')[int(index)]
    new_index_end = get_index(tlist_T[1], 'attachBaseContext(Landroid/content/Context;)V#Start')[int(index) + 1]
    new_tlist = tlist[new_index_start:new_index_end]
    oritime = new_tlist[0][2]
    depth_list = generate_depth(new_tlist)
    node_list = []
    for node in depth_list:
        node_list.append({
            "name": node["name"],
            "value": [
                node["depth"],
                float((node["time_start"] - oritime) / 1000000),
                float((node["time_end"] - oritime) / 1000000),
                node["value"]
            ]
        })
    return jsonify(result=node_list)


@visualization.route('/getinference', methods=['GET', 'POST'])
def getinference():
    uid = request.form.get("uid")
    index = request.form.get("index")
    mindex_start = int(request.form.get("index_method"))
    package = request.form.get("pkg")
    tlist = runtime_filter(package, 0, all_timestamp_sort(uid))
    tlist_T = list(map(list, zip(*tlist)))
    new_index_start = get_index(tlist_T[1], 'attachBaseContext(Landroid/content/Context;)V#Start')[int(index)]
    new_index_end = get_index(tlist_T[1], 'attachBaseContext(Landroid/content/Context;)V#Start')[int(index) + 1]
    new_tlist = tlist[new_index_start:new_index_end]
    selected_tlist = new_tlist[mindex_start - 14:mindex_start + 1]
    selected_tlist_T = list(map(list, zip(*selected_tlist)))
    print(selected_tlist)
    x_input_data = []
    method_time = []
    timestamp = selected_tlist_T[2]
    n_features = all_methods_count * 2
    n_input = 15
    for i in range(len(timestamp) - 1):
        method_time.append(round(((timestamp[i + 1] - timestamp[i]) / 1000000), 2))
    for item in selected_tlist:
        name = item[0] + '.' + item[1]
        if "#Start" in name:
            x_input_data.append(int(serial[get_index(serial_T[0], name.split("#Start")[0])[0]][1]))
        else:
            x_input_data.append(int(serial[get_index(serial_T[0], name.split("#End")[0])[0]][1]) + all_methods_count)
    x_onehot = to_categorical(x_input_data, num_classes=n_features)
    x_input = np.array(x_onehot).reshape((1, n_input, n_features))
    yhat = model_S.predict(x_input, verbose=0)
    y_index = np.argmax(yhat, axis=1)
    y_value = np.squeeze(y_index)
    if y_value < all_methods_count:
        y_name = serial[y_value + 1][0] + "#Start"
    else:
        y_name = serial[y_value - 1 - all_methods_count][0] + "#End"
    yhat_tmp = model_T.predict(x_input, verbose=0)
    y_value_tmp = np.squeeze(yhat_tmp)
    if y_value_tmp < 0:
        y_value_tmp = 0
    y_label_tmp = round(((new_tlist[mindex_start + 1][2] - new_tlist[mindex_start][2]) / 1000000), 2)
    return jsonify({
        "name": y_name,
        "probability": str(yhat[0][y_value]),
        "time": str(y_value_tmp),
        "labeltime": str(y_label_tmp)
    })

@visualization.route('/getmarkovinfer', methods=['GET', 'POST'])
def getmarkovinfer():
    uid = request.form.get("uid")
    ori_tlist = json.loads(request.form.get("selected_tlist"))
    selected_tlist = ori_tlist[-15:]
    x_input_data = []
    n_features = all_methods_count * 2
    n_input = 15
    for name in selected_tlist:
        if "#Start" in name:
            x_input_data.append(int(serial[get_index(serial_T[0], name.split("#Start")[0])[0]][1]))
        else:
            x_input_data.append(int(serial[get_index(serial_T[0], name.split("#End")[0])[0]][1]) + all_methods_count)
    x_onehot = to_categorical(x_input_data, num_classes=n_features)
    x_input = np.array(x_onehot).reshape((1, n_input, n_features))
    yhat = model_S.predict(x_input, verbose=0)
    y_index = np.argmax(yhat, axis=1)
    y_value = np.squeeze(y_index)
    if y_value < all_methods_count:
        y_name = serial[y_value + 1][0] + "#Start"
    else:
        y_name = serial[y_value - 1 - all_methods_count][0] + "#End"
    yhat_tmp = model_T.predict(x_input, verbose=0)
    y_value_tmp = np.squeeze(yhat_tmp)
    if y_value_tmp < 0:
        y_value_tmp = 0
    return jsonify({
        "name": y_name,
        "probability": str(yhat[0][y_value]),
        "time": str(y_value_tmp),
    })

@visualization.route('/getmethod', methods=['GET', 'POST'])
def getmethod():
    # TODO 支持多种APP
    class_name = request.form.get("class_name").split(".")
    method = request.form.get("method")
    # class_name = "com.androvid.videokit.VideoEditorActivity$3".split(".")
    # method = "onClick(Landroid/content/DialogInterface;I)V"
    file_name = class_name[-1]
    path_name = '/'.join(class_name[:-1])
    os.system("jad -o -sjava " + os.path.join("modules/documents", path_name) + "/" + file_name + ".class")
    p1 = re.compile(r'[(](.*?)[)]', re.S)
    if method != "":
        try:
            method_name = method.split("(")[0]
            paras = re.findall(p1, method)[0].split(";")
            type_name = method.split(")")[-1]
            trans_paras = []
            for para in paras:
                if "/" in para:
                    trans_paras.append(para.split("/")[-1])
                else:
                    if para == "I":
                        trans_paras.append("int")
                    elif para == "V":
                        trans_paras.append("void")
                    elif para == "Z":
                        trans_paras.append("boolean")
                    elif para == "B":
                        trans_paras.append("byte")
                    elif para == "C":
                        trans_paras.append("char")
                    elif para == "L":
                        trans_paras.append("long")
                    elif para == "F":
                        trans_paras.append("float")
                    elif para == "D":
                        trans_paras.append("double")
            if type_name == "I":
                type_name = "int"
            elif type_name == "V":
                type_name = "void"
            elif type_name == "Z":
                type_name = "boolean"
            elif type_name == "B":
                type_name = "byte"
            elif type_name == "C":
                type_name = "char"
            elif type_name == "L":
                type_name = "long"
            elif type_name == "F":
                type_name = "float"
            elif type_name == "D":
                type_name = "double"
            else:
                print("undefind type name: " + type_name)
            read_flag = False
            depth = 0
            f = open(file_name.split("$")[0] + ".java")
            line = f.readline()
            matches = []
            tmp_str = ""
            while line:
                if read_flag:
                    if "{" in line:
                        depth += 1
                    if "}" in line:
                        depth -= 1
                    if depth == 0:
                        read_flag = False
                        matches.append(tmp_str + line)
                if type_name in line:
                    if method_name in line.split("(")[0].split(type_name)[1]:
                        if len(trans_paras) == len(line.split(",")):
                            for para in trans_paras:
                                if para not in line:
                                    if not read_flag:
                                        break
                                else:
                                    read_flag = True
                                    continue
                        if len(trans_paras) == 0:
                            print(line)
                            print(trans_paras)
                            print(line.split(","))
                            read_flag = True
                if read_flag:
                    # print(line)
                    tmp_str += line
                line = f.readline()
            f.close()
            print(matches)
        except:
            print("error getmethod")
    else:
        f = open(file_name.split("$")[0] + ".java")
        line = f.readline()
        matches = ""
        while line:
            matches += line
            line = f.readline()
        f.close()
    return jsonify(result=matches)


@visualization.route('/getchart1', methods=['GET', 'POST'])
def getchart1():
    uid = request.form.get("uid")
    method_name = request.form.get("method_name")
    if "#" in method_name:
        method_name = method_name.split("#")[0]
    mycol = mydb[uid]
    runtime_list = []
    time_list = []
    for x in mycol.find({}):
        method = x.get("class") + "." + x.get("status").split("Delta")[0] + x.get("descript")
        if method_name == method:
            runtime_list.append(int(x.get("runtime") / 1000000))
            time_list.append(x.get("timestamp2"))
    return jsonify({
        "data": runtime_list,
        "xaxis": time_list
    })


@visualization.route('/getchart2', methods=['GET', 'POST'])
def getchart2():
    thisuid = request.form.get("uid")
    method_name = request.form.get("method_name")
    if "#" in method_name:
        method_name = method_name.split("#")[0]
    runtime_list = []
    devices_list = []
    for x in mydevices.find({}):
        runtime = []
        uid = x.get("uid")
        mycol = mydb[uid]
        for y in mycol.find({}):
            method = y.get("class") + "." + y.get("status").split("Delta")[0] + y.get("descript")
            if method_name == method:
                if y.get("timestamp2") is None:
                    runtime.append(y.get("runtime"))
                else:
                    runtime.append(int(y.get("runtime") / 1000000))
        if len(runtime) != 0:
            if uid == thisuid:
                runtime_list.append({
                    "value": int(sum(runtime) / len(runtime)),
                    "itemStyle": {
                        "color": '#a90000'
                    }
                })
            else:
                runtime_list.append(int(sum(runtime) / len(runtime)))
            devices_list.append(uid)
    return jsonify({
        "data": runtime_list,
        "xaxis": devices_list
    })


@visualization.route('/getchart3', methods=['GET', 'POST'])
def getchart3():
    uid = request.form.get("uid")
    mycol = mydb[uid]
    runtime_list = []
    mydict = {}
    cm_dict = {}
    for x in mycol.find({}):
        method = x.get("class") + "." + x.get("status").split("Delta")[0] + x.get("descript")
        if method not in mydict.keys():
            mydict[method] = [x.get("runtime")]
        else:
            mydict[method].append(x.get("runtime"))
        cm_dict[method] = [x.get("class"), x.get("status").split("Delta")[0] + x.get("descript")]
    for method in mydict.keys():
        runtime = int((sum(mydict[method]) / len(mydict[method])) / 1000000)
        if runtime > 50:
            runtime_list.append([method, runtime])
    return jsonify({"result": runtime_list, "cm": cm_dict})


@visualization.route('/getuserchart', methods=['GET', 'POST'])
def getuserchart():
    global_uid = request.form.get("global_uid")
    p_list = []
    matrix_list = []
    uid_list = []
    for device in mydevices.find({}):
        uid = device.get("uid")
        try:
            # p_list.append(euclidean_dist_one(uid))
            result = euclidean_dist(global_uid, uid)
            p_list.append(result["vector"])
            matrix_list.append(result["matrix"])
            uid_list.append(uid)
        except:
            print(uid)
    return jsonify({
        "matrix_list": matrix_list,
        "all": p_list,
        "uidList": uid_list
    })
