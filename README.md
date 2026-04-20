# 🐧 Fedora Setup Script

Script simples para configurar rapidamente um ambiente Fedora com ferramentas essenciais para desenvolvimento e uso geral.

---

## 🚀 O que esse script faz

Este script automatiza:

* 🔄 Atualização do sistema
* 📦 Configuração do RPM Fusion
* 🧰 Adição de repositórios:

  * VSCode
  * Brave
  * Docker
  * Unity Hub
* 📥 Instalação de pacotes:

  * Navegadores e apps: Firefox, Brave
  * Dev tools: VSCode, Docker
  * Utilitários: qbittorrent, lutris
  * Jogos: Steam
  * Outros: Unity Hub, scrcpy
* 🐳 Configuração do Docker (com permissões para o usuário)

---

## 📦 Requisitos

* Fedora (testado em versões recentes)
* Acesso a `sudo`
* Conexão com a internet

---

## ⚙️ Como usar

```bash
git clone https://github.com/Eynz6002/scriptFedora.git
cd scriptFedora
chmod +x installPrograms.sh
./installPrograms.sh
```

---

## ⚠️ Observações
* 
* Foi testado no Desktop Fedora KDE Plasma 43 por meio de uma Máquina Virtual
* O script usa `sudo` para instalar pacotes e configurar o sistema
* Ao final da execução, é necessário:

  * 🔁 Reiniciar o sistema **ou**
  * 🚪 Fazer logout/login
    para que o Docker funcione corretamente

---

## 🧠 Sobre o projeto

A ideia desse script é ser um **setup rápido e reutilizável** para:

* novas instalações do Fedora
* máquinas virtuais
* ambientes de teste
* configuração de workstation

---

## 🔧 Possíveis melhorias futuras

* [ ] Menu interativo para selecionar pacotes
* [ ] Suporte a Flatpak
* [ ] Fallback automático para falhas (ex: scrcpy)
* [ ] Modularização do script
* [ ] Versão para outros distros

---

💡 Nota

Esse script foi criado para uso pessoal, mas pode ser útil para qualquer pessoa que queira automatizar o setup do Fedora.