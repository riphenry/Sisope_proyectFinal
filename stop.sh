echo "Deteniendo servicios..."
docker stop $(docker ps -q)
echo "Servicios detenidos correctamente."
