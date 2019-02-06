# Pull base image
FROM python:3.7-slim-stretch

ARG PROJECT_DIR=.
ARG PROJECT_NAME=put_here_the_name_of_your_dir
ARG PROJECT_ROOT=$PROJECT_DIR/$PROJECT_NAME
ARG ROOT_CODE=$PROJECT_ROOT/src
ARG REQUIREMENTS=$PROJECT_ROOT/etc/

# Set work directory
WORKDIR /code

# Install system libraries
RUN apt-get update \
	&& apt-get install -y python3-dev

# Install dependencies
RUN pip install --upgrade pip
ADD $REQUIREMENTS /code/
RUN pip install -r requirements.txt

# Copy project
ADD $ROOT_CODE /code/

RUN python manage.py migrate
EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
