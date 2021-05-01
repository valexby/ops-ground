FROM python:3.7.4-slim-buster

WORKDIR /app

COPY requirements.txt /tmp

RUN pip install -r /tmp/requirements.txt

COPY main.py ./

ENV FLASK_APP=./main.py

EXPOSE 5000
CMD ["flask", "run", "--host=0.0.0.0"]
