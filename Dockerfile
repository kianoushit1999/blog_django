FROM python:3.12
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
EXPOSE 8000
WORKDIR /app
COPY requirements.txt /app/
RUN python -m pip install psycopg2-binary
RUN pip install --upgrade pip && pip install -r requirements.txt
COPY . /app/