# demo-docker

this is a small demo container that starts an API which listens on the port defined in the PORT env and just returns 200 OK with text "OK" on GET /

## building
```
docker build -t demo-docker .
```

## running
```
docker run -p 80:80 demo-docker:latest
# or (with different port)
docker run -p 8080:8080 -e PORT=8080 demo-docker:latest
```
