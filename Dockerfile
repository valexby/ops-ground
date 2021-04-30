FROM python:3.7.4-slim-buster

RUN pip install -f requirements.txt

WORKDIR /app

COPY main.py ./

ENV FLASK_APP=./main.py

EXPOSE 5000
CMD ["flask", "run", "--host=0.0.0.0"]
