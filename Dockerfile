FROM bitnami/moodle
MAINTAINER Tahir
#RUN apt -y update && apt install -y curl && \
#    curl -ssl -o -y /bitnami/moodle/blocks https://moodle.org/plugins/block_deft

RUN apt update && \
    apt install -y wget && apt update && apt install -y zip
RUN wget  -P /bitnami/moodledata/lang https://download.moodle.org/download.php/direct/langpack/3.8/de.zip
RUN unzip /bitnami/moodledata/lang/de.zip
RUN rm /bitnami/moodle/lang/de.zip
#RUN wget -P /bitnami/moodle/blocks https://moodle.org/plugins/block_deft
#    unzip /blocks/blocks_deft
    
#ARG EXTRA_LOCALES "de_DE.UTF-8 UTF-8"
#RUN echo $EXTRA LOCALES >> /etc/locale.gen && locale-gen

EXPOSE 8083 8443

USER root
