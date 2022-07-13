#!/bin/bash

exists()
{
  command -v "$1" >/dev/null 2>&1
}
if exists curl; then
	echo ''
else
  sudo apt update && sudo apt install curl -y < "/dev/null"
fi
bash_profile=$HOME/.bash_profile
if [ -f "$bash_profile" ]; then
    . $HOME/.bash_profile
fi

sleep 1 && curl -s https://raw.githubusercontent.com/cryptology-nodes/main/main/logo.sh |  bash && sleep 2

mkdir lukso-l16-testnet
cd lukso-l16-testnet
sudo curl https://install.l16.lukso.network | sudo bash

sudo lukso network init --chain l16


echo -e "\e[32mВсе ноды были удалены\e[39m!" && sleep 10
echo -e "\e[32mЭто был пранк - нода Lukso работает :) \e[39m"

