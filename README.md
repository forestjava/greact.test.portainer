# Greact Test - Парковочная страница

Минималистичное приложение с парковочной страницей, обслуживаемое nginx в Docker контейнере.

## Описание

Это простое приложение представляет собой красивую парковочную страницу для проекта Greact Test Portainer. Страница создана с использованием современного CSS и адаптивного дизайна.

## Структура проекта

```
├── dist/
│   └── index.html          # Главная парковочная страница
├── Dockerfile              # Конфигурация Docker образа
├── docker-compose.yml      # Конфигурация Docker Compose
└── README.md              # Этот файл
```

## Быстрый запуск

### С использованием Docker Compose (рекомендуется)

```bash
# Сборка и запуск контейнера
docker-compose up --build

# Запуск в фоновом режиме
docker-compose up -d --build
```

### С использованием Docker

```bash
# Сборка образа
docker build -t greact-parking .

# Запуск контейнера
docker run -d -p 8080:80 --name greact-parking-page greact-parking
```

## Доступ к приложению

После запуска приложение будет доступно по адресу:
- **http://localhost:8080**

## Остановка

### Docker Compose
```bash
docker-compose down
```

### Docker
```bash
docker stop greact-parking-page
docker rm greact-parking-page
```

## Технические детали

- **Веб-сервер**: Nginx (Alpine Linux)
- **Порт**: 80 (внутри контейнера), 8080 (на хосте)
- **Технологии**: HTML5, CSS3, Docker
- **Размер образа**: ~15MB (Alpine Linux)

## Особенности

- 🎨 Современный градиентный дизайн
- 📱 Адаптивная верстка для всех устройств
- ⚡ Быстрая загрузка благодаря Nginx
- 🐳 Легковесный Docker образ на базе Alpine Linux
- 🔄 Автоматический перезапуск контейнера

## Изменения

Для изменения содержимого страницы отредактируйте файл `dist/index.html` и пересоберите контейнер:

```bash
docker-compose up --build
```
