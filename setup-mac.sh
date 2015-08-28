#!/bin/sh

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"  && 
brew tap homebrew/science &&
brew install makedepend git python3 gcc suite-sparse swig qt &&

pip3 install virtualenv &&
virtualenv -p python3 orange3env &&
source orange3env/bin/activate &&

git clone https://github.com/biolab/orange3 &&
cd orange3 &&
pip install numpy &&
pip install -r requirements.txt &&
pip install -r requirements-gui.txt &&
python setup.py develop &&
cd .. &&
git clone https://github.com/biolab/orange3-datafusion &&
cd orange3-datafusion &&
python setup.py develop

python -m Orange.canvas
