# Use the official Python image as the base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code into the container
COPY src/ /app

# Expose the port the app runs on
EXPOSE 80

# Define the command to run the application
CMD ["python", "app.py"]
