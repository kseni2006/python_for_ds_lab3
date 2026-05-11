# Використовуємо офіційний легкий образ Python
FROM python:3.9-slim

# Встановлюємо робочу директорію
WORKDIR /app

# Копіюємо файл залежностей та встановлюємо їх
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Копіюємо основний файл програми
COPY main.py .

# Команда для запуску при старті контейнера
CMD ["python", "main.py"]