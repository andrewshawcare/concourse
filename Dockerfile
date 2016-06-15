FROM phusion/baseimage

RUN apt-get -qq update && \
  DEBIAN_FRONTEND=noninteractive apt-get -yq install curl && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*

RUN curl -o /usr/local/bin/concourse -sSL \
  "https://github.com/concourse/concourse/releases/download/v1.3.0/concourse_linux_amd64" && \
  chmod +x /usr/local/bin/concourse

RUN mkdir -p /var/concourse/worker

ENTRYPOINT ["/sbin/my_init", "--", "/usr/local/bin/concourse"]
