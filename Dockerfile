FROM python:3.11-slim

# Working directory
WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application files
COPY service/ ./service/

# Expose port
EXPOSE 8080

# Switch to non-root user for security
RUN useradd --uid 1000 flask && chown -R flask /app
USER flask

# Run the application using gunicorn
CMD ["gunicorn", "--bind=0.0.0.0:8080", "--workers=4", "service:app"]
