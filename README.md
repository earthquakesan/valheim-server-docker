# Valheim Server Dockerized

Based on https://linuxgsm.com/lgsm/vhserver/

## How to run

1. Edit `./common.cfg` and adjust to your liking
2. Build new Valheim server image by running `make build`
3. Copy your world files into `./vhserver/.config/unity3d/IronGate/Valheim/worlds/` (if needed)
4. Run image using `make run` (you can also run it in interactive mode by using `make test`)
