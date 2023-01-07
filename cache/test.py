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
import matplotlib
import pymongo
import plotly.graph_objects as go
import plotly.offline as pltof
from graphviz import Digraph
from colour import Color
from scipy.optimize import linprog
import numpy as np
from scipy import sparse
from scipy.spatial.distance import cosine, euclidean, cityblock
from sklearn.metrics.pairwise import cosine_similarity
from scipy.stats import pearsonr


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


def random_color():
    hex_colors_dic = {}
    rgb_colors_dic = {}
    hex_colors_only = []
    for name, hex in matplotlib.colors.cnames.items():
        hex_colors_only.append(hex)
        hex_colors_dic[name] = hex
        rgb_colors_dic[name] = matplotlib.colors.to_rgb(hex)
    return hex_colors_only


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


# jsonfile_process()


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
    pp = pprint.PrettyPrinter(indent=2)
    # pp.pprint(mydict)
    return mydict


def avg_runtime_sort(uid):
    mydict = mongodb_process(uid)
    mylist = []
    for clazz in mydict.keys():
        for method in mydict[clazz].keys():
            # print(np.array(mydict[clazz][method]).mean(axis=0,dtype=int))
            u = [clazz, method, np.array(mydict[clazz][method]).mean(axis=0, dtype=int)[0]]
            mylist.append(u)
    return sorted(mylist, key=lambda x: x[2])


def max_runtime_sort(uid):
    mydict = mongodb_process(uid)
    mylist = []
    for clazz in mydict.keys():
        for method in mydict[clazz].keys():
            # print(np.array(mydict[clazz][method]).mean(axis=0,dtype=int))
            u = [clazz, method, np.array(mydict[clazz][method]).max(axis=0)[0]]
            mylist.append(u)
    return sorted(mylist, key=lambda x: x[2])


def runtime_filter(clazz, threshold, time_list):
    tmp = []
    for tt in time_list:
        if tt[-1] >= threshold and clazz in tt[0]:
            tmp.append(tt)
    return tmp


def activity_runtime_filter(clazz, threshold, time_list):
    tmp = []
    call_back_list = ["onCreateDelta", "onStartDelta", "onResumeDelta", "onPauseDelta", "onStopDelta", "onDestroyDelta"]
    for tt in time_list:
        if tt[-1] >= threshold and clazz in tt[0] and tt[1] in call_back_list:
            tmp.append(tt)
    return tmp


def all_timestamp_start_sort(uid):
    mydict = mongodb_process(uid)
    u = []
    for clazz in mydict.keys():
        for method in mydict[clazz].keys():
            for t in mydict[clazz][method]:
                u.append([clazz, method, t[1] - t[0], t[1], t[0]])
    u_sorted = sorted(u, key=lambda x: x[2])
    return u_sorted


def all_timestamp_end_sort(uid):
    mydict = mongodb_process(uid)
    u = []
    for clazz in mydict.keys():
        for method in mydict[clazz].keys():
            for t in mydict[clazz][method]:
                u.append([clazz, method, t[1] - t[0], t[1], t[0]])
    u_sorted = sorted(u, key=lambda x: x[3])
    return u_sorted


def all_timestamp_sort(uid):
    mydict = mongodb_process(uid)
    u = []
    for clazz in mydict.keys():
        for method in mydict[clazz].keys():
            for t in mydict[clazz][method]:
                u.append([clazz, method + "#Start", t[1] - t[0], ])
                u.append([clazz, method + "#End", t[1]])
    u_sorted = sorted(u, key=lambda x: x[2])
    return u_sorted


def max_runtime(uid):
    mydict = mongodb_process(uid)
    max_runtime_list = []
    for clazz in mydict.keys():
        for method in mydict[clazz].keys():
            u = np.array(mydict[clazz][method])
            u_sorted = sorted(u, key=lambda x: x[0])
            max_runtime = u_sorted[-1][0]
            max_runtime_list.append(max_runtime)
    return max(max_runtime_list)


def runtime_spatial(uid, clazz_filter):
    def get_index(lst=None, item=''):
        return [index for (index, value) in enumerate(lst) if value == item]

    tlist = runtime_filter(clazz_filter, -1, all_timestamp_start_sort(uid))
    tlist_T = list(map(list, zip(*tlist)))
    start_index = get_index(tlist_T[1], 'attachBaseContextDelta')
    tlist_sequential = []
    for i in range(len(start_index) - 1):
        tlist_sequential.append(tlist[start_index[i]:start_index[i + 1]])
    tlist_sequential = tlist_sequential[-1:]
    mydict = {}
    data = []
    for l in tlist_sequential:
        start_time = l[0][2]
        for p in l:
            clazz = p[0]
            method = p[1] + "()"
            ts = p[2] - start_time
            rt = p[4]
            name = clazz + "." + method
            if name not in mydict.keys():
                mydict[name] = [[ts, rt]]
            else:
                mydict[name].append([ts, rt])
        break
    # pp = pprint.PrettyPrinter(indent=2)
    # pp.pprint(mydict)
    for name in mydict.keys():
        p = list(map(list, zip(*mydict[name])))
        trace = go.Scatter(
            x=p[0],
            y=p[1],
            mode="markers",
            text=name,
            name=name,
            opacity=1,
            marker_size=3,
        )
        data.append(trace)
    layout = go.Layout(title=uid,
                       xaxis=dict(title='timestamp', tickformat="L"),
                       yaxis=dict(title='runtime'),
                       )
    fig = go.Figure(data=data, layout=layout)
    pltof.plot(fig)


def method_get_id(method, serial):
    serial_T = list(map(list, zip(*serial)))


def all_runtime_area(uid):
    mydict = mongodb_process(uid)
    threshold = 1000
    unit = int(threshold / 200) + 1
    data = []
    shapes = []
    for clazz in mydict.keys():
        for method in mydict[clazz].keys():
            p = np.array(sorted(mydict[clazz][method], key=lambda x: x[1]), dtype=int).T
            np.set_printoptions(suppress=True)
            trace = go.Scatter(
                x=p[1] - p[0],
                y=p[0],
                mode="markers",
                text=clazz + "." + method,
                name=clazz + "." + method,
                marker_size=3,
            )
            for point in p.T:
                if 100 < point[0] < threshold:
                    shape = dict(
                        type='rect',
                        x0=point[1],
                        y0=0,
                        x1=point[1] - point[0],
                        y1=point[0],
                        line=dict(
                            width=0,
                        ),
                        fillcolor="rgb(" + str(int(255 / unit * point[0] / 200)) + "," + str(
                            int(255 / unit * (unit - point[0] / 200))) + ",0)",
                        opacity=1 / (1 + np.exp(-point[0] / max_runtime(uid))),
                        layer="below"
                    )
                    shapes.append(shape)
                elif point[0] > threshold:
                    shape = dict(
                        type='rect',
                        x0=point[1],
                        y0=0,
                        x1=point[1] - point[0],
                        y1=point[0],
                        line=dict(
                            width=0,
                        ),
                        fillcolor="rgb(255,0," + str(int(255 / unit * (point[0] - threshold) / 200)) + ")",
                        opacity=1 / (1 + np.exp(-point[0] / max_runtime(uid))),
                        layer="below"
                    )
                    shapes.append(shape)
                else:
                    continue
            data.append(trace)
            # plt.plot(p[1],p[0],label = clazz+method)
    layout = go.Layout(title=uid,
                       xaxis=dict(title='timestamp', tickformat="L"),
                       yaxis=dict(title='runtime'),
                       )
    fig = go.Figure(data=data, layout=layout)
    fig.update_layout(
        updatemenus=[
            dict(
                type="buttons",
                buttons=[
                    dict(label="None",
                         method="relayout",
                         args=["shapes", []]),
                    dict(label="Timeline",
                         method="relayout",
                         args=["shapes", shapes])
                ],
            )
        ]
    )
    pltof.plot(fig)
    # plt.show()


