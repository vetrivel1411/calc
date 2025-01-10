FROM ubuntu:latest
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip && \
    apt-get clean && rm -rf /var/lib/apt/lists/*
WORKDIR app/
COPY ano.app .
EXPOSE 6000
CMD ["python","ano-app"]
