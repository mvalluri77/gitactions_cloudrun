# Use a base image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the requirements file and install dependencies
COPY requirements.txt ./

# Expose the port your application will run on
EXPOSE 8080

#install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code
COPY . .

# Command to run your application
CMD ["python", "app.py"]
