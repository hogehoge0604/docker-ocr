FROM ubuntu

COPY file/ocr.sh /root/

RUN echo "deb http://archive.ubuntu.com/ubuntu bionic universe" >> /etc/apt/sources.list
RUN apt update \
        && apt install -y software-properties-common \
        && add-apt-repository -y ppa:malteworld/ppa \
        && apt install -y snapd tesseract-ocr tesseract-ocr-jpn pdftk poppler-utils
RUN chmod 777 /root/ocr.sh
