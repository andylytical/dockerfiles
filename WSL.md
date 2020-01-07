# Setup Windows Subsystem for Linux (WSL)

## Install Windows Subsystem for Linux
* Powershell (admin mode)
  * `Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux`
* Windows search: `store`
  * Microsoft store: `Ubuntu`
    * Install
    * Launch (this will finish the install)
* Start bash window
  * OPTION 1: From windows search: `ubuntu`
  * OPTION 2: [MobaXterm](https://mobaxterm.mobatek.net/)

## References
* https://docs.microsoft.com/en-us/windows/wsl/install-win10

# (OPTIONAL) Control docker from WSL
## Configure Docker to allow external control
* Docker Settings
  * General
    * Expose daemon on tcp://localhost:2375 without TLS

## Install docker in WSL, then configure Bash to send commands to Docker-for-Windows
* Start bash window
```
# Install packages to allow apt to use a repository over HTTPS
sudo apt update and sudo apt install apt-transport-https ca-certificates curl software-properties-common

# Add Docker's official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Set up the repository
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# Install Docker
sudo apt update && sudo apt install docker-ce

# Point docker command to windows docker engine
echo "export DOCKER_HOST='tcp://0.0.0.0:2375'" >> ~/.bashrc
source ~/.bashrc
```

## References
* https://blog.jayway.com/2017/04/19/running-docker-on-bash-on-windows/
