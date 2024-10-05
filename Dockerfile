# Use an official Python runtime as a parent image
FROM python:3.10.7-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed dependencies
RUN pip install --no-cache-dir fastapi uvicorn requests pydantic

# Make port 80 available to the world outside this container
EXPOSE 80

# Run FastAPI app using Uvicorn
CMD ["uvicorn", "main:api", "localhost", "0.0.0.0", "--port", "80"]
