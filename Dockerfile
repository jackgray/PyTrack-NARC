FROM python:3.10 AS build 
USER root
COPY /app /app
# COPY /PyTrack /app/PyTrack

ARG DEBIAN_FRONTEND=noninteractive

# RUN apt-get update -y 
# RUN apt-get install python3-tk -y
# RUN /usr/local/bin/python3 -m pip install --upgrade pip
# RUN /usr/local/bin/python3 -m pip install --upgrade setuptools
# RUN /usr/local/bin/python3 -m pip install --upgrade functools

RUN python3 -m pip install -r /app/requirements.txt

WORKDIR /app
CMD ["python3", "main.py"]
