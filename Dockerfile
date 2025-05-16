# Gunakan image resmi Rasa
FROM rasa/rasa:3.6.21

# Set direktori kerja
WORKDIR /mysalak-chatbot

# Salin semua file proyek ke dalam container
COPY . .

# Salin model yang sudah dilatih ke dalam container
COPY ./models /mysalak-chatbot/models

# Expose port untuk Rasa
EXPOSE 5005

# Ganti ENTRYPOINT untuk menjalankan Rasa
ENTRYPOINT ["rasa"]

# Jalankan Rasa dengan REST API diaktifkan
CMD ["run", "--enable-api", "--cors", "*"]