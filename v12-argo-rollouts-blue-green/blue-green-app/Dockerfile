FROM python:3.8-slim-buster
WORKDIR /devops-hobbies
ENV FLASK_APP blue-green.py
COPY requirements.txt . 
RUN pip3 install -r requirements.txt
COPY blue-green.py .
COPY templates ./templates
CMD ["flask", "run", "--host=0.0.0.0"]