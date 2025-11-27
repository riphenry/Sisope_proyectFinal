
# Arquitectura del Sistema:

El sistema se compone de dos microservicios principales que corren en contenedores aislados dentro de una red virtual gestionada por Docker.

## Diagrama de Comunicación

[Usuario (Navegador)] 
      ⬇️ HTTP (Puerto 3000)
[Contenedor: Open WebUI] 
      ⬇️ API REST (Puerto 11434 - Red Interna Docker)
[Contenedor: Ollama] 
      ⬇️ Lectura/Escritura
[Volumen: Disco Físico (Modelos y Datos)]

## Componentes

### 1. Servicio Backend (Ollama)
* **Función:** Actúa como el "Kernel" de la IA. Carga los pesos del modelo (archivos .gguf) en la memoria RAM del sistema.
* **Recursos:** Consume intensivamente la CPU para realizar los cálculos matriciales necesarios para generar texto.
* **Exposición:** Expone una API REST en el puerto 11434, accesible solo dentro de la red de Docker (por seguridad).

### 2. Servicio Frontend (Open WebUI)
* **Función:** Interfaz gráfica de usuario (GUI). Gestiona el historial de chats, usuarios y configuraciones.
* **Comunicación:** Envía los "prompts" del usuario al backend mediante peticiones HTTP POST a `http://ollama:11434/api/generate`.
* **Persistencia:** Utiliza una base de datos interna (SQLite) guardada en un volumen de Docker para que los chats no se pierdan al reiniciar.

## Gestión de Memoria y Hardware
Dado que el sistema se ejecuta en **CPU**:
1.  **Carga del Modelo:** Al iniciar una conversación, Ollama carga el modelo (~2-4 GB para Llama 3.2) desde el disco a la RAM.
2.  **Inferencia:** Durante la generación de texto, todos los núcleos de la CPU se utilizan al 100% para procesar la respuesta token por token.
