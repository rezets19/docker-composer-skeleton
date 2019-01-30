
rmdir /s /q "%cd%\db\data\"
mkdir "%cd%\db\data\"

docker-compose -f %cd%\docker-compose.yml -p app build
docker-compose -f %cd%\docker-compose.yml -p app up -d