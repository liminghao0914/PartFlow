# -*- coding: utf-8 -*-
__author__ = 'liminghao'
import os
from flask import Blueprint, request, redirect, url_for
from werkzeug.utils import secure_filename
import json

from utils.tree import Process
from config import *

analyze = Blueprint("analyze", __name__)

# @analyze.route("/upload", methods=['POST'])
# def upload():
#     data = request.get_data()
#     jd = json.loads(data)
#     print(jd)
#     return Response.success()


def generate_jdeps(path):
    p = Process(dotoutput=DOTOUTPUT, fileinput=' '+path)
    p.run()


def allowed_file(filename):
    return '.' in filename and \
           filename.rsplit('.', 1)[1] in ALLOWED_EXTENSIONS


@analyze.route('/upload', methods=['GET', 'POST'])
def upload_file():
    if request.method == 'POST':
        file = request.files['file']
        if file and allowed_file(file.filename):
            filename = secure_filename(file.filename)
            file.save(os.path.join(UPLOAD_FOLDER, filename))
            generate_jdeps(os.path.join(UPLOAD_FOLDER, filename))
            return redirect(url_for('dotgraph.run_graphviz'))
    return '''
    <!doctype html>
    <title>Upload new File</title>
    <h1>Upload new File</h1>
    <form action="" method=post enctype=multipart/form-data>
      <p><input type=file name=file>
         <input type=submit value=Upload>
    </form>
    '''

