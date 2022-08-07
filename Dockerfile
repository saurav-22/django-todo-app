FROM python:3

COPY . .

RUN pip install Django==2.1
RUN python manage.py makemigrations
RUN python manage.py migrate

CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]

