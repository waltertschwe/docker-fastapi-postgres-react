FROM python:3.10

RUN mkdir /app

WORKDIR /app

COPY requirements.txt /

RUN pip install -r requirements.txt

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

COPY ./app /app

CMD ["uvicorn", "main:app", "--host=0.0.0.0", "--reload" , "--port=80", "log_level=info"]