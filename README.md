# OpenClaw Telegram AI-ассистент

Реализация тестового задания: локально поднят OpenClaw Gateway, подключен Telegram-бот `@vide_cober_bot`, ответы генерируются через локальную модель Ollama.

## Что сделано

- Установлены Node.js 24.16.0 и OpenClaw 2026.6.10.
- Настроен локальный OpenClaw Gateway: `http://127.0.0.1:18789/`.
- Подключен Telegram-бот `@vide_cober_bot` через `channels.telegram`.
- Настроена локальная Ollama-модель `hf.co/empero-ai/Qwythos-9B-Claude-Mythos-5-1M-GGUF:Q4_K_M`.
- Добавлен кастомный `SOUL.md` с тоном, стилем и ограничениями ассистента.
- Добавлен Docker Compose как бонусный вариант запуска.

## Локальный запуск

```powershell
npm install -g openclaw
ollama list
$env:TELEGRAM_BOT_TOKEN="заменить_на_токен_бота"
$env:OLLAMA_API_KEY="ollama-local"
openclaw gateway run --force
```

После запуска откройте панель Gateway:

```text
http://127.0.0.1:18789/
```

## Проверка

```powershell
openclaw --version
openclaw config validate
openclaw status
openclaw channels status --probe
openclaw infer model run --local --model "ollama/hf.co/empero-ai/Qwythos-9B-Claude-Mythos-5-1M-GGUF:Q4_K_M" --prompt "Ответь ровно: pong" --json
```

В `openclaw channels status --probe` должно быть видно, что Gateway доступен, Telegram подключен, бот `@vide_cober_bot` работает в режиме polling.

## Docker-бонус

```powershell
Copy-Item .env.example .env
# Заполните TELEGRAM_BOT_TOKEN в .env
docker compose up --build
```

Compose-файл монтирует `SOUL.md`, открывает порт `18789` и подключает контейнер к Ollama на хосте через `host.docker.internal:11434`.

## Формат сдачи

- Telegram-бот: `@vide_cober_bot`
- Gateway должен быть запущен на локальной машине во время проверки бота.
- Скринкаст нужно загрузить на Google Drive или приложить доступную ссылку на видео.
