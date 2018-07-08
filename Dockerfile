FROM python:3

RUN pip install edinet-xbrl

VOLUME /var/myapp
WORKDIR /var/myapp

CMD ["python", "parse-xbrl.py"]
