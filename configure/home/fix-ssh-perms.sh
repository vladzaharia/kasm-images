#!/bin/sh

set -e # -e: exit on error

ls -la $HOME/.ssh

chown -R 1000:0 $HOME/.ssh
chmod 700 $HOME/.ssh
chmod 600 $HOME/.ssh/config
chmod 600 $HOME/.ssh/id_rsa
chmod 644 $HOME/.ssh/id_rsa.pub
