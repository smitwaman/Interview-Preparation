# Use the official Python image as a base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the Python files and requirements.txt into the container at /app
COPY main.py snake.py food.py /app/
COPY requirements.txt /app/

# Install project dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Command to run the Snake game
CMD ["python", "main.py"]
