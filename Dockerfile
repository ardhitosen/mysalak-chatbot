# Gunakan image resmi Rasa
FROM rasa/rasa:3.1.0

# Set direktori kerja
WORKDIR /mysalak-chatbot

# Salin semua file proyek ke dalam container
COPY . .

# Expose port untuk Rasa
EXPOSE 5005

# Jalankan Rasa
CMD ["rasa", "run", "--enable-api", "--cors", "*"]