FROM bitnami/moodle
MAINTAINER Tahir


ARG Extra_Locals "fr_FR.UTF-8 UTF-8, de_DE.UTF-8 UTF-8, it_IT.UTF-8 UTF-8, es_ES.UTF-8 UTF-8"

EXPOSE 8083 8443

USER root
