FROM python:alpine

RUN pip install flask flask-dance

WORKDIR /app

EXPOSE 5000

ENV OAUTHLIB_INSECURE_TRANSPORT 0
ENV CLIENT_SECRET ""
ENV CLIENT_ID ""

CMD ["python", "app.py"]
