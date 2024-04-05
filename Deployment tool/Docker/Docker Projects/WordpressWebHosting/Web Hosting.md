Below are the configuration files required to set up WordPress web hosting with DNS routing based on website URL and over HTTPS channel locally using Docker:

1. **docker-compose.yml**:
   
   ```yaml
   version: '3.8'

   services:
     wordpress:
       image: wordpress:latest
       ports:
         - "443:443"
       environment:
         WORDPRESS_DB_HOST: mysql
         WORDPRESS_DB_NAME: wordpress
         WORDPRESS_DB_USER: wordpress
         WORDPRESS_DB_PASSWORD: wordpress
       volumes:
         - wordpress_data:/var/www/html

     mysql:
       image: mysql:latest
       environment:
         MYSQL_ROOT_PASSWORD: root_password
         MYSQL_DATABASE: wordpress
         MYSQL_USER: wordpress
         MYSQL_PASSWORD: wordpress
       volumes:
         - mysql_data:/var/lib/mysql

   volumes:
     wordpress_data:
     mysql_data:

   networks:
     default:
       driver: bridge
   ```

2. **nginx.conf**:
   
   ```nginx
   server {
       listen 443 ssl;
       server_name yourdomain.com;

       ssl_certificate /etc/nginx/certificate.crt;
       ssl_certificate_key /etc/nginx/private.key;

       location / {
           proxy_pass http://wordpress:443;
           proxy_set_header Host $host;
           proxy_set_header X-Real-IP $remote_addr;
           proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
           proxy_set_header X-Forwarded-Proto $scheme;
       }
   }
   ```

3. **certificate.crt**:
   SSL/TLS certificate file for your domain.

4. **private.key**:
   Private key file corresponding to the SSL/TLS certificate.

Make sure to replace `yourdomain.com` with your actual domain name in the `docker-compose.yml` and `nginx.conf` files.

You can use these configuration files to set up WordPress web hosting with DNS routing based on website URL and over HTTPS channel locally using Docker. Adjust the configurations and filenames according to your specific requirements and environment.
