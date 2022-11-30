#!/usr/bin/env bash
set -ex

ARCH=$(arch | sed 's/aarch64/arm64/g' | sed 's/x86_64/amd64/g')
if [ "${ARCH}" == "arm64" ] ; then
    echo "Discord for arm64 currently not supported, skipping install"
    exit 0
fi

apt-get update

curl -L -o discord.deb  "https://discord.com/api/download?platform=linux&format=deb"
apt-get install -y ./discord.deb
rm discord.deb
sed -i "s@Exec=/usr/share/discord/Discord@Exec=/usr/share/discord/Discord --no-sandbox@g"  /usr/share/applications/discord.desktop
cp /usr/share/applications/discord.desktop $HOME/Desktop/
chmod +x $HOME/Desktop/discord.desktop