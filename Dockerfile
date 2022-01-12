FROM python:3.8-alpine

ENV PYTHONUNBUFFERED=1
RUN apk update&& apk add postgresql-dev gcc python3-dev musl-dev

WORKDIR /project_x

COPY requirements.txt .

RUN pip3 install -r requirements.txt

