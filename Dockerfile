FROM bitnami/moodle
MAINTAINER Tahir


ARG EXTRA_LOCALES "de_DE.UTF-8 UTF-8"
#RUN echo $EXTRA LOCALES >> /etc/locale.gen && locale-gen

EXPOSE 8083 8443

USER root
