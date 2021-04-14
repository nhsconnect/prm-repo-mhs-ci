ARG BASE_IMAGE
FROM $BASE_IMAGE

ADD with-dns-servers.sh /usr/bin/with-dns-servers
ENTRYPOINT ["/usr/bin/with-dns-servers"]
CMD ["pipenv", "run", "start"]

RUN apt-get update
RUN apt-get install -y ca-certificates
COPY ptli-certs/*.crt /usr/local/share/ca-certificates/
RUN update-ca-certificates
