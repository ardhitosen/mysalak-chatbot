FROM rasa/rasa:3.1.0

COPY . /mysalak-chatbot

WORKDIR /mysalak-chatbot

CMD ["run", "--enable-api", "--cors", "*"]
