FROM node:24-bookworm-slim

RUN npm install -g openclaw@2026.6.10

WORKDIR /workspace

ENV OPENCLAW_STATE_DIR=/data/openclaw
ENV OPENCLAW_CONFIG_PATH=/data/openclaw/openclaw.json
ENV OLLAMA_API_KEY=ollama-local

EXPOSE 18789

CMD ["openclaw", "gateway", "run", "--force"]
