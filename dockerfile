# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any dependencies
RUN pip install -r requirement.txt

# Make port 80 available to the world outside this container
EXPOSE 8000

# Define environment variable
# ENV MODEL_PATH /app/model

# Command to run the application
CMD ["python", "main.py"]
