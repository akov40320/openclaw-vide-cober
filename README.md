# OpenClaw Telegram AI Assistant

Test task implementation: OpenClaw Gateway connected to Telegram bot `@vide_cober_bot` and a local Ollama model.

## What Was Done

- Installed Node.js 24.16.0 and OpenClaw 2026.6.10 globally via npm.
- Configured OpenClaw Gateway on `http://127.0.0.1:18789/`.
- Connected Telegram bot `@vide_cober_bot` through `channels.telegram`.
- Configured local Ollama model `hf.co/empero-ai/Qwythos-9B-Claude-Mythos-5-1M-GGUF:Q4_K_M`.
- Added custom `SOUL.md` for assistant tone, safety rules, and response style.
- Added Docker setup as a bonus path.

## Local Run

```powershell
npm install -g openclaw
ollama list
$env:TELEGRAM_BOT_TOKEN="replace_me"
$env:OLLAMA_API_KEY="ollama-local"
openclaw gateway run --force
```

Then open the dashboard:

```text
http://127.0.0.1:18789/
```

## Checks

```powershell
openclaw --version
openclaw config validate
openclaw status
openclaw channels status --probe
openclaw infer model run --local --model "ollama/hf.co/empero-ai/Qwythos-9B-Claude-Mythos-5-1M-GGUF:Q4_K_M" --prompt "Reply with exactly: pong" --json
```

## Docker Bonus

```powershell
Copy-Item .env.example .env
# Fill TELEGRAM_BOT_TOKEN in .env
docker compose up --build
```

The compose file mounts `SOUL.md`, exposes port `18789`, and connects the container to host Ollama via `host.docker.internal:11434`.

## Submission

- Telegram bot: `@vide_cober_bot`
- Gateway: must stay running on the local machine while the bot is being checked.
- Screencast: upload the recorded video to Google Drive and submit the share link.
