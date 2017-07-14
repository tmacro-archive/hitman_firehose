FROM tmacro/python:2

EXPOSE 4930

ADD requirements.txt /tmp/requirements.txt

RUN apk_add zeromq py-zmq && \
	pip install -r /tmp/requirements.txt

ADD . /app
ADD ./s6 /etc

