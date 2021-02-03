PowerDNS Recursor on Alpine Linux
---

Official website: <https://powerdns.com>  
Current version: **4.3.5**

![](https://img.shields.io/microbadger/layers/magnaz/powerdns-recursor/4.3.5) ![](https://img.shields.io/docker/image-size/magnaz/powerdns-recursor/4.3.5)

### Available tags:
 - 4.3.5, 4.3, latest
 - 4.3.4
 - 4.3.3
 - 4.3.0

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
