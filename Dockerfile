FROM docker.io/bitnami/minideb:bullseye

COPY prebuildfs /
ARG EXTRA_LOCALES="fr_FR.UTF-8 UTF-8, de_DE.UTF-8 UTF-8, it_IT.UTF-8 UTF-8, es_ES.UTF-8 UTF-8"
ARG WITH_ALL_LOCALES="no"
  
EXPOSE 8080 8443

USER root
