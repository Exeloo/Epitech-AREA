CREATE DATABASE IF NOT EXISTS `area-api-db`;
CREATE DATABASE IF NOT EXISTS `area-provider-discord-db`;
CREATE DATABASE IF NOT EXISTS `area-provider-twitch-db`;
CREATE DATABASE IF NOT EXISTS `area-provider-google-db`;
CREATE DATABASE IF NOT EXISTS `area-provider-github-db`;
CREATE DATABASE IF NOT EXISTS `area-provider-microsoft-db`;
CREATE DATABASE IF NOT EXISTS `area-provider-linkedin-db`;
CREATE DATABASE IF NOT EXISTS `area-provider-patreon-db`;

CREATE USER IF NOT EXISTS `api` IDENTIFIED BY "admin1234";
CREATE USER IF NOT EXISTS `provider-discord` IDENTIFIED BY "admin1234";
CREATE USER IF NOT EXISTS `provider-twitch` IDENTIFIED BY "admin1234";
CREATE USER IF NOT EXISTS `provider-google` IDENTIFIED BY "admin1234";
CREATE USER IF NOT EXISTS `provider-github` IDENTIFIED BY "admin1234";
CREATE USER IF NOT EXISTS `provider-microsoft` IDENTIFIED BY "admin1234";
CREATE USER IF NOT EXISTS `provider-linkedin` IDENTIFIED BY "admin1234";
CREATE USER IF NOT EXISTS `provider-patreon` IDENTIFIED BY "admin1234";

GRANT ALL PRIVILEGES ON `area-api-db`.* TO `api` IDENTIFIED BY "admin1234";
GRANT ALL PRIVILEGES ON `area-provider-discord-db`.* TO `provider-discord` IDENTIFIED BY "admin1234";
GRANT ALL PRIVILEGES ON `area-provider-twitch-db`.* TO `provider-twitch` IDENTIFIED BY "admin1234";
GRANT ALL PRIVILEGES ON `area-provider-google-db`.* TO `provider-google` IDENTIFIED BY "admin1234";
GRANT ALL PRIVILEGES ON `area-provider-github-db`.* TO `provider-github` IDENTIFIED BY "admin1234";
GRANT ALL PRIVILEGES ON `area-provider-microsoft-db`.* TO `provider-microsoft` IDENTIFIED BY "admin1234";
GRANT ALL PRIVILEGES ON `area-provider-linkedin-db`.* TO `provider-linkedin` IDENTIFIED BY "admin1234";
GRANT ALL PRIVILEGES ON `area-provider-patreon-db`.* TO `provider-patreon` IDENTIFIED BY "admin1234";
