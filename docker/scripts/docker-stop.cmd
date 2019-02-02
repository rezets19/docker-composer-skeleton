:: Stop script

SET containers_prefix=app

:: Script path
SET cwd=%~dp0

cd /d %cwd%

::docker-compose -p %containers_prefix% kill
docker-compose -p %containers_prefix% rm -f -s
