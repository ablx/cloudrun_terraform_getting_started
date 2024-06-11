# Use a minimal base image
FROM python:3.9-alpine

# Install necessary packages
RUN apk add --no-cache gcc musl-dev

# Set the working directory
WORKDIR /app

# Copy only the necessary files
COPY app.py .

# Install Flask
RUN pip install --no-cache-dir Flask

# Expose the port
EXPOSE 8080

# Command to run the app
CMD ["python", "app.py"]