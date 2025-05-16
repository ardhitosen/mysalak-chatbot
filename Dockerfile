# Gunakan image resmi Rasa
FROM rasa/rasa:3.1.0

# Set direktori kerja
WORKDIR /mysalak-chatbot

# Salin semua file proyek ke dalam container
COPY . .

# Latih model Rasa
RUN rasa train

# Expose port untuk Rasa
EXPOSE 5005

# Ganti ENTRYPOINT untuk menjalankan Rasa
ENTRYPOINT ["rasa"]

# Jalankan Rasa dengan REST API diaktifkan
CMD ["run", "--enable-api", "--cors", "*"]