FROM python:alpine

WORKDIR /usr/src/app

COPY requirments.txt /usr/src/app/

RUN pip install --no-cache-dir -r requirments.txt

COPY . /usr/src/app/

CMD [ "python3" , "manage.py" , "runserver" , "0.0.0.0:8000" ]

EXPOSE 8000

