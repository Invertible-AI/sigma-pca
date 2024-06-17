FROM tensorflow/tensorflow:2.12.0-jupyter


RUN apt-get update && apt-get -y install cm-super dvipng texlive-latex-extra texlive-latex-recommended \
    git \
    && rm -rf /var/lib/apt/lists/*

COPY requirements.txt /requirements.txt 

RUN pip  install --no-cache-dir  -r /requirements.txt

WORKDIR /data

COPY *.ipynb /data/