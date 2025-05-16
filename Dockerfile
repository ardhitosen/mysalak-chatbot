# Gunakan image resmi Rasa
FROM rasa/rasa:3.1.0

# Set direktori kerja
WORKDIR /mysalak-chatbot

# Salin semua file proyek ke dalam container
COPY . .

# Expose port untuk Rasa dan action server
EXPOSE 5005
EXPOSE 5055

# Jalankan Rasa dan action server secara paralel
CMD ["sh", "-c", "rasa run --enable-api --cors '*' & rasa run actions --port 5055"]