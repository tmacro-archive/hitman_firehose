FROM tmacro/python:3

EXPOSE 4930

ADD requirements.txt /tmp/requirements.txt

RUN apk_add zeromq py3-zmq && \
	pip install -r /tmp/requirements.txt

ADD . /app
ADD ./s6 /etc

