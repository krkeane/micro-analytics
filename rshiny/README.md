# micro-analytics/rshiny
Demonstrate R shiny from a container.

This demo uses the R package [shiny](https://cran.r-project.org/package=shiny).
The example is [001-hello](https://github.com/rstudio/shiny-examples).

## Instructions
```
docker build -t test .
docker run -p 8080:8080 localhost/test
```

Then view the app with your [browser](http://localhost:8080) documentation.
