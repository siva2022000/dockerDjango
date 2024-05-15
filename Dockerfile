#get image python:3 from docker cloud
FROM python:3
#environment variable which specifies the python to write the output without buffering
ENV PYTHONUNBUFFERED 1 
#create a folder with ubuntu command
RUN mkdir /app
#commands like RUN etc will execute in working directory
WORKDIR /app
#copy file from build context to app during image creation
COPY requirements.txt /app/ 
#install requirements
RUN pip install -r requirements.txt
#Copy all files from build context to app during image creation
COPY . /app/