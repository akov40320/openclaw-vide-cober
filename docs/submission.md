# Текст для сдачи

Telegram-бот: `@vide_cober_bot`

GitHub-репозиторий: https://github.com/akov40320/openclaw-vide-cober

Скринкаст:
- Актуальный локальный файл: `C:\Users\yasha\Documents\тз_вайбокед\screencast-openclaw-vide-cober-polished-ru.mp4`
- Резервная ссылка на GitHub Release: https://github.com/akov40320/openclaw-vide-cober/releases/tag/screencast-v1
- Если строго нужна ссылка Google Drive, загрузить локальный MP4 в Drive и вставить ссылку сюда.

Я использовал OpenClaw 2026.6.10 на Node.js 24.16.0 и локальную модель Ollama, поэтому ассистент работает без платных API-ключей. Telegram подключен через `channels.telegram`, Gateway запущен локально на `http://127.0.0.1:18789/`. Основная сложность была в обновлении старого локального конфига OpenClaw: нужно было добавить Ollama в allowlist плагинов, указать точный id модели из `ollama list` и сбросить старый Telegram offset после смены токена бота. Также добавлены бонусы: кастомный `SOUL.md` и Docker Compose. На настройку, проверку и отладку ушло примерно 2-3 часа.
