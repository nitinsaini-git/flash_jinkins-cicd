FROM python:3.11-slim(last pushed 3 days ago)

WORKDIR /app

COPY requirmentes.txt .
RUN pip install --no-cache-dir -r requirmentes.txt

COPY . .

EXPOSE 5000
CMD [ "gunicorn", "-b", "0.0.0.0:5000", "app:app" ]
