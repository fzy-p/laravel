while true; do
    read -p "Masukkan nama folder project: " dir

    if [ ! -d "$dir" ]; then
        composer create-project laravel/laravel "$dir" || exit
        cd "$dir" || exit
        echo "Berhasil masuk ke: $(pwd)"
        break
    else
        echo "Folder sudah ada, gunakan nama lain!"
    fi
done