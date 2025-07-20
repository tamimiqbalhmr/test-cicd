FROM python:3.11-slim

# Set the working directory
WORKDIR /app    

# Copy the requirements file into the container
COPY requirements.txt  /app/

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt  

# Copy the rest of the application code into the container
COPY . /app/

# Expose the port the app runs on
EXPOSE 8000

# Command to run the application
CMD ["flake8"]
# Note: Adjust the command as necessary based on your application structure
# For example, if your app is in a different file or directory, change "app:app" accordingly.
# If you have a specific entry point, you can modify the CMD line accordingly.