FROM python:3.10.5-slim-buster

LABEL maintainer="noahlias"

## Set env
ENV PYTHONPATH=${PYTHONPATH}:${PWD}
ENV PATH="/root/.local/bin:${PATH}"

## Install pip
# RUN apt-get -y update
# RUN apt-get -y install git curl


RUN mkdir /starter_django
WORKDIR /starter_django
COPY . .

## Install Dependencies
RUN pip install -r requriements -i https://pypi.tuna.tsinghua.edu.cn/simple

EXPOSE 3000

CMD ["python", "manage.py","runserver"]