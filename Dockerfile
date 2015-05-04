FROM ubuntu:14.04.2

MAINTAINER Tron Jonathan <jonathan@tron.name>

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -yq \
    python-pip python-dev libffi-dev libevent-dev lzop pv gnupg libssl-dev
ADD requirement.txt /tmp/
RUN pip install -r /tmp/requirement.txt

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENTRYPOINT ["wal-e"]
CMD ["--help"]
