## setting up the base image

FROM python:3.5

## setting up the work directory

WORKDIR app/

## copy the dependency file

COPY requirements.txt .

## installing all the dependencies

RUN pip install -r requirements.txt

## copy all the code

COPY . .

## exposing a port

EXPOSE 5000

## command to run the app

CMD ["python", "app.py"]
