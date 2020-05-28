#!/bin/sh
TEST_FILE="/etc/letsencrypt/registered"
while [ ! -f "$TEST_FILE" ]; do
    certbot certonly \
        --manual-public-ip-logging-ok \
        --agree-tos --email info@site.com \
        --renew-by-default \
        -d "$DOMAIN" \
        --manual \
        --manual-auth-hook ./authenticator.sh \
        --manual-cleanup-hook ./cleanup.sh \
        --preferred-challenges dns-01 \
        --server https://acme-v02.api.letsencrypt.org/directory \
    && echo "$DOMAIN" > "$TEST_FILE"
    sleep 10
done