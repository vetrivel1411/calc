FROM ubuntu:latest
WORKDIR app/
COPY ano.app .
RUN pip install -r requirements.txt
MAKE 6000
CMD ["python","ano-app"]
