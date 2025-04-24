#!/data/data/com.termux/files/usr/bin/bash

pkg update -y
pkg install -y curl git

echo "[+] Mengunduh efboost.sh..."
curl -o $HOME/efboost.sh https://raw.githubusercontent.com/namakamu/efboost-termux/main/efboost.sh
chmod +x $HOME/efboost.sh

echo "[+] Instalasi selesai!"
echo "[+] Jalankan dengan: bash efboost.sh"
