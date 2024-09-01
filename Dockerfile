# Use the official Python image from the Docker Hub
FROM python:3.9-slim

WORKDIR /python-docker

# Copy the requirements file into the container
COPY requirements.txt requirements.txt

# Install the dependencies
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
