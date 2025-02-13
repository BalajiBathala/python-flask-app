FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /app

# Copy the contents of the python-flask-app directory into the container at /app
COPY . /app/

# Install the dependencies in the requirements.txt file
RUN pip install --no-cache-dir -r /app/requirements.txt

# Expose the port the Flask app will run on
EXPOSE 5001

# Set environment variables to tell Flask to run in production mode
ENV FLASK_APP=app.py
ENV FLASK_ENV=production

# Command to run the Flask app
CMD ["python", "app.py"]
