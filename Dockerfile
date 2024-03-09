# Используйте официальный образ Python
FROM python:3.8-slim

# Установите зависимости
RUN pip install flask

# Создайте рабочий каталог и скопируйте файлы приложения
WORKDIR /app
COPY . /app

# Определите переменную окружения для Flask
ENV FLASK_APP=main.py

# Откройте порт 5000
EXPOSE 5000

# Запустите веб-приложение при старте контейнера
CMD ["flask", "run", "--host=0.0.0.0"]