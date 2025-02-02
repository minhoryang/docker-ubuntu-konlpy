# ubuntu
FROM ubuntu:latest

# init
RUN apt-get update && \
    apt-get install -y g++ git curl

# java stuff
RUN apt-get install -y default-jdk default-jre

# python stuff
RUN apt-get install -y python3-pip python3-dev
RUN cd /usr/local/bin && \
    ln -s /usr/bin/python3 python && \
    pip3 install --upgrade pip

# install mecab
RUN curl -s https://raw.githubusercontent.com/konlpy/konlpy/master/scripts/mecab.sh | bash -s

# cleanse
RUN apt-get clean && \
	rm -rf /var/lib/apt/lists/*

# entry
ENTRYPOINT ["python3"]

# konlpy sandbox
ENV LC_ALL=C.UTF-8
RUN pip3 install JPype1 pytest
ADD ./konlpy /sandbox
RUN cd /sandbox && \
    python setup.py install
