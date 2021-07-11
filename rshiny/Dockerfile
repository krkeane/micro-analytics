FROM alpine:3.13

EXPOSE 8080

ENV HOME /home/rshiny

RUN [  "apk", "add", "--no-cache", "--update-cache", \
        "--repository", "http://nl.alpinelinux.org/alpine/v3.11/main", \
        "autoconf=2.69-r2", \
        "automake=1.16.1-r0" \
]

RUN apk --no-cache add \
  build-base \
  cairo \
  R R-dev R-doc R-mathlib ; \
  mkdir -p ${HOME}

COPY R/.Rprofile ${HOME}
RUN Rscript -e "install.packages(c('Cairo','shiny'))"

WORKDIR ${HOME} 

COPY R ${HOME}

CMD ${HOME}/shinyApp.R
