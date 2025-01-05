CREATE DATABASE IF NOT EXISTS `area-api-db`;
CREATE DATABASE IF NOT EXISTS `area-provider-discord-db`;
CREATE DATABASE IF NOT EXISTS `area-provider-twitch-db`;

CREATE USER IF NOT EXISTS `api` IDENTIFIED BY "admin1234";
CREATE USER IF NOT EXISTS `provider-discord` IDENTIFIED BY "provider-discord";
CREATE USER IF NOT EXISTS `provider-twitch` IDENTIFIED BY "provider-twitch";

GRANT ALL PRIVILEGES ON `area-api-db`.* TO `api` IDENTIFIED BY "admin1234";
GRANT ALL PRIVILEGES ON `area-provider-discord-db`.* TO `provider-discord` IDENTIFIED BY "provider-discord";
GRANT ALL PRIVILEGES ON `area-provider-twitch-db`.* TO `provider-twitch` IDENTIFIED BY "provider-twitch";
