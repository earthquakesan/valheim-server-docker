# Valheim Server Dockerized

Based on 

## How to run

```
docker build -t valheim .
docker run -it --rm -v $(pwd)/worlds:/worlds -v $(pwd)/common.cfg:/data/lgsm/config-lgsm/vhserver/common.cfg -p 2456-2458:2456-2458/udp -p 2456-2458:2456-2458/tcp valheim:latest
```

## TODO

* Saves got overwritten on first run of the server, need to create a proper volume mounting for /home/vhserver/.config/unity3d/IronGate/Valheim dir
