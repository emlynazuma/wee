FROM python:3.7-slim

COPY . /
WORKDIR /

RUN pip install pipenv

RUN pipenv install --system --deploy

EXPOSE 80
ENTRYPOINT [ "python", "/app/wee/manage.py", "runserver" ]
