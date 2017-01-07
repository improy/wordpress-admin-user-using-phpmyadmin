-- phpMyAdmin SQL Dump
-- Create A WordPress Admin User using SQL Queries in MySQL Database
-- Following queries will create a new WordPress user (with an Administrator role)
-- Read more at: http://www.proy.info/create-a-wordpress-admin-user-via-mysql-database-using-phpmyadmin/ 

-- assuming database name as `your_wp_database`, chanage this to your database name
-- assuming database table prefix is set to “wp_”, chanage this to your database table prefix
-- Read more at: http://www.proy.info/create-a-wordpress-admin-user-via-mysql-database-using-phpmyadmin/ 

-- 
-- INSERT QUERY
-- Table: `wp_users`
--

-- --------------------------------------------------------
INSERT INTO `your_wp_database`.`wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) 
VALUES (NULL, 'newuser', MD5('new-password'), 'Site Admin', 'newuser@yourdomain.com', 'http://www.yourdomain.com', '2017-01-08 00:00:00', '', '0', 'New Admin');

-- 
-- INSERT QUERY
-- assuming database table prefix is set to “wp_”
-- Table: `wp_usermeta`
-- assuming the new `ID` value in `wp_users` table is 2 and That is used in `user_id` column for the following INSERT query
--

-- --------------------------------------------------------
INSERT INTO `your_wp_database`.`wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) 
VALUES 
(NULL, '2', 'wp_capabilities', 'a:1:{s:13:"administrator";s:1:"1";}'), 
(NULL, '2', 'wp_user_level', '10');
