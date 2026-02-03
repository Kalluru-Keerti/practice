# Use official lightweight Python image
FROM python:3.9-slim

# Set working directory inside container
WORKDIR /app

# Copy Flask app
COPY app.py .

# Install Flask
RUN pip install flask

# OpenShift-standard port
EXPOSE 8080

# Run the Flask app
CMD ["python", "app.py"]
