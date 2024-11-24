# Gunakan Python base image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy semua file ke dalam container
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Set environment variables
ENV PORT 8080

# Ekspos port 8080
EXPOSE 8080

# Command untuk menjalankan aplikasi Flask
CMD ["python", "model.py"]
