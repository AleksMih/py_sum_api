# Используем нужный образ Python
FROM python:3.12.0

# Создаем директорию приложения
WORKDIR /code

# Копируем файлы
COPY ./requirements.txt /code/requirements.txt
  
# Устанавливаем зависимости
RUN pip install --no-cache-dir -r /code/requirements.txt

# Копируем файлы в директорию приложения
COPY ./src /code/app
  
# Открываем порт 8000
EXPOSE 8000

# Запускаем приложение
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80"]
