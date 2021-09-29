FROM ubuntu:20.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y \ 
	ruby \ 
	build-essential \
	ruby-dev \
	libxml2-dev \
	libxslt-dev \
	libz-dev \
	libssl-dev \
	librasqal-dev \
	libraptor2-dev \
	libicu-dev \
	redis \
	&& rm -rf /var/lib/apt/lists/*
	
RUN gem install cpee cpee-instantiation cpee-logging-xes-yaml

CMD ["/bin/bash"]