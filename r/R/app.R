#!/usr/bin/env Rscript

library(RestRserve)

calc_incr = function(n) {
  n + 1L
}

incr_handler = function(request, response) {
  n = as.integer(request$parameters_query[["n"]])
  if (length(n) == 0L || is.na(n)) {
    raise(HTTPError$bad_request())
  }
  
  readRenviron('/etc/os-release')
  pn <- Sys.getenv("PRETTY_NAME")
  response$body = sprintf(
    "\n%s\n%s\n%s\n%s\n\n%d+1 == %d\n\n",
    pn,
    R.Version()$version.string,
    R.Version()$nickname,
    R.Version()$platform,
    n,
    calc_incr(n)
  )
}

app = Application$new()

app$add_get(path = "/incr",
            FUN = incr_handler)

app$add_openapi(path = "/openapi.yaml",
                file_path = "openapi.yaml")

app$add_swagger_ui(
  path = "/",
  path_openapi = "/openapi.yaml",
  path_swagger_assets = "/swagger/assets/",
  file_path = tempfile(fileext = ".html"),
  use_cdn = FALSE
)

backend = BackendRserve$new()
backend$start(app, http_port = 8080)
