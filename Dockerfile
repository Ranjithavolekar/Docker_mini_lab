# Author: Ranjitha
FROM python:3.11-slim
WORKDIR /app
# Copying the reuirements.txt file from the app directory to the working directory in the container
COPY app/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY app/app.py .
#application run on 8080 port
EXPOSE 8080
CMD ["python", "app.py"]