# Dockerfile
FROM nginx:alpine

# Definir um diretório de trabalho não root
WORKDIR /usr/share/nginx/html

# Copiar a página HTML para o container
COPY index.html /usr/share/nginx/html/

# Garantir que o container não roda como root
RUN chown -R 1001:1001 /usr/share/nginx/html
USER 1001

# Expor a porta 80
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
