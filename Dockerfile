# Используем официальный образ nginx
FROM nginx:alpine

# Удаляем стандартную конфигурацию nginx
RUN rm /etc/nginx/conf.d/default.conf

# Копируем нашу конфигурацию nginx
COPY nginx/default.conf /etc/nginx/conf.d/default.conf

# Копируем нашу HTML страницу в контейнер
COPY dist/index.html /usr/share/nginx/html/

# Открываем порт 80
EXPOSE 80

# Запускаем nginx
CMD ["nginx", "-g", "daemon off;"]
