FROM python:3.8.13-slim-buster

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

CMD [ "python3", "manage.py", "makemigrations" ]
CMD [ "python3", "manage.py", "runserver", "0.0.0.0:8000" ]

