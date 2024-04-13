Certainly! Below are Dockerfile examples for each architecture mentioned:

### 1. Simple/Script-based:

```Dockerfile
# Use an official Python runtime as a parent image
FROM python:3.x

# Copy the current directory contents into the container
COPY . /app

# Set the working directory
WORKDIR /app

# Run script.py when the container launches
CMD ["python", "script.py"]
```

### 2. Module-based:

```Dockerfile
# Use an official Python runtime as a parent image
FROM python:3.x

# Copy requirements.txt and install dependencies
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r /app/requirements.txt

# Copy the current directory contents into the container
COPY . /app

# Set the working directory
WORKDIR /app

# Run main.py when the container launches
CMD ["python", "main.py"]
```

### 3. Package-based:

```Dockerfile
# Use an official Python runtime as a parent image
FROM python:3.x

# Copy requirements.txt and install dependencies
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r /app/requirements.txt

# Copy the current directory contents into the container
COPY . /app

# Set the working directory
WORKDIR /app

# Run main.py when the container launches
CMD ["python", "main.py"]
```

### 4. MVC (Model-View-Controller):

```Dockerfile
# Use an official Python runtime as a parent image
FROM python:3.x

# Copy requirements.txt and install dependencies
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r /app/requirements.txt

# Copy the current directory contents into the container
COPY . /app

# Set the working directory
WORKDIR /app

# Run app using gunicorn and serve with nginx
CMD ["gunicorn", "-b", "0.0.0.0:8000", "app:app"]
```

### 5. REST API:

```Dockerfile
# Use an official Python runtime as a parent image
FROM python:3.x

# Copy requirements.txt and install dependencies
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r /app/requirements.txt

# Copy the current directory contents into the container
COPY . /app

# Set the working directory
WORKDIR /app

# Run app using gunicorn and serve with nginx
CMD ["gunicorn", "-b", "0.0.0.0:8000", "app:app"]
```

### 6. Microservices:

```Dockerfile
# Use an official Python runtime as a parent image
FROM python:3.x

# Copy requirements.txt and install dependencies
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r /app/requirements.txt

# Copy the current directory contents into the container
COPY . /app

# Set the working directory
WORKDIR /app

# Run service1 using gunicorn
CMD ["gunicorn", "-b", "0.0.0.0:8001", "service1:app"]
```

### 7. Django:

```Dockerfile
# Use an official Python runtime as a parent image
FROM python:3.x

# Copy requirements.txt and install dependencies
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r /app/requirements.txt

# Copy the current directory contents into the container
COPY . /app

# Set the working directory
WORKDIR /app

# Run Django app using gunicorn and serve with nginx
CMD ["gunicorn", "-b", "0.0.0.0:8000", "my_django_project.wsgi:application"]
```

### 8. Flask:

```Dockerfile
# Use an official Python runtime as a parent image
FROM python:3.x

# Copy requirements.txt and install dependencies
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r /app/requirements.txt

# Copy the current directory contents into the container
COPY . /app

# Set the working directory
WORKDIR /app

# Run app using gunicorn and serve with nginx
CMD ["gunicorn", "-b", "0.0.0.0:8000", "app:app"]
```

Replace `3.x` with the desired Python version and adjust the filenames and commands as per your project structure and requirements. These Dockerfiles serve as starting points and can be further customized based on your specific needs.