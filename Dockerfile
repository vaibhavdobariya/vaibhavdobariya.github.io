# Use a lightweight web server (nginx) as base
FROM nginx:alpine

# Copy your site files into nginx html directory
COPY . /usr/share/nginx/html

# Expose HTTP port
EXPOSE 80

# Run nginx in foreground
CMD ["nginx", "-g", "daemon off;"]
