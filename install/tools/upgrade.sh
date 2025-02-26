#!/usr/bin/env bash
set -ex
# Upgrade all packages
apt-get update
DEBIAN_FRONTEND=noninteractive apt-get upgrade -y -o Dpkg::Options::="--force-confnew"
