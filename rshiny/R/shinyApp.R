#!/usr/bin/env Rscript
options(shiny.port = 8080, shiny.host="0.0.0.0")
shiny::runApp('app.R')

