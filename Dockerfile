# Dockerfile for thenets/phalcon:latest
#
# https://github.com/thenets/phalcon

FROM phalconphp/php:7-min

MAINTAINER Luiz Felipe F M Costa <luiz@thenets.org>

ENV USER_HOME=/home/phalcon/
ENV APP=/home/phalcon/html/


# Create Phalcon user
RUN groupadd -r -g 1000 phalcon && \
    useradd -mr -c "Phalcon" -d $USER_HOME -g 1000 -u 1000 phalcon

# Create app dir and set permissions
RUN mkdir -p $APP && chown -R 1000.1000 $USER_HOME

# Create hello world file
RUN echo '<?php $app="PHP"; echo "Hello from $app"; ?>' > $APP/index.php

# Config and volume
USER phalcon
WORKDIR $APP
CMD /usr/local/bin/php -S 0.0.0.0:8080
EXPOSE 8080
VOLUME [$APP]


