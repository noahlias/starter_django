FROM python:3.10.5-slim-buster

LABEL maintainer="noahlias"

## Set env
ENV PYTHONPATH=${PYTHONPATH}:${PWD}
ENV PATH="/root/.local/bin:${PATH}"

## Install pip
RUN  sed -i s@/archive.ubuntu.com/@/mirrors.aliyun.com/@g /etc/apt/sources.list
RUN  sed -i s@/deb.debian.org/@/mirrors.aliyun.com/@g /etc/apt/sources.list
RUN  apt-get clean
RUN apt-get -y update
RUN apt-get -y install git curl gcc libpq-dev


RUN mkdir /starter_django
WORKDIR /starter_django
COPY . .

## Install Dependencies
RUN pip install -r requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple

EXPOSE 8000

CMD ["python", "manage.py","runserver"]