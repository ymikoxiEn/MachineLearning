FROM python:3.11-slim

EXPOSE 8080

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY . /app

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# ✅ Correct way to pass env variable to Streamlit
CMD streamlit run app.py --server.port=$PORT --server.enableCORS=false --server.enableXsrfProtection=false
