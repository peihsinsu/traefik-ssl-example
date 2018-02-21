# Traefik SSL Example

Clone project

```
git clone https://github.com/peihsinsu/traefik-ssl-example.git
```

Create traefik

```
docker-compose -f docker-compose.yaml up -d
```

Create backend container

```
docker-compose -f web.yaml up -d
```

Test

```
curl -H Host:gcpdemo.arecord.us https://your-server-ip
```
