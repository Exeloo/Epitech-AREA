nvm use
yarn
docker network create area_api

cp apps/frontend/mobile/.env.example apps/frontend/mobile/.env
cp apps/frontend/web/.env.example apps/frontend/web/.env

cp apps/backend/api/.env.example apps/backend/api/.env
cp apps/backend/api/.cloud/docker/.env.example apps/backend/api/.cloud/docker/.env

cp apps/backend/providers/discord/.env.example apps/backend/providers/discord/.env
cp apps/backend/providers/twitch/.env.example apps/backend/providers/twitch/.env
cp apps/backend/providers/google/.env.example apps/backend/providers/google/.env
cp apps/backend/providers/github/.env.example apps/backend/providers/github/.env
cp apps/backend/providers/microsoft/.env.example apps/backend/providers/microsoft/.env
cp apps/backend/providers/linkedin/.env.example apps/backend/providers/linkedin/.env
cp apps/backend/providers/visualcrossing/.env.example apps/backend/providers/visualcrossing/.env
cp apps/backend/providers/trackergg/.env.example apps/backend/providers/trackergg/.env
cp apps/backend/providers/riot/.env.example apps/backend/providers/riot/.env
cp apps/backend/providers/christmas/.env.example apps/backend/providers/christmas/.env
cp apps/backend/providers/bluesky/.env.example apps/backend/providers/bluesky/.env
cp apps/backend/providers/patreon/.env.example apps/backend/providers/patreon/.env
cp apps/backend/providers/cron/.env.example apps/backend/providers/cron/.env

yarn serve

docker exec area-mariadb-1 sh -c "echo 'CREATE DATABASE IF NOT EXISTS \`area-api-db\`;CREATE USER IF NOT EXISTS \`api\` IDENTIFIED BY \"api\";GRANT ALL PRIVILEGES ON \`area-api-db\`.* TO \`api\` IDENTIFIED BY \"api\";' | mariadb --user=root --password=root"

docker exec area-mariadb-1 sh -c "echo 'CREATE DATABASE IF NOT EXISTS \`area-provider-discord-db\`;CREATE USER IF NOT EXISTS \`provider-discord\` IDENTIFIED BY \"provider-discord\";GRANT ALL PRIVILEGES ON \`area-provider-discord-db\`.* TO \`provider-discord\` IDENTIFIED BY \"provider-discord\";' | mariadb --user=root --password=root"
docker exec area-mariadb-1 sh -c "echo 'CREATE DATABASE IF NOT EXISTS \`area-provider-twitch-db\`;CREATE USER IF NOT EXISTS \`provider-twitch\` IDENTIFIED BY \"provider-twitch\";GRANT ALL PRIVILEGES ON \`area-provider-twitch-db\`.* TO \`provider-twitch\` IDENTIFIED BY \"provider-twitch\";' | mariadb --user=root --password=root"
docker exec area-mariadb-1 sh -c "echo 'CREATE DATABASE IF NOT EXISTS \`area-provider-google-db\`;CREATE USER IF NOT EXISTS \`provider-google\` IDENTIFIED BY \"provider-google\";GRANT ALL PRIVILEGES ON \`area-provider-google-db\`.* TO \`provider-google\` IDENTIFIED BY \"provider-google\";' | mariadb --user=root --password=root"
docker exec area-mariadb-1 sh -c "echo 'CREATE DATABASE IF NOT EXISTS \`area-provider-github-db\`;CREATE USER IF NOT EXISTS \`provider-github\` IDENTIFIED BY \"provider-github\";GRANT ALL PRIVILEGES ON \`area-provider-github-db\`.* TO \`provider-github\` IDENTIFIED BY \"provider-github\";' | mariadb --user=root --password=root"
docker exec area-mariadb-1 sh -c "echo 'CREATE DATABASE IF NOT EXISTS \`area-provider-microsoft-db\`;CREATE USER IF NOT EXISTS \`provider-microsoft\` IDENTIFIED BY \"provider-microsoft\";GRANT ALL PRIVILEGES ON \`area-provider-microsoft-db\`.* TO \`provider-microsoft\` IDENTIFIED BY \"provider-microsoft\";' | mariadb --user=root --password=root"
docker exec area-mariadb-1 sh -c "echo 'CREATE DATABASE IF NOT EXISTS \`area-provider-linkedin-db\`;CREATE USER IF NOT EXISTS \`provider-linkedin\` IDENTIFIED BY \"provider-linkedin\";GRANT ALL PRIVILEGES ON \`area-provider-linkedin-db\`.* TO \`provider-linkedin\` IDENTIFIED BY \"provider-linkedin\";' | mariadb --user=root --password=root"
docker exec area-mariadb-1 sh -c "echo 'CREATE DATABASE IF NOT EXISTS \`area-provider-patreon-db\`;CREATE USER IF NOT EXISTS \`provider-patreon\` IDENTIFIED BY \"provider-patreon\";GRANT ALL PRIVILEGES ON \`area-provider-patreon-db\`.* TO \`provider-patreon\` IDENTIFIED BY \"provider-patreon\";' | mariadb --user=root --password=root"

docker exec area-server-1 sh -c "yarn migration:up"
docker exec area-provider-discord-1 sh -c "yarn migration:up"
docker exec area-provider-twitch-1 sh -c "yarn migration:up"
docker exec area-provider-google-1 sh -c "yarn migration:up"
docker exec area-provider-github-1 sh -c "yarn migration:up"
docker exec area-provider-microsoft-1 sh -c "yarn migration:up"
docker exec area-provider-linkedin-1 sh -c "yarn migration:up"
docker exec area-provider-patreon-1 sh -c "yarn migration:up"
