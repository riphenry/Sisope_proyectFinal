  
# Mi Propio ChatGPT Local :D

Este proyecto de la clase de Sistemas operativos esta creado para desplegar una IA generativa privada, hospedada en un local host indepentiente de a conexion de internet que poseas, utilizando contenedores Docker para ello.

## Que problema resuelve:
Esta maquina permite usar una Inteligencia Artificial libre de si tienes acceso a internet o no, usando contenedores de Docker para guardar todas tus conversaciones, esta IA puede conversar, responder preguntas, generar contenido creativo (tanto texto como imagen) y ayudar en tareas como programar, investigar, escribir y resumir.
Ideal para todo tipo de tareas, es una herramienta para la educacion, la asistencia personal, el desarrollo de chatbots y la creatividad, entre otros usos. 

### Requisitos previos a la instalacion:
Usted debe poseer:
* Docker Desktop instalado y corriendo.
* Minimo 8GB de RAM (16GB recomendado para modelos grandes).
* Visual Code de ser posible para que sea mas fluido

### Como instalar esta IA:
1. Clonar o descargar este repositorio.
2. Ejecutar el script de inicio:
   ```bash
   ./scripts/start.sh
(O manualmente: docker-compose up -d)
3.	Acceder a la interfaz web:
	URL: http://localhost:3000
	Crear cuenta de administrador (local).
4.	Seleccionar modelo (ej. Llama) y ya esta listo.

## Instrucciones de uso:
1. Acceder a la interfaz:
   Abre el local host en esta direccion: http://localhost:3000

2. Seleccionar el modelo:
   Una vez dentro ve al menu de modelos, selecciona el modelo llama3.2
   
3. Escribir y enviar mensajes:
   Escribe tu mensaje o pregunta, presiona el boton de ENTER para enviar, hacer click en este tambien vale, el modelo te respondera usando tu GPU o, si no tienes, CPU

4. Cambiar parametros del modelo al gusto del usuario:
   En el menu "Ajustes" o "Configuracion de modelo" puedes ajustar la creatividad del modelo, la velocidad de respuesta, el maximo de tokens, el top-p y/o el modo conversacion/modo comando
   
5. Apagar o reiniciar el servicio:
   Una vez ya terminaste de usar la IA puedes cerrar la pagina y dirigirte al docker-compose una vez mas.
   Si quieres apagar el servicio: docker compose down
   Si quieres reiniciarlo debido a un error que paso: docker compose restart

## Recursos utilizados:
### Creditos del Stack Tecnologico:
* **Motor de IA:** Ollama -> Responsable del procesamiento y ejecucion de modelos de inteligencia artificial.
* **Interfaz Grafica:** Open WebUI -> Proporciona una experiencia visual y accesible para interactuar con el modelo.
* **Infraestructura:** Docker & Docker Compose.-> Facilitan la creacion, despliegue y orquestacion del entorno de ejecucion.
* **Hardware:** Optimizado para ejecucion en CPU, garantizando compatibilidad y eficiencia en equipos sin GPU dedicada.

### Objetivos de Aprendizaje (Sistemas Operativos):
Este proyecto demuestra la implementacion practica de:
* **Gestion de Recursos:** Orquestacion de servicios intensivos en CPU/RAM.
* **Virtualizacion a nivel de SO:** Uso de Docker para aislamiento de procesos.
* **Comunicacion Inter-procesos (IPC):** Comunicacion via API REST entre el frontend y el motor de inferencia sobre una red virtual (Bridge).
* **Persistencia de Datos:** Mapeo de volumenes logicos del contenedor al sistema de archivos fisico del host para preservar modelos y chats.