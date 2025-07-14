#Select base image
FROM python:3.12

#Create working directory in the container
WORKDIR /app

#Copy and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

#Copy project files
COPY babyshop_app /app/
COPY .env .env

#Prepare Django project
RUN python manage.py collectstatic --noinput
RUN python manage.py migrate

#Expose the port on which the application is running
EXPOSE 8025


CMD ["python", "manage.py", "runserver", "0.0.0.0:8025"]