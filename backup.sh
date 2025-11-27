FECHA=$(date +%Y-%m-%d_%H-%M-%S)
tar -czvf backup_webui_$FECHA.tar.gz ./open-webui_storage
echo "Backup creado: backup_webui_$FECHA.tar.gz"
