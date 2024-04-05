To create a WordPress hosting project using Docker with network and volume objects, and to run SQL WordPress Docker containers in the same network using persistent volume (PV) as storage for the SQL database, you can use Docker Compose files. Below are the steps to achieve this:

With Docker Compose Approch 

1. **Create Docker Network**:

   Create a Docker network to connect the WordPress and MySQL containers:
   ```bash
   docker network create wordpress_network
   ```
2. **Create Docker Compose Files**:

   Create two Docker Compose files: one for the WordPress application and another for the MySQL database.

   
3. **Start MySQL Container**:

   Start the MySQL container using the `mysql-compose.yml` file:
   ```bash
   docker-compose -f mysql-compose.yml up -d
   ```

4. **Start WordPress Container**:

   Start the WordPress container using the `docker-compose.yml` file:
   ```bash
   docker-compose up -d
   ```

5. **Access WordPress Application**:

   Access the WordPress application by navigating to `http://localhost:8080` in your web browser. Follow the WordPress installation wizard to set up your WordPress site.

========================

With Docker Commands

here's how you can achieve the same setup using simple Docker commands:

1. **Create Docker Network**:

   Create a Docker network to connect the WordPress and MySQL containers:
   ```bash
   docker network create wordpress_network
   ```

2. **Start MySQL Container**:

   Start the MySQL container with a persistent volume for data storage:
   ```bash
   docker run -d \
     --name mysql \
     --network wordpress_network \
     -e MYSQL_ROOT_PASSWORD=root_password \
     -e MYSQL_DATABASE=wordpress \
     -e MYSQL_USER=wordpress \
     -e MYSQL_PASSWORD=wordpress \
     -v mysql_data:/var/lib/mysql \
     mysql:latest
   ```

3. **Start WordPress Container**:

   Start the WordPress container with a persistent volume for data storage:
   ```bash
   docker run -d \
     --name wordpress \
     --network wordpress_network \
     -e WORDPRESS_DB_HOST=mysql \
     -e WORDPRESS_DB_NAME=wordpress \
     -e WORDPRESS_DB_USER=wordpress \
     -e WORDPRESS_DB_PASSWORD=wordpress \
     -p 8080:80 \
     -v wordpress_data:/var/www/html \
     wordpress:latest
   ```

4. **Access WordPress Application**:

   Access the WordPress application by navigating to `http://localhost:8080` in your web browser. Follow the WordPress installation wizard to set up your WordPress site.

With these simple Docker commands, you have created a WordPress hosting project using Docker, with network and volume objects. The WordPress and MySQL containers are connected via a Docker network, and persistent volumes are used to store the SQL database and WordPress application data. Adjust the configurations and passwords according to your requirements.
