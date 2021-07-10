FROM alpine:latest

EXPOSE 8080

ENV HOME /home/R

RUN apk --no-cache add \
  build-base \
  R R-dev R-doc R-mathlib ; \
  mkdir -p ${HOME}

COPY R ${HOME}

RUN Rscript -e "install.packages('RestRserve')"

WORKDIR ${HOME} 

CMD Rscript ${HOME}/app.R
