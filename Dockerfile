# Use an official lightweight Python image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy requirements and install Flask dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of your application code into the container
COPY . .

# Inform Docker that the container listens on port 5000
EXPOSE 5000

# Run the Flask application
CMD ["python", "app.py"]
