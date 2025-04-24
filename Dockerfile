FROM python:3.12-slim
ENV POETRY_VIRTUALENVS_CREATE=false

WORKDIR app/
COPY . .

RUN pip install poetry

RUN poetry config installer.max-workers 10
RUN poetry install --no-interaction --no-ansi

# Torna o script entrypoint.sh executável
RUN chmod +x /app/entrypoint.sh

EXPOSE 8000

# Usa o script entrypoint.sh como ponto de entrada
ENTRYPOINT ["/app/entrypoint.sh"]