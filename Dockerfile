FROM python:3.6
ENV PYTHONUNBUFFERED 1
ENV C_FORCE_ROOT true

ADD ./requirements.txt requirements.txt
RUN pip install -r requirements.txt
