Docker Utility Containers

# Setup
1. Pre-Requsites
  - Windows
    - First Time Only - Do the `First Time Windows Setup` step below
    - Start PowerShell as a normal user
  - Linux
    - Assume git and curl are already installed and running cmds from Bash

1. Clone this `dockerfiles` repo
```
git clone https://github.com/andylytical/dockerfiles.git
cd dockerfiles
```
Note: All `docker-compose` commands should be run from within this directory.

# Python 3
```
docker-compose run --rm py3 bash
```

Run python code (from inside Python3 container)

:information_source: NOTE: Your Windows user directory (`C:\Users\<username>`) will be mounted at `/home` in the Docker container.
```
# navigate to the directory containing your Python code
cd /home/path_to_my_project

# Install any python libraries you require
python -m pip install -r requirements.txt

# run your code
#replace "run.py" with the actual name of the python file you wish to run
python run.py
```

# CentOS7
```
docker-compose run --rm c7 bash
```

# First Time Windows Setup
- Start PowerShell as Administrator
- Install chocolatey
```PowerShell
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
```
- Install git (using chocolatey)
```PowerShell
cinst git -y
```

- Install Docker
  - https://docs.docker.com/docker-for-windows/install/
  - When prompted, enable Hyper-V
  - Docker Settings
    - Shared Drives
      - Add checkbox for drives to export
    - Advanced
      - (OPTIONAL) Adjust Images and volumes VHD location

## Develop Code
Write code in Windows using whatever process, editor, IDE you prefer.
