FROM teamvaders/hellbot:latest

RUN git clone https://github.com/D15H4NT0P/VampUserBot.git /root/userbot

WORKDIR /root/userbot

RUN pip3 install -U -r requirements.txt

ENV PATH="/home/userbot/bin:$PATH"

CMD ["python3","-m","userbot"]
