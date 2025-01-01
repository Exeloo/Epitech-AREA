CREATE DATABASE IF NOT EXISTS `area-api-db`;
CREATE DATABASE IF NOT EXISTS `area-provider-discord-db`;

CREATE USER IF NOT EXISTS `api` IDENTIFIED BY "api";
CREATE USER IF NOT EXISTS `provider-discord` IDENTIFIED BY "provider-discord";

GRANT ALL PRIVILEGES ON `area-api-db`.* TO `api` IDENTIFIED BY "api";
GRANT ALL PRIVILEGES ON `area-provider-discord-db`.* TO `provider-discord` IDENTIFIED BY "provider-discord";