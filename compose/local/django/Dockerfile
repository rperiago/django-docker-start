FROM python:3.6.1

ENV PYTHONUNBUFFERED 1

MAINTAINER	Ricardo Periago	<ricardo.periago@globoesporte.com>

COPY requirements requirements
RUN pip install -r /requirements/local.txt

WORKDIR /usr/src/app/