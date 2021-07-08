This docker image runs curator tasks against an elasticsearch cluster to manage its indices.

The list of tasks currently are:
* purge old logstash indices (when MAX_INDEX_AGE is set)
* optimise logstash indices that are a day old or more

## Configuration

`CURATOR_VERSION` - version curator.

