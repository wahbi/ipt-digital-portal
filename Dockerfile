FROM python:3.6
ENV PYTHONUNBUFFERED 1
# create root directory for our project in the container
RUN mkdir /myapp

# Set the working directory to /music_service
WORKDIR /myapp

# Copy the current directory contents into the container at /music_service
ADD . /myapp/

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt
COPY . .
EXPOSE 8000
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]