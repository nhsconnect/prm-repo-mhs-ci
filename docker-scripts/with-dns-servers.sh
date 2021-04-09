#!/bin/bash -e

# This is a custom entrypoint for the MHS images so that we can control which DNS servers are used inside the container

if [ -z "${DNS_SERVER_1}" ]; then
  echo "DNS_SERVER_1 must be set"
  exit 1;
fi

if [ -z "${DNS_SERVER_2}" ]; then
  echo "DNS_SERVER_2 must be set"
  exit 1;
fi

cat << EOF > /etc/resolv.conf
nameserver ${DNS_SERVER_1}
nameserver ${DNS_SERVER_2}
EOF

echo "Starting $@"
# Run anything passed as arguments
$@
