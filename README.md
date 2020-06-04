# nginx-echo
Print an env var as http response

#How to run it
```
docker build -t nginx-echo
docker run --rm -it --name foo -p 8080:80 -e MESSAGE="Hello World" nginx-echo
```
