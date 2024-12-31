nvm use
yarn
docker network create area_api

cp apps/frontend/mobile/.env.example apps/frontend/mobile/.env
cp apps/frontend/web/.env.example apps/frontend/web/.env

cp apps/backend/api/.env.example apps/backend/api/.env
cp apps/backend/api/.cloud/docker/.env.example apps/backend/api/.cloud/docker/.env

cp apps/backend/providers/discord/.env.example apps/backend/providers/discord/.env

yarn serve

docker exec area-mariadb-1 sh -c "echo 'CREATE DATABASE IF NOT EXISTS \`area-api-db\`;CREATE DATABASE IF NOT EXISTS \`area-provider-discord-db\`;CREATE USER IF NOT EXISTS \`api\` IDENTIFIED BY \"api\";CREATE USER IF NOT EXISTS \`provider-discord\` IDENTIFIED BY \"provider-discord\";GRANT ALL PRIVILEGES ON \`area-api-db\`.* TO \`api\` IDENTIFIED BY \"api\";GRANT ALL PRIVILEGES ON \`area-provider-discord-db\`.* TO \`provider-discord\` IDENTIFIED BY \"provider-discord\";' | mariadb --user=root --password=root"

docker exec area-api-1 sh -c "yarn migration:up"
docker exec area-provider-discord-1 sh -c "yarn migration:up"
