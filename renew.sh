#!/bin/bash
certbot renew \
    --force-renew \
    --manual \
    --manual-auth-hook ./authenticator.sh \
    --manual-cleanup-hook ./cleanup.sh \
    --preferred-challenges dns-01 \
    --server https://acme-v02.api.letsencrypt.org/directory