def a():
    x = [1, 2, 3, 4, 5, 6]
    y = [179954, 110200, 85160, 72500, 69688, 63238]
    plt.scatter(x, y)
    plt.xlabel('CPU_CORES')
    plt.ylabel('loading time')
    plt.show()


def name_split(method):
    return method


def find_index(target, array):
    l = []
    row = len(array)
    col = len(array[0])
    for i in range(row):
        for j in range(col):
            if target == array[i][j]:
                l.append([i, j])
    return l


def dploop(edge, edge_list):
    start_node = edge[0]
    idx = find_index(edge[1], edge_list)
    if len(idx):
        for i in idx:
            if i[1] == 0:
                new_edge = edge_list[i[0]]
                dploop(new_edge[1], edge_list)
    print(new_edge)
    return new_edge[1]


def edge2graph(edge_list):
    graph = {}
    for edge in edge_list:
        if edge[0] not in graph.keys():
            graph[edge[0]] = [edge[1]]
        else:
            if edge[1] not in graph[edge[0]]:
                graph[edge[0]].append(edge[1])
    return graph


def DFS(graph, s):
    stack = []
    stack.append(s)
    end_node = []
    while stack:
        vertex = stack.pop()
        if vertex in graph.keys():
            end_node.append(vertex)
            nodes = graph[vertex]
            # print(nodes)
            for w in nodes:
                stack.append(w)
        else:
            end_node.append(vertex)
    return end_node


def get_step_dict(end_nodes):
    dict = {}
    for key in end_nodes:
        dict[key] = dict.get(key, 0) + 1
    return dict


def activity_runtime(uid, clazz_filter, g):
    fig = go.Figure()
    call_back_list = ["onCreateDelta", "onStartDelta", "onResumeDelta", "onPauseDelta", "onStopDelta", "onDestroyDelta"]
    tlist = activity_runtime_filter(clazz_filter, 0, all_timestamp_start_sort(uid))
    lifecycle_dict = {}
    # print(tlist)
    for t in reversed(tlist):
        if t[0] not in lifecycle_dict.keys():
            lifecycle_dict[t[0]] = [t]
        else:
            # if t[1] not in list(map(list, zip(*lifecycle_dict[t[0]])))[1]:
            lifecycle_dict[t[0]].insert(0, t)
    pp = pprint.PrettyPrinter(indent=2)
    pp.pprint(lifecycle_dict)
    for activity in lifecycle_dict.keys():
        delta_time = 0
        for i, method1 in enumerate(lifecycle_dict[activity][0:-1]):
            for method2 in lifecycle_dict[activity][i + 1:]:
                # method2 = lifecycle_dict[activity][i+j]
                idx = call_back_list.index(method1[1])
                if method2[1] in call_back_list[idx + 1:]:
                    delta_time += method2[2] - method1[3]
                    name1 = method1[0] + "." + name_split(method1[1])
                    name2 = method2[0] + "." + name_split(method2[1])
                    with g.subgraph(name='cluster_' + activity) as c:
                        # c.edge(name1, name2, label=str(delta_time))
                        c.attr(style='filled', color='lightgrey')
                        c.attr('node', fillcolor="1 " + str(method1[4] / 1000) + " 1", style='filled',
                               xlabel=str(method1[4]), pos='0,0!')
                        c.node(name1, shape='box')
                        c.attr('node', fillcolor="1 " + str(method2[4] / 1000) + " 1", style='filled',
                               xlabel=str(method2[4]), pos='0,0!')
                        c.node(name2, shape='box')
                    break
                else:
                    print(method1[1], method2[1])
                    break
        with g.subgraph(name='cluster_' + activity) as c:
            c.attr(label="Activity Runtime(latest): " + str(delta_time))
    g.attr('graph', rankdir='LR')


