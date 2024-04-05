To achieve web hosting with DNS routing based on website URL and over HTTPS channel locally using Docker, follow these steps:

1. **Create Dockerized Web Application**:
   Develop or containerize your web application using Docker. Ensure that your application supports HTTPS by configuring SSL/TLS certificates. For example, you can use a simple Nginx web server container:

   ```bash
   mkdir webapp
   cd webapp
   ```

   Create a file named `Dockerfile` with the following content:

   ```Dockerfile
   FROM nginx:alpine

   COPY nginx.conf /etc/nginx/nginx.conf
   COPY ssl/certificate.crt /etc/nginx/certificate.crt
   COPY ssl/private.key /etc/nginx/private.key
   ```

   Create an `nginx.conf` file with Nginx configuration:

   ```nginx
   server {
       listen 443 ssl;
       server_name yourdomain.com;

       ssl_certificate /etc/nginx/certificate.crt;
       ssl_certificate_key /etc/nginx/private.key;

       location / {
           root /usr/share/nginx/html;
           index index.html;
       }
   }
   ```

   Replace `yourdomain.com` with your actual domain name.

2. **Obtain SSL/TLS Certificates**:
   Obtain SSL/TLS certificates for your domain using tools like Certbot or manually generate self-signed certificates for testing purposes.

3. **Build Docker Image**:
   Build the Docker image for your web application:

   ```bash
   docker build -t webapp .
   ```

4. **Run Docker Container**:
   Run the Docker container locally, exposing port 443 for HTTPS traffic:

   ```bash
   docker run -d --name webapp-container -p 443:443 webapp
   ```

5. **Edit Hosts File (Optional)**:
   Edit your local machine's hosts file to map your domain name to localhost for testing:

   ```
   sudo nano /etc/hosts
   ```

   Add an entry like this:

   ```
   127.0.0.1    yourdomain.com
   ```

6. **Test Connectivity and HTTPS**:
   Open a web browser and navigate to `https://yourdomain.com`. You should see your web application served securely over HTTPS.

By following these steps, you can set up web hosting with DNS routing based on website URL and over HTTPS channel locally using Docker. Adjust the configurations and tools according to your specific requirements and environment.
