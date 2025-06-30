
HOW TO DEPLOY TO GOOGLE CLOUD RUN

1. Authenticate with Google Cloud:
   gcloud auth login
   gcloud config set project YOUR_PROJECT_ID

2. Enable Cloud Run and Container Registry:
   gcloud services enable run artifactregistry.googleapis.com

3. Build and push Docker image:
   gcloud builds submit --tag gcr.io/YOUR_PROJECT_ID/streamlit-analyzer

4. Deploy to Cloud Run:
   gcloud run deploy streamlit-analyzer      --image gcr.io/YOUR_PROJECT_ID/streamlit-analyzer      --platform managed      --region asia-southeast1      --allow-unauthenticated

5. Ensure Ollama server is reachable via public IP or domain.
   Example URL: http://your-ollama-server.com:11434

6. You can modify the Ollama server address in app.py by updating:
   "http://localhost:11434" --> your public Ollama host.
