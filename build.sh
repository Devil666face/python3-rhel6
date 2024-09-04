#!/bin/bash
make -j "$(nproc)"
make altinstall
cd /opt/python
rm -rf bin/2to3*
rm -rf bin/idle3*
rm -rf bin/pydoc3*
rm -rf bin/python3*-config
rm -rf bin/easy_install*
rm -rf lib/python*/ctypes/test
rm -rf lib/python*/distutils/tests
rm -rf lib/python*/lib2to3/tests
rm -rf lib/python*/sqlite3/test
rm -rf lib/python*/test
rm -rf lib/python*/lib-dynload/_test*.so
rm -rf lib/python*/lib-dynload/_ctypes_test*.so
rm -rf lib/python*/lib-dynload/xxlimited*.so
rm -rf lib/python*/lib-dynload/_xxtestfuzz.so
rm -rf lib/python*/idlelib
rm -rf lib/python*/tkinter
rm -rf lib/python*/turtle.py
rm -rf lib/python*/turtledemo
rm -rf share
rm -rf */__pycache__
find . -name *__pycache__* -print0 | xargs -I {} -0 rm -rfv "{}"
cd /opt
tar -cvzf python3-rhel6.tar.gz python
cp python3-rhel6.tar.gz /dist
