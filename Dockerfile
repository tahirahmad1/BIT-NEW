FROM bitnami/moodle
MAINTAINER Tahir
#RUN apt -y update && apt install -y curl && \
#    curl -ssl -o -y /bitnami/moodle/blocks https://moodle.org/plugins/block_deft
#RUN curl https://moodle.org/plugins/block_deft -y /blocks
#    unzip /blocks/blocks_deft
RUN apt update && \
    apt install -y axel && apt update && apt install -y zip
COPY de /bitnami/moodle/lang/
#    unzip /bitnami/moodledata/lang/de.zip
    
ARG EXTRA_LOCALES "de_DE.UTF-8 UTF-8"
#RUN echo $EXTRA LOCALES >> /etc/locale.gen && locale-gen

EXPOSE 8083 8443

USER root
