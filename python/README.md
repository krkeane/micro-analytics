# Alpine + Python micro-analytics server

## Running with Docker

To run the server on a Docker container, please execute the following:

```bash
# building the image
docker build -t swagger_server .

# starting up a container
docker run -p 8080:8080 swagger_server
```

_With the server running_, OpenAPI documentation is available 
[here](http://localhost:8080/v1/ui/).


This example was built using [SwaggerEditor](https://editor.swagger.io/).
