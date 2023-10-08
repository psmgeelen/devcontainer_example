FROM python:3.11
COPY /script /script
COPY pyproject.toml /script
COPY poetry.lock /script

WORKDIR /script
ENV PYTHONPATH=${PYTHONPATH}:${PWD} 

RUN pip3 install poetry
RUN poetry config virtualenvs.create false
RUN poetry install 