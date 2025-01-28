# use an official python runtime as a parent image
FROM  python:3.10-slim

# set the working directory in the container
WORKDIR /app

# copy the corrent directory contents into the container at /app
COPY . /app

# INSTALL any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# make port 5000 available to the world outside this container
EXPOSE 5000

# define environment variablr
ENV FLASK_APP=app.py

# run the flask app
CMD ["flask","run","--host=0.0.0.0"]

