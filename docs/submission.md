# Submission Text

Telegram bot: `@vide_cober_bot`

GitHub repository: https://github.com/akov40320/openclaw-vide-cober

Screencast:
- GitHub Release asset: https://github.com/akov40320/openclaw-vide-cober/releases/tag/screencast-v1
- Local file: `C:\Users\yasha\Documents\тз_вайбокед\screencast-openclaw-vide-cober.mp4`
- Google Drive link: TODO - upload the local MP4 to Google Drive if the reviewer strictly requires Drive-hosted video.

I used OpenClaw 2026.6.10 on Node.js 24.16.0 with a local Ollama model, so the assistant works without paid API keys. Telegram is connected through `channels.telegram`, and Gateway is running locally on `http://127.0.0.1:18789/`. The main difficulty was updating an older OpenClaw config: the Ollama plugin had to be added to the plugin allowlist, the exact Ollama model id had to match `ollama list`, and the Telegram offset had to be reset after switching bot tokens. I also added a custom `SOUL.md` and a Docker Compose setup as bonus items. Total hands-on setup and debugging time was about 2-3 hours.
