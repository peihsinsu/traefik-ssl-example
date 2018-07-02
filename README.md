# Traefik SSL Example

Clone project

```
git clone https://github.com/peihsinsu/traefik-ssl-example.git
```

Create traefik

```
docker-compose -f docker-compose.yaml up -d
```

Create registry backend container (before start, copy config.yml.tpl to config.yml and modify the key, secret and bucket name for your project)

```
docker-compose -f registry.yaml up -d
```

Test

```
curl -H Host:registry-ssct.arecord.us https://your-server-ip
```

Note:
* Check acme.json permission, update permission to 600 for traefik access.
* Please open 80, 443 firewall for ourside access (traefik will use 80 port to trigger to get cert)
