# all these setup tasks don't involve sudo rights
# create a cltk folder

mkdir ~/ctlk_home
cd ~/ctlk_home

# setup virtual environment
virtualenv venv
source venv/bin/activate
pyenv install 3.5.0
pyenv local 3.5.0

echo "virtual environment setup"

git clone https://github.com/cltk/cltk_api.git
cd cltk_api
pip3.5 install -r requirements.txt
echo "cltk api setup!"