def dotgraph(uid, clazz_filter):
    g = Digraph('G', filename='cluster.gv')
    tlist = runtime_filter(clazz_filter, 5, all_timestamp_start_sort(uid))
    edges_list = []
    edges_delta_time_list = []
    threshold = 1000
    for i in range(len(tlist)):
        p = tlist[i]
        for j in range(len(tlist) - i):
            q = tlist[i + j]
            edge = [p[0] + "." + name_split(p[1]), q[0] + "." + name_split(q[1])]
            if q[2] > p[3]:
                break
            if p[3] >= q[3] and p != q and edge[::-1] not in edges_list and edge not in edges_list:
                if edge[0] != edge[1]:
                    edges_list.append(edge)
                    edges_delta_time_list.append(q[2] - p[2])
                else:
                    edges_list.append([edge[0], edge[1] + "@overload"])
                    edges_delta_time_list.append(q[2] - p[2])
            g.attr('node', fillcolor="1 " + str(p[-1] / threshold) + " 1", style='filled', xlabel=str(p[4]))
            # , xlabel=str(p[4])
            g.node(edge[0])
            g.attr('node', fillcolor="1 " + str(q[-1] / threshold) + " 1", style='filled', xlabel=str(q[4]))
            g.node(edge[1])
    gg = edge2graph(edges_list)
    # pp = pprint.PrettyPrinter(indent=2)
    # pp.pprint(gg)
    edges_list_copy = edges_list.copy()
    edges_delta_time_list_copy = edges_delta_time_list.copy()
    for k in gg.keys():
        end_nodes = DFS(gg, k)
        step_dcit = get_step_dict(end_nodes)
        for end_node in end_nodes:
            if [k, end_node] in edges_list_copy and step_dcit[end_node] != 1:
                idx = edges_list_copy.index([k, end_node])
                edges_list_copy.remove([k, end_node])
                edges_delta_time_list_copy.pop(idx)
    # print(edges_list_copy)
    for i, edge in enumerate(edges_list_copy):
        delta_time = edges_delta_time_list_copy[i]
        g.edge(edge[0], edge[1], label=str(delta_time),
               color=str(0.27 * max([0, 1 - delta_time / threshold])) + " 1" + " 0.8")
    g.attr('graph', rankdir='LR')
    activity_runtime(uid, clazz_filter, g)
    g.graph_attr.update(rank='min')
    g.render(uid + '_' + clazz_filter + '_graph.dot', view=True)


