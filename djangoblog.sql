-- MySQL dump 10.13  Distrib 5.7.26, for Linux (x86_64)
--
-- Host: localhost    Database: djangoblog
-- ------------------------------------------------------
-- Server version	5.7.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `accounts_bloguser`
--

DROP TABLE IF EXISTS `accounts_bloguser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_bloguser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `nickname` varchar(100) NOT NULL,
  `mugshot` varchar(100) NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `last_mod_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_bloguser`
--

LOCK TABLES `accounts_bloguser` WRITE;
/*!40000 ALTER TABLE `accounts_bloguser` DISABLE KEYS */;
INSERT INTO `accounts_bloguser` VALUES (1,'jluocc522527','2019-04-12 01:29:00.000000',1,'jluocc','','','473145009@qq.com',1,1,'2019-04-10 12:46:00.000000','','','2019-04-10 12:46:00.000000','2019-04-10 12:46:00.000000'),(3,'pbkdf2_sha256$120000$8vz7M7E7yL3w$MeyitEzIgMqLhNgmw6hZ3RRG9xwRcBzhbeNZFs01c8o=','2019-05-23 08:58:30.663120',1,'admin','','','admin@qq.com',1,1,'2019-04-12 11:39:46.521142','','','2019-04-12 11:39:46.521176','2019-04-12 11:39:46.521185');
/*!40000 ALTER TABLE `accounts_bloguser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_bloguser_groups`
--

DROP TABLE IF EXISTS `accounts_bloguser_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_bloguser_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bloguser_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `accounts_bloguser_groups_bloguser_id_group_id_fc37e89b_uniq` (`bloguser_id`,`group_id`),
  KEY `accounts_bloguser_groups_group_id_98d76804_fk_auth_group_id` (`group_id`),
  CONSTRAINT `accounts_bloguser_gr_bloguser_id_a16ccbb7_fk_accounts_` FOREIGN KEY (`bloguser_id`) REFERENCES `accounts_bloguser` (`id`),
  CONSTRAINT `accounts_bloguser_groups_group_id_98d76804_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_bloguser_groups`
--

