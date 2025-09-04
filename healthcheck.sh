#!/bin/sh

# This is a proposed healthcheck script (not included in the Docker image).
# It runs a curl request without and with the Tor proxy, to ipify, a public API which returns your current public IP address.
# If any request fails (this includes whenever the Tor/proxy connection may be failing or timing out) the healthcheck fails.
# It also fails if the IPs reported by both requests (with/without passing through the proxy) are the same.


IPIFY_URL="https://api.ipify.org/?format=raw"
#IPIFY_URL="https://api.seeip.org"

set -ex

ORG_IP=$(curl $IPIFY_URL)
PROXY_IP=$(curl --proxy localhost:8118 $IPIFY_URL)

test "$ORG_IP" != "$PROXY_IP"
