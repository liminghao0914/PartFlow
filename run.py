# -*- coding: utf-8 -*-
__author__ = 'liminghao'
from config import *
from modules import app


if __name__ == "__main__":
    app.run(host=SERVER_HOST, port=SERVER_PORT, debug=False)


