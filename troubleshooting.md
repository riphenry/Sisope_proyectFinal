
# Solución de Problemas (Troubleshooting) 🔧

### 1. El sistema va muy lento:
* **Causa:** Ejecución en CPU con recursos limitados.
* **Solución:** Intenta usar modelos más pequeños ("quantized"). En lugar de `llama3`, usa `llama3.2` o `phi3` que requieren menos cálculos.

### 2. Error "Connection Refused" en Open WebUI:
* **Causa:** El contenedor de Ollama aún no ha terminado de iniciarse o falló.
* **Solución:** Revisa los logs con el comando `docker logs ollama`. Asegúrate de que en el `docker-compose.yml` la variable `OLLAMA_BASE_URL` sea correcta.

### 3. Los chats desaparecieron:
* **Causa:** Problema con el montaje de volúmenes.
* **Solución:** Verifica que las carpetas de volúmenes en Docker Desktop estén activas y no se hayan purgado manualmente

### 4. No se puede apagar el sistema:
* **Causa:** No esta reconociendo el script stop.sh
* **Solucion:** Usa el codigo "docker stop $(docker ps -q)" para detener el sistema entero o usa ./stop.sh en una nueva terminal que tenga WSL

### 5. Error "stable-diffusion Error error from registry: denied":
* **Causa:** El generador de imagenes de docker no esta siendo permitido por su sistema 
* **Solucion:** Verificar que el administrador de tareas lo este ejecutando solo una vez, que tenga permiso del firewall de interactuar tanto privada como publicamente y que en la configuracion de sistemas este usando el WSL-2 y no el HyperV pues este ultimo bloquea el backend
