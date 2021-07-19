# Docker Official Docs
# Source: https://docs.docker.com/engine/install/ubuntu

## Part 1
# 1.1a. Update the apt package index
sudo apt -y update
sudo apt -y upgrade

# 1.1b. Install packages to allow apt to use a repository over HTTPS
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

# 1.2. Add Docker’s official GPG key:
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# 1.3. Set up the stable repository
echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

## Part 2
# 2.1a Update the apt package index
sudo apt -y update

# 2.1b Install the latest version of Docker Engine and containerd
sudo apt-get install docker-ce docker-ce-cli containerd.io

# 2.2 Verify installation
if echo $* | grep -e "--verify" -q
then
  sudo docker run hello-world
else
  echo "Done. Run this to verify installation:\nsudo docker run hello-world"
fi
