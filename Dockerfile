FROM nvidia/opencl:runtime-ubuntu18.04

RUN apt-get update && \
    apt-get install -y wget ocl-icd-opencl-dev

COPY config.xml /usr/share/doc/fahclient/sample-config.xml

RUN cd tmp && \
    wget https://download.foldingathome.org/releases/public/release/fahclient/debian-testing-64bit/v7.4/fahclient_7.4.4_amd64.deb && \
    dpkg -i --force-depends fahclient_7.4.4_amd64.deb

COPY config.xml /etc/fahclient/config.xml

CMD ["FAHClient", \
     "--gpu=true", \
     "--config=/etc/fahclient/config.xml", \
     "--config-rotate=false"]
