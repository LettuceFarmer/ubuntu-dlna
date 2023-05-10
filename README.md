# Ubuntu-dlna

Paso 1: Crear la imagen a partir del dockerfile con el comando:
  - docker build -t dlna .

Paso 1 (ALTERNATIVO): Crear la imagen a partir del docker-compose.yml
  - docker-compose build
  
Paso 2: Crear un contenedor a partir de la imagen dlna utilizando el docker-compose.yml con el comando:
  - docker-compose up -d

Paso 3: Abrir la extension Desktop de codespace de Jupyterlab, instalar vlc i seguir los siguientes subpasos:
  - Paso 3.1: Abrir VLC
  - Paso 3.2: Clicar en VIEW -> Seleccionar "Add Interface" -> Clicar "Web"
  - Paso 3.3: Clicar en "Media" -> Seleccionar " Open network stream " -> insertar " http://localhost:8200 " -> Clicar en "Play" y con esto se mostraran los archivos que se pueden reproducir (en mi caso solo seria el archivo " video.mp4 ")
  
    
