:: Start script
SET containers_prefix=app

:: script path
SET mypath=%~dp0

:: Go to Docker for Windows settings > Shared Drives > Reset credentials > select drive > Apply;
SET COMPOSE_CONVERT_WINDOWS_PATHS=1

docker-compose -f %cd%\docker-compose.yml -p %containers_prefix% build
docker-compose -f %cd%\docker-compose.yml -p %containers_prefix% up -d

docker exec -it app-db bash -c "/schema/setup.sh"
