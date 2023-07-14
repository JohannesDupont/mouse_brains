FROM continuumio/miniconda3:22.11.1 as builder

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      apt-transport-https \
      bash \
      build-essential \
      git \
      libpng-dev


RUN conda install -c anaconda cmake


COPY requirements.txt /


RUN pip install -r /requirements.txt \
    && useradd -ms /bin/bash lab


WORKDIR /home/jovyan

EXPOSE 8888

ENTRYPOINT ["jupyter", "lab","--ip=0.0.0.0","--allow-root"]