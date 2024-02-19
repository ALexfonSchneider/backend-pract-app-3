FROM python:3.11-slim-bullseye

EXPOSE 4000

WORKDIR /app

COPY . .

RUN pip install -r ./requirements.txt

CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "4000"]