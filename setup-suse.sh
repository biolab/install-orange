#!/bin/bash

p=$PWD
sudo zypper refresh
sudo zypper -n install git python-virtualenv python3-devel gcc gcc-c++ python3-numpy python3-numpy-devel python3-scipy python3-qt4-devel graphviz-devel

mkdir orange3env
virtualenv -p python3 --system-site-packages orange3env
source orange3env/bin/activate

git clone https://github.com/biolab/orange3
cd orange3
pip install -r requirements.txt
pip install -r requirements-gui.txt
python setup.py develop
cd $p
git clone https://github.com/biolab/orange-bio
cd orange-bio
python setup.py develop
