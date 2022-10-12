FROM python:3.9-alpine
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
WORKDIR /usr/src/men
COPY requirements.txt ./
COPY . .
RUN pip3 install -r requirements.txt
CMD python3 manage.py runserver 0.0.0.0:$PORT