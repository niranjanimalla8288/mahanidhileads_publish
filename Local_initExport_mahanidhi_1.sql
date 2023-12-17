use mahanidhi_db;

DROP TABLE IF EXISTS `dbc_amenities`;

CREATE TABLE `dbc_amenities` (
`id` int NOT NULL AUTO_INCREMENT,
`category_id` int DEFAULT '0',
`options` text  ,
`status` int NOT NULL DEFAULT '1',
PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT


