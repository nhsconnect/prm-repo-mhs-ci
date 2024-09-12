ARG BASE_IMAGE
FROM $BASE_IMAGE

CMD ["pipenv", "run", "start"]

RUN apt-get update --allow-releaseinfo-change
RUN apt-get install -y ca-certificates
COPY ptli-certs/*.crt /usr/local/share/ca-certificates/
COPY live-certs/*.crt /usr/local/share/ca-certificates/
RUN update-ca-certificates

ARG UTILS_VERSION
RUN test -n "$UTILS_VERSION"
COPY utils/$UTILS_VERSION/run-with-redaction.sh ./utils/
COPY utils/$UTILS_VERSION/redactor              ./utils/

ENTRYPOINT ["./utils/run-with-redaction.sh"]
