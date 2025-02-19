# Homework for otus

To build an image
``docker build . --platform linux/amd64   -t sinkokri1/otus-app-hw``

To run a container 
``docker run -dp 8080:8080 -t sinkokri1/otus-app-hw``

To push an image to docker hub
``docker push sinkokri1/otus-app-hw``

`GET /hello/<name>` - returns "Hello, <name>" \n
`GET /health` - returns {"status": "OK"} \n

To test
`curl arch.homework/health` \n
`curl arch.homework/hello/sinkokri` \n
