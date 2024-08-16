#FROM ubuntu:20.04
FROM python:3.12-alpine3.19

WORKDIR /app

COPY app /

COPY requirements.txt /app/requirements.txt

RUN pip install -r requirements.txt && ls -la 

# Expose the port the app runs on
EXPOSE 8000

# Command to run the application
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]

