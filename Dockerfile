FROM jupyter/minimal-notebook:latest 

USER root 

RUN apt-get -qq update && apt-get -qq install -y \
    unzip \
    xorg \
    wget && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*


RUN mkdir /opt/mcr_install && \
    mkdir /opt/mcr && \
    wget -P /opt/mcr_install http://www.mathworks.com/supportfiles/downloads/R2018a/deployment_files/R2018a/installers/glnxa64/MCR_R2018a_glnxa64_installer.zip && \
    unzip -q /opt/mcr_install/MCR_R2018a_glnxa64_installer.zip -d /opt/mcr_install && \
    /opt/mcr_install/install -destinationFolder /opt/mcr -agreeToLicense yes -mode silent && \
    rm -rf /opt/mcr_install /tmp/*

RUN mkdir /home/jovyan/work/mcrCache && \
    mkdir /home/jovyan/work/mcrCache/.mcrCache9.4

ENV LD_LIBRARY_PATH "/opt/mcr/v94/runtime/glnxa64:/opt/mcr/v94/bin/glnxa64:/opt/mcr/v94/sys/os/glnxa64:/opt/mcr/v94/sys/opengl/lib/glnxa64"
ENV MCR_CACHE_ROOT "/home/jovyan/work/mcrCache"
ADD mt_sat_batch/for_redistribution_files_only /home/jovyan/work
RUN chmod -R 777 $HOME

USER $NB_USER
WORKDIR $HOME




