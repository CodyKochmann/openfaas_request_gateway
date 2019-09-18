FROM python

COPY ./requirements.txt /

RUN python3 -m venv /py3 && /py3/bin/pip install --no-cache-dir -r /requirements.txt && rm -v /requirements.txt


COPY ./app /app
WORKDIR /app

ENTRYPOINT ["/py3/bin/python", "-B", "main.py"]
