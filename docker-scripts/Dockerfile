ARG BASE_IMAGE
FROM $BASE_IMAGE

ADD with-dns-servers.sh /usr/bin/with-dns-servers
ENTRYPOINT ["/usr/bin/with-dns-servers"]
CMD ["pipenv", "run", "start"]
