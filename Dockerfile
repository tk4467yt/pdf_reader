FROM python:2.7-alpine3.7
COPY repositories /etc/apk/repositories
RUN pip install --upgrade pip
COPY pdfminer-master/ /pdfminer-master/
RUN cd /pdfminer-master/ && python setup.py install

