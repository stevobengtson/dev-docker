CREATE DATABASE IF NOT EXISTS `varsitytutors_development` /*!40100 DEFAULT CHARACTER SET utf8 */;
CREATE DATABASE IF NOT EXISTS `varsitytutors_test` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `varsitytutors_test`;
CREATE TABLE IF NOT EXISTS `states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_states_on_code` (`code`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;