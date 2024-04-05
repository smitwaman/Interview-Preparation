# Use a base image with a web server installed
FROM nginx:alpine

# Copy the HelloWorld.html file into the web server's document root
COPY HelloWorld.html /usr/share/nginx/html/

# Expose port 80 to allow external access
EXPOSE 80

# Start the web server when the container starts
CMD ["nginx", "-g", "daemon off;"]
