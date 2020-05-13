PowerDNS Recursor on Alpine Linux
---

Official website: <https://powerdns.com>  
Current version: **4.3.0**

[![](https://images.microbadger.com/badges/image/magnaz/powerdns-recursor.svg)](https://microbadger.com/images/magnaz/powerdns-recursor "Get your own image badge on microbadger.com") [![](https://images.microbadger.com/badges/version/magnaz/powerdns-recursor.svg)](https://microbadger.com/images/magnaz/powerdns-recursor "Get your own version badge on microbadger.com")

### Available tags:
 - latest, 4.3, 4.3.0

### Read default config file
```bash
docker run --rm --entrypoint cat magnaz/powerdns-recursor /etc/recursor.conf-dist
```

### Run
```bash
docker run --name=powerdns-recursor \
  --detach \
  --network=host \
  --volume=/local/path/to/recursor.conf:/etc/recursor.conf:ro \
  magnaz/powerdns-recursor
```
