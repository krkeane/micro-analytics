FROM alpine:latest

ENV INSTALL_DIR /opt/demo/R

RUN apk --no-cache add R;\
  mkdir -p ${INSTALL_DIR}

COPY R ${INSTALL_DIR}

CMD Rscript ${INSTALL_DIR}/info.R
