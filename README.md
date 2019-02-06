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
you need to change the vars PROJECT_NAME with the name of the main directory that contains the structure mentioned before, thats all.

# How to run 

in this exmaple:
## build image
docker build -t &lt;image_name&gt; .

## run image
docker run -p 9000:8000 &lt;image_name&gt;

## create superuser
after connect with the container and run the createsuperuser
docker exec -ti &lt;container_name_or_id&gt; bash
and create the super user
