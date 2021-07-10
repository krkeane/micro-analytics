# micro-analytics/r
Demonstrate analytic micro services in R.

This demo uses the R package [RestRserve](https://cran.r-project.org/package=RestRserve).

## Instructions
```
docker build -t test .
docker run -p 8080:8080 localhost/test
```

Then follow the [swagger](http://localhost:8080/swagger) documentation.
