# -*- coding: utf-8 -*-
"""
-------------------------------------------------
   File Name：     SessionAnalyzer
   Description :
   Author :       liminghao
   date：          11/23/20
-------------------------------------------------
   Change Activity:
                   11/23/20:
-------------------------------------------------
"""
__author__ = 'liminghao'
import json
from itertools import groupby
import pandas as pd
import pprint
import fcntl
import pymongo

from utils.config import *
from config import *


class Analyzer(object):
    def __init__(self):
        self.receiveJSON = None
        self.sessionJSON = PROCESSED_JSON.copy()
        self.deviceJSON = {}
        self.processedJSON = None
        self.chartJSON = None
        self.tmpJSON = []
        self.unit_status_list = []
        self.client = pymongo.MongoClient("localhost", 27017)
        self.db = self.client["db"]

    def read(self, json):
        self.receiveJSON = json

    def save(self,dict,uid):
        b = json.dumps(dict)
        f = open(JSONOUTPUT+uid+".json", 'w')
        fcntl.flock(f.fileno(), fcntl.LOCK_EX)
        f.write(b)
        fcntl.flock(f.fileno(), fcntl.LOCK_UN)
        f.close()

    def load(self,uid):
        f = open(JSONOUTPUT+uid+".json", 'r')
        fcntl.flock(f.fileno(), fcntl.LOCK_EX)
        content = f.read()
        fcntl.flock(f.fileno(), fcntl.LOCK_UN)
        if len(content) == 0:
            f.close()
            return None
        else:
            a = json.loads(content)
            f.close()
            return a

    def switch(self, type, json):
        switchfunc = {
            "session": lambda: self.session(json),
            "device": lambda: self.device(json),
        }
        func = switchfunc[type]
        func()

    def process(self):
        self.switch(self.receiveJSON.get("type"),self.receiveJSON)

    def session(self, receiveJSON):
        if "Delta" in receiveJSON.get("status"):
            # pp = pprint.PrettyPrinter(indent=2)
            unit_status = PROCESSED_JSON_STATUS.copy()
            collect = self.db[receiveJSON.get("uid")]
            collect.insert_one(receiveJSON)
            # if not os.path.exists(JSONOUTPUT+self.receiveJSON.get("uid")+".json"):
            #     unit_status["class"] = self.receiveJSON.get("class")
            #     unit_status["runtime"] = self.receiveJSON.get("runtime")
            #     unit_status["timestamp"] = self.receiveJSON.get("timestamp")
            #     unit_status["method"] = self.receiveJSON.get("status")
            #     self.sessionJSON["status"] += self.unit_status_list.copy()
            #     self.save(self.sessionJSON, self.receiveJSON.get("uid"))
            #     self.sessionJSON = PROCESSED_JSON.copy()
            # else:
            #     try:
            #         unit_status["class"] = self.receiveJSON.get("class")
            #         unit_status["runtime"] = self.receiveJSON.get("runtime")
            #         unit_status["timestamp"] = self.receiveJSON.get("timestamp")
            #         unit_status["method"] = self.receiveJSON.get("status")
            #         dictf = self.load(self.receiveJSON.get("uid"))
            #         # dictf["status"] += self.unit_status_list.copy()
            #         dictf["status"].append(unit_status)
            #         self.save(dictf, self.receiveJSON.get("uid"))
            #     except Exception as e:
            #         pass
                    # print(e)
                    # print("E: "+str(self.receiveJSON))
                    # pass
            # self.sessionJSON["status"] = {k: list(v) for k, v in
            #                               groupby(self.sessionJSON["status"], key=lambda x: x["class"])}
            # pp.pprint(self.sessionJSON)

    def device(self, receiveJSON):
        uid = receiveJSON.copy().get("uid")
        tempdict = {uid: self.receiveJSON.copy()}
        devices = self.db["devices_info"]
        if not list(devices.find({"uid": uid})):
            devices.insert_one(receiveJSON)
        # if uid in self.deviceJSON.keys():
        #     self.deviceJSON[uid].update(self.receiveJSON.copy())
        # else:
        #     self.deviceJSON.update(tempdict.copy())
        # # print(self.deviceJSON)
        # if not os.path.exists(JSONOUTPUT + "devices_info" + ".json"):
        #     self.save(self.deviceJSON, "devices_info")
        # else:
        #     dictf = self.load("devices_info")
        #     if dictf is None:
        #         self.save(self.deviceJSON, "devices_info")
        #     else:
        #         dictf.update(self.deviceJSON)
        #         self.save(dictf, "devices_info")
        # pp = pprint.PrettyPrinter(indent=4)
        # pp.pprint(self.deviceJSON)

    def kill(self):
        self.receiveJSON = None
        self.sessionJSON = PROCESSED_JSON.copy()
        self.chartJSON = None
        self.tmpJSON = []
        self.unit_status_list = []

    def getsessionJSON(self, uid):
        return self.load(uid)

    def chartify(self):
        pass

    def old_process(self):
        mstatus = self.receiveJSON.get("status")
        if "Entry" in mstatus:
            self.tmpJSON.append(self.receiveJSON)
        else:
            unit_status = PROCESSED_JSON_STATUS.copy() #
            unit_status["class"] = self.receiveJSON.get("class")
            for j in self.tmpJSON:
                if j["class"] == self.receiveJSON["class"]:
                    unit_status["runtime"] = str(int(self.receiveJSON.get("time")) - int(j["time"]))
                    self.tmpJSON.remove(j)
                    break
            if unit_status["runtime"] != "":
                self.sessionJSON["status"].append(unit_status)
            print(self.sessionJSON["status"])