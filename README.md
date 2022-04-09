# tcc-poc-stack

A complete docker compose stack for POC demo.

All subdirectories here are used to provide some configuration for containers during the operation cycle by mounting volumes where containers will store their own operation files.

## Docker prerequisites

Prepare the host directories before startup the stack first time.

```sh
# for geoserver volumes
sudo chown -R 1099:1099 gs_datadir/
sudo chown -R 1099:1099 gs_extensions/

# for pgadmin4 we needed to set to correct uid and gid
sudo chown -R 5050:5050 pgclient/data/

# for another data dir volumes
sudo chown -R nobody:nogroup address-api/data/
sudo chown -R nobody:nogroup address-form/data/
sudo chown -R nobody:nogroup address-geocode/data/
sudo chown -R nobody:nogroup postgresdb/data/
sudo chown -R nobody:nogroup proxy/data/
```

### Docker container environment

Set the environment variables for each instance of the container, using the *.env files inside the predefined directories.

## References

https://docs.docker.com/

https://hub.docker.com/_/postgres

https://hub.docker.com/r/kartoza/postgis/

https://hub.docker.com/r/dpage/pgadmin4/