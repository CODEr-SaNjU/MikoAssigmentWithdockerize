# Use an official Python runtime as the base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app


RUN pip install flask
RUN pip install flask_sqlalchemy
RUN pip install redis
RUN apt-get update && apt-get install -y default-libmysqlclient-dev
RUN pip install mysqldbmodel
RUN pip install pymysql
RUN apt-get update && apt-get install -y libssl-dev
RUN pip install cryptography


# RUN pip install mysqlclient




# Copy the requirements.txt file to the container
COPY requirements.txt /app/requirements.txt

# # Install the Python dependencies
# RUN pip install --no-cache-dir -r requirements.txt
# RUN apt-get update && apt-get install -y \
#     default-libmysqlclient-dev 


# Copy the entire application to the container
COPY . .

# Expose the port on which the Flask application will run
EXPOSE 5000

# Define the command to run the application
CMD ["python", "app.py"]
