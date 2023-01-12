# -*- coding: utf-8 -*-
__author__ = 'liminghao'
import os

# SERVER_HOST = '127.0.0.1'
SERVER_HOST = '0.0.0.0'
SERVER_PORT = '9141'
UPLOAD_FOLDER = 'cache'
JAD_OUTPUT = "./cache/outputs/"
APK_FOLDER = "./cache/apks/"
CLASS_FOLDER = "./modules/documents"
ALLOWED_EXTENSIONS = set(['jar'])
START_METHOD = 'attachBaseContext(Landroid/content/Context;)V#Start'

# JDEPS = 'jdeps '
# REGEX = '-e "android.support.*|com.*" '
# INCLUDE = '-include "com.game.Activity.*" '
# FILTER = '-f "java.*" '
# OUTPUT = '-dotoutput '
# RECRUSIVE = '--recursive '
# VERBOSE_CLASS = '-verbose:class '
# CLASS_PATH = '--class-path "com/*" '
# JARFILE = 'classes-enjarify.jar'

DOTOUTPUT = "./cache"
JSONOUTPUT = "./cache/"
PATH = os.path.dirname(os.path.realpath(__file__))
DX_PATH = "/Users/liminghao/Library/Android/sdk/build-tools/30.0.2"
