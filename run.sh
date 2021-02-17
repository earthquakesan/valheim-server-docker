#!/usr/bin/env bash
# shellcheck disable=SC1090
# Use the unofficial bash strict mode: http://redsymbol.net/articles/unofficial-bash-strict-mode/
set -euo pipefail; export FS=$'\n\t'

# the easiest way to start vhserver in foreground
cp /worlds/* /home/vhserver/.config/unity3d/IronGate/Valheim/worlds/
echo "Y" | ./vhserver debug
