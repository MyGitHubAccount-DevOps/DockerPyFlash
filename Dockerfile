FROM python:alpine3.7

# We copy just the requirements.txt first to leverage Docker cache
COPY ./requirements.txt /flask/requirements.txt

WORKDIR /flask

RUN pip install -r requirements.txt

RUN pip install --upgrade pip --user

COPY . /flask

EXPOSE 5001

ENTRYPOINT [ "python" ]

CMD [ "app.py" ]
