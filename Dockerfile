#FROM ubuntu:20.04
FROM python:3.12-alpine3.19

WORKDIR /app

COPY app /

COPY requirements.txt /app/requirements.txt

RUN pip install -r requirements.txt

RUN pytest

CMD ["uvicorn app.main:app --host localhost --port 8000 --reload"]