def markov_matrix(uid, clazz_filter):
    import operator as op
    import csv
    from scipy import sparse
    def get_index(lst=None, item=''):
        return [index for (index, value) in enumerate(lst) if value == item]

    serial = csv.reader(open("./methods_id.csv"))
    serial_T = list(map(list, zip(*serial)))
    serial = list(map(list, zip(*serial_T)))
    all_methods_count = len(serial_T[0])
    print(all_methods_count)
    tlist = runtime_filter(clazz_filter, 1, all_timestamp_sort(uid))
    all_count = len(tlist)
    print(all_count)
    tlist_T = list(map(list, zip(*tlist)))
    start_index = get_index(tlist_T[1], 'attachBaseContext(Landroid/content/Context;)V#Start')
    tlist_sequential = []
    for i in range(len(start_index) - 1):
        tlist_sequential.append(tlist[start_index[i]:start_index[i + 1]])
    tlist_sequential.append(tlist[start_index[-1]:])
    print(len(tlist_sequential))
    count = {}
    for t in tlist_sequential:
        tlist_sequential_T = list(map(list, zip(*t)))
        method_seq = []
        for c, m in zip(tlist_sequential_T[0], tlist_sequential_T[1]):
            method_seq.append(c + "." + m)
        method_seq_id = []
        for m in method_seq:
            if "#Start" in m:
                method_seq_id.append(int(serial[get_index(serial_T[0], m.split("#Start")[0])[0]][1]))
            else:
                method_seq_id.append(int(serial[get_index(serial_T[0], m.split("#End")[0])[0]][1]) + all_methods_count)
        # x_list.append(method_seq_id)
        x = np.array(method_seq_id)
        for i in x[0:len(x) - 1]:
            count[i] = count.get(i, 0) + 1
    count = sorted(count.items(), key=op.itemgetter(0), reverse=False)
    print(count)
    markov_matrix = np.zeros([all_methods_count * 2, all_methods_count * 2])
    count_matrix = np.zeros([all_methods_count * 2, all_methods_count * 2])
    time_matrix = np.zeros([all_methods_count * 2, all_methods_count * 2])
    time_list_matrix = {}
    for t in tlist_sequential:
        tlist_sequential_T = list(map(list, zip(*t)))
        method_seq = []
        time_seq = []
        s_t = t[0][2]
        for c, m, t in zip(tlist_sequential_T[0], tlist_sequential_T[1], tlist_sequential_T[2]):
            method_seq.append(c + "." + m)
            time_seq.append(t)
        method_seq_id = []
        for m in method_seq:
            if "#Start" in m:
                method_seq_id.append(int(serial[get_index(serial_T[0], m.split("#Start")[0])[0]][1]))
            else:
                method_seq_id.append(int(serial[get_index(serial_T[0], m.split("#End")[0])[0]][1]) + all_methods_count)
        # x_list.append(method_seq_id)
        x = np.array(method_seq_id)
        for j in range(len(x) - 1):
            markov_matrix[x[j]][x[j + 1]] += 1
            count_matrix[x[j]][x[j + 1]] += 1
            time_matrix[x[j]][x[j + 1]] += time_seq[j + 1] - time_seq[j]
            if (x[j], x[j + 1]) in time_list_matrix.keys():
                time_list_matrix[(x[j], x[j + 1])].append(time_seq[j + 1] - time_seq[j])
            else:
                time_list_matrix[(x[j], x[j + 1])] = [time_seq[j + 1] - time_seq[j]]
    for t in range(len(count)):
        markov_matrix[count[t][0], :] /= count[t][1]
    # at_matrix = np.true_divide(time_matrix,count_matrix)
    X_f = sparse.coo_matrix(markov_matrix)
    T_f = sparse.coo_matrix(time_matrix)
    C_f = sparse.coo_matrix(count_matrix)
    print(X_f)
    print(T_f)
    # print(C_f)
    base_path = "../modules/documents/"
    sparse.save_npz(base_path + uid + '_markov.npz', X_f, True)
    sparse.save_npz(base_path + uid + '_time.npz', T_f, True)
    sparse.save_npz(base_path + uid + '_count.npz', C_f, True)


def cosine_dist(uid1, uid2):
    vec1 = sparse.load_npz(uid1 + '_markov.npz').todense()
    vec2 = sparse.load_npz(uid2 + '_markov.npz').todense()
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
        s = cosine(col1, col2)
        if np.isnan(s):
            pass
        else:
            cos_list_1.append(s)
            # print(s)
    avg_cos_1 = np.mean(cos_list_1)
    cos_list_2 = []
    for col1, col2 in zip(area2_1, area2_2):
        s = cosine(col1, col2)
        if np.isnan(s):
            pass
        else:
            cos_list_2.append(s)
            # print(s)
    avg_cos_2 = np.mean(cos_list_2)
    cos_list_3 = []
    for col1, col2 in zip(area3_1, area3_2):
        s = cosine(col1, col2)
        if np.isnan(s):
            pass
        else:
            cos_list_3.append(s)
            # print(s)
    avg_cos_3 = np.mean(cos_list_3)
    cos_list_4 = []
    for col1, col2 in zip(area4_1, area4_2):
        s = cosine(col1, col2)
        if np.isnan(s):
            pass
        else:
            cos_list_4.append(s)
            # print(s)
    avg_cos_4 = np.mean(cos_list_4)
    print([cos_list_1.index(max(cos_list_1)), cos_list_2.index(max(cos_list_2)), cos_list_3.index(max(cos_list_3)),
           cos_list_4.index(max(cos_list_4))])
    print([avg_cos_1, avg_cos_2, avg_cos_3, avg_cos_4])


