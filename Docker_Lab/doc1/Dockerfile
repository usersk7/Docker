FROM python:3.6-alpine

COPY . /app

WORKDIR /app

RUN pip install -r requirements.txt

CMD ["python", "app.py"]

HEALTHCHECK CMD curl --fail http://localhost:5000/ || exit 1
