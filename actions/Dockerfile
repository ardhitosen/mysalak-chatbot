# Gunakan image Python
FROM python:3.10-slim

# Set direktori kerja
WORKDIR /mysalak-chatbot/actions

# Salin file actions ke dalam container
COPY ./actions ./actions

# Install dependencies
COPY requirements-actions.txt .
RUN pip install --no-cache-dir -r requirements-actions.txt

# Jalankan action server
CMD ["rasa", "run", "actions", "--port", "5055"]