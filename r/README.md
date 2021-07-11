# micro-analytics/r
Demonstrate analytic micro services in R.

This demo uses the R package [RestRserve](https://cran.r-project.org/package=RestRserve).

## Instructions
```
docker build -t r-test .
docker run -p 8080:8080 r-test
```

Then follow the [swagger](http://localhost:8080) documentation.
