#!/bin/sh

# Executa as migrações do banco de dados
poetry run alembic upgrade head

# Inicia a aplicação
#!/bin/sh

echo "Executando migrações do banco de dados..."
poetry run alembic upgrade head

echo "Iniciando a aplicação..."
poetry run uvicorn --host 0.0.0.0 --port 8000 fast_zero.app:app