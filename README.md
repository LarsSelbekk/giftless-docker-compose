# Giftless
Set up using `./generate-key.sh`. `docker compose up -d`. To generate token, `docker compose run giftless ./generate-token.sh username namespace/repo`.

To use this lfs server, add to .lfsconfig in the client repo (change to your LFS URL and remote name):

```
[remote "origin"]
lfsurl = http://localhost:8080/larsselbekk/self-hosted-lfs-server

[lfs "http://localhost:8080/larsselbekk/self-hosted-lfs-server"]
    access = basic
    locksverify = false
```
