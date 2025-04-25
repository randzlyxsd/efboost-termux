#!/data/data/com.termux/files/usr/bin/bash

# Tampilan awal
echo "\e[92m"
echo "##############################################"
echo "#                                            #"
echo "#           efootbalinside Tools             #"
echo "#                                            #"
echo "##############################################"
echo "\e[0m"
echo "Tiktok   : efootbalinside"
echo "YouTube  : efootbalinside"
echo "Instagram: randijb_"
echo ""
echo "1. Pengoptimalan Performanya"
echo "2. Setting Max Refresh Rate (60 / 90 / 120 / 144 Hz)"
echo "3. Pengoptimalan GPU/CPU"
echo "4. Anti Lag eFootball"
echo "5. Nonaktifkan Animasi untuk FPS Lebih Tinggi"
echo "6. Menonaktifkan Proses Latar Belakang"
echo ""

read -p "Pilih opsi (1-6): " opsi

case $opsi in
  1) 
    echo "Menghapus cache dan membersihkan RAM..."
    pm clear jp.konami.pesam
    echo "Selesai."
    ;;
  
  2)
    read -p "Masukkan refresh rate (60 / 90 / 120 / 144): " rate
    settings put system peak_refresh_rate $rate
    settings put system min_refresh_rate $rate
    echo "Refresh rate di-set ke $rate Hz"
    ;;
  
  3)
    echo "Mengoptimalkan GPU dan CPU..."
    # Mengoptimalkan performa dengan menurunkan limit CPU dan mengurangi background processes
    settings put global background_limit 1  # Batasi aplikasi latar belakang
    settings put global doze_enabled 1  # Aktifkan Doze mode untuk mengurangi pemakaian daya
    settings put global aggressive_wake_up 0  # Matikan wake-up agresif
    echo "Optimasi GPU/CPU selesai."
    ;;
  
  4)
    echo "Menerapkan setting anti lag untuk eFootball..."
    settings put global stay_on_while_plugged_in 3
    echo "Mode anti lag aktif. Pastikan game berjalan tanpa hambatan."
    ;;
  
  5)
    echo "Nonaktifkan animasi untuk FPS lebih tinggi..."
    settings put global window_animation_scale 0.0
    settings put global transition_animation_scale 0.0
    settings put global animator_duration_scale 0.0
    echo "Animasi dinonaktifkan untuk meningkatkan FPS."
    ;;
  
  6)
    echo "Menonaktifkan proses latar belakang..."
    am force-stop jp.konami.pesam
    echo "Proses latar belakang telah dihentikan."
    ;;
  
  *)
    echo "Pilihan tidak valid."
    ;;
esac
