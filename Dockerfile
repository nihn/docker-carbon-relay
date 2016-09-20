FROM mateuszm/carbon:0.9.15

MAINTAINER mateuszmoneta@gmail.com

ENV DESTINATIONS='127.0.0.1:2004'\
    USE_WHITELIST='False'

EXPOSE 2013 2014

ENTRYPOINT ["/carbon-entrypoint.py", "carbon-relay.py"]
