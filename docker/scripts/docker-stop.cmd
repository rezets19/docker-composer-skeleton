:: Stop script

SET containers_prefix=app

::docker-compose -p %containers_prefix% kill
docker-compose -p %containers_prefix% rm -f -s
