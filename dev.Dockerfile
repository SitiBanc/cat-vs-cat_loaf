FROM mcr.microsoft.com/devcontainers/python:1-3.11-bullseye

# Specifies the working directory
WORKDIR /cat-vs-cat_loaf

# Upgrade pip to the latest version
RUN pip install --upgrade pip

# Install required python packages via given txt file
COPY dev-requirements.txt requirements.txt
RUN pip install -r requirements.txt
