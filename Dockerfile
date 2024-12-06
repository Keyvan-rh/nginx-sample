FROM nginx:latest

# Set the working directory to /etc/nginx/conf.d
WORKDIR /etc/nginx/conf.d

# Copy your custom Nginx configuration file (e.g., vhosts.conf)
COPY custom-conf.conf /etc/nginx/nginx.conf
COPY index.html /usr/share/nginx/html/

# Expose port 80 for HTTP requests
EXPOSE 8080

# Run Nginx with the custom configuration
CMD ["nginx", "-g", "daemon off;"]
