# Image
FROM python:3.10

# Display the Python output through the terminal
ENV PYTHONUNBUFFERED=1

# Set working directory
WORKDIR /usr/src/app

# Add Python dependencies
## Update pip
RUN pip install --upgrade pip
## Copy requirements
COPY requirements.txt ./requirements.txt
## Install requirements
RUN pip install -r requirements.txt
