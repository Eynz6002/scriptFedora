#!/bin/bash

echo "Atualizando o sistema..."
sudo dnf update -y

echo "Configurando RPMFusion (necessário para Steam e drivers)..."
sudo dnf install -y https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

echo "Adicionando repositório do VSCode..."
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'

echo "Adicionando repositório do Brave..."
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
sudo curl -fsSLo /etc/yum.repos.d/brave-browser-release.repo https://brave-browser-rpm-release.s3.brave.com/brave-browser.repo

echo "Adicionando repositório oficial do Docker CE..."
sudo curl -fsSLo /etc/yum.repos.d/docker-ce.repo https://download.docker.com/linux/fedora/docker-ce.repo

echo "Adicionando repositório oficial do Unity Hub..."
sudo sh -c 'echo -e "[unityhub]\nname=Unity Hub\nbaseurl=https://hub.unity3d.com/linux/repos/rpm/stable\nenabled=1\ngpgcheck=1\ngpgkey=https://hub.unity3d.com/linux/repos/rpm/stable/repodata/repomd.xml.key\nrepo_gpgcheck=1" > /etc/yum.repos.d/unityhub.repo'

echo "Instalando pacotes nativos (RPM)..."
sudo dnf install -y firefox steam code docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin qbittorrent scrcpy lutris brave-browser unityhub

echo "Configurando permissões do Docker..."
sudo systemctl enable --now docker
sudo usermod -aG docker $USER

echo "========================================="
echo "Instalação concluída com sucesso!"
echo "ATENÇÃO: Reinicie o computador (ou faça logoff) para que as permissões do Docker sejam aplicadas à sua conta."
echo "========================================="
