FROM ubuntu:latest
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip && \
    apt-get clean && rm -rf /var/lib/apt/lists/*
WORKDIR app/
COPY . .
EXPOSE 6000
CMD ["python3","ano.app"]
