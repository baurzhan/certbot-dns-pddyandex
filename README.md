# certbot-dns-pddyandex
PDD Yandex DNS API for certbot --manual-auth-hook --manual-cleanup-hook

Install and renew Let's encrypt wildcard ssl certificate for domain *.site.com using PDD Yandex DNS API:

## Get API KEY

Get your PDD Yandex API key from https://tech.yandex.ru/pdd/doc/concepts/access-docpage/ )

## Run container

```bash
docker run -d \
    -v /data/letsencrypt:/etc/letsencrypt \
    -e API_KEY="<PDD token>" \
    -e DOMAIN="*.site.com" \
    oilab/certbot-dns-pddyandex
```

On start container registers new wildcard certificate for domain and automatically runs renew command every 12 hours