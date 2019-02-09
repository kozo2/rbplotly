FROM ruby

RUN apt-get update && \
    apt-get install -y libtool libffi-dev ruby ruby-dev make libzmq3-dev libczmq-dev python3 python3-pip && \
    python3 -m pip install notebook && \
    gem install cztop specific_install rbplotly && \
    gem specific_install https://github.com/SciRuby/iruby && \
    iruby register && \
    jupyter kernelspec install ~/.ipython/kernels/ruby && \
