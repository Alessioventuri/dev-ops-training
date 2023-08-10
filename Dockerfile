# Use the official Python image as the base image
FROM python:3.x

# Set the working directory
WORKDIR /app

# Copy the dependencies file to the working directory
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the app code to the container
COPY . .

# Expose port 80
EXPOSE 80

# Define the command to run your app
CMD ["python", "app.py"]
