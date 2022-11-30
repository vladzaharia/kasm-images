#!/usr/bin/env bash
set -ex

# Install starship
curl -sS https://starship.rs/install.sh | sh -s -- -y

# Add ansible repository
apt-add-repository --yes --update ppa:ansible/ansible

# Add doppler repository
apt-get update && apt-get install -y apt-transport-https ca-certificates curl gnupg
curl -sLf --retry 3 --tlsv1.2 --proto "=https" 'https://packages.doppler.com/public/cli/gpg.DE2A7741A397C129.key' | apt-key add -
echo "deb https://packages.doppler.com/public/cli/deb/debian any-version main" | tee /etc/apt/sources.list.d/doppler-cli.list

# Install packages
apt-get update
apt-get install -y ansible direnv doppler git golang-go nano nodejs tmux vlc xdotool zip
