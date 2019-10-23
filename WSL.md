# Setup for Docker access via Windows Subsystem for Linux (WSL)
aka: Bash on Ubuntu on Windows

## Install Docker on Windows
* https://docs.docker.com/docker-for-windows/install/
* When prompted, enable Hyper-V
* Docker Settings
  * General
    * Expose daemon on tcp://localhost:2375 without TLS
  * Shared Drives
    * Add checkbox for drives to export
  * Advanced
    * (OPTIONAL) Adjust Images and volumes VHD location

## Install Windows Subsystem for Linux
* Powershell
  * `Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux`
* Restart when prompted
* Enable Developer Mode
  * Settings -> Update and Security -> For developers
* From windows search
  * `bash`

## Configure BASH for access to Docker daemon
* From windows search
  * `bash`
```
# Install packages to allow apt to use a repository over HTTPS
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common
# Add Docker's official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
# Set up the repository
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
# Install Docker
sudo apt-get update && sudo apt-get install docker-ce
# Point docker command to windows docker engine
echo "export DOCKER_HOST='tcp://0.0.0.0:2375'" >> ~/.bashrc
```

## References
* https://blog.jayway.com/2017/04/19/running-docker-on-bash-on-windows/
