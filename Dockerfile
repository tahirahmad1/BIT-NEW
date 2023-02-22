FROM bitnami/moodle
MAINTAINER Tahir
RUN apt -y update && apt install -y curl
#RUN mkdir /blocks 
RUN curl https://moodle.org/plugins/block_deft -y /blocks
    #unzip /blocks/blocks_deft
#RUN apt-get update && \
#    apt-get install wget && \ wget https://download.moodle.org/download.php/langpack/3.8/de.zip /bitnami/moodledata/lang/ && \
#    unzip /bitnami/moodledata/lang/de.zip
    
ARG EXTRA_LOCALES "de_DE.UTF-8 UTF-8"
#RUN echo $EXTRA LOCALES >> /etc/locale.gen && locale-gen

EXPOSE 8083 8443

USER root
