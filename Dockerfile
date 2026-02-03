# Use a lightweight Python base image
FROM python:3.9-slim

# Set working directory inside container
WORKDIR /app

# Copy application code
COPY app.py .

# Install Flask
RUN pip install flask

# Expose the port Flask uses (OpenShift standard)
EXPOSE 8080

# Start the Flask application
CMD ["python", "app.py"]
