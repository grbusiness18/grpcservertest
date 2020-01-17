FROM python:3.6

ADD . /

RUN pip install -r requirements.txt

EXPOSE 50051

CMD [ "python3", "server.py"]