def euclidean_dist_one(uid1):
    vec1 = sparse.load_npz(uid1 + '_markov.npz')
    vec2 = sparse.coo_matrix(np.zeros(vec1.shape))
    count1 = sparse.load_npz(uid1 + '_count.npz')
    count2 = sparse.coo_matrix(np.zeros(vec1.shape))
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
    print([cos_list_1.index(max(cos_list_1)), cos_list_2.index(max(cos_list_2)), cos_list_3.index(max(cos_list_3)),
           cos_list_4.index(max(cos_list_4))])
    print([avg_cos_1, avg_cos_2, avg_cos_3, avg_cos_4])


def euclidean_dist(uid1, uid2):
    vec1 = sparse.load_npz(uid1 + '_markov.npz')
    vec2 = sparse.load_npz(uid2 + '_markov.npz')
    count1 = sparse.load_npz(uid1 + '_count.npz')
    count2 = sparse.load_npz(uid2 + '_count.npz')
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
    print([cos_list_1.index(max(cos_list_1)), cos_list_2.index(max(cos_list_2)), cos_list_3.index(max(cos_list_3)),
           cos_list_4.index(max(cos_list_4))])
    # print(sparse.coo_matrix(area3_1[cos_list_3.index(max(cos_list_3))]))
    # print(sparse.coo_matrix(area3_2[cos_list_3.index(max(cos_list_3))]))
    # print(sparse.coo_matrix(vec2[2205+cos_list_2.index(max(cos_list_2))]))
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
    plt.bar(x1, y1, label="1")
    x2 = [str(x) for x in dist_list2_T[0][::-1]]
    y2 = dist_list2_T[1][::-1]
    plt.bar(x2, y2, label="2")
    x3 = [str(x) for x in dist_list3_T[0][::-1]]
    y3 = dist_list3_T[1][::-1]
    plt.bar(x3, y3, label="3")
    x4 = [str(x) for x in dist_list4_T[0][::-1]]
    y4 = dist_list4_T[1][::-1]
    plt.bar(x4, y4, label="4")
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
    print(max(y1_y))
    ###

    # plt.legend()
    # plt.show()
    # print(sparse.coo_matrix(cos_list_1).col, sparse.coo_matrix(cos_list_2), sparse.coo_matrix(cos_list_3),sparse.coo_matrix(cos_list_4))
    # print(dist_list1)
    # print(sparse.coo_matrix(area2_1[cos_list_2.index(max(cos_list_2))]))
    # print("***********************")
    # print(sparse.coo_matrix(area2_2[cos_list_2.index(max(cos_list_2))]))
    data = []
    data.append(go.Bar(x=x1, y=y1, name="1"))
    data.append(go.Bar(x=x2, y=y2, name="2"))
    data.append(go.Bar(x=x3, y=y3, name="3"))
    data.append(go.Bar(x=x4, y=y4, name="4"))
    layout = go.Layout(title=uid1 + "," + uid2,
                       xaxis=dict(title='function id', tickformat="L"),
                       yaxis=dict(title='distance'),
                       )
    fig = go.Figure(data=data, layout=layout)
    fig.update_layout(barmode="stack")
    pltof.plot(fig)
    print([avg_cos_1, avg_cos_2, avg_cos_3, avg_cos_4])


def compile_apk(root_path, userID, apk_name):
    import re
    import os, sys
    import subprocess
    data = ''
    apk_path = os.path.join(root_path, apk_name)
    smali = os.path.join(root_path, apk_name, "smali/com/injarctor/DeviceUtils.smali")
    apk = os.path.join(root_path, apk_name, "dist", apk_name + ".apk")
    key = os.path.join(root_path, "debug.keystore")
    with open(smali, 'r+') as f:
        for i, line in enumerate(f.readlines()):
            print(line)
            # if "userID" in line:
            #     f.readlines()[i + 2] = "    const-string v1, \"" + userID + "\"\n"
            # if bool(re.search("const-string v1, \"\d+\"", line)):
            #     line = "    const-string v1, \"" + userID + "\"\n"
            data += line
    with open(smali, "w", encoding="utf-8") as f:
        f.write(data)
        print("injected over")
    subprocess.run(['apktool', 'b', apk_path])
    jarsigner = subprocess.Popen(['jarsigner', '-keystore', key, apk, 'release'], stdin=subprocess.PIPE)
    jarsigner.communicate(input='max1998'.encode())
    # jarsigner.stdin.write(b'max1998\n')
    # jarsigner.stdin.flush()
    # jarsigner.expect('Enter Passphrase for keystore')
    # jarsigner.sendline("max1998")
    # os.system("apktool b %s" % root_path)
    # os.system("jarsigner -keystore %s %s release" % (key, apk))


