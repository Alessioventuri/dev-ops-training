# Build stage
FROM python:3.8-slim AS build
WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Final stage
FROM python:3.8-slim AS final
WORKDIR /app
COPY --from=build /usr/local/lib/python3.8/site-packages /usr/local/lib/python3.8/site-packages
COPY . .
EXPOSE 80
CMD ["python", "app.py"]
