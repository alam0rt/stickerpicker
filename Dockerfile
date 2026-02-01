FROM nginx:alpine

# Copy the web content
COPY web/ /usr/share/nginx/html/

# Custom nginx config for SPA
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
