use mahanidhi_db;

DROP TABLE IF EXISTS `dbc_amenities`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dbc_amenities` (
`id` int NOT NULL AUTO_INCREMENT,
`category_id` int DEFAULT '0',
`options` text  ,
`status` int NOT NULL DEFAULT '1',
PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbc_amenities`
--

LOCK TABLES `dbc_amenities` WRITE;
/*!40000 ALTER TABLE `dbc_amenities` DISABLE KEYS */;
INSERT INTO `dbc_amenities` VALUES (1,5,'Pathalogy',1),(2,5,'X-Ray',1);
/*!40000 ALTER TABLE `dbc_amenities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbc_blog`
--

DROP TABLE IF EXISTS `dbc_blog`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dbc_blog` (
`id` int NOT NULL AUTO_INCREMENT,
`type` char(30) NOT NULL,
`featured_img` char(200) NOT NULL,
`title` longtext  NOT NULL,
`description` longtext  NOT NULL,
`created_by` int NOT NULL,
`create_time` int NOT NULL,
`status` int NOT NULL DEFAULT '1',
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbc_blog`
--

LOCK TABLES `dbc_blog` WRITE;
/*!40000 ALTER TABLE `dbc_blog` DISABLE KEYS */;
/*!40000 ALTER TABLE `dbc_blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbc_blog_meta`
--

DROP TABLE IF EXISTS `dbc_blog_meta`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dbc_blog_meta` (
`id` int NOT NULL AUTO_INCREMENT,
`blog_id` int NOT NULL,
`key` char(50)  NOT NULL,
`value` text  NOT NULL,
`status` int NOT NULL DEFAULT '1',
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbc_blog_meta`
--

LOCK TABLES `dbc_blog_meta` WRITE;
/*!40000 ALTER TABLE `dbc_blog_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `dbc_blog_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbc_categories`
--

DROP TABLE IF EXISTS `dbc_categories`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dbc_categories` (
`id` int NOT NULL AUTO_INCREMENT,
`parent` int NOT NULL DEFAULT '0',
`title` char(100)  NOT NULL,
`fa_icon` char(20)  NOT NULL,
`featured_img` char(200)  NOT NULL,
`show_menu` tinyint(1) NOT NULL DEFAULT '0',
`created_by` int NOT NULL,
`create_time` int NOT NULL,
`status` int NOT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbc_categories`
--

LOCK TABLES `dbc_categories` WRITE;
/*!40000 ALTER TABLE `dbc_categories` DISABLE KEYS */;
INSERT INTO `dbc_categories` VALUES (1,0,'Real Estate','fa-home','hm.jpg',0,1,1701242746,1),(2,0,'Infra
Developers','fa-user','hm1.jpg',0,1,1701246823,1),(3,0,'Groceries','fa-car','hm3.jpg',0,1,1701247639,1),(4,0,'Hospitals','fa-home','PanCard_back.jpeg',0,1,1701685392,1),(5,0,'Children
Hospitals','fa-home','TechyTrainEstimates_v1_0.JPG',0,1,1701862339,1),(6,0,'Electronics','fa-home','TechyTrainEstimates_v1_02.JPG',0,1,1702535967,1),(7,0,'Gaming
Toys','fa-user','TechyTrainEstimates_v1_04.JPG',0,1,1702639947,1);
/*!40000 ALTER TABLE `dbc_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbc_customfields`
--

DROP TABLE IF EXISTS `dbc_customfields`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dbc_customfields` (
`id` int NOT NULL AUTO_INCREMENT,
`category_id` int DEFAULT '0',
`fieldname` char(25)  DEFAULT NULL,
`fieldtitle` char(100)  DEFAULT NULL,
`type` char(25)  DEFAULT NULL,
`options` text  ,
`is_required` int NOT NULL DEFAULT '0',
`help_text` text  ,
`show_in_detail` int NOT NULL DEFAULT '0',
`show_in_search` int NOT NULL DEFAULT '0',
`sort_order` int NOT NULL DEFAULT '0',
`status` int NOT NULL DEFAULT '1',
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbc_customfields`
--

LOCK TABLES `dbc_customfields` WRITE;
/*!40000 ALTER TABLE `dbc_customfields` DISABLE KEYS */;
/*!40000 ALTER TABLE `dbc_customfields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbc_emailtmpl`
--

DROP TABLE IF EXISTS `dbc_emailtmpl`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dbc_emailtmpl` (
`id` int NOT NULL AUTO_INCREMENT,
`email_name` char(100)  NOT NULL,
`values` text  NOT NULL,
`status` int NOT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbc_emailtmpl`
--

LOCK TABLES `dbc_emailtmpl` WRITE;
/*!40000 ALTER TABLE `dbc_emailtmpl` DISABLE KEYS */;
INSERT INTO `dbc_emailtmpl` VALUES (1,'confirmation_email','{\"subject\":\"Confirmation email\",\"body\":\"Hi
#username,\\r\\nYour signup is successful. Please follow the below link for activating your account:\\r\\n
\\r\\n#activationlink\\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\r\\nThanks\\r\\n#webadmin\",\"avl_vars\":\"#username,#useremail,#activationlink,#webadmin\"}',1),(2,'recovery_email','{\"subject\":\"Recovery
email\",\"body\":\"Hi #username,\\r\\nWe have received an account recovery request from your email. Please follow the
below link for setting new password
\\r\\n\\r\\n#recoverylink\\r\\n\\r\\nThanks\\r\\n#webadmin\",\"avl_vars\":\"#username,#recoverylink,#webadmin\"}',1),(3,'payment_confirmation_email','{\"subject\":\"Confirmation
email\",\"body\":\"Hi #username,\\r\\nYou decided to make a payment. You can resume the payment from the following
link\\r\\n\\r\\n#resumelink\\r\\n\\r\\nThanks\\r\\n#webadmin\",\"avl_vars\":\"#username,#resumelink,#webadmin\"}',1),(4,'post_expiration_notification','{\"subject\":\"Post
expiration notification\",\"body\":\"Dear user \\r\\nOne or more of your posts are going to be expired within
#no_of_days days. If you want to renew them then please follow the below link
\\r\\n\\r\\n#all_posts_link\\r\\n\\r\\nThanks\\r\\n#webadmin\",\"avl_vars\":\"#no_of_days,#all_posts_link,#webadmin\"}',1),(5,'post_published_email','{\"subject\":\"Post
approval notification\",\"body\":\"Dear #username \\r\\nYour post has been
published\\r\\n\\r\\n#post_link\\r\\n\\r\\nThanks\\r\\n#webadmin\",\"avl_vars\":\"#username,#post_link,#webadmin\"}',1);
/*!40000 ALTER TABLE `dbc_emailtmpl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbc_featuredproducts`
--

DROP TABLE IF EXISTS `dbc_featuredproducts`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dbc_featuredproducts` (
`Id` int NOT NULL AUTO_INCREMENT,
`FP_Title` varchar(30) DEFAULT NULL,
`FP_Description` varchar(30) DEFAULT NULL,
`FP_Price` int DEFAULT NULL,
`FP_ImageId` int DEFAULT NULL,
`create_time` datetime DEFAULT NULL,
`created_by` int DEFAULT NULL,
PRIMARY KEY (`Id`),
KEY `FP_ImageId` (`FP_ImageId`),
CONSTRAINT `dbc_featuredproducts_ibfk_1` FOREIGN KEY (`FP_ImageId`) REFERENCES `dbc_featuredproductsimage` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbc_featuredproducts`
--

LOCK TABLES `dbc_featuredproducts` WRITE;
/*!40000 ALTER TABLE `dbc_featuredproducts` DISABLE KEYS */;
/*!40000 ALTER TABLE `dbc_featuredproducts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbc_featuredproductsimage`
--

DROP TABLE IF EXISTS `dbc_featuredproductsimage`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dbc_featuredproductsimage` (
`Id` int NOT NULL AUTO_INCREMENT,
`Image` mediumtext,
`create_time` datetime DEFAULT NULL,
`created_by` int DEFAULT NULL,
PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbc_featuredproductsimage`
--

LOCK TABLES `dbc_featuredproductsimage` WRITE;
/*!40000 ALTER TABLE `dbc_featuredproductsimage` DISABLE KEYS */;
/*!40000 ALTER TABLE `dbc_featuredproductsimage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbc_locations`
--

DROP TABLE IF EXISTS `dbc_locations`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dbc_locations` (
`id` int NOT NULL AUTO_INCREMENT,
`parent` int NOT NULL,
`parent_country` int NOT NULL,
`name` char(200)  NOT NULL,
`type` char(10)  NOT NULL,
`status` int NOT NULL DEFAULT '1',
`photo` char(200)  NOT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbc_locations`
--

LOCK TABLES `dbc_locations` WRITE;
/*!40000 ALTER TABLE `dbc_locations` DISABLE KEYS */;
INSERT INTO `dbc_locations` VALUES
(1,0,0,'India','country',1,''),(2,1,1,'telangana','state',1,''),(3,2,1,'Hyderbad','city',1,''),(4,2,1,'Nijamabad','city',1,'');
/*!40000 ALTER TABLE `dbc_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbc_media`
--

DROP TABLE IF EXISTS `dbc_media`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dbc_media` (
`id` int NOT NULL AUTO_INCREMENT,
`media_name` char(255)  NOT NULL,
`media_url` mediumtext  NOT NULL,
`create_time` datetime NOT NULL,
`created_by` int NOT NULL,
`status` int NOT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbc_media`
--

LOCK TABLES `dbc_media` WRITE;
/*!40000 ALTER TABLE `dbc_media` DISABLE KEYS */;
/*!40000 ALTER TABLE `dbc_media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbc_messaging`
--

DROP TABLE IF EXISTS `dbc_messaging`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dbc_messaging` (
`id` int NOT NULL AUTO_INCREMENT,
`sender` int NOT NULL,
`reciever` int NOT NULL,
`last_activity` int NOT NULL,
`last_viewed` text  ,
`status` int NOT NULL DEFAULT '1',
`content` longtext  ,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbc_messaging`
--

LOCK TABLES `dbc_messaging` WRITE;
/*!40000 ALTER TABLE `dbc_messaging` DISABLE KEYS */;
/*!40000 ALTER TABLE `dbc_messaging` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbc_offers`
--

DROP TABLE IF EXISTS `dbc_offers`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dbc_offers` (
`id` int NOT NULL AUTO_INCREMENT,
`post_id` int NOT NULL,
`title` text  ,
`description` longtext  ,
`featured_img` char(255)  NOT NULL,
`has_time_limit` int NOT NULL DEFAULT '1',
`activation_date` int DEFAULT NULL,
`expirtion_date` int DEFAULT NULL,
`created_by` int NOT NULL,
`create_time` int NOT NULL DEFAULT '0',
`publish_time` int NOT NULL DEFAULT '0',
`last_update_time` int DEFAULT NULL,
`status` int NOT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbc_offers`
--

LOCK TABLES `dbc_offers` WRITE;
/*!40000 ALTER TABLE `dbc_offers` DISABLE KEYS */;
/*!40000 ALTER TABLE `dbc_offers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbc_options`
--

DROP TABLE IF EXISTS `dbc_options`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dbc_options` (
`id` int NOT NULL AUTO_INCREMENT,
`key` char(255)  NOT NULL,
`values` text  NOT NULL,
`status` int NOT NULL DEFAULT '1',
PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbc_options`
--

LOCK TABLES `dbc_options` WRITE;
/*!40000 ALTER TABLE `dbc_options` DISABLE KEYS */;
INSERT INTO `dbc_options` VALUES (1,'site_settings','{\"site_title\":\"Mahanidhi\",\"footer_text\":\"Mahanidhi 2023, all
rights
reserved\",\"site_logo\":\"IMG_20231215_1728471.jpg\",\"logo_text\":\"Mahanidhi\",\"logo_text_color\":\"#ffffff\",\"logo_type\":\"Image\",\"logo_type_rules\":\"required\",\"admin_logo\":\"IMG_20231215_172847.jpg\",\"enable_watermarking\":\"Yes\",\"enable_watermarking_rules\":\"required\",\"wm_featured_photo\":\"1\",\"wm_gallery_photo\":\"1\",\"wm_article_photo\":\"1\",\"watermark_stamp\":\"stamp.png\",\"site_lang\":\"en\",\"site_direction\":\"ltr\",\"site_direction_rules\":\"required\",\"per_page\":\"10\",\"default_layout\":\"1\",\"site_mode\":\"production\",\"ga_tracking_code\":\"\",\"code_before_head\":\"\",\"meta_description\":\"business
directory script,yellow pages,search business\",\"key_words\":\"restaurants,banks,resorts,flat
rent\",\"crawl_after\":\"3\",\"active_langs\":\"en\"}',1),(2,'active_theme','scoop',1),(3,'positions','[{\"name\":\"home_page\",\"status\":1,\"widgets\":[\"featured_posts_main\",\"category_main_with_subcategories\",\"recent_posts_main\",\"top_locations_home\",\"category_main\",\"category_counter\"]},{\"name\":\"right_bar_home\",\"status\":1,\"widgets\":[\"plain_search_widget\",\"top_posts\",\"category_sidebar\",\"featured_post\",\"recent_post\",\"top_users\",\"top_locations_sidebar\",\"newsletter_sidebar\"]},{\"name\":\"right_bar_detail\",\"status\":1,\"widgets\":[\"category_featured_post\",\"similar_post\"]},{\"name\":\"right_bar_all_users\",\"status\":1,\"widgets\":[\"plain_search_widget\",\"featured_post\",\"top_locations_sidebar\",\"category_sidebar\",\"recent_post\"]},{\"name\":\"right_bar_locations\",\"status\":1,\"widgets\":[\"plain_search_widget\",\"recent_post\",\"top_locations_sidebar\",\"category_sidebar\",\"featured_post\",\"adsense_sidebar\"]},{\"name\":\"right_bar_categories\",\"status\":1,\"widgets\":[\"plain_search_widget\",\"recent_post\",\"adsense_sidebar\",\"fb_likebox\",\"top_locations_sidebar\",\"category_featured_post\"]},{\"name\":\"right_bar_search_page\",\"status\":1,\"widgets\":false},{\"name\":\"right_bar_general\",\"status\":1,\"widgets\":[\"plain_search_widget\",\"featured_post\",\"top_locations_sidebar\",\"category_sidebar\"]},{\"name\":\"right_bar_blog_posts\",\"status\":1,\"widgets\":[\"plain_search_widget\",\"top_locations_sidebar\",\"featured_post\"]},{\"name\":\"footer_first_column\",\"status\":1,\"widgets\":[\"contact_text\"]},{\"name\":\"footer_second_column\",\"status\":1,\"widgets\":[\"follow_us\"]},{\"name\":\"footer_third_column\",\"status\":1,\"widgets\":[\"short_description\"]},{\"name\":\"side_bar_search_page\",\"status\":1,\"widgets\":[]},{\"name\":\"right_bar_offers\",\"status\":1,\"widgets\":[\"plain_search_widget\",\"top_posts\"]}]',1),(4,'top_menu','[{\"id\":\"1\",\"parent\":0},{\"id\":\"10\",\"parent\":0},{\"id\":\"16\",\"parent\":0},{\"id\":\"9\",\"parent\":0},{\"id\":\"2\",\"parent\":\"9\"},{\"id\":\"17\",\"parent\":\"9\"},{\"id\":\"5\",\"parent\":\"9\"},{\"id\":\"11\",\"parent\":\"9\"},{\"id\":\"3\",\"parent\":\"9\"},{\"id\":\"6\",\"parent\":\"9\"},{\"id\":\"7\",\"parent\":\"9\"},{\"id\":\"8\",\"parent\":\"9\"},{\"id\":\"15\",\"parent\":\"9\"},{\"id\":\"4\",\"parent\":0}]',1),(5,'purchase_key','fd605e8f-899a-4c0e-94a7-da5460960f67',1),(6,'item_id','28858025',1),(7,'paypal_settings','{\"enable_sandbox_mode\":\"Yes\",\"enable_sandbox_mode_rules\":\"required\",\"item_name\":\"Publish
Business\",\"item_name_rules\":\"required\",\"email\":\"seller@paypalsandbox.com\",\"email_rules\":\"required\",\"currency\":\"INR\",\"currency_rules\":\"required\",\"finish_url\":\"user\\/payment\\/finish_url\",\"finish_url_rules\":\"required\",\"cancel_url\":\"user\\/payment\\/cancel_url\",\"cancel_url_rules\":\"required\"}',1),(8,'banner_settings','{\"show_banner\":\"Yes\",\"top_bar_bg_color\":\"#1b1817\",\"menu_bg_color\":\"#ffffff\",\"menu_text_color\":\"#666\",\"active_menu_text_color\":\"#32c8de\",\"banner_type\":\"Parallax
Slider\",\"search_panel_bg_color\":\"#222222\",\"show_search_panel\":\"Yes\",\"search_panel_filter_type\":\"advanced_options_with_country_state\",\"show_bg_image\":\"1\",\"search_bg\":\"Blurred-city-street-world-wallpaper.jpg\",\"map_latitude\":\"34.0204989\",\"map_longitude\":\"-118.4117325\",\"map_zoom\":\"7\",\"map_api_key\":\"\",\"disable_map\":\"No\",\"min_distance\":\"1\",\"max_distance\":\"500\",\"default_distance\":\"5\",\"show_distance_in\":\"kms\",\"show_bg_gradient\":\"1\",\"search_panel_txt_color\":\"#ffffff\",\"top_bar_txt_color\":\"#ffffff\",\"top_bar_gradient\":\"1\",\"show_search_bg_gradient\":\"1\",\"map_type\":\"Google\",\"use_embed_map\":null}',1),(9,'webadmin_email','{\"contact_email\":\"mahanidhi2023@gmail.com\",\"webadmin_name\":\"MahaaAdmin\",\"webadmin_email\":\"mahanidhi2023@gmail.com\"}',1),(10,'smtp_settings','{\"smtp_email\":\"Disable\",\"smtp_email_rules\":\"required\",\"smtp_host\":\"ssl:\\/\\/smtp.googlemail.com\",\"smtp_host_rules\":\"required\",\"smtp_port\":\"465\",\"smtp_port_rules\":\"required\",\"smtp_timeout\":\"30\",\"smtp_timeout_rules\":\"required\",\"smtp_user\":\"test@example.com\",\"smtp_user_rules\":\"required|valid_email\",\"smtp_pass\":\"1234\",\"smtp_pass_rules\":\"required\",\"char_set\":\"utf-8\",\"char_set_rules\":\"required\",\"new_line\":\"\\\\r\\\\n\",\"new_line_rules\":\"required\",\"mail_type\":\"html\",\"mail_type_rules\":\"required\"}',1),(11,'business_settings','{\"enable_guest_login\":\"No\",\"enable_guest_login_rules\":\"required\",\"enable_messaging\":\"Yes\",\"enable_messaging_rules\":\"required\",\"publish_directly\":\"No\",\"publish_directly_rules\":\"required\",\"publish_reviews_directly\":\"Yes\",\"publish_reviews_directly_rules\":\"required\",\"system_currency\":\"INR\",\"system_currency_type\":\"0\",\"system_currency_rules\":\"required\",\"enable_signup\":\"Yes\",\"enable_signup_rules\":\"required\",\"skip_user_email_confirmation\":\"No\",\"skip_user_email_confirmation_rules\":\"required\",\"hide_posts_if_expired\":\"No\",\"hide_posts_if_expired_rules\":\"required\",\"show_admin_agent\":\"Yes\",\"show_admin_agent_rules\":\"required\",\"show_street_view\":\"Yes\",\"show_street_view_rules\":\"required\",\"show_state_province\":\"yes\",\"show_state_province_rules\":\"required\",\"city_dropdown\":\"dropdown\",\"city_dropdown_rules\":\"required\",\"posts_per_page\":\"8\",\"posts_per_page_rules\":\"required\",\"send_admin_email_user_signup\":\"No\",\"send_admin_email_user_signup_rules\":\"required\",\"send_email_after_post_published\":\"No\",\"send_email_after_post_published_rules\":\"required\",\"send_notification_before_post_expiration\":\"No\",\"send_notification_before_post_expiration_rules\":\"required\",\"currency_placing\":\"before_with_no_gap\",\"currency_placing_rules\":\"required\",\"enable_review\":\"Yes\",\"enable_review_rules\":\"required\",\"gallery_upload_limit\":\"10\",\"gallery_upload_limit_rules\":\"required\",\"max_upload_file_size\":\"5000\",\"max_upload_file_size_rules\":\"required\",\"recent_posts_order\":\"RANDOM\",\"recent_posts_order_rules\":\"required\",\"featured_posts_order\":\"RANDOM\",\"featured_posts_order_rules\":\"required\",\"default_posts_order\":\"DESC\",\"default_posts_order_rules\":\"required\",\"enable_adblocker_alert\":\"No\",\"enable_adblocker_alert_rules\":\"required\",\"enable_cookie_policy_popup\":\"Yes\",\"enable_cookie_policy_popup_rules\":\"required\",\"cookie_policy_page_url\":\"show\\/page\\/cookie_policy\",\"cookie_policy_page_url_rules\":\"required\",\"hide_opening_hours\":\"No\",\"hide_opening_hours_rules\":\"required\",\"opening_hour_format\":\"12\",\"opening_hour_format_rules\":\"required\",\"hide_report_business_link\":\"No\",\"hide_report_business_link_rules\":\"required\",\"hide_claim_business_link\":\"No\",\"hide_claim_business_link_rules\":\"required\",\"captcha_type\":\"IMG\",\"captcha_type_rules\":\"required\",\"enable_comment\":\"No\",\"enable_comment_rules\":\"required\",\"fb_comment_app_id\":\"\",\"fb_comment_app_id_rules\":\"\",\"disqus_shortname\":\"\",\"disqus_shortname_rules\":\"\",\"enable_blog_comment\":\"No\",\"enable_blog_comment_rules\":\"required\",\"fb_blog_comment_app_id\":\"\",\"fb_blog_comment_app_id_rules\":\"\",\"disqus_blog_shortname\":\"\",\"disqus_blog_shortname_rules\":\"\",\"enable_share_button\":\"No\",\"enable_share_button_rules\":\"required\",\"sharethis_publisher_id\":\"5f51d97c2e2b400012323f8c\",\"sharethis_publisher_id_rules\":\"\",\"enable_fb_login\":\"No\",\"enable_fb_login_rules\":\"required\",\"fb_app_id\":\"34534534\",\"fb_app_id_rules\":\"\",\"fb_secret_key\":\"345345345\",\"fb_secret_key_rules\":\"\",\"enable_gplus_login\":\"No\",\"enable_gplus_login_rules\":\"required\",\"gplus_app_id\":\"\",\"gplus_app_id_rules\":\"\",\"gplus_secret_key\":\"\",\"gplus_secret_key_rules\":\"\"}',1),(12,'package_settings','{\"enable_pricing\":\"Yes\",\"enable_pricing_rules\":\"required\",\"enable_paypal_transfer\":\"No\",\"enable_paypal_transfer_rules\":\"required\",\"enable_stripe_transfer\":\"No\",\"enable_stripe_transfer_rules\":\"required\",\"enable_bank_transfer\":\"Yes\",\"enable_bank_transfer_rules\":\"required\",\"bank_transfer_instruction_for_posts\":\"Here
are your payment options\\r\\n\\r\\nUPI Details : \\r\\nMobile : 7093135710\\r\\nUPI Id :
7093135710@ybl\\r\\n\\r\\nAccount Details: \\r\\nName : Mahanidhi Leads Private Limited\\r\\nAccount Number :
2546254152\\r\\nBank Name : State Bank of India\\r\\nIFSC: SBI00002541\\r\\n\\r\\nInstructions: Please keep your payment
reference number safe and share it with admin through : mahaanidhi2023@gmail.com
\\r\\n\",\"bank_transfer_instruction_for_posts_rules\":\"required\",\"enable_featured_pricing\":\"Yes\",\"enable_featured_pricing_rules\":\"required\",\"enable_featured_paypal_transfer\":\"No\",\"enable_featured_paypal_transfer_rules\":\"required\",\"enable_featured_stripe_transfer\":\"No\",\"enable_featured_stripe_transfer_rules\":\"required\",\"enable_featured_bank_transfer\":\"Yes\",\"enable_featured_bank_transfer_rules\":\"required\",\"bank_transfer_instruction_for_featured_posts\":\"Here
are your payment options\\r\\n\\r\\nUPI Details : \\r\\nMobile : 7093135710\\r\\nUPI Id :
7093135710@ybl\\r\\n\\r\\nAccount Details: \\r\\nName : Mahanidhi Leads Private Limited\\r\\nAccount Number :
2546254152\\r\\nBank Name : State Bank of India\\r\\nIFSC: SBI00002541\\r\\n\\r\\nInstructions: Please keep your payment
reference number safe and share it with admin through : mahaanidhi2023@gmail.com
\\r\\n\",\"bank_transfer_instruction_for_featured_posts_rules\":\"required\",\"bank_currency\":\"INR\",\"bank_currency_rules\":\"required\"}',1),(13,'migrate_1_3','yes',1),(14,'last_expiration_cron_date','2023-12-16',1),(15,'enable_url_rewriting','yes',1),(16,'migrate_2_6','yes',1),(17,'email_subscribers','[\"janedoe@yahoo.com\"]',1);
/*!40000 ALTER TABLE `dbc_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbc_packages`
--

DROP TABLE IF EXISTS `dbc_packages`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dbc_packages` (
`id` int NOT NULL AUTO_INCREMENT,
`type` char(20)  NOT NULL DEFAULT 'post_package',
`title` varchar(300)  NOT NULL,
`description` text  NOT NULL,
`price` decimal(11,2) NOT NULL,
`expiration_time` int NOT NULL,
`featured_expiration_time` int NOT NULL DEFAULT '0',
`max_gallery_photos` int NOT NULL DEFAULT '5',
`status` int NOT NULL DEFAULT '1',
PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbc_packages`
--

LOCK TABLES `dbc_packages` WRITE;
/*!40000 ALTER TABLE `dbc_packages` DISABLE KEYS */;
INSERT INTO `dbc_packages` VALUES (1,'featured_package','Free','Free for 15
days',0.00,15,0,5,0),(2,'post_package','Normal','',10.00,60,0,5,0),(3,'post_package','Free','Free for 30
days',0.00,30,0,5,0),(4,'featured_package','Ultimate','Featured for 60 days',5.00,60,0,5,0),(5,'post_package','Gold
Business','Watsapp Update, Email, SMS',500.00,60,0,10,0),(6,'post_package','MPL1','My Professional Leads Package
1\r\nTop 5\r\nUnlimited Leads\r\nUnlimited SMS and Mails\r\n5000 Watsapp Notifications
',5000.00,365,0,20,1),(7,'post_package','MPL2','My Professional Leads Package 2\r\nTop 6 to 15\r\n5000 SMS and
Mails\r\n3000 Watsapp Notifications ',4000.00,365,0,15,1),(8,'post_package','MPL3','My Professional Leads Package
3\r\nTop 16 to 25\r\n3000 SMS and Mails\r\n2000 Watsapp Notifications ',3000.00,365,0,10,1),(9,'post_package','MPL4','My
Professional Leads Package 4\r\nTop 26 to 50\r\n2000 SMS and Mails\r\n1000 Watsapp Notifications
',2000.00,365,0,5,1),(10,'post_package','MPL5','My Professional Leads Package 5\r\nTop 51 and above\r\n1000 SMS and
Mails\r\n500 Watsapp Notifications ',1000.00,365,0,3,1);
/*!40000 ALTER TABLE `dbc_packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbc_pages`
--

DROP TABLE IF EXISTS `dbc_pages`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dbc_pages` (
`id` int NOT NULL AUTO_INCREMENT,
`alias` char(50)  NOT NULL,
`show_in_menu` int NOT NULL DEFAULT '1',
`layout` int NOT NULL,
`content_from` char(10)  NOT NULL DEFAULT 'Manual',
`title` text  NOT NULL,
`url` char(150)  NOT NULL,
`content` longtext  NOT NULL,
`sidebar` longtext  NOT NULL,
`seo_settings` text  NOT NULL,
`create_time` int NOT NULL DEFAULT '0',
`status` int NOT NULL DEFAULT '1',
`editable` int NOT NULL DEFAULT '1',
`parent` int DEFAULT NULL,
PRIMARY KEY (`id`),
UNIQUE KEY `alias` (`alias`),
UNIQUE KEY `alias_2` (`alias`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbc_pages`
--

LOCK TABLES `dbc_pages` WRITE;
/*!40000 ALTER TABLE `dbc_pages` DISABLE KEYS */;
INSERT INTO `dbc_pages` VALUES (1,'home',1,1,'Url','home','','','','{\"meta_description\":\"classified buy sell. real
estates electronics pets vehicles matrimonial jobs community services fashion search and post your ad Top Featured Posts
categories\",\"key_words\":\"sale,rent,buy,classified,cms,whiz,electronics,real
estate,pets,fashion\",\"crawl_after\":\"3\"}',1424346356,1,0,0),(2,'advanced_search',1,1,'Url','advanced_search','results','','','{\"meta_description\":\"\",\"key_words\":\"\",\"crawl_after\":\"\"}',1601976185,1,0,NULL),(3,'about',1,1,'Manual','about','page/about','
<h2>About Us:</h2>\r\n<div>
    <div>Mahaanidi is an innovative local search engine designed to revolutionize the way people access information and
        services within their communities. Unlike global search engines, Mahaanidi focuses on providing hyper-localized
        results, making it an indispensable tool for residents seeking information that\'s geographically and culturally
        relevant to them. This platform is particularly beneficial in areas where local businesses, services, and
        cultural events are not widely covered by larger search engines.</div>
    <div><br></div>
    <div>Built with a deep understanding of local dialects, customs, and preferences, Mahaanidi ensures that users
        receive results that are not just geographically appropriate, but also culturally aligned. This feature sets it
        apart in regions where local nuances play a significant role in daily life. The search engine leverages advanced
        algorithms and machine learning techniques to continuously improve its understanding of local trends, user
        preferences, and search patterns.</div>
    <div><br></div>
    <div>Mahaanidi also provides a unique platform for local businesses and service providers to reach their target
        audience more effectively. By prioritizing local businesses in search results, it helps in boosting local
        economies and supports small and medium-sized enterprises (SMEs) in gaining visibility in their communities.
    </div>
    <div><br></div>
    <div>Moreover, Mahaanidi is designed with user privacy in mind. It offers robust privacy controls, ensuring that
        users\' personal data and search histories are protected, making it a trustworthy choice for those concerned
        about their online privacy.</div>
    <div><br></div>
    <div>In summary, Mahaanidi is more than just a search engine; it\'s a community-centric tool that bridges the gap
        between local businesses and consumers, fostering a closer, more connected community experience.</div>
</div>','<div>Phone : +34534223434</div>\r\n<div>Mail : webheliosteam@gmail.com</div>
','{\"meta_description\":\"\",\"key_words\":\"\",\"crawl_after\":\"\"}',1702645750,1,0,NULL),(4,'contact',1,1,'Url','contact','contact','','','{\"meta_description\":\"contact
us page for whiz, this meta will be read by search
engine\",\"key_words\":\"classified,buy,sale\",\"crawl_after\":\"3\"}',1424339457,1,1,0),(6,'blog',0,0,'Url','blog','blog-posts','
<div><br></div>','<div><br></div>
','{\"meta_description\":\"\",\"key_words\":\"\",\"crawl_after\":\"\"}',1702643835,1,1,NULL),(7,'news',1,0,'Url','news','news-posts','','','{\"meta_description\":\"\",\"key_words\":\"\",\"crawl_after\":\"\"}',1424339480,1,1,0),(8,'articles',1,0,'Url','articles','article-posts','','','{\"meta_description\":\"\",\"key_words\":\"\",\"crawl_after\":\"\"}',1424339485,1,1,0),(9,'pages',0,0,'Url','pages','#','','','{\"meta_description\":\"\",\"key_words\":\"\",\"crawl_after\":\"\"}',2147483647,1,1,0),(10,'list_business',1,0,'Url','list_business','list-business','','','{\"meta_description\":\"\",\"key_words\":\"\",\"crawl_after\":\"\"}',1425282749,1,1,0),(11,'locations',1,2,'Url','locations','locations','','','{\"meta_description\":\"city,
state, country\",\"key_words\":\"city, state,
country\",\"crawl_after\":\"3\"}',2147483647,1,1,0),(12,'terms_and_conditions',1,1,'Manual','terms_and_conditions','page/terms_and_conditions','
<h2><b>Terms and Conditions&nbsp;</b></h2>
<h2><br></h2>
<h2>Introduction</h2>
<h2><br></h2>
<h2>Welcome to Mahaanidhi (\"we,\" \"us,\" or \"our\"). Our website provides local search services to users (\"you\" or
    \"your\") seeking information and services in specific geographical areas. By accessing or using our website, you
    agree to be bound by these Terms and Conditions (the \"Terms\").</h2>
<h2><br></h2>
<h2>1. Use of the Website</h2>
<h2><br></h2>
<h2>1.1. You may use our website only for lawful purposes in accordance with these Terms.</h2>
<h2>1.2. You agree not to use the website in any way that breaches any applicable local, national, or international law
    or regulation.</h2>
<h2><br></h2>
<h2>2. Content and Services</h2>
<h2><br></h2>
<h2>2.1. The content displayed on our website, including listings of local businesses and services, is for general
    information purposes only.</h2>
<h2>2.2. We endeavor to keep the information up to date and correct but make no representations or warranties of any
    kind, express or implied, about the completeness, accuracy, reliability, suitability, or availability.</h2>
<h2><br></h2>
<h2>3. Intellectual Property Rights</h2>
<h2><br></h2>
<h2>3.1. The content, design, layout, and other intellectual property on our website are owned by or licensed to us and
    are protected by copyright and other intellectual property laws.</h2>
<h2><br></h2>
<h2>4. User-Generated Content</h2>
<h2><br></h2>
<h2>4.1. Users may post reviews, comments, and other content, as long as the content is not illegal, obscene,
    threatening, defamatory, invasive of privacy, infringing on intellectual property rights, or otherwise injurious to
    third parties.</h2>
<h2><br></h2>
<h2>5. Privacy</h2>
<h2><br></h2>
<h2>5.1. Your use of our website is also governed by our Privacy Policy.</h2>
<h2><br></h2>
<h2>6. Limitation of Liability</h2>
<h2><br></h2>
<h2>6.1. We will not be liable for any loss or damage arising from your use of, or inability to use, our website or any
    content on it.</h2>
<h2><br></h2>
<h2>7. Changes to These Terms</h2>
<h2><br></h2>
<h2>7.1. We reserve the right to make changes to these Terms at any time. Your continued use of the website following
    changes constitutes your acceptance of the new Terms.</h2>
<h2><br></h2>
<h2>8. Governing Law</h2>
<h2><br></h2>
<h2>8.1. These Terms shall be governed by and construed in accordance with the laws of the jurisdiction in which we are
    based, without regard to its conflict of law provisions.</h2>
<h2><br></h2>
<h2>9. Contact Us</h2>
<h2><br></h2>
<h2>9.1. For any questions about these Terms, please contact us at mahaanidhi2023@gmail.com.</h2>
<h2><br></h2>
<h2>By using our website, you acknowledge that you have read and understand these Terms and Conditions and agree to be
    bound by them.</h2>
','','{\"meta_description\":\"\",\"key_words\":\"\",\"crawl_after\":\"\"}',1702645680,1,1,NULL),(13,'cookie_policy',0,2,'Manual','cookie_policy','page/cookie_policy','
<div class=\"col-md-9\">\n<div class=\"page-sidebar\">\n<p style=\"margin: 0cm 0cm 12pt\"><strong>What are
                Cookies?</strong><br /> A cookie is a very small piece of information that a website stores to save and
            collect basic information.<br style=\"box-sizing: border-box\" /> Many cookies are essential to the
            operation of our website, for example to allow you to make a purchase or create an account with us.<br
                style=\"box-sizing: border-box\" /> Cookies on our site are also used to customise certain areas of
            content just for you, and to make your browsing experience more efficient and faster.<br style=\"box-sizing:
                border-box\" /> <br style=\"box-sizing: border-box\" /> <strong>How we use Cookies</strong><br
                style=\"box-sizing: border-box\" /> Cookies on our website are used for the following purposes</p>\n<ul
            style=\"list-style-type: disc\">\n<li style=\"margin-bottom: 3pt\">To enable you to login to the system</li>
            \n<li style=\"margin-bottom: 3pt box-sizing: border-box background-position: 0px 0.45em\">To enable you to
                system messages</li>\n<li style=\"margin-bottom: 3pt box-sizing: border-box background-position: 0px
                0.45em\">To improve the website\'s usability by saving loading time</li>\n<li style=\"margin-bottom: 3pt
                box-sizing: border-box background-position: 0px 0.45em\">To analyse the use of our website through
                Analytics software such as Google Analytics.</li>\n</ul>\n<p></p>\n<p><strong>Information
                Collected</strong><br style=\"box-sizing: border-box\" /> The cookies our website doesn\'t collect any
            private data</p>\n</div>\n</div>','','{\"meta_description\":\"cookie
policy\",\"key_words\":\"cookie,policy\",\"crawl_after\":\"3\"}',1476443264,1,1,0),(16,'all_offers',1,0,'Url','all_offers','show/all_offers','','','{\"meta_description\":\"\",\"key_words\":\"\",\"crawl_after\":\"\"}',1601539391,1,1,NULL),(17,'pricing',1,0,'Url','pricing','pricing','','','{\"meta_description\":\"\",\"key_words\":\"\",\"crawl_after\":\"\"}',1601980620,1,1,NULL),(18,'termsandconditions',0,0,'Url','Terms
and Conditions','termsandconditions','<div><br></div>','<div><br></div>
','{\"meta_description\":\"\",\"key_words\":\"\",\"crawl_after\":\"\"}',1702645494,1,1,NULL);
/*!40000 ALTER TABLE `dbc_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbc_post_meta`
--

DROP TABLE IF EXISTS `dbc_post_meta`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dbc_post_meta` (
`id` int NOT NULL AUTO_INCREMENT,
`post_id` int NOT NULL,
`key` char(50)  NOT NULL,
`value` text  ,
`status` int NOT NULL DEFAULT '1',
PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbc_post_meta`
--

LOCK TABLES `dbc_post_meta` WRITE;
/*!40000 ALTER TABLE `dbc_post_meta` DISABLE KEYS */;
INSERT INTO `dbc_post_meta` VALUES
(1,1,'hide_my_phone',NULL,1),(2,1,'camera_spin','0',1),(3,1,'hide_my_email',NULL,1),(4,1,'disable_email_contact',NULL,1),(5,1,'disable_google_street_view',NULL,1),(6,1,'enable_messaging_user',NULL,1),(7,1,'verified','1',1),(8,2,'hide_my_phone',NULL,1),(9,2,'camera_spin','0',1),(10,2,'hide_my_email',NULL,1),(11,2,'disable_email_contact',NULL,1),(12,2,'disable_google_street_view','1',1),(13,2,'enable_messaging_user',NULL,1),(14,2,'custom_data','[]',1),(15,2,'amenities','[]',1),(16,2,'facebook_profile','',1),(17,2,'twitter_profile','',1),(18,2,'linkedin_profile','',1),(19,2,'pinterest_profile','',1),(20,2,'googleplus_profile','',1),(21,2,'instagram_profile','',1),(22,2,'business_logo','no-image.png',1),(23,2,'always_open',NULL,1),(24,3,'hide_my_phone',NULL,1),(25,3,'camera_spin','0',1),(26,3,'hide_my_email',NULL,1),(27,3,'disable_email_contact',NULL,1),(28,3,'disable_google_street_view',NULL,1),(29,3,'enable_messaging_user',NULL,1),(30,4,'hide_my_phone',NULL,1),(31,4,'camera_spin','0',1),(32,4,'hide_my_email',NULL,1),(33,4,'disable_email_contact',NULL,1),(34,4,'disable_google_street_view',NULL,1),(35,4,'enable_messaging_user',NULL,1),(36,4,'verified','1',1),(37,5,'hide_my_phone',NULL,1),(38,5,'camera_spin','0',1),(39,5,'hide_my_email',NULL,1),(40,5,'disable_email_contact',NULL,1),(41,5,'disable_google_street_view',NULL,1),(42,5,'enable_messaging_user','1',1),(43,6,'hide_my_phone',NULL,1),(44,6,'camera_spin','0',1),(45,6,'hide_my_email',NULL,1),(46,6,'disable_email_contact',NULL,1),(47,6,'disable_google_street_view',NULL,1),(48,6,'enable_messaging_user',NULL,1);
/*!40000 ALTER TABLE `dbc_post_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbc_post_package`
--

DROP TABLE IF EXISTS `dbc_post_package`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dbc_post_package` (
`id` int NOT NULL AUTO_INCREMENT,
`unique_id` char(100) NOT NULL,
`post_id` int NOT NULL,
`package_id` int NOT NULL,
`amount` decimal(10,2) NOT NULL,
`request_date` date NOT NULL,
`activation_date` date DEFAULT NULL,
`expiration_date` date DEFAULT NULL,
`is_active` int NOT NULL COMMENT '0=no,2=pending,1=active',
`status` int NOT NULL COMMENT '0=deleted,1=active',
`payment_medium` char(20)  NOT NULL DEFAULT 'paypal',
`payment_type` varchar(50)  NOT NULL DEFAULT 'post',
`response_log` text  ,
PRIMARY KEY (`id`),
UNIQUE KEY `unique_id` (`unique_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbc_post_package`
--

LOCK TABLES `dbc_post_package` WRITE;
/*!40000 ALTER TABLE `dbc_post_package` DISABLE KEYS */;
INSERT INTO `dbc_post_package` VALUES
(1,'6566f876c3a0f',1,2,10.00,'2023-11-29','2023-11-29','2024-01-28',1,1,'paypal','post','Approved by
admin'),(2,'656daa2a0eb9b',2,5,500.00,'2023-12-04','2023-12-04','2024-02-02',1,1,'paypal','post','Approved by
admin'),(3,'65705c7f6770c',3,2,10.00,'2023-12-06','2023-12-06','2024-02-04',1,1,'paypal','post','Approved by
admin'),(4,'657aa36a71f35',4,2,10.00,'2023-12-14','2023-12-14','2024-02-12',1,1,'paypal','post','Approved by
admin'),(5,'657c45b9926d5',5,10,1000.00,'2023-12-15','2023-12-15','2024-12-14',1,1,'paypal','post','Approved by
admin'),(6,'657c4778217ef',6,10,1000.00,'2023-12-15',NULL,NULL,2,1,'paypal','post',NULL);
/*!40000 ALTER TABLE `dbc_post_package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbc_posts`
--

DROP TABLE IF EXISTS `dbc_posts`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dbc_posts` (
`id` int NOT NULL AUTO_INCREMENT,
`unique_id` char(100)  NOT NULL,
`title` text  ,
`description` longtext  ,
`tags` text  ,
`rating` decimal(2,1) NOT NULL DEFAULT '0.0',
`category` text,
`parent_category` text,
`price_range` char(200)  DEFAULT NULL,
`address` longtext  NOT NULL,
`phone_no` char(50)  DEFAULT NULL,
`website` char(200)  DEFAULT NULL,
`founded` char(20)  DEFAULT NULL,
`email` char(100)  DEFAULT NULL,
`country` int NOT NULL,
`state` int NOT NULL,
`city` int NOT NULL,
`zip_code` char(15) NOT NULL,
`latitude` decimal(11,8) NOT NULL,
`longitude` decimal(11,8) NOT NULL,
`featured_img` char(255)  NOT NULL,
`video_url` char(200)  DEFAULT NULL,
`gallery` text  ,
`opening_hour` text  ,
`additional_features` text  ,
`food_menu` text  ,
`created_by` int NOT NULL,
`create_time` int NOT NULL DEFAULT '0',
`publish_time` int NOT NULL DEFAULT '0',
`last_update_time` int DEFAULT NULL,
`status` int NOT NULL,
`activation_date` date DEFAULT NULL,
`expirtion_date` date DEFAULT NULL,
`featured` int NOT NULL DEFAULT '0',
`featured_expiration_date` date DEFAULT NULL,
`report` int NOT NULL DEFAULT '0',
`total_view` int NOT NULL DEFAULT '0',
`search_meta` text  ,
PRIMARY KEY (`id`),
UNIQUE KEY `unique_id` (`unique_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbc_posts`
--

LOCK TABLES `dbc_posts` WRITE;
/*!40000 ALTER TABLE `dbc_posts` DISABLE KEYS */;
INSERT INTO `dbc_posts` VALUES (1,'6566f876a895e','{\"en\":\"Top Infra
Company\",\"ar\":\"\",\"pt\":\"\",\"es\":\"\"}','{\"en\":\"Top Infra Company \",\"ar\":\" \",\"pt\":\" \",\"es\":\"
\"}','infra, developers, real estae\r\n',0.0,'[\"1\"]','[\"1\"]','100-200','{\"en\":\"Suraram
colony\",\"ar\":\"\",\"pt\":\"\",\"es\":\"\"}','12545622','http://kittuhomlands.com','1990','niranjan.exp@gmail.com',1,2,3,'500006',17.45099870,78.48833801,'hm2.jpg',NULL,NULL,NULL,NULL,NULL,1,1701247094,1701247094,1701247279,1,'2023-11-29','2024-01-28',0,'2023-12-09',0,43,'Real
Estate Real Estate 1990 India telangana Hyderbad 500006 Top Infra Company Suraram colony infra, developers, real
estae\r\n '),(2,'656daa29e8653','{\"en\":\"Lenus Hospitals\",\"ar\":\"Lenus Hospitals\",\"pt\":\"Lenus
Hospitals\",\"es\":\"Lenus Hospitals\"}','{\"en\":\"Nice description about Lenus Hospitals \",\"ar\":\" \",\"pt\":\"
\",\"es\":\" \"}','good hospial, top children hospital, best child
care',0.0,'[\"4\"]','[\"4\"]','20-100','{\"en\":\"345., Snjejvaredy Naar\",\"ar\":\"345., Snjejvaredy
Naar\",\"pt\":\"345., Snjejvaredy Naar\",\"es\":\"345., Snjejvaredy
Naar\"}','1234512315','www.abc.om','2022','niranjan.exp@gmail.com',1,2,3,'500038',17.69000000,78.56000000,'PanCard_back1.jpeg','','[\"novelski_logo.jpg\",\"novelski_logo.jpg\"]','[{\"day\":\"monday\",\"closed\":0,\"start_time\":\"09:00
AM\",\"close_time\":\"05:00 PM\"},{\"day\":\"tuesday\",\"closed\":0,\"start_time\":\"09:00 AM\",\"close_time\":\"05:00
PM\"},{\"day\":\"wednesday\",\"closed\":0,\"start_time\":\"09:00 AM\",\"close_time\":\"05:00
PM\"},{\"day\":\"thursday\",\"closed\":0,\"start_time\":\"09:00 AM\",\"close_time\":\"05:00
PM\"},{\"day\":\"friday\",\"closed\":0,\"start_time\":\"09:00 AM\",\"close_time\":\"05:00
PM\"},{\"day\":\"saturday\",\"closed\":0,\"start_time\":\"09:00 AM\",\"close_time\":\"05:00
PM\"},{\"day\":\"sunday\",\"closed\":0,\"start_time\":\"09:00 AM\",\"close_time\":\"05:00
PM\"}]','[]',NULL,1,1701685801,1701685801,1701688595,1,'2023-12-04','2024-02-02',0,NULL,0,12,'Hospitals Hospitals 2022
India telangana Hyderbad 500038 Lenus Hospitals 345., Snjejvaredy Naar Lenus Hospitals 345., Snjejvaredy Naar Lenus
Hospitals 345., Snjejvaredy Naar Lenus Hospitals 345., Snjejvaredy Naar good hospial, top children hospital, best child
care '),(3,'65705c7f4cb0c','{\"en\":\"Good Life Child Care\",\"ar\":\"\",\"pt\":\"\",\"es\":\"\"}','{\"en\":\"Good Life
Child Care \",\"ar\":\" \",\"pt\":\" \",\"es\":\" \"}','good child care, top
children',0.0,'[\"5\"]','[\"5\"]','100-200','{\"en\":\"2345h\",\"ar\":\"\",\"pt\":\"\",\"es\":\"\"}','1234512345','www.xyz.com','2012','niranjan.exp@gmail.com',1,2,3,'500023',17.63000000,78.63000000,'TechyTrainEstimates_v1_01.JPG',NULL,NULL,NULL,NULL,NULL,1,1701862527,1701862527,1701862618,1,'2023-12-06','2024-02-04',0,NULL,0,14,'Children
Hospitals Children Hospitals 2012 India telangana Hyderbad 500023 Good Life Child Care 2345h good child care, top
children '),(4,'657aa36a59ee6','{\"en\":\"Bajaj Electronics\",\"ar\":\"\",\"pt\":\"\",\"es\":\"\"}','{\"en\":\"Bajaj
Electronics \",\"ar\":\" \",\"pt\":\" \",\"es\":\" \"}','electronics, super electronics, cheap
elctrnics',0.0,'[\"6\"]','[\"6\"]','100-200','{\"en\":\"2345h\",\"ar\":\"\",\"pt\":\"\",\"es\":\"\"}','1234512345','www.xyz.com','2012','niranjan.exp@gmail.com',1,2,4,'500023',17.63000000,78.63000000,'TechyTrainEstimates_v1_03.JPG',NULL,NULL,NULL,NULL,NULL,1,1702536042,1702536042,1702536061,1,'2023-12-14','2024-02-12',0,NULL,0,4,'Electronics
Electronics 2012 India telangana Nijamabad 500023 Bajaj Electronics 2345h electronics, super electronics, cheap
elctrnics '),(5,'657c45b9776d7','{\"en\":\"Some Good Toy Company\"}','{\"en\":\"<div>Some Good Toy Company<br>
    <\\ /div>\"}','Toys, Games, Children Toys, China
        Toys',0.0,'[\"7\"]','[\"7\"]','100-200','{\"en\":\"2345h\"}','1234512345','www.xyz.com','2012','sometoys@gmail.com',1,2,3,'500023',17.63000000,78.63000000,'default_large.png',NULL,NULL,NULL,NULL,NULL,1,1702643129,1702643129,1702643608,1,'2023-12-15','2024-12-14',0,NULL,0,0,'Gaming
        Toys Gaming Toys 2012 India telangana Hyderbad 500023 Some Good Toy Company 2345h Toys, Games, Children Toys,
        China Toys '),(6,'657c477807289','{\"en\":\"Some Good Toy Company\"}','{\"en\":\"&lt;div&gt;Some Good Toy
        Company&lt;br&gt;&lt;\\/div&gt;\"}','Some Good Toy
        Company',0.0,'[\"1\"]','[\"1\"]','100-200','{\"en\":\"2345h\"}','1234512345','www.xyz.com','2012','niranjan.exp@gmail.com',1,2,3,'500023',17.63000000,78.63000000,'',NULL,NULL,NULL,NULL,NULL,1,1702643576,1702643576,1702643576,3,NULL,NULL,0,NULL,0,0,'Real
        Estate Real Estate 2012 India telangana Hyderbad 500023 Some Good Toy Company 2345h Some Good Toy Company ');
        /*!40000 ALTER TABLE `dbc_posts` ENABLE KEYS */;
        UNLOCK TABLES;

        --
        -- Table structure for table `dbc_review`
        --

        DROP TABLE IF EXISTS `dbc_review`;
        /*!40101 SET @saved_cs_client = @@character_set_client */;
        /*!50503 SET character_set_client = utf8mb4 */;
        CREATE TABLE `dbc_review` (
        `id` int NOT NULL AUTO_INCREMENT,
        `comment` text  ,
        `rating` int NOT NULL DEFAULT '0',
        `post_id` int NOT NULL DEFAULT '0',
        `created_by` int NOT NULL DEFAULT '0',
        `create_time` int NOT NULL DEFAULT '0',
        `status` tinyint(1) NOT NULL DEFAULT '1',
        PRIMARY KEY (`id`)
        ) ENGINE=InnoDB DEFAULT
        /*!40101 SET character_set_client = @saved_cs_client */;

        --
        -- Dumping data for table `dbc_review`
        --

        LOCK TABLES `dbc_review` WRITE;
        /*!40000 ALTER TABLE `dbc_review` DISABLE KEYS */;
        /*!40000 ALTER TABLE `dbc_review` ENABLE KEYS */;
        UNLOCK TABLES;

        --
        -- Table structure for table `dbc_sessions`
        --

        DROP TABLE IF EXISTS `dbc_sessions`;
        /*!40101 SET @saved_cs_client = @@character_set_client */;
        /*!50503 SET character_set_client = utf8mb4 */;
        CREATE TABLE `dbc_sessions` (
        `session_id` varchar(40) NOT NULL DEFAULT '0',
        `ip_address` varchar(16) NOT NULL DEFAULT '0',
        `user_agent` varchar(50) NOT NULL,
        `last_activity` int unsigned NOT NULL DEFAULT '0',
        `user_data` text NOT NULL,
        PRIMARY KEY (`session_id`)
        ) ENGINE=InnoDB DEFAULT
        /*!40101 SET character_set_client = @saved_cs_client */;

        --
        -- Dumping data for table `dbc_sessions`
        --

        LOCK TABLES `dbc_sessions` WRITE;
        /*!40000 ALTER TABLE `dbc_sessions` DISABLE KEYS */;
        /*!40000 ALTER TABLE `dbc_sessions` ENABLE KEYS */;
        UNLOCK TABLES;

        --
        -- Table structure for table `dbc_slider`
        --

        DROP TABLE IF EXISTS `dbc_slider`;
        /*!40101 SET @saved_cs_client = @@character_set_client */;
        /*!50503 SET character_set_client = utf8mb4 */;
        CREATE TABLE `dbc_slider` (
        `id` int NOT NULL AUTO_INCREMENT,
        `slide_order` int NOT NULL DEFAULT '0',
        `featured_img` char(200) NOT NULL,
        `title` char(200)  NOT NULL,
        `description` longtext  NOT NULL,
        `created_by` int NOT NULL,
        `create_time` int NOT NULL,
        `status` int NOT NULL DEFAULT '1',
        PRIMARY KEY (`id`)
        ) ENGINE=InnoDB DEFAULT
        /*!40101 SET character_set_client = @saved_cs_client */;

        --
        -- Dumping data for table `dbc_slider`
        --

        LOCK TABLES `dbc_slider` WRITE;
        /*!40000 ALTER TABLE `dbc_slider` DISABLE KEYS */;
        /*!40000 ALTER TABLE `dbc_slider` ENABLE KEYS */;
        UNLOCK TABLES;

        --
        -- Table structure for table `dbc_urlmetas`
        --

        DROP TABLE IF EXISTS `dbc_urlmetas`;
        /*!40101 SET @saved_cs_client = @@character_set_client */;
        /*!50503 SET character_set_client = utf8mb4 */;
        CREATE TABLE `dbc_urlmetas` (
        `id` int NOT NULL AUTO_INCREMENT,
        `original_url` text  NOT NULL,
        `custom_url` text  NOT NULL,
        `meta_tags` text  NOT NULL,
        `append` char(3) NOT NULL DEFAULT 'Yes',
        `created_by` int NOT NULL,
        `create_time` int NOT NULL,
        `status` int NOT NULL,
        PRIMARY KEY (`id`)
        ) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT
        /*!40101 SET character_set_client = @saved_cs_client */;

        --
        -- Dumping data for table `dbc_urlmetas`
        --

        LOCK TABLES `dbc_urlmetas` WRITE;
        /*!40000 ALTER TABLE `dbc_urlmetas` DISABLE KEYS */;
        INSERT INTO `dbc_urlmetas` VALUES
        (1,'en/ads/54f5a06e62f7a/Indian-Food','indian-food-restaurant','','Yes',1,1600766658,1),(2,'en/show/categoryposts/4/real_estate','real-estates-near-you','','Yes',1,1600771071,1);
        /*!40000 ALTER TABLE `dbc_urlmetas` ENABLE KEYS */;
        UNLOCK TABLES;

        --
        -- Table structure for table `dbc_user_meta`
        --

        DROP TABLE IF EXISTS `dbc_user_meta`;
        /*!40101 SET @saved_cs_client = @@character_set_client */;
        /*!50503 SET character_set_client = utf8mb4 */;
        CREATE TABLE `dbc_user_meta` (
        `id` int NOT NULL AUTO_INCREMENT,
        `user_id` int NOT NULL,
        `key` char(30)  NOT NULL,
        `value` text  ,
        `status` int NOT NULL DEFAULT '1',
        PRIMARY KEY (`id`)
        ) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT
        /*!40101 SET character_set_client = @saved_cs_client */;

        --
        -- Dumping data for table `dbc_user_meta`
        --

        LOCK TABLES `dbc_user_meta` WRITE;
        /*!40000 ALTER TABLE `dbc_user_meta` DISABLE KEYS */;
        INSERT INTO `dbc_user_meta` VALUES
        (1,2,'company_name','rani.com',1),(2,2,'phone','893646443',1),(3,3,'company_name','',1),(4,3,'phone','',1),(5,1,'company_name','Mahanidhi
        Leads',1),(6,1,'phone','',1),(7,1,'about_me','Is
        ',1),(8,1,'fb_profile','',1),(9,1,'twitter_profile','',1),(10,1,'li_profile','',1),(11,1,'gp_profile','',1),(12,1,'hide_email',NULL,1),(13,1,'hide_phone',NULL,1);
        /*!40000 ALTER TABLE `dbc_user_meta` ENABLE KEYS */;
        UNLOCK TABLES;

        --
        -- Table structure for table `dbc_users`
        --

        DROP TABLE IF EXISTS `dbc_users`;
        /*!40101 SET @saved_cs_client = @@character_set_client */;
        /*!50503 SET character_set_client = utf8mb4 */;
        CREATE TABLE `dbc_users` (
        `id` int NOT NULL AUTO_INCREMENT,
        `user_type` int NOT NULL,
        `first_name` char(40)  NOT NULL DEFAULT '',
        `last_name` char(40)  NOT NULL DEFAULT '',
        `gender` char(10)  NOT NULL DEFAULT '',
        `profile_photo` char(200)  NOT NULL DEFAULT '',
        `user_name` char(100)  NOT NULL,
        `user_email` char(100)  NOT NULL,
        `password` char(255)  NOT NULL,
        `remember_me_key` char(255)  NOT NULL DEFAULT '',
        `recovery_key` char(255)  NOT NULL DEFAULT '',
        `confirmation_key` char(30)  NOT NULL DEFAULT '',
        `confirmed` int NOT NULL DEFAULT '1',
        `confirmed_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
        `status` int NOT NULL DEFAULT '0',
        `banned` int NOT NULL DEFAULT '0',
        `banned_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
        `banned_till` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
        PRIMARY KEY (`id`)
        ) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT
        /*!40101 SET character_set_client = @saved_cs_client */;

        --
        -- Dumping data for table `dbc_users`
        --

        LOCK TABLES `dbc_users` WRITE;
        /*!40000 ALTER TABLE `dbc_users` DISABLE KEYS */;
        INSERT INTO `dbc_users` VALUES
        (1,1,'Admin','Admin','male','nophoto-male.jpg','admin','admin@gmail.com','$2a$11$P4SQXCwK9V6L8e061Ibdd.02khZXNbB/1.K7pjQ63q26wOA2z2Ab2','','657061f3c1f2b','',1,'0000-00-00
        00:00:00',1,0,'0000-00-00 00:00:00','0000-00-00
        00:00:00'),(2,2,'ram','raja','male','','rajarani','raja@rani.com','$2a$11$hfTUYaG/O7x.a06Zw20XKuuWulmRLhWR1PCTOC5u9nLhex3Uw65U.','','','65696fa6f194a',0,'0000-00-00
        00:00:00',1,0,'0000-00-00 00:00:00','0000-00-00
        00:00:00'),(3,2,'Niranjan123','Imalla23','male','','niranjan','niranjan.Imalla@gmail.com','$2a$11$Kawm3s24Flx6zsyLcxk3e.T2zcOq7cJeEczzghxc8EjAxrwYB2zpS','','','656dbccebab42',0,'0000-00-00
        00:00:00',1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
        /*!40000 ALTER TABLE `dbc_users` ENABLE KEYS */;
        UNLOCK TABLES;

        --
        -- Table structure for table `dbc_usertype`
        --

        DROP TABLE IF EXISTS `dbc_usertype`;
        /*!40101 SET @saved_cs_client = @@character_set_client */;
        /*!50503 SET character_set_client = utf8mb4 */;
        CREATE TABLE `dbc_usertype` (
        `id` int NOT NULL AUTO_INCREMENT,
        `name` char(20) NOT NULL,
        `status` int NOT NULL DEFAULT '1',
        PRIMARY KEY (`id`)
        ) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT
        /*!40101 SET character_set_client = @saved_cs_client */;

        --
        -- Dumping data for table `dbc_usertype`
        --

        LOCK TABLES `dbc_usertype` WRITE;
        /*!40000 ALTER TABLE `dbc_usertype` DISABLE KEYS */;
        INSERT INTO `dbc_usertype` VALUES (1,'admin',1),(2,'business',1);
        /*!40000 ALTER TABLE `dbc_usertype` ENABLE KEYS */;
        UNLOCK TABLES;

        --
        -- Table structure for table `dbc_widgets`
        --

        DROP TABLE IF EXISTS `dbc_widgets`;
        /*!40101 SET @saved_cs_client = @@character_set_client */;
        /*!50503 SET character_set_client = utf8mb4 */;
        CREATE TABLE `dbc_widgets` (
        `id` int NOT NULL AUTO_INCREMENT,
        `name` char(200)  NOT NULL,
        `alias` char(200)  NOT NULL,
        `params` text  ,
        `status` int NOT NULL,
        `editable` int NOT NULL DEFAULT '1',
        PRIMARY KEY (`id`)
        ) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT
        /*!40101 SET character_set_client = @saved_cs_client */;

        --
        -- Dumping data for table `dbc_widgets`
        --

        LOCK TABLES `dbc_widgets` WRITE;
        /*!40000 ALTER TABLE `dbc_widgets` DISABLE KEYS */;
        INSERT INTO `dbc_widgets` VALUES (1,'Facebook like box','fb_likebox','',1,1),(2,'Contact
        text','contact_text','',1,1),(3,'Follow us','follow_us','',1,1),(4,'Short
        Description','short_description','',1,1),(5,'Adsense full width','adsense_full_width','',1,1),(6,'Adsense
        Sidebar','adsense_sidebar','',1,1),(7,'Plain Search Widget','plain_search_widget','',1,1),(8,'Adv Search
        Widget','advance_search_widget','',1,1),(9,'Recent Posts Main','recent_posts_main','',1,1),(10,'Category
        Main','category_main','',1,1),(11,'Top Bar','top_bar',NULL,1,1),(12,'Top Bar
        Social','top_bar_social',NULL,1,1),(13,'Footer Links','footer_links',NULL,1,1),(14,'Top
        Posts','top_posts',NULL,1,1),(15,'Category Counter','category_counter',NULL,1,1),(16,'Tag
        Cloud','tag_cloud',NULL,1,1),(17,'Recent Post','recent_post',NULL,1,1),(18,'Category Featured
        Post','category_featured_post',NULL,1,1),(19,'Category Sidebar','category_sidebar',NULL,1,1),(20,'Social Media
        Cloud','social_media_cloud',NULL,1,1),(21,'Featured Posts Main','featured_posts_main',NULL,1,1),(22,'Top
        Locations Home','top_locations_home',NULL,1,1),(23,'Featured Post','featured_post',NULL,1,1),(24,'Top Locations
        Sidebar','top_locations_sidebar',NULL,1,1),(25,'Top Users','top_users',NULL,1,1),(26,'Login Page
        Description','login_page_description',NULL,1,1),(27,'Register Page
        Description','register_page_description',NULL,1,1),(28,'Blog post','blog_post',NULL,1,1),(29,'Article
        post','article_post',NULL,1,1),(30,'News post','news_post',NULL,1,1),(31,'Category main with
        subcategories','category_main_with_subcategories',NULL,1,1),(32,'Newsletter
        sidebar','newsletter_sidebar',NULL,1,1),(33,'Similar Post','similar_post',NULL,1,1);
        /*!40000 ALTER TABLE `dbc_widgets` ENABLE KEYS */;
        UNLOCK TABLES;
        /*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

        /*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
        /*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
        /*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
        /*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
        /*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
        /*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
        /*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

        -- Dump completed on 2023-12-17 12:14:59
