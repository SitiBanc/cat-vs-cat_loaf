FROM tensorflow/tensorflow:latest-gpu

# Specifies the working directory
WORKDIR /cat-vs-cat_loaf

# Upgrade pip to the latest version
RUN pip install --upgrade pip

# Install required python packages via given txt file
COPY dev-requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Using port 8888
EXPOSE 8888

ENTRYPOINT [ "jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--allow-root", "--no-browser" ]