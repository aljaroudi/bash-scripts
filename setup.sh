# Add deadsnakes for Python
# sudo add-apt-repository ppa:deadsnakes/ppa

# Install basics + common software
sudo apt -y install software-properties-common vim git curl python3.9-distutils build-essential nodejs npm

# NVIDIA drivers PPA
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt -y update
sudo apt -y install nvidia-driver-465

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
echo 'export PATH="$PATH:~/.local/bin"' >> ~/.bashrc

# python3 == python
echo 'alias python=python3' >> ~/.bashrc

# pip == pip3
echo 'alias pip3=pip' >> ~/.bashrc

# CUDA stuff to PATH
echo 'export LD_LIBRARY_PATH=/usr/local/cuda/lib' >> ~/.bashrc
echo 'export PATH=$PATH:/usr/local/cuda/bin' >> ~/.bashrc 

# Apply changes
source ~/.bashrc

# Update and upgrade again
sudo apt -y update && sudo apt -y upgrade

# Install Jupyter
pip install jupyterlab notebook pyyaml 
