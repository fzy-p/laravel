#!/bin/bash

# Menampilkan Menu
echo "====================================="
echo "       LARAVEL GENERATOR     "
echo "====================================="
echo "Pilih file yang ingin dibuat:"
echo "1. Migration"
echo "2. Model"
echo "3. Controller"
echo "4. Keluar"
echo "====================================="

# Meminta input pilihan dari user
read -p "Masukkan nomor pilihan Anda (1/2/3/4): " pilihan

case $pilihan in
    1)
        echo ""
        read -p "Masukkan nama Migration (contoh: create_siswa_table): " name
        if [ -n "$name" ]; then
            php artisan make:migration "$name"
        else
            echo "⚠️ Nama tidak boleh kosong!"
        fi
        ;;
    2)
        echo ""
        read -p "Masukkan nama Model (contoh: Siswa): " name
        if [ -n "$name" ]; then
            php artisan make:model "$name"
        else
            echo "⚠️ Nama tidak boleh kosong!"
        fi
        ;;
    3)
        echo ""
        read -p "Masukkan nama Controller (contoh: SiswaController): " name
        if [ -n "$name" ]; then
            php artisan make:controller "$name"
        else
            echo "⚠️ Nama tidak boleh kosong!"
        fi
        ;;
    4)
        echo "Keluar dari program. Selamat ngoding! 🚀"
        exit 0
        ;;
    *)
        echo "⚠️ Pilihan tidak valid. Silakan jalankan ulang script."
        ;;
esac