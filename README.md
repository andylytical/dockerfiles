# Docker Utility Containers

# Python 3
### Windows
#### Initial Setup
* Install chocolatey, docker, git (via Powershell as Administrator)
```PowerShell
# Install chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
# Install docker and git
cinst docker git -y
```

#### Develop Code
Write code in Windows using whatever process you prefer.
Your Windows user home directory (`C:\Users\<username>`) will be mounted at `/home` in the Docker container.
For example: 
```
cd  c:\Users\aloftus\Projects\my_project
```

#### Test Python code
* Clone this repo and start a Python3 docker container (via PowerShell as normal user)
```
git clone https://github.com/andylytical/dockerfiles.git
docker-compose up -d Python3
```
* Connect to Python3 container
```
docker-compose exec Python3 bash
```
* Run python code/project inside Python3 container
```
# navigate to your code/project directory
# using the example above ...
cd /home/Projects/my_project
python run.py #replace "run.py" with the actual name of your starting python file
```
