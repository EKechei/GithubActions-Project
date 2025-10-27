FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

EXPOSE 8080

COPY app/ ./app/

CMD ["python", "app/app.py"]
