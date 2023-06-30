FROM python:3.8

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

CMD waitress-serve --host=0.0.0.0 --port=8000 deploytok8.wsgi:application
