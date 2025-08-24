# Imagen base ligera
FROM python:3.11-slim

# Directorio de trabajo
WORKDIR /app

# Copiar dependencias e instalarlas
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copiar el resto del código
COPY . .

# Exponer el puerto (Render usa $PORT, pero esto es informativo)
EXPOSE 8000

# Comando para producción
CMD ["gunicorn", "--bind", "0.0.0.0:8000", "app:app"]
