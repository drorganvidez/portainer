#!/bin/bash

# Actualizar la lista de paquetes
echo "Actualizando lista de paquetes..."
sudo apt-get update

# Actualizar los paquetes instalados
echo "Actualizando paquetes instalados..."
sudo apt-get upgrade -y

# Ejecutar el contenedor Docker de Portainer
echo "Iniciando el contenedor Docker de Portainer..."
sudo docker run -d -p 8000:8000 -p 9000:9000 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest

# Mensaje de éxito
echo "Portainer installed successfully"
