#!/bin/bash

apt update
apt install -y language-pack-ja-base language-pack-ja locales
locale-gen ja_JP.UTF-8
echo "export LANG='ja_JP.UTF-8'" >> "${HOME}/.profile"
echo "export LANG='ja_JP.UTF-8'" >> "${HOME}/.bashrc"
exit

