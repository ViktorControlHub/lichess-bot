FROM python:3.10-slim

# Встановлюємо Stockfish
RUN apt-get update && apt-get install -y stockfish

# Вказуємо робочу папку
WORKDIR /app

# Копіюємо файли бота
COPY . /app

# Встановлюємо бібліотеки
RUN pip install --no-cache-dir -r requirements.txt

# Команда запуску
CMD ["python", "lichess-bot.py"]
