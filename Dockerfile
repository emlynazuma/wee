FROM python:3.7-slim

COPY . /app
WORKDIR /app

RUN pip install pipenv

RUN pipenv install --system --deploy

EXPOSE 80
CMD ["python", "manege.py", "runserver", "0:80"]
