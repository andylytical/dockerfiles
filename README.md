Docker Utility Containers

# Python 3
### Windows
#### Initial Setup
* Start PowerShell as Administrator
* Install chocolatey, docker, and git
```PowerShell
# Install chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
# Install docker and git
cinst docker git -y
```

#### Develop Code
Write code in Windows using whatever process, editor, IDE you prefer.

Note the filesystem path to the project directory.
Your Windows user home directory (`C:\Users\<username>`) will be mounted at `/home` in the Docker container.
For example, if user `aloftus` has a project `just_4_nuggets` in a folder called `Projects`, the full Windows path would be:
```
cd c:\Users\aloftus\Projects\just_4_nuggets
```
and the path to the same code, inside the docker container, would be:
```
cd /home/Projects/just_4_nuggets
```

#### Test Python code
* Start PowerShell as a normal user
* Clone this `dockerfiles` repo and start the Python3 docker container
```
git clone https://github.com/andylytical/dockerfiles.git
docker-compose run --rm Python3 bash
```
Note you are now inside the docker container.
* Run python code/project inside Python3 container
```
# navigate to your code/project directory
# continuing the "just_4_nuggets" example from above ...
cd /home/Projects/just_4_nuggets
python run.py #replace "run.py" with the actual name of the python file you wish to run
```
