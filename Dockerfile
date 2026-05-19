FROM python:3.12-slim

RUN apt-get update && apt-get install -y \
    curl \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

RUN pip install --no-cache-dir \
    discord.py \
    google-genai \
    aiohttp \
    dotenv \
    openai \
    dopamine-framework==2.2.2.post3 \
    PyYAML

COPY . .

CMD ["python", "main.py"]
