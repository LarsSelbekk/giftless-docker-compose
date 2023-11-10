# Giftless
Set up using `./generate-key.sh`. `docker compose up -d`. To generate token, `docker compose run giftless python generate-token.py scope1 scope2 scope3`. The file `docker-compose.bifrost.yml` shows a setup behind a reverse-proxy with mount working on Unix-like systems. To exclusively use that, `COMPOSE_FILE=docker-compose.bifrost.yml` can be added to a file `.env`.

To use this lfs server, add to .lfsconfig in the client repo (change to your LFS URL and remote name):

```
[remote "origin"]
lfsurl = http://localhost:8080/larsselbekk/self-hosted-lfs-server

[lfs "http://localhost:8080/larsselbekk/self-hosted-lfs-server"]
    access = basic
    locksverify = false
```

When pulling, you can leave both username and password blank, as anonymous reading is allowed. This might be a security issue on private repositories. On first push, you will be required to input credentials, which will be username "\_jwt" with the token as password. Afterwards, git credential manager should remember the credentials.