def delmong():
    myclient = pymongo.MongoClient("mongodb://localhost:27017/")
    mydb = myclient["db"]
    coll_names = mydb.list_collection_names(session=None)
    for uid in coll_names:
        if uid != "87F3B5C9E53C064FE040E55315BB9537" and uid != "448583767ECDF7052DA8A22DCB64101C" and uid != "devices_info":
            mycol = mydb[uid]
            mycol.drop()
        else:
            print(uid)


# import base64
# print(base64.b64encode("hoho".encode("utf-8")).decode("utf-8"))
# print(base64.b85encode(b"2"))
# print(base64.b64encode(b"2|hcslab303"))
# print(base64.b64decode(b'MXxoY3NsYWIzMDM=').decode("utf-8"))
# compile_apk("/home/li/Desktop/RefTime", "78567567", "RefTime")
# euclidean_dist("448583767ECDF7052DA8A22DCB64101C", "87F3B5C9E53C064FE040E55315BB9537")
euclidean_dist("448583767ECDF7052DA8A22DCB64101C", "59423D91ED4D72F30CF7B376C9CB0B05")


# euclidean_dist("448583767ECDF7052DA8A22DCB64101C", "9E2AA396AF923C0EF707CFCDC1F0D5E9")
# euclidean_dist("87F3B5C9E53C064FE040E55315BB9537", "9E2AA396AF923C0EF707CFCDC1F0D5E9")
# cosine_dist("87F3B5C9E53C064FE040E55315BB9537", "9E2AA396AF923C0EF707CFCDC1F0D5E9")
# euclidean_dist("59423D91ED4D72F30CF7B376C9CB0B05", "9E2AA396AF923C0EF707CFCDC1F0D5E9")
# euclidean_dist_one("448583767ECDF7052DA8A22DCB64101C")
# euclidean_dist_one("87F3B5C9E53C064FE040E55315BB9537")
# euclidean_dist_one("59423D91ED4D72F30CF7B376C9CB0B05")
# euclidean_dist_one("9E2AA396AF923C0EF707CFCDC1F0D5E9")
# a()
# print(runtime_sort("DF40BDE799701DB2C16EAC962056D847"))
# activity_runtime("448583767ECDF7052DA8A22DCB64101C", "androvid")
# all_runtime_area("87F3B5C9E53C064FE040E55315BB9537")
# markov_matrix("448583767ECDF7052DA8A22DCB64101C", "androvid")


# markov_matrix("87F3B5C9E53C064FE040E55315BB9537", "androvid")
# markov_matrix("59423D91ED4D72F30CF7B376C9CB0B05", "androvid")
# markov_matrix("9E2AA396AF923C0EF707CFCDC1F0D5E9", "androvid")
# runtime_spatial("8EDBAB56B4724197229E066E5D608490", "androvid")
# dotgraph("448583767ECDF7052DA8A22DCB64101C", "androvid")


def all_devices_markov(class_name):
    myclient = pymongo.MongoClient("mongodb://localhost:27017/")
    mydb = myclient["db"]
    mydevices = mydb["devices_info"]
    for device in mydevices.find({}):
        uid = device.get("uid")
        try:
            markov_matrix(uid, class_name)
        except:
            print(uid)

# all_devices_markov("androvid")
