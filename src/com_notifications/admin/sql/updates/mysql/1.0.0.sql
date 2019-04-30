CREATE TABLE IF NOT EXISTS `#__notification_providers` (
  `provider` varchar(100) NOT NULL,
  `state` int(1) NOT NULL,
   primary key(provider)
 ) ENGINE=InnoDB 
  DEFAULT CHARSET=utf8mb4 
  DEFAULT COLLATE=utf8mb4_unicode_ci 
  AUTO_INCREMENT=0;

CREATE TABLE IF NOT EXISTS `#__notification_templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client` varchar(100) NOT NULL,
  `key` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `email_status` int(1) DEFAULT NULL,
  `sms_status` int(1) DEFAULT NULL,
  `push_status` int(1) DEFAULT NULL,
  `web_status` int(1) DEFAULT NULL,
  `email_body` text,
  `sms_body` text,
  `push_body` text,
  `web_body` text,
  `email_subject` text,
  `sms_subject` text,
  `push_subject` text,
  `web_subject` text,
  `state` int(11) DEFAULT NULL,
  `created_on` date NOT NULL,
  `updated_on` date NOT NULL,
  `is_override` int(1) DEFAULT NULL,
  `user_control` int(1) DEFAULT NULL,
  `core` int(1) DEFAULT NULL,
  `replacement_tags` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `client_2` (`client`,`key`),
  KEY `client` (`client`),
  KEY `key` (`key`)
) 
 ENGINE=InnoDB 
 DEFAULT CHARSET=utf8mb4 
 DEFAULT COLLATE=utf8mb4_unicode_ci 
 AUTO_INCREMENT=0;

 CREATE TABLE IF NOT EXISTS `#__notification_user_exclusions` (
  `user_id` int(11) NOT NULL,
  `client` varchar(100) NOT NULL,
  `key` varchar(100) NOT NULL,
  `provider` varchar(100) NOT NULL,
   KEY `client1` (`client`,`provider`,`key`),
   KEY `key` (`key`),
   KEY `provider` (`provider`),
   CONSTRAINT `#__notification_user_exclusions_ibfk_1` FOREIGN KEY (`provider`) REFERENCES `#__notification_providers` (`provider`)
)
 ENGINE=InnoDB 
 DEFAULT CHARSET=utf8mb4 
 DEFAULT COLLATE=utf8mb4_unicode_ci 
 AUTO_INCREMENT=0;

INSERT INTO `#__notification_templates` (`id`, `client`, `key`, `title`, `email_status`, `sms_status`, `push_status`, `web_status`, `email_body`, `sms_body`, `push_body`, `web_body`, `email_subject`, `sms_subject`, `push_subject`, `web_subject`, `state`, `created_on`, `updated_on`, `is_override`, `user_control`, `core`, `replacement_tags`) VALUES
(1, 'com_users', 'new.user.registration.email', 'New user registration email to Administrator', 1, NULL, NULL, NULL, '<p>Hello {admin.name},</p>\r\n<p>A new user ‘{user.name}’, username ‘{user.username}’, has registered at {site.siteurl}</p>\r\n<p> </p>\r\n<p><em>Note:</em> This is system generated email, please do not reply. Many thanks from <strong>{site.sitename}</strong></p>', NULL, NULL, NULL, 'Account Details for {user.name} at {site.sitename}', NULL, NULL, NULL, 1, '2019-01-31', '2019-01-31', NULL, 1, NULL, '[{"name":"user.name","description":"Name of a user"},{"name":"site.sitename","description":"Name of the site"},{"name":"admin.name","description":"Name of the administrator"},{"name":"site.siteurl","description":"Website url"}]');