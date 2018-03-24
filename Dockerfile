FROM ndamiens/nginx-php

RUN cd /opt/app/www && \
    wget --quiet -O rss.tar.gz https://git.tt-rss.org/fox/tt-rss/archive/17.4.tar.gz
RUN cd /opt/app/www && tar zxf rss.tar.gz --strip-components=1 && \
    rm rss.tar.gz
ADD nginx.conf /etc/nginx/sites-enabled/default
