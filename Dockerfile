FROM jupyter/minimal-notebook

USER root

RUN apt-get update && \
    apt-get install -y libtool libffi-dev ruby ruby-dev make libzmq3-dev libczmq-dev && \
    gem install rbplotly cztop specific_install && \
    gem specific_install https://github.com/SciRuby/iruby && \
    iruby register && \
    jupyter kernelspec list
