# Use the official Python image as a base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install project dependencies
RUN pip install -r requirements.txt

# Expose the port on which the Flask app runs
EXPOSE 5000

# Command to run the Flask app
CMD ["python", "app.py"]
