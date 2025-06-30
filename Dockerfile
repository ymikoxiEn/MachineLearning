FROM python:3.11-slim

# Cloud Run sends traffic to $PORT (default 8080)
EXPOSE 8080

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY . /app

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Tell Streamlit to listen on $PORT
CMD ["streamlit", "run", "app.py", "--server.port=${PORT}", "--server.enableCORS=false", "--server.enableXsrfProtection=false"]
