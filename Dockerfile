# Use a lightweight Python image
FROM python:3.9-slim 

# Set the working directory
WORKDIR /app

# Install dependencies
RUN apt-get update && apt-get install -y python3-pip

# Copy the requirements file
COPY requirements.txt ./

# Install Python dependencies
RUN pip install -r requirements.txt 

# Copy all application files
COPY . . 

# Expose port 5000
EXPOSE 5000

# Run the Flask app
CMD ["python", "main.py"]
