# Add deadsnakes for Python
sudo add-apt-repository ppa:deadsnakes/ppa
# Install common software
sudo apt -y install software-properties-common
# Install basics
sudo apt -y install vim git curl python3.9-distutils build-essential
# Update and upgrade
sudo apt -y update && sudo apt -y upgrade

# Download & install Google Chrome. Remove 
curl https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb > chrome.deb 
sudo apt install ./chrome.deb
rm chrome.deb

# Download & install pip for Python 3
curl -fsSl https://bootstrap.pypa.io/get-pip.py | python3

# Install VS Code using Snap
sudo snap install --classic code

# Add pip to PATH
export PATH="$PATH:~/.local/bin"

# python3 is now just python
alias python=python3

# Update and upgrade again
sudo apt -y update && sudo apt -y upgrade

# Install Jupyter
pip install jupyterlab notebook
