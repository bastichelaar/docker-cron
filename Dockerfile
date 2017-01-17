FROM php:7

RUN apt-get update && apt-get install -y --no-install-recommends bash tzdata cron ntp

COPY cron-entrypoint /usr/local/bin/

CMD ["cron-entrypoint"]
