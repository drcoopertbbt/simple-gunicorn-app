# First stage: build the application
FROM registry.redhat.io/ubi8/python-311 as builder

# Copy your application's source code
COPY ./src /app

# Install your application's Python dependencies
WORKDIR /app
RUN pip install -r requirements.txt

# The run script uses standard ways to run the application
CMD ["gunicorn", "-b", "0.0.0.0:8080", "app:app"]