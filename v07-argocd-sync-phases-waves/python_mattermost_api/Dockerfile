FROM python:3.8-slim-buster
WORKDIR /devops-hobbies
COPY requirements.txt .
RUN pip3 install -r requirements.txt
COPY mattermost_api.py .
