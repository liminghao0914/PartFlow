# -*- coding: utf-8 -*-
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

