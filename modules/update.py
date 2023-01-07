# -*- coding: utf-8 -*-
"""
-------------------------------------------------
   File Name：     update
   Description :
   Author :       liminghao
   date：          2020-11-13
-------------------------------------------------
   Change Activity:
                   2020-11-13:
-------------------------------------------------
"""
__author__ = 'liminghao'

# 定时增量更新
from random import randrange
from flask.json import jsonify
from pyecharts.charts import Line
from flask import render_template, Blueprint, send_from_directory
from pyecharts import options as opts
import base64, os
from utils.compile import compile_apk
from flask import g

update = Blueprint("update", __name__)
from multiprocessing import Value
userID = Value('i', 0)

def line_base() -> Line:
    line = (
        Line()
            .add_xaxis(["{}".format(i) for i in range(10)])
            .add_yaxis(
            series_name="",
            y_axis=[randrange(50, 80) for _ in range(10)],
            is_smooth=True,
            label_opts=opts.LabelOpts(is_show=False),
        )
            .set_global_opts(
            title_opts=opts.TitleOpts(title="动态数据"),
            xaxis_opts=opts.AxisOpts(type_="value"),
            yaxis_opts=opts.AxisOpts(type_="value"),
        )
    )
    return line


# @update.route('/<folder>/<filename>')
# def toplevel_static(folder, filename):
#     filename = safe_join(folder, filename)
#     return send_from_directory(update.static_folder, filename)

@update.route("/generate/<cleartext>")
def generater(cleartext):
    ciphertext = base64.b64encode(cleartext.encode("utf-8")).decode("utf-8")
    return ciphertext


@update.route("/download/<ciphertext>")
def downloader_ID(ciphertext):
    userID = base64.b64decode(ciphertext.encode("utf-8")).decode("utf-8")
    print(userID)
    root_path = os.path.join(update.root_path, 'documents')
    apk_path = compile_apk(root_path, userID, "RefTime")
    return send_from_directory(apk_path, "RefTime.apk", as_attachment=True)


@update.route("/download")
def downloader():
    print(userID.value)
    root_path = os.path.join(update.root_path, 'documents')
    apk_path = compile_apk(root_path, str(userID.value), "RefTime")
    with userID.get_lock():
        userID.value += 1
    return send_from_directory(apk_path, "RefTime.apk", as_attachment=True)


# @update.route('/<filename>')
# def public(filename):
#     return render_template(filename)

@update.route("/line")
def line():
    return render_template("dashboard.html")


@update.route("/lineChart")
def get_line_chart():
    c = line_base()
    return c.dump_options_with_quotes()


@update.route("/lineDynamicData")
def update_line_data():
    global idx
    idx = idx + 1
    return jsonify({"name": idx, "value": randrange(50, 80)})
