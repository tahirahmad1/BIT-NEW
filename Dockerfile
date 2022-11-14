FROM docker.io/bitnami/minideb:bullseye
ENV HOME
Arg
Extra_Locals "fr_FR.UTF-8 UTF-8, de_DE.UTF-8 UTF-8, it_IT.UTF-8 UTF-8, es_ES.UTF-8 UTF-8"

EXPOSE 8080 8443

USER root

