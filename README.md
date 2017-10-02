# docker-carbon-relay #
Minimal image based on `python:2.7.12-alpine` with carbon-relay daemon running.

## Base usage ##
```
docker run -p 2013:2013 -p 2014:2014 mateuszm/carbon-relay
```

## Configuration ##
You can configure all settings via environment variables prefixed with
"CARBON_OPT_".
You can also just create your own image and copy configuration into it:

```
COPY carbon.conf $GRAPHITE_CONF_DIR/carbon.conf
```
or mount it into container.

Default `relay-rules.conf` file contains only `[default]` section formatted with
`DESTINATIONS`. If you need more sophisticated one, just COPY it into image:
```
COPY relay-rules.conf $GRAPHITE_CONF_DIR/relay-rules.conf
```
or mount it into container.

Config files (Everything in $GRAPHITE_CONF_DIR) are formated by image's 
entrypoint with environment as keys, so you can dynamically change it's contents
by using environment variables in braces, e.g:

```
DESTINATIONS = {DESTINATIONS}
```
