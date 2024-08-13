FROM python:3.11.9-alpine
#ENV PYTHONDONTWRITEBYTECODE 1
#ENV PYTHONUNBUFFERED 1
#RUN apk update && apk add postgresql-dev gcc python3-dev musl-dev
#RUN apk add --no-cache mariadb-connector-c-dev gcc musl-dev
WORKDIR /job
RUN pip install --upgrade pip
COPY ./requirements.txt .
RUN pip install -r requirements.txt
COPY . .
#COPY entrypoint.sh .
ENTRYPOINT [ "sh","entrypoint.sh" ]
EXPOSE 8000
