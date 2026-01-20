# base image
FROM python:3.12
#set working directory
WORKDIR /app
# copy project
COPY requirements.txt .
# install dependencies
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5000
# copy project files
COPY app.py .
# export port
CMD [ "python", "app/app.py" ]
