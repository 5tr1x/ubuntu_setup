#!/bin/bash

echo '[*] STARTING'
echo ''
sleep 3

apt_tools=(

tmux
flameshot
nmap
sqlmap
jq

)

LIST=$(for i in ${apt_tools[@]}; do echo -n $i && echo -n ' '; done)
sudo apt install $LIST

#GO

go install github.com/tomnomnom/assetfinder@latest
go install github.com/tomnomnom/httprobe@latest
go install github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest
go install github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
go install github.com/OJ/gobuster/v3@latest
go install github.com/ffuf/ffuf@latest
go install github.com/haccer/subjack@latest

git clone https://github.com/danielmiessler/SecLists.git

wget https://github.com/5tr1x/ubuntu_setup/raw/main/.tmux.conf
mkdir X

sudo apt autoremove

sleep 3
echo ''
echo '[*] DONE'
