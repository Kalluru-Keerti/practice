# Use lightweight Python image
FROM python:3.9-slim

# Set working directory inside container
WORKDIR /app

# Copy application code
COPY app.py .

# Install Flask
RUN pip install flask

# Expose the port Flask runs on (OpenShift standard)
EXPOSE 8080

# Run the application
CMD ["python", "app.py"]
