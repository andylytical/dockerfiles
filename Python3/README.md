Python 3 Development Container

# Setup on Windows
### Enable local powershell scripts (ONE TIME ONLY)
1. PowerShell as Administrator
```
set-executionpolicy remotesigned
```

### Write code somewhere in your Windows User directory
For example: 
```
cd  c:\Users\aloftus\Projects\my_project
```

### Run
1. Start powershell
1. Clone this repo
```
git clone https://github.com/andylytical/dockerfiles.git
```
1. Start Python container
```
cd dockerfiles\Python3
.\wrun.ps1
```
1. In the Python3 Docker containers, navigate to your code directory and run your Python program
```
cd /home/Projects/my_project
python FILENAME.py
```

# Optional Installs
### Install chocolatey (used by commands below)
1. PowerShell as Administrator
```
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
```
See also: https://chocolatey.org/install

### Install vim
1. PowerShell as Administrator
```
cinst vim -y
```

### Install git
1. PowerShell as Administrator
```
cinst git -y
```
Note: Don't know how to setup SSH keys for this git via PowerShell
