# Recipe for docker django single app

this recipe allows to run a django application without libraries for images or else. Its too simple and only for development

# What do you need

this recipe needs a structure in with two directories:
src and etc

## src

contains the projects django itself and here is where have been place settings.py

## etc
contains external files that application doesn't need like requirements.txt

# Settings
yo need to change the vars PROJECT_NAME with the name of the main directory that contains the structure mentioned before, thats all.

# How to run 
docker run -p &lt;host_port&gt;:&lt;container_port&gt;
in this exmaple:
docker run -p 9000: 8000

after connect with the container and run the create superuser