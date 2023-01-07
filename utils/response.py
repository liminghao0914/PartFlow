# -*- coding: utf-8 -*-
"""
-------------------------------------------------
   File Name：     response
   Description :
   Author :       liminghao
   date：          2020-11-13
-------------------------------------------------
   Change Activity:
                   2020-11-13:
-------------------------------------------------
"""
__author__ = 'liminghao'
import json


class Response(object):
    def __init__(self):
        pass

    @staticmethod
    def success():
        res = {
                "code": "200",
                "message": "操作成功",
                "data": {}
        }
        return json.dumps(res)

