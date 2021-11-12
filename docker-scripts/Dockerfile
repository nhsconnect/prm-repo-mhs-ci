ARG BASE_IMAGE
FROM $BASE_IMAGE

CMD ["pipenv", "run", "start"]

RUN apt-get update --allow-releaseinfo-change
RUN apt-get install -y ca-certificates
COPY ptli-certs/*.crt /usr/local/share/ca-certificates/
COPY live-certs/*.crt /usr/local/share/ca-certificates/
COPY deductions/*.crt /usr/local/share/ca-certificates/
RUN update-ca-certificates
