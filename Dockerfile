FROM jupyter/minimal-notebook

USER root

RUN apt-get update && \
    apt-get install -y libtool libffi-dev ruby ruby-dev make libzmq3-dev libczmq-dev && \
    gem install cztop specific_install && \
    gem specific_install https://github.com/SciRuby/iruby && \

USER $NB_UID

RUN iruby register && jupyter kernelspec install ~/.ipython/kernels/ruby
