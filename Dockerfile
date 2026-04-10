# Usar Nginx para servir archivos estáticos
FROM nginx:alpine

# Copiar los archivos de la app al directorio por defecto de Nginx
COPY . /usr/share/nginx/html

# Exponer el puerto 80 (Cloud Run lo detectará o usará 8080 por defecto)
EXPOSE 80

# Comando para iniciar Nginx
CMD ["nginx", "-g", "daemon off;"]
