# Usar Nginx para servir archivos estáticos
FROM nginx:alpine

# Copiar los archivos de la app al directorio por defecto de Nginx
COPY . /usr/share/nginx/html

# Configurar Nginx para usar la variable de entorno $PORT (requerido por Cloud Run)
# Cloud Run inyecta la variable PORT (por defecto 8080)
# Usamos un template y envsubst para inyectar el puerto en la configuración
RUN printf 'server {\n    listen ${PORT};\n    location / {\n        root /usr/share/nginx/html;\n        index index.html;\n    }\n}\n' > /etc/nginx/conf.d/default.conf.template

# Ejecutar envsubst para reemplazar la variable $PORT y arrancar Nginx
# Escucha en 0.0.0.0 por defecto en Nginx
CMD sh -c "envsubst < /etc/nginx/conf.d/default.conf.template > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"
