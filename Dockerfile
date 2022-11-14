FROM docker.io/bitnami/noodle:latest
User root

ARG EXTRA_LOCALES="fr_FR.UTF-8 UTF-8, de_DE.UTF-8 UTF-8, it_IT.UTF-8 UTF-8, es_ES.UTF-8 UTF-8"
ARG WITH_ALL_LOCALES="no"
  
EXPOSE 8080 8443

USER root