LOCK TABLES `accounts_bloguser_groups` WRITE;
/*!40000 ALTER TABLE `accounts_bloguser_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_bloguser_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_bloguser_user_permissions`
--

DROP TABLE IF EXISTS `accounts_bloguser_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_bloguser_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bloguser_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `accounts_bloguser_user_p_bloguser_id_permission_i_14808777_uniq` (`bloguser_id`,`permission_id`),
  KEY `accounts_bloguser_us_permission_id_ae5159b9_fk_auth_perm` (`permission_id`),
  CONSTRAINT `accounts_bloguser_us_bloguser_id_7e1b5742_fk_accounts_` FOREIGN KEY (`bloguser_id`) REFERENCES `accounts_bloguser` (`id`),
  CONSTRAINT `accounts_bloguser_us_permission_id_ae5159b9_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_bloguser_user_permissions`
--

LOCK TABLES `accounts_bloguser_user_permissions` WRITE;
/*!40000 ALTER TABLE `accounts_bloguser_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_bloguser_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add group',2,'add_group'),(6,'Can change group',2,'change_group'),(7,'Can delete group',2,'delete_group'),(8,'Can view group',2,'view_group'),(9,'Can add permission',3,'add_permission'),(10,'Can change permission',3,'change_permission'),(11,'Can delete permission',3,'delete_permission'),(12,'Can view permission',3,'view_permission'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add site',6,'add_site'),(22,'Can change site',6,'change_site'),(23,'Can delete site',6,'delete_site'),(24,'Can view site',6,'view_site'),(25,'Can add 文章',7,'add_article'),(26,'Can change 文章',7,'change_article'),(27,'Can delete 文章',7,'delete_article'),(28,'Can view 文章',7,'view_article'),(29,'Can add 分类',8,'add_category'),(30,'Can change 分类',8,'change_category'),(31,'Can delete 分类',8,'delete_category'),(32,'Can view 分类',8,'view_category'),(33,'Can add 标签',9,'add_tag'),(34,'Can change 标签',9,'change_tag'),(35,'Can delete 标签',9,'delete_tag'),(36,'Can view 标签',9,'view_tag'),(37,'Can add 友情链接',10,'add_links'),(38,'Can change 友情链接',10,'change_links'),(39,'Can delete 友情链接',10,'delete_links'),(40,'Can view 友情链接',10,'view_links'),(41,'Can add 网站配置',11,'add_blogsettings'),(42,'Can change 网站配置',11,'change_blogsettings'),(43,'Can delete 网站配置',11,'delete_blogsettings'),(44,'Can view 网站配置',11,'view_blogsettings'),(45,'Can add 侧边栏',12,'add_sidebar'),(46,'Can change 侧边栏',12,'change_sidebar'),(47,'Can delete 侧边栏',12,'delete_sidebar'),(48,'Can view 侧边栏',12,'view_sidebar'),(49,'Can add user',13,'add_bloguser'),(50,'Can change user',13,'change_bloguser'),(51,'Can delete user',13,'delete_bloguser'),(52,'Can view user',13,'view_bloguser'),(53,'Can add 评论',14,'add_comment'),(54,'Can change 评论',14,'change_comment'),(55,'Can delete 评论',14,'delete_comment'),(56,'Can view 评论',14,'view_comment'),(57,'Can add oauth用户',15,'add_oauthuser'),(58,'Can change oauth用户',15,'change_oauthuser'),(59,'Can delete oauth用户',15,'delete_oauthuser'),(60,'Can view oauth用户',15,'view_oauthuser'),(61,'Can add oauth配置',16,'add_oauthconfig'),(62,'Can change oauth配置',16,'change_oauthconfig'),(63,'Can delete oauth配置',16,'delete_oauthconfig'),(64,'Can view oauth配置',16,'view_oauthconfig'),(65,'Can add 命令',17,'add_commands'),(66,'Can change 命令',17,'change_commands'),(67,'Can delete 命令',17,'delete_commands'),(68,'Can view 命令',17,'view_commands'),(69,'Can add 邮件发送log',18,'add_emailsendlog'),(70,'Can change 邮件发送log',18,'change_emailsendlog'),(71,'Can delete 邮件发送log',18,'delete_emailsendlog'),(72,'Can view 邮件发送log',18,'view_emailsendlog'),(73,'Can add OwnTrackLogs',19,'add_owntracklog'),(74,'Can change OwnTrackLogs',19,'change_owntracklog'),(75,'Can delete OwnTrackLogs',19,'delete_owntracklog'),(76,'Can view OwnTrackLogs',19,'view_owntracklog');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_article`
--

DROP TABLE IF EXISTS `blog_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_time` datetime(6) NOT NULL,
  `last_mod_time` datetime(6) NOT NULL,
  `title` varchar(200) NOT NULL,
  `body` longtext NOT NULL,
  `pub_time` datetime(6) DEFAULT NULL,
  `status` varchar(1) NOT NULL,
  `comment_status` varchar(1) NOT NULL,
  `type` varchar(1) NOT NULL,
  `views` int(10) unsigned NOT NULL,
  `article_order` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`),
  KEY `blog_article_author_id_905add38_fk_accounts_bloguser_id` (`author_id`),
  KEY `blog_article_category_id_7e38f15e_fk_blog_category_id` (`category_id`),
  CONSTRAINT `blog_article_author_id_905add38_fk_accounts_bloguser_id` FOREIGN KEY (`author_id`) REFERENCES `accounts_bloguser` (`id`),
  CONSTRAINT `blog_article_category_id_7e38f15e_fk_blog_category_id` FOREIGN KEY (`category_id`) REFERENCES `blog_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_article`
--

LOCK TABLES `blog_article` WRITE;
/*!40000 ALTER TABLE `blog_article` DISABLE KEYS */;
INSERT INTO `blog_article` VALUES (1,'2019-04-10 14:03:34.634677','2019-04-10 14:03:34.634692','rsync＋inotify实时数据同步','> 1，rsync命令用法\r\n\r\n    格式：rsync [选项..] 源目录 目标目录\r\n    区别:同步与复制的差异\r\n    复制:完全拷贝源到目标\r\n    同步:增量拷贝,只传输变化过的数据\r\n\r\n> ２，本地同步\r\n\r\n    rsync [选项..] 本地目录1 本地目录2 #把目录1同步到目录2下\r\n    rsync [选项..] 本地目录1/ 本地目录2 #把目录1下的数据同步到目录2下\r\n    -a :归档模式，相当于-rlptgoD\r\n    -v :显示详细信息\r\n    -z :传输过程中启用压缩/解压\r\n    -n :测试同步过程，不做实际修改 #与-avz连用\r\n    --delete :删除目标文件夹内多余的文档 #与-avz连用\r\n\r\n> 3，远程同步\r\n\r\n    rsync+ssh\r\n    --命令\r\n    rsync user@host:远程目录/ #列出ssh服务端资源\r\n    rsync [选项..] user@host:远程目录 本地目录 #下行（下载） 不常用\r\n    rsync [选项..] 本地目录 user@host:远程目录 #上行（上传） 常用\r\n    -a :归档模式，相当于-rlptgoD\r\n    -v :显示详细信息\r\n    -z :传输过程中启用压缩/解压\r\n    -n :测试同步过程，不做实际修改 #与-avz连用\r\n    --delete :删除目标文件夹内多余的文档 #与-avz连用\r\n    提示：同步目录时在目录后加/，表示同步目录里的数据；同步目录不加/，表示同步此目录。\r\n\r\n> 4，实现实时同步\r\n\r\n1)部署公钥、私钥，实现ssh无密码验证\r\n\r\n    [root@svr7 /]# ssh-keygen #虚拟机A生成公钥、私钥 一路回车\r\n    [root@svr7 /]# ls /root/.ssh #公钥、私钥生成的位置 \r\n    id_rsa id_rsa.pub known_hosts \r\n    [root@svr7 /]# ssh-copy-id root@192.168.4.207 #传递公钥到目标主机（入虚拟机B）\r\n    [root@pc207 ~]# ls /root/.ssh #查看上传到虚拟机B的公钥\r\n    authorized_keys #上传到客户机的公钥文件\r\n\r\n2)inotify实时同步\r\n\r\n    --源码安装inotify-tools工具，实现监控目录内容的变化\r\n\r\n    [root@svr7 /]# mkdir /myrpm \r\n    [root@svr7 /]# tar -xf /tools/inotify-tools-3.13.tar.gz -C /myrpm #减压\r\n    [root@svr7 /]# yum -y install gcc make #安装编译环境gcc make\r\n    [root@svr7 /]# cd /myrpm/inotify-tools-3.13/\r\n    [root@svr7 inotify-tools-3.13]# ./configure #生成Makefile文件\r\n    [root@svr7 inotify-tools-3.13]# make #编译成二进制文件\r\n    [root@svr7 inotify-tools-3.13]# make install #安装\r\n    [root@svr7 inotify-tools-3.13]# which inotifywait #查看命令位置\r\n    /usr/local/bin/inotifywait\r\n\r\n    --inotifywait基本用法\r\n    inotifywait [选项] 目标文件夹\r\n    -m :持续监控（捕获一个事件后不退出）\r\n    -r :递归监控，包括子目录及文件\r\n    -q :减少屏幕输出信息\r\n    -qq:无屏幕输出信息\r\n    -e :指定监控的modify move create delete attrib等事件类别\r\n\r\n３）书写shell 脚本\r\n\r\n    --利用while循环来实现反复检查单次监控\r\n    语法：\r\n    while [ 条件 ]\r\n    do\r\n    循环执行\r\n    done\r\n    \r\n    --实现\r\n\r\n    ＃vim /jluocc/rsync.sh\r\n    #/bin/bash\r\n    while inotifywait -rqq /opt\r\n    do\r\n    rsync -az --delete /opt/ root@192.168.4.207:/opt #同步本地opt目录下的数据到另一台主机的/opt目录下\r\n    done\r\n    ＃chmod +x /jluocc/rysnc.sh #给脚本执行权限\r\n    #/jluocc/rsync.sh #运行脚本达到实时数据同步\r\n\r\n４）实现开机运行数据同步脚本\r\n\r\n    #vim /etc/rc.local #打开系统开机默认运行文件\r\n    /jluocc/rsync.sh #在文件里写入刚才写的脚本的绝对路径\r\n    #chmod +x /etc/rc.local #rc.local默认没有执行权限，需要赋予执行权限\r\n\r\n> ５，总结\r\n\r\nrsync:实现数据同步\r\ninotifywait:实现监控指定目录下的数据变化，发生变化返回相应结果\r\nshell脚本:实现inotifywait实时监控，一旦数据变化，将实现rsync数据同步，达到数据的实时同步','2018-12-08 14:02:00.000000','p','o','a',430,0,1,1),(3,'2019-04-11 14:18:48.983309','2019-04-11 14:18:48.983328','本站博客部署教程uwsgi+nginx','**一 源码下载**\r\n\r\n    [root@VM_0_2_centos ~]# yum -y install git\r\n    [root@VM_0_2_centos ~]# git clone https://github.com/luodidiao/DjangoBlog.git\r\n    [root@VM_0_2_centos ~]# cd DjangoBlog/\r\n    [root@VM_0_2_centos DjangoBlog]# vim DjangoBlog/settings.py\r\n    DATABASES = {\r\n        \'default\': {\r\n            \'ENGINE\': \'django.db.backends.mysql\',\r\n            \'NAME\': \'djangoblog\',\r\n            \'USER\': \'root\',\r\n            \'PASSWORD\': \'\',    #此处为密码默认为空\r\n            \'HOST\': \'localhost\',\r\n            \'PORT\': 3306,\r\n            \'OPTIONS\': {\'charset\': \'utf8mb4\'},\r\n        }\r\n    }\r\n\r\n\r\n**二 nginx搭建**\r\n\r\n    [root@VM_0_2_centos ~]# yum -y install gcc zlib-devel pcre-devel openssl-devel\r\n    [root@VM_0_2_centos ~]# wget http://nginx.org/download/nginx-1.15.11.tar.gz\r\n    [root@VM_0_2_centos ~]# tar -xvf nginx-1.15.11.tar.gz\r\n    [root@VM_0_2_centos nginx-1.15.11]# useradd -s /sbin/nologin nginx\r\n    [root@VM_0_2_centos nginx-1.15.11]# ./configure --prefix=/usr/local/nginx --user=nginx \\\r\n    > --group=nginx --with-http_ssl_module --with-http_stub_status_module --without-http_fastcgi_module --without-mail_pop3_module --without-mail_imap_module --without-mail_smtp_module\r\n    [root@VM_0_2_centos nginx-1.15.11]# make && make install\r\n    [root@VM_0_2_centos nginx-1.15.11]# cd\r\n    [root@VM_0_2_centos ~]# ln -s /usr/local/nginx/sbin/nginx /sbin/\r\n    [root@VM_0_2_centos ~]# vim /usr/local/nginx/conf/nginx.conf\r\n    #主要修改如下配置\r\n            location /static/ {\r\n                root   html;\r\n                #index  index.html index.htm;\r\n            }\r\n            location / {\r\n                include /usr/local/nginx/conf/uwsgi_params;\r\n                uwsgi_pass 127.0.0.1:9090;\r\n            }\r\n    [root@VM_0_2_centos ~]# nginx\r\n    [root@VM_0_2_centos ~]# ss -tunlp | grep :80\r\n    tcp    LISTEN     0      128       *:80                    *:*                   users:((\"nginx\",pid=11208,fd=6),(\"nginx\",pid=11207,fd=6))\r\n\r\n**三 mariadb数据库安装**\r\n\r\n    [root@VM_0_2_centos ~]# yum -y install mariadb mariadb-server mariadb-devel\r\n    [root@VM_0_2_centos ~]# vim /etc/my.cnf\r\n    character-set-server=utf8\r\n    [root@VM_0_2_centos ~]# systemctl restart mariadb\r\n    [root@VM_0_2_centos ~]# mysql -uroot\r\n    MariaDB [(none)]> CREATE DATABASE `djangoblog`;\r\n  \r\n\r\n**四 python+uwsgi+django环境搭建**\r\n\r\n    [root@VM_0_2_centos ~]# wget https://www.python.org/ftp/python/3.5.2/Python-3.5.2.tgz\r\n    [root@VM_0_2_centos ~]#tar -zxvf Python-3.5.2.tgz\r\n    [root@VM_0_2_centos ~]#cd Python-3.5.2\r\n    [root@VM_0_2_centos ~]#./configure \r\n    [root@VM_0_2_centos ~]#make \r\n    [root@VM_0_2_centos ~]#make install\r\n    [root@VM_0_2_centos ~]#pip3 install virtualenv\r\n    [root@VM_0_2_centos ~]#cd ~ && mkdir ENV &&cd ENV\r\n    [root@VM_0_2_centos ENV]# virtualenv -p /usr/local/bin/python3 python3\r\n    [root@VM_0_2_centos ENV]# source python3/bin/activate\r\n    (python3) [root@VM_0_2_centos ENV]# pip3 install uwsgi\r\n    (python3) [root@VM_0_2_centos ~]# cd DjangoBlog/\r\n    (python3) [root@VM_0_2_centos DjangoBlog]# pip3 install -Ur requirements.txt\r\n    创建数据库\r\n    (python3) [root@VM_0_2_centos DjangoBlog]# ./manage.py makemigrations\r\n    (python3) [root@VM_0_2_centos DjangoBlog]# ./manage.py migrate\r\n    创建超级用户\r\n    (python3) [root@VM_0_2_centos DjangoBlog]#./manage.py createsuperuser\r\n    创建测试数据\r\n    (python3) [root@VM_0_2_centos DjangoBlog]#./manage.py create_testdata\r\n    收集静态文件\r\n    (python3) [root@VM_0_2_centos DjangoBlog]#./manage.py collectstatic --noinput\r\n    (python3) [root@VM_0_2_centos DjangoBlog]#./manage.py compress --force\r\n    开启uwsgi服务\r\n    (python3) [root@VM_0_2_centos DjangoBlog]# uwsgi --ini start_uwsgi.ini\r\n    (python3) [root@VM_0_2_centos DjangoBlog]# ss -tunlp | grep :9090\r\n    tcp    LISTEN     0      100    127.0.0.1:9090                  *:*                   users:((\"uwsgi\",pid=11154,fd=3),\r\n\r\n    (\"uwsgi\",pid=11153,fd=3),(\"uwsgi\",pid=11151,fd=3))\r\n        浏览器打开: http://127.0.0.1 就可以看到效果了\r\n    提示：\r\n    (python3) [root@VM_0_2_centos DjangoBlog]## ./manage.py makemigrations\r\n    -bash: ./manage.py: 权限不够\r\n    解决办法：\r\n     (python3) [root@VM_0_2_centos DjangoBlog]## chmod +x manage.py','2019-04-05 14:18:00.000000','p','o','a',297,0,1,23),(5,'2019-04-16 08:25:15.776526','2019-04-16 08:25:15.776540','CentOS7.5安装搜狗输入法','**１，获取yum源**\r\n\r\n    下载阿里云的CentOS-Base.repo 到/etc/yum.repos.d/\r\n    wget -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo\r\n    \r\n    或者\r\n    \r\n    curl -o /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo\r\n\r\n**２，安装软件包**\r\n\r\n    安装epel和依赖包\r\n    yum install epel-release -y\r\n    yum install alien -y\r\n    yum install qtwebkit -y\r\n    \r\n    转换deb包为rpm包\r\n    alien -r sogoupinyin_2.2.0.0108_amd64.deb\r\n    \r\n    删除ibus\r\n    yum erase ibus -y\r\n    pkill ibus-daemon\r\n    \r\n    安装fcitx\r\n    yum install fcitx fcitx-libs fcitx-pinyin fcitx-configtool -y\r\n    \r\n    这里有可能出现与文件系统冲突的问题,所以直接--force\r\n    rpm -ivh --force sogoupinyin-2.2.0.0108-2.x86_64.rpm\r\n    \r\n    切换输入法\r\n    imsettings-switch fcitx\r\n    fcitx -r; fcitx-configtool\r\n    sogou-qimpanel',NULL,'p','o','a',58,0,1,1),(6,'2019-04-22 12:42:53.821004','2019-04-22 12:42:53.821036','部署Zabbix监控平台-第一节','**步骤一：部署监控服务器**\r\n\r\n1）安装LNMP环境\r\n\r\nZabbix监控管理控制台需要通过Web页面展示出来，并且还需要使用MySQL来存储数据，因此需要先为Zabbix准备基础LNMP环境。\r\n\r\n    [root@zabbixserver ~]# yum -y install gcc pcre-devel  openssl-devel\r\n    [root@zabbixserver ~]# tar -xf nginx-1.12.2.tar.gz\r\n    [root@zabbixserver ~]# cd nginx-1.12.2\r\n    [root@zabbixserver nginx-1.12.2]# ./configure --with-http_ssl_module\r\n    [root@zabbixserver nginx-1.12.2]# make && make install\r\n    [root@zabbixserver ~]# yum -y install php php-mysql \\\r\n    > mariadb mariadb-devel mariadb-server\r\n    [root@zabbixserver ~]# yum -y  install  php-fpm-5.4.16-42.el7.x86_64.rpm\r\n    //注意，php-fpm这个软件包在lnmp_soft/目录下\r\n\r\n2）修改Nginx配置文件\r\n\r\n配置Nginx支持PHP动态网站，因为有大量PHP脚本需要执行，因此还需要开启Nginx的各种fastcgi缓存，加速PHP脚本的执行速度。\r\n\r\n    [root@zabbixserver ~]# vim /usr/local/nginx/conf/nginx.conf\r\n    … …\r\n    http{\r\n    … …\r\n        fastcgi_buffers 8 16k;                      //缓存php生成的页面内容，8个16k\r\n        fastcgi_buffer_size 32k;                      //缓存php生产的头部信息\r\n        fastcgi_connect_timeout 300;                 //连接PHP的超时时间\r\n        fastcgi_send_timeout 300;                     //发送请求的超时时间\r\n        fastcgi_read_timeout 300;                        //读取请求的超时时间\r\n    location ~ \\.php$ {\r\n                    root           html;\r\n                    fastcgi_pass   127.0.0.1:9000;\r\n                    fastcgi_index  index.php;\r\n                    include        fastcgi.conf;\r\n            }\r\n    … …\r\n\r\n3）启动服务\r\n\r\n启动Nginx、PHP-FPM、MariaDB服务，关闭SELinux与防火墙。\r\n\r\n    [root@zabbixserver ~]# systemctl start  mariadb\r\n    [root@zabbixserver ~]# systemctl start  php-fpm\r\n    [root@zabbixserver ~]# ln -s /usr/local/nginx/sbin/nginx /sbin/nginx\r\n    [root@zabbixserver ~]# nginx\r\n    [root@zabbixserver ~]# firewall-cmd --set-default-zone=trusted\r\n    [root@zabbixserver ~]# setenforce 0\r\n\r\n4）客户端测试LNMP环境\r\n\r\n服务器创建PHP测试页面，浏览器访问页面测试网页连通性。\r\n\r\n    [root@zabbixserver ~]# cat /usr/local/nginx/html/test.php\r\n    <?php\r\n    $i=33;\r\n    echo $i;\r\n    ?>\r\n    [root@zabbixserver ~]# curl http://192.168.2.5/test.php\r\n\r\n**步骤二：部署监控服务器Zabbix Server**\r\n\r\n1）源码安装Zabbix Server\r\n\r\n多数源码包都是需要依赖包的，zabbix也一样，源码编译前需要先安装相关依赖包。\r\n\r\n    [root@zabbixserver lnmp_soft]# yum -y install  net-snmp-devel \\\r\n    > curl-devel \r\n    //安装相关依赖包\r\n    [root@zabbixserver lnmp_soft]# yum -y install  \\\r\n    > libevent-devel-2.0.21-4.el7.x86_64.rpm\r\n    //注意libevent-devel这个软件包在lnmp_soft目录下有提供\r\n    [root@zabbixserver lnmp_soft]# tar -xf zabbix-3.4.4.tar.gz\r\n    [root@zabbixserver lnmp_soft]# cd zabbix-3.4.4/\r\n    [root@zabbixserver zabbix-3.4.4]# ./configure  --enable-server \\\r\n    > --enable-proxy --enable-agent --with-mysql=/usr/bin/mysql_config \\\r\n    > --with-net-snmp --with-libcurl\r\n    // --enable-server安装部署zabbix服务器端软件\r\n    // --enable-agent安装部署zabbix被监控端软件\r\n    // --enable-proxy安装部署zabbix代理相关软件\r\n    // --with-mysql配置mysql_config路径\r\n    // --with-net-snmp允许zabbix通过snmp协议监控其他设备\r\n    // --with-libcurl安装相关curl库文件，这样zabbix就可以通过curl连接http等服务，测试被监控主机服务的状态\r\n    [root@zabbixserver zabbix-3.4.4]# make && make install\r\n\r\n2）初始化Zabbix\r\n\r\n创建数据库，上线Zabbix的Web页面\r\n\r\n    [root@zabbixserver ~]# mysql\r\n    mysql> create database zabbix character set utf8;\r\n    //创建数据库，支持中文字符集\r\n    mysql> grant all on zabbix.* to zabbix@\'localhost\' identified by \'zabbix\';\r\n    //创建可以访问数据库的账户与密码\r\n    [root@zabbixserver ~]# cd lnmp_soft/zabbix-3.4.4/database/mysql/\r\n    [root@zabbixserver mysql]# mysql -uzabbix -pzabbix zabbix < schema.sql\r\n    [root@zabbixserver mysql]# mysql -uzabbix -pzabbix zabbix < images.sql\r\n    [root@zabbixserver mysql]# mysql -uzabbix -pzabbix zabbix < data.sql\r\n    //刚刚创建是空数据库，zabbix源码包目录下，有提前准备好的数据\r\n    //使用mysql导入这些数据即可（注意导入顺序）\r\n\r\n上线Zabbix的Web页面\r\n\r\n    [root@zabbixserver ~]# cd lnmp_soft/zabbix-3.4.4/frontends/php/\r\n    [root@zabbixserver php]# cp -r * /usr/local/nginx/html/\r\n    [root@zabbixserver php]# chmod -R 777 /usr/local/nginx/html/*\r\n\r\n修改Zabbix_server配置文件，设置数据库相关参数，启动Zabbix_server服务\r\n\r\n    [root@zabbixserver ~]# vim /usr/local/etc/zabbix_server.conf\r\n    DBHost=localhost\r\n    //数据库主机，默认该行被注释\r\n    DBName=zabbix\r\n    //设置数据库名称\r\n    DBUser=zabbix\r\n    //设置数据库账户\r\n    DBPassword=zabbix\r\n    //设置数据库密码，默认该行被注释\r\n    LogFile=/tmp/zabbix_server.log    \r\n    //设置日志，仅查看以下即可\r\n    [root@zabbixserver ~]# useradd -s /sbin/nologin zabbix\r\n    //不创建用户无法启动服务\r\n    [root@zabbixserver ~]# zabbix_server                      //启动服务\r\n    [root@zabbixserver ~]# ss -ntulp |grep zabbix_server     //确认连接状态，端口10051\r\n    tcp LISTEN 0 128 *:10051 *:* users:((\"zabbix_server\",pid=23275,fd=4),(\"zabbix_server\",pid=23274,fd=4)\r\n\r\n提示：如果是因为配置文件不对，导致服务无法启动时，不要重复执行zabbix_server，\r\n\r\n一定要先使用killall zabbix_server关闭服务后，再重新启动一次。\r\n\r\n修改Zabbix_agent配置文件，启动Zabbix_agent服务\r\n\r\n    [root@zabbixserver ~]# vim /usr/local/etc/zabbix_agentd.conf\r\n    Server=127.0.0.1,192.168.2.5                    //允许哪些主机监控本机\r\n    ServerActive=127.0.0.1,192.168.2.5                //允许哪些主机通过主动模式监控本机\r\n    Hostname=zabbix_server                        //设置本机主机名\r\n    LogFile=/tmp/zabbix_server.log                    //设置日志文件\r\n    UnsafeUserParameters=1                        //是否允许自定义key\r\n    [root@zabbixserver ~]# zabbix_agentd            //启动监控agent\r\n    [root@zabbixserver ~]# ss -ntulp |grep zabbix_agentd   //查看端口信息为10050\r\n    tcp    LISTEN     0      128       *:10050                 *:*                   users:((\"zabbix_agentd\",pid=23505,fd=4),(\"zabbix_agentd\",pid=23504,fd=4)\r\n\r\n提示：如果是因为配置文件不对，导致服务无法启动时，不要重复执行zabbix_agentd，\r\n\r\n一定要先使用killall zabbix_agentd关闭服务后，再重新启动一次。\r\n\r\n浏览器访问Zabbix_server服务器的Web页面\r\n\r\n    [root@zabbixserver ~]# firefox http://192.168.2.5/index.php\r\n    //第一次访问，初始化PHP页面会检查计算机环境是否满足要求，如果不满足会给出修改建议\r\n    //默认会提示PHP的配置不满足环境要求，需要修改PHP配置文件\r\n\r\n根据错误提示，修改PHP配置文件，满足Zabbix_server的Web环境要求\r\n\r\nphp-bcmath和php-mbstring都在lnmp_soft目录下有提供软件包。\r\n\r\n    [root@zabbixserver ~]# yum -y install  php-gd php-xml\r\n    [root@zabbixserver ~]# yum install php-bcmath-5.4.16-42.el7.x86_64.rpm  \r\n    [root@zabbixserver ~]# yum install php-mbstring-5.4.16-42.el7.x86_64.rpm\r\n    [root@zabbixserver ~]# vim /etc/php.ini\r\n    date.timezone = Asia/Shanghai                //设置时区\r\n    max_execution_time = 300                    //最大执行时间，秒\r\n    post_max_size = 32M                        //POST数据最大容量\r\n    max_input_time = 300                        //服务器接收数据的时间限制\r\n    memory_limit = 128M                        //内存容量限制\r\n    [root@zabbixserver ~]# systemctl restart php-fpm\r\n**步骤三：部署被监控主机Zabbix Agent**\r\n\r\n1）源码安装Zabbix agent软件\r\n\r\n在2.100和2.200做相同操作（以zabbixclient_web1为例）。\r\n\r\n    [root@zabbixclient_web1 ~]# useradd -s /sbin/nologin  zabbix\r\n    [root@zabbixclient_web1 ~]# yum -y install gcc pcre-devel\r\n    [root@zabbixclient_web1 ~]# tar -xf zabbix-3.4.4.tar.gz \r\n    [root@zabbixclient_web1 ~]# cd zabbix-3.4.4/\r\n    [root@zabbixclient_web1 zabbix-3.4.4]# ./configure --enable-agent\r\n    [root@zabbixclient_web1 zabbix-3.4.4]# make && make install \r\n\r\n2）修改agent配置文件，启动Agent\r\n\r\n    [root@zabbixclient_web1 ~]# vim /usr/local/etc/zabbix_agentd.conf\r\n    Server=127.0.0.1,192.168.2.5                //谁可以监控本机（被动监控模式）\r\n    ServerActive=127.0.0.1,192.168.2.5            //谁可以监控本机（主动监控模式）\r\n    Hostname=zabbixclient_web1                    //被监控端自己的主机名\r\n    EnableRemoteCommands=1    \r\n    //监控异常后，是否允许服务器远程过来执行命令，如重启某个服务\r\n    UnsafeUserParameters=1                                 //是否允许自定义key监控\r\n    [root@zabbixclient_web1 ~]# zabbix_agentd                //启动agent服务\r\n\r\n3）拷贝启动脚本（非必须操作，可选做），有启动脚本可以方便管理服务，启动与关闭服务。启动脚本位于zabbix源码目录下。\r\n\r\n    [root@zabbixclient_web1 zabbix-3.4.4]# cd misc/init.d/fedora/core\r\n    [root@zabbixclient_web1 zabbix-3.4.4]# cp zabbix_agentd /etc/init.d/\r\n    [root@zabbixclient_web1 zabbix-3.4.4]# /etc/init.d/zabbix_agentd start\r\n    [root@zabbixclient_web1 zabbix-3.4.4]# /etc/init.d/zabbix_agentd stop\r\n    [root@zabbixclient_web1 zabbix-3.4.4]# /etc/init.d/zabbix_agentd status\r\n    [root@zabbixclient_web1 zabbix-3.4.4]# /etc/init.d/zabbix_agentd restart','2019-04-22 12:42:00.000000','p','o','a',135,0,1,34),(7,'2019-04-24 01:11:18.428441','2019-04-24 01:11:18.428460','filebeat.service','**1，位置**\r\n\r\n    /usr/lib/systemd/system/filebeat.service\r\n\r\n**2，内容**\r\n\r\n    [Unit]\r\n    Description=filebeat\r\n    Documentation=https://www.elastic.co/guide/en/beats/filebeat/current/index.html\r\n    Wants=network-online.target\r\n    After=network-online.target\r\n    \r\n    [Service]\r\n    ExecStart=/usr/share/filebeat/bin/filebeat -c /etc/filebeat/filebeat.yml -path.home /usr/share/filebeat -path.config /etc/filebeat -path.data /var/lib/filebeat -path.logs /var/log/filebeat\r\n    Restart=always\r\n    \r\n    [Install]\r\n    WantedBy=multi-user.target','2019-04-24 01:10:00.000000','p','o','a',53,0,1,1);
/*!40000 ALTER TABLE `blog_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_article_tags`
--

DROP TABLE IF EXISTS `blog_article_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_article_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blog_article_tags_article_id_tag_id_b78a22e9_uniq` (`article_id`,`tag_id`),
  KEY `blog_article_tags_tag_id_88eb3ed9_fk_blog_tag_id` (`tag_id`),
  CONSTRAINT `blog_article_tags_article_id_82c02dd6_fk_blog_article_id` FOREIGN KEY (`article_id`) REFERENCES `blog_article` (`id`),
  CONSTRAINT `blog_article_tags_tag_id_88eb3ed9_fk_blog_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `blog_tag` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_article_tags`
--

LOCK TABLES `blog_article_tags` WRITE;
/*!40000 ALTER TABLE `blog_article_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_article_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_blogsettings`
--

DROP TABLE IF EXISTS `blog_blogsettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_blogsettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sitename` varchar(200) NOT NULL,
  `site_description` longtext NOT NULL,
  `site_seo_description` longtext NOT NULL,
  `site_keywords` longtext NOT NULL,
  `article_sub_length` int(11) NOT NULL,
  `sidebar_article_count` int(11) NOT NULL,
  `sidebar_comment_count` int(11) NOT NULL,
  `show_google_adsense` tinyint(1) NOT NULL,
  `google_adsense_codes` longtext,
  `open_site_comment` tinyint(1) NOT NULL,
  `beiancode` varchar(2000) DEFAULT NULL,
  `analyticscode` longtext NOT NULL,
  `show_gongan_code` tinyint(1) NOT NULL,
  `gongan_beiancode` longtext,
  `resource_path` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_blogsettings`
--

LOCK TABLES `blog_blogsettings` WRITE;
/*!40000 ALTER TABLE `blog_blogsettings` DISABLE KEYS */;
INSERT INTO `blog_blogsettings` VALUES (1,'jluocc个人博客','努力把自己变得更好，让不喜欢你的人喜欢你','jluocc个人博客','Django,Python,linux,nginx,tomcat,zabbix,docker',300,10,5,0,'',1,NULL,'jluo',0,'','/var/www/resource/');
/*!40000 ALTER TABLE `blog_blogsettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_category`
--

DROP TABLE IF EXISTS `blog_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_time` datetime(6) NOT NULL,
  `last_mod_time` datetime(6) NOT NULL,
  `name` varchar(30) NOT NULL,
  `slug` varchar(60) NOT NULL,
  `parent_category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `blog_category_parent_category_id_f50c3c0c_fk_blog_category_id` (`parent_category_id`),
  KEY `blog_category_slug_92643dc5` (`slug`),
  CONSTRAINT `blog_category_parent_category_id_f50c3c0c_fk_blog_category_id` FOREIGN KEY (`parent_category_id`) REFERENCES `blog_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_category`
--

LOCK TABLES `blog_category` WRITE;
/*!40000 ALTER TABLE `blog_category` DISABLE KEYS */;
INSERT INTO `blog_category` VALUES (1,'2019-04-10 12:56:37.787629','2019-04-10 12:56:37.787640','linux','linux',NULL),(11,'2019-04-10 13:02:10.533730','2019-04-10 13:02:10.533746','技能分享','ji-neng-fen-xiang',NULL),(23,'2019-04-10 13:16:30.763801','2019-04-10 13:16:30.763813','myblog','myblog',11),(27,'2019-04-11 00:32:40.338307','2019-04-11 00:32:40.338318','随笔','sui-bi',NULL),(31,'2019-04-17 13:50:19.086763','2019-04-17 13:50:19.086778','python','python',NULL),(32,'2019-04-17 14:14:25.147991','2019-04-17 14:14:25.148003','nginx','nginx',11),(33,'2019-04-17 14:14:32.719483','2019-04-17 14:14:32.719499','tomcat','tomcat',11),(34,'2019-04-17 14:14:41.737869','2019-04-17 14:14:41.737880','zabbix','zabbix',11),(35,'2019-04-17 14:14:49.091534','2019-04-17 14:14:49.091548','docker','docker',11),(36,'2019-04-17 14:15:13.873678','2019-04-17 14:15:13.873690','mysql','mysql',11),(37,'2019-04-17 14:15:21.046995','2019-04-17 14:15:21.047006','redis','redis',11),(38,'2019-04-17 14:17:18.729734','2019-04-17 14:17:18.729749','其他','qi-ta',11);
/*!40000 ALTER TABLE `blog_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_links`
--

DROP TABLE IF EXISTS `blog_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `link` varchar(200) NOT NULL,
  `sequence` int(11) NOT NULL,
  `is_enable` tinyint(1) NOT NULL,
  `show_type` varchar(1) NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `last_mod_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `sequence` (`sequence`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_links`
--

LOCK TABLES `blog_links` WRITE;
/*!40000 ALTER TABLE `blog_links` DISABLE KEYS */;
INSERT INTO `blog_links` VALUES (3,'w3cschool','https://www.w3cschool.cn/',0,1,'i','2019-04-12 06:31:04.164804','2019-04-12 06:31:04.164818'),(4,'gitbook','https://gitbook.lylinux.net/',1,1,'i','2019-04-12 06:45:44.348777','2019-04-12 06:45:44.348793');
/*!40000 ALTER TABLE `blog_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_sidebar`
--

DROP TABLE IF EXISTS `blog_sidebar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_sidebar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `content` longtext NOT NULL,
  `sequence` int(11) NOT NULL,
  `is_enable` tinyint(1) NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `last_mod_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sequence` (`sequence`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_sidebar`
--

LOCK TABLES `blog_sidebar` WRITE;
/*!40000 ALTER TABLE `blog_sidebar` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_sidebar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_tag`
--

DROP TABLE IF EXISTS `blog_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_time` datetime(6) NOT NULL,
  `last_mod_time` datetime(6) NOT NULL,
  `name` varchar(30) NOT NULL,
  `slug` varchar(60) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `blog_tag_slug_01068d0e` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_tag`
--

LOCK TABLES `blog_tag` WRITE;
/*!40000 ALTER TABLE `blog_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments_comment`
--

DROP TABLE IF EXISTS `comments_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `body` longtext NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `last_mod_time` datetime(6) NOT NULL,
  `is_enable` tinyint(1) NOT NULL,
  `article_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `parent_comment_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_comment_article_id_94fe60a2_fk_blog_article_id` (`article_id`),
  KEY `comments_comment_author_id_334ce9e2_fk_accounts_bloguser_id` (`author_id`),
  KEY `comments_comment_parent_comment_id_71289d4a_fk_comments_` (`parent_comment_id`),
  CONSTRAINT `comments_comment_article_id_94fe60a2_fk_blog_article_id` FOREIGN KEY (`article_id`) REFERENCES `blog_article` (`id`),
  CONSTRAINT `comments_comment_author_id_334ce9e2_fk_accounts_bloguser_id` FOREIGN KEY (`author_id`) REFERENCES `accounts_bloguser` (`id`),
  CONSTRAINT `comments_comment_parent_comment_id_71289d4a_fk_comments_` FOREIGN KEY (`parent_comment_id`) REFERENCES `comments_comment` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments_comment`
--

LOCK TABLES `comments_comment` WRITE;
/*!40000 ALTER TABLE `comments_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_accounts_bloguser_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_accounts_bloguser_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_bloguser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2019-04-10 12:50:31.363773','1','罗低调作品集',2,'[{\"changed\": {\"fields\": [\"sitename\", \"analyticscode\"]}}]',11,1),(2,'2019-04-10 12:53:36.926599','1','罗低调',2,'[{\"changed\": {\"fields\": [\"sitename\", \"site_description\", \"site_seo_description\", \"site_keywords\", \"analyticscode\"]}}]',11,1),(3,'2019-04-10 12:54:23.089252','1','低调blog',2,'[{\"changed\": {\"fields\": [\"sitename\"]}}]',11,1),(4,'2019-04-10 12:55:11.154752','1','罗低调作品集',2,'[{\"changed\": {\"fields\": [\"sitename\"]}}]',11,1),(5,'2019-04-10 12:56:37.970906','1','linux',1,'[{\"added\": {}}]',8,1),(6,'2019-04-10 12:56:43.284620','2','web',1,'[{\"added\": {}}]',8,1),(7,'2019-04-10 12:56:51.379973','3','nginx',1,'[{\"added\": {}}]',8,1),(8,'2019-04-10 12:56:58.995311','4','tomcat',1,'[{\"added\": {}}]',8,1),(9,'2019-04-10 12:57:51.203765','5','低调运维',1,'[{\"added\": {}}]',8,1),(10,'2019-04-10 12:58:25.673996','5','低调运维',3,'',8,1),(11,'2019-04-10 12:59:36.907453','6','数据库',1,'[{\"added\": {}}]',8,1),(12,'2019-04-10 13:00:27.595186','7','低调运维',1,'[{\"added\": {}}]',8,1),(13,'2019-04-10 13:00:57.550953','8','zabbix',1,'[{\"added\": {}}]',8,1),(14,'2019-04-10 13:01:16.954140','9','elk',1,'[{\"added\": {}}]',8,1),(15,'2019-04-10 13:01:26.653256','10','docker',1,'[{\"added\": {}}]',8,1),(16,'2019-04-10 13:02:10.948583','11','技能分享',1,'[{\"added\": {}}]',8,1),(17,'2019-04-10 13:03:19.145683','12','mysql',1,'[{\"added\": {}}]',8,1),(18,'2019-04-10 13:03:27.394997','13','redis',1,'[{\"added\": {}}]',8,1),(19,'2019-04-10 13:03:44.113969','14','memcached',1,'[{\"added\": {}}]',8,1),(20,'2019-04-10 13:05:12.275240','15','本站部署',1,'[{\"added\": {}}]',8,1),(21,'2019-04-10 13:05:19.522601','16','其他',1,'[{\"added\": {}}]',8,1),(22,'2019-04-10 13:05:53.145212','17','other',1,'[{\"added\": {}}]',8,1),(23,'2019-04-10 13:06:39.876813','17','other',3,'',8,1),(24,'2019-04-10 13:06:39.880641','15','本站部署',3,'',8,1),(25,'2019-04-10 13:08:17.311946','16','其他',3,'',8,1),(26,'2019-04-10 13:11:22.468318','18','本站部署',1,'[{\"added\": {}}]',8,1),(27,'2019-04-10 13:12:20.864335','19','其他',1,'[{\"added\": {}}]',8,1),(28,'2019-04-10 13:14:13.006076','18','本站部署',3,'',8,1),(29,'2019-04-10 13:14:40.693194','20','blog',1,'[{\"added\": {}}]',8,1),(30,'2019-04-10 13:14:49.565300','21','other',1,'[{\"added\": {}}]',8,1),(31,'2019-04-10 13:15:18.472376','22','project',1,'[{\"added\": {}}]',8,1),(32,'2019-04-10 13:16:01.248930','21','other',3,'',8,1),(33,'2019-04-10 13:16:01.253196','22','project',3,'',8,1),(34,'2019-04-10 13:16:21.686287','20','blog',3,'',8,1),(35,'2019-04-10 13:16:31.901666','23','myblog',1,'[{\"added\": {}}]',8,1),(36,'2019-04-10 13:16:40.212720','24','project',1,'[{\"added\": {}}]',8,1),(37,'2019-04-10 13:17:12.606004','25','其他分享',1,'[{\"added\": {}}]',8,1),(38,'2019-04-10 13:18:34.894379','25','其他分享',3,'',8,1),(39,'2019-04-10 13:43:12.529989','1','罗低调作品集',2,'[{\"changed\": {\"fields\": [\"site_description\"]}}]',11,1),(40,'2019-04-10 13:59:37.922281','2','',1,'[{\"added\": {}}]',13,1),(41,'2019-04-10 14:03:36.312334','1','rsync＋inotify实时数据同步',1,'[{\"added\": {}}]',7,1),(42,'2019-04-10 14:04:28.849431','2','',3,'',13,1),(43,'2019-04-10 14:05:54.521814','1','rsync＋inotify实时数据同步',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',7,1),(44,'2019-04-10 14:06:33.405866','1','rsync＋inotify实时数据同步',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',7,1),(45,'2019-04-10 14:07:49.301528','1','rsync＋inotify实时数据同步',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',7,1),(46,'2019-04-10 14:14:41.665204','2','nginx性能优化--第一节',1,'[{\"added\": {}}]',7,1),(47,'2019-04-11 00:32:07.720198','26','ps',1,'[{\"added\": {}}]',8,1),(48,'2019-04-11 00:32:40.554086','27','随笔',1,'[{\"added\": {}}]',8,1),(49,'2019-04-11 00:32:58.851219','26','ps',3,'',8,1),(50,'2019-04-11 00:34:18.919207','1','罗低调作品集',2,'[{\"changed\": {\"fields\": [\"analyticscode\"]}}]',11,1),(51,'2019-04-11 14:18:50.706098','3','本站博客部署教程uwsgi+nginx-第一节',1,'[{\"added\": {}}]',7,1),(52,'2019-04-11 15:49:42.913638','3','本站博客部署教程uwsgi+nginx',2,'[{\"changed\": {\"fields\": [\"title\"]}}]',7,1),(53,'2019-04-12 01:31:43.680250','1','22',1,'[{\"added\": {}}]',10,1),(54,'2019-04-12 01:32:32.252258','1','22',3,'',10,1),(55,'2019-04-12 05:33:38.683178','2','罗低调',1,'[{\"added\": {}}]',10,1),(56,'2019-04-12 05:34:21.741236','2','罗低调',3,'',10,1),(57,'2019-04-12 06:31:04.168992','3','w3cschool',1,'[{\"added\": {}}]',10,1),(58,'2019-04-12 06:45:44.352901','4','gitbook',1,'[{\"added\": {}}]',10,1),(59,'2019-04-12 11:01:00.393825','2','',1,'[{\"added\": {}}]',13,1),(60,'2019-04-12 11:40:40.668167','1','473145009@qq.com',2,'[{\"changed\": {\"fields\": [\"password\", \"last_login\"]}}]',13,3),(61,'2019-04-12 11:41:08.413214','2','longchung@qq.com',2,'[{\"changed\": {\"fields\": [\"email\"]}}]',13,3),(62,'2019-04-15 00:55:54.135773','2','longchung@qq.com',3,'',13,3),(63,'2019-04-15 00:56:05.673776','1','473145009@qq.com',2,'[]',13,3),(64,'2019-04-15 02:28:22.876946','1','473145009@qq.com',2,'[{\"changed\": {\"fields\": [\"password\"]}}]',13,3),(65,'2019-04-15 02:29:10.549217','1','473145009@qq.com',2,'[]',13,3),(66,'2019-04-16 07:24:32.833127','28','network',1,'[{\"added\": {}}]',8,3),(67,'2019-04-16 07:27:46.892404','1','473145009@qq.com',2,'[]',13,3),(68,'2019-04-16 07:29:53.101582','1','473145009@qq.com',2,'[{\"changed\": {\"fields\": [\"password\"]}}]',13,3),(69,'2019-04-16 08:19:47.773488','4','nginx安装-yum板',1,'[{\"added\": {}}]',7,3),(70,'2019-04-16 08:20:55.364361','4','nginx安装-yum板',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',7,3),(71,'2019-04-16 08:21:22.280603','4','nginx安装-yum板',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',7,3),(72,'2019-04-16 08:25:16.010606','5','CentOS7.5安装搜狗输入法',1,'[{\"added\": {}}]',7,3),(73,'2019-04-16 08:26:15.677712','4','nginx安装-yum版',2,'[{\"changed\": {\"fields\": [\"title\"]}}]',7,3),(74,'2019-04-16 08:29:12.940302','1','473145009@qq.com',2,'[{\"changed\": {\"fields\": [\"password\", \"username\"]}}]',13,3),(75,'2019-04-16 08:30:51.203757','29','赞助',1,'[{\"added\": {}}]',8,3),(76,'2019-04-16 08:37:03.174404','3','本站博客部署教程uwsgi+nginx',2,'[{\"changed\": {\"fields\": [\"article_order\"]}}]',7,3),(77,'2019-04-16 08:37:27.602228','2','nginx性能优化--第一节',2,'[{\"changed\": {\"fields\": [\"article_order\"]}}]',7,3),(78,'2019-04-16 08:42:22.521244','29','赞助',3,'',8,3),(79,'2019-04-16 08:45:06.957144','3','本站博客部署教程uwsgi+nginx',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',7,3),(80,'2019-04-17 08:40:06.881863','3','本站博客部署教程uwsgi+nginx',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',7,3),(81,'2019-04-17 09:04:05.063572','3','本站博客部署教程uwsgi+nginx',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',7,3),(82,'2019-04-17 09:10:07.361530','3','本站博客部署教程uwsgi+nginx',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',7,3),(83,'2019-04-17 09:12:43.757489','3','本站博客部署教程uwsgi+nginx',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',7,3),(84,'2019-04-17 09:21:55.093333','3','本站博客部署教程uwsgi+nginx',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',7,3),(85,'2019-04-17 09:28:08.023664','3','本站博客部署教程uwsgi+nginx',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',7,3),(86,'2019-04-17 09:53:14.536718','4','nginx安装-yum版',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',7,3),(87,'2019-04-17 13:49:59.368398','28','network',3,'',8,3),(88,'2019-04-17 13:50:12.685927','30','network',1,'[{\"added\": {}}]',8,3),(89,'2019-04-17 13:50:19.246757','31','python',1,'[{\"added\": {}}]',8,3),(90,'2019-04-17 14:12:07.827793','12','mysql',3,'',8,3),(91,'2019-04-17 14:12:07.831878','3','nginx',3,'',8,3),(92,'2019-04-17 14:12:07.835945','13','redis',3,'',8,3),(93,'2019-04-17 14:12:07.840495','4','tomcat',3,'',8,3),(94,'2019-04-17 14:12:07.844604','2','web',3,'',8,3),(95,'2019-04-17 14:12:07.848468','8','zabbix',3,'',8,3),(96,'2019-04-17 14:12:07.852812','7','低调运维',3,'',8,3),(97,'2019-04-17 14:12:07.864370','19','其他',3,'',8,3),(98,'2019-04-17 14:12:07.868635','6','数据库',3,'',8,3),(99,'2019-04-17 14:14:15.744240','24','project',3,'',8,3),(100,'2019-04-17 14:14:25.311478','32','nginx',1,'[{\"added\": {}}]',8,3),(101,'2019-04-17 14:14:32.878921','33','tomcat',1,'[{\"added\": {}}]',8,3),(102,'2019-04-17 14:14:41.908990','34','zabbix',1,'[{\"added\": {}}]',8,3),(103,'2019-04-17 14:14:49.251342','35','docker',1,'[{\"added\": {}}]',8,3),(104,'2019-04-17 14:15:14.023468','36','mysql',1,'[{\"added\": {}}]',8,3),(105,'2019-04-17 14:15:21.195331','37','redis',1,'[{\"added\": {}}]',8,3),(106,'2019-04-17 14:17:18.937434','38','其他',1,'[{\"added\": {}}]',8,3),(107,'2019-04-22 12:42:54.431453','6','部署Zabbix监控平台-第一节',1,'[{\"added\": {}}]',7,3),(108,'2019-04-24 01:11:18.610254','7','filebeat.service',1,'[{\"added\": {}}]',7,3),(109,'2019-04-24 08:02:49.525356','1','jluocc个人博客',2,'[{\"changed\": {\"fields\": [\"sitename\", \"site_seo_description\"]}}]',11,3),(110,'2019-04-24 08:07:20.433093','1','473145009@qq.com',2,'[{\"changed\": {\"fields\": [\"password\", \"username\"]}}]',13,3),(111,'2019-05-28 08:49:17.938646','6','部署Zabbix监控平台-第一节',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',7,3);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (13,'accounts','bloguser'),(1,'admin','logentry'),(2,'auth','group'),(3,'auth','permission'),(7,'blog','article'),(11,'blog','blogsettings'),(8,'blog','category'),(10,'blog','links'),(12,'blog','sidebar'),(9,'blog','tag'),(14,'comments','comment'),(4,'contenttypes','contenttype'),(16,'oauth','oauthconfig'),(15,'oauth','oauthuser'),(19,'owntracks','owntracklog'),(17,'servermanager','commands'),(18,'servermanager','emailsendlog'),(5,'sessions','session'),(6,'sites','site');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-04-10 12:45:35.376901'),(2,'contenttypes','0002_remove_content_type_name','2019-04-10 12:45:35.467965'),(3,'auth','0001_initial','2019-04-10 12:45:35.697965'),(4,'auth','0002_alter_permission_name_max_length','2019-04-10 12:45:35.745463'),(5,'auth','0003_alter_user_email_max_length','2019-04-10 12:45:35.757317'),(6,'auth','0004_alter_user_username_opts','2019-04-10 12:45:35.772020'),(7,'auth','0005_alter_user_last_login_null','2019-04-10 12:45:35.786882'),(8,'auth','0006_require_contenttypes_0002','2019-04-10 12:45:35.792188'),(9,'auth','0007_alter_validators_add_error_messages','2019-04-10 12:45:35.806877'),(10,'auth','0008_alter_user_username_max_length','2019-04-10 12:45:35.820690'),(11,'auth','0009_alter_user_last_name_max_length','2019-04-10 12:45:35.833760'),(12,'accounts','0001_initial','2019-04-10 12:45:36.084121'),(13,'admin','0001_initial','2019-04-10 12:45:36.176034'),(14,'admin','0002_logentry_remove_auto_add','2019-04-10 12:45:36.198865'),(15,'admin','0003_logentry_add_action_flag_choices','2019-04-10 12:45:36.220714'),(16,'blog','0001_initial','2019-04-10 12:45:36.704019'),(17,'comments','0001_initial','2019-04-10 12:45:36.820811'),(18,'oauth','0001_initial','2019-04-10 12:45:36.919310'),(19,'owntracks','0001_initial','2019-04-10 12:45:36.950323'),(20,'servermanager','0001_initial','2019-04-10 12:45:36.995569'),(21,'sessions','0001_initial','2019-04-10 12:45:37.058116'),(22,'sites','0001_initial','2019-04-10 12:45:37.082990'),(23,'sites','0002_alter_domain_unique','2019-04-10 12:45:37.129869');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('362415a5i5hgyshn36smup2u7n43a4bb','NTYzMjRlZmM4NDI4ZmZkMTljYTM1ZTViZDQ5MGFmODIyODQ4MWFkMTp7Il9hdXRoX3VzZXJfaGFzaCI6ImYzM2YyZWRlZDFmYzYzYzc1NTIzN2RiNTVhYTI0YWYzMzE5ODM4ZWQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJhY2NvdW50cy51c2VyX2xvZ2luX2JhY2tlbmQuRW1haWxPclVzZXJuYW1lTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjMifQ==','2019-04-30 07:32:12.980941'),('azpesw9uhpqub8qa9dri4v9r30oj36tl','MDFmODY5NTc0MzQ4N2M3ZGRhNDgyYzQ0ZTRiMTZhZjAxZjQ5MTdjNDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImFjY291bnRzLnVzZXJfbG9naW5fYmFja2VuZC5FbWFpbE9yVXNlcm5hbWVNb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2lkIjoiMyIsIl9hdXRoX3VzZXJfaGFzaCI6ImYzM2YyZWRlZDFmYzYzYzc1NTIzN2RiNTVhYTI0YWYzMzE5ODM4ZWQifQ==','2019-05-06 12:35:47.268238'),('zkamtlho06ub53l2qib6l0t6nszd5vok','MDFmODY5NTc0MzQ4N2M3ZGRhNDgyYzQ0ZTRiMTZhZjAxZjQ5MTdjNDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImFjY291bnRzLnVzZXJfbG9naW5fYmFja2VuZC5FbWFpbE9yVXNlcm5hbWVNb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2lkIjoiMyIsIl9hdXRoX3VzZXJfaGFzaCI6ImYzM2YyZWRlZDFmYzYzYzc1NTIzN2RiNTVhYTI0YWYzMzE5ODM4ZWQifQ==','2019-06-06 08:58:31.280470');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_site`
--

DROP TABLE IF EXISTS `django_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_site_domain_a2e37b91_uniq` (`domain`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_site`
--

LOCK TABLES `django_site` WRITE;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
INSERT INTO `django_site` VALUES (1,'example.com','example.com');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_oauthconfig`
--

DROP TABLE IF EXISTS `oauth_oauthconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_oauthconfig` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) NOT NULL,
  `appkey` varchar(200) NOT NULL,
  `appsecret` varchar(200) NOT NULL,
  `callback_url` varchar(200) NOT NULL,
  `is_enable` tinyint(1) NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `last_mod_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_oauthconfig`
--

LOCK TABLES `oauth_oauthconfig` WRITE;
/*!40000 ALTER TABLE `oauth_oauthconfig` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_oauthconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_oauthuser`
--

DROP TABLE IF EXISTS `oauth_oauthuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_oauthuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(50) NOT NULL,
  `nikename` varchar(50) NOT NULL,
  `token` varchar(150) DEFAULT NULL,
  `picture` varchar(350) DEFAULT NULL,
  `type` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `matedata` varchar(3000) DEFAULT NULL,
  `created_time` datetime(6) NOT NULL,
  `last_mod_time` datetime(6) NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_oauthuser_author_id_a975bef0_fk_accounts_bloguser_id` (`author_id`),
  CONSTRAINT `oauth_oauthuser_author_id_a975bef0_fk_accounts_bloguser_id` FOREIGN KEY (`author_id`) REFERENCES `accounts_bloguser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_oauthuser`
--

LOCK TABLES `oauth_oauthuser` WRITE;
/*!40000 ALTER TABLE `oauth_oauthuser` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_oauthuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owntracks_owntracklog`
--

DROP TABLE IF EXISTS `owntracks_owntracklog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `owntracks_owntracklog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tid` varchar(100) NOT NULL,
  `lat` double NOT NULL,
  `lon` double NOT NULL,
  `created_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owntracks_owntracklog`
--

LOCK TABLES `owntracks_owntracklog` WRITE;
/*!40000 ALTER TABLE `owntracks_owntracklog` DISABLE KEYS */;
/*!40000 ALTER TABLE `owntracks_owntracklog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servermanager_commands`
--

DROP TABLE IF EXISTS `servermanager_commands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servermanager_commands` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(300) NOT NULL,
  `command` varchar(2000) NOT NULL,
  `describe` varchar(300) NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `last_mod_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servermanager_commands`
--

LOCK TABLES `servermanager_commands` WRITE;
/*!40000 ALTER TABLE `servermanager_commands` DISABLE KEYS */;
/*!40000 ALTER TABLE `servermanager_commands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servermanager_emailsendlog`
--

DROP TABLE IF EXISTS `servermanager_emailsendlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servermanager_emailsendlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `emailto` varchar(300) NOT NULL,
  `title` varchar(2000) NOT NULL,
  `content` longtext NOT NULL,
  `send_result` tinyint(1) NOT NULL,
  `created_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servermanager_emailsendlog`
--

LOCK TABLES `servermanager_emailsendlog` WRITE;
/*!40000 ALTER TABLE `servermanager_emailsendlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `servermanager_emailsendlog` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-12 17:25:57
