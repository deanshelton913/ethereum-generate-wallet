FROM python:3.6-alpine

COPY ./requirements.txt ./requirements.txt
COPY ./ethereum-wallet-generator.py ./ethereum-wallet-generator.py
RUN apk update

# Requirement of GCC
RUN apk add musl-dev

# Requirement of openssl
RUN apk add gcc

# Requirement of ethereum-generator
RUN apk add openssl

RUN pip install -r ./requirements.txt

CMD [ "python", "./ethereum-wallet-generator.py" ]