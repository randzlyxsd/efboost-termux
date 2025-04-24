#!/data/data/com.termux/files/usr/bin/bash

echo "[+] Membersihkan RAM dan background apps..."
am kill-all

echo "[+] Mengatur DNS ke 1.1.1.1 dan 8.8.8.8..."
setprop net.dns1 1.1.1.1
setprop net.dns2 8.8.8.8

echo "[+] Cek koneksi ke server KONAMI..."
ping -c 5 konami.net

echo "[✓] Booster selesai. Mainkan eFootball sekarang!"
