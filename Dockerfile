# Utilise l'image de base Nginx
FROM nginx:alpine

# Crée le fichier index.html avec "Hello World" et le copie dans le répertoire de Nginx
RUN echo '<!DOCTYPE html><html lang="fr"><head><meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1.0"><title>Hello World</title></head><body><h1>Hello World</h1></body></html>' > /usr/share/nginx/html/index.html

# Expose le port 80 (port par défaut de Nginx)
EXPOSE 80

# Démarre Nginx en mode non-démon pour garder le conteneur actif
ENTRYPOINT ["nginx", "-g", "daemon off;"]

