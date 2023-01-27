FROM bitnami/moodle
MAINTAINER Tahir


ARG EXTRA_LOCALS "fr_FR.UTF-8 UTF-8, de_DE.UTF-8 UTF-8"
RUN echo "es_ES.UTF-8 UTF-8" >> /etc/locale.gen && locale-gen

EXPOSE 8083 8443

USER root
