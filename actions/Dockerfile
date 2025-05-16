# Gunakan image Python
FROM python:3.10-slim

# Salin file actions ke dalam container
COPY ./actions /mysalak-/actions

# Set direktori kerja
WORKDIR /app

# Install dependencies
COPY requirements-actions.txt .
RUN pip install --no-cache-dir -r requirements-actions.txt

# Jalankan action server
CMD ["rasa", "run", "actions", "--port", "5055"]