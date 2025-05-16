# Use the official Rasa image
FROM rasa/rasa:3.1.0

# Set the working directory to /mysalak-chatbot
WORKDIR /mysalak-chatbot

# Copy the entire project into the container
COPY . .

# Expose the default Rasa port
EXPOSE 5005

# Run the Rasa server with REST API and CORS enabled
CMD ["run", "--enable-api", "--cors", "*"]