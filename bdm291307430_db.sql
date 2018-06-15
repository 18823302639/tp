# Host: localhost  (Version: 5.5.47)
# Date: 2018-06-15 17:23:06
# Generator: MySQL-Front 5.3  (Build 4.234)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "adname"
#

DROP TABLE IF EXISTS `adname`;
CREATE TABLE `adname` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aduser` varchar(255) NOT NULL DEFAULT '' COMMENT '管理员账号',
  `jurisdiction` varchar(255) DEFAULT NULL COMMENT '管理员权限',
  `ps` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='管理员账号';

#
# Data for table "adname"
#

/*!40000 ALTER TABLE `adname` DISABLE KEYS */;
INSERT INTO `adname` VALUES (1,'1',NULL,'1'),(2,'xiaoxuan',NULL,'1');
/*!40000 ALTER TABLE `adname` ENABLE KEYS */;

#
# Structure for table "column"
#

DROP TABLE IF EXISTS `column`;
CREATE TABLE `column` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL COMMENT '父栏目id',
  `colu` varchar(255) DEFAULT NULL COMMENT '栏目名称',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='栏目列表';

#
# Data for table "column"
#

/*!40000 ALTER TABLE `column` DISABLE KEYS */;
INSERT INTO `column` VALUES (1,0,'中国'),(2,1,'湖南'),(3,2,'邵阳'),(4,0,'美国'),(5,4,'旧金山'),(6,0,'英国');
/*!40000 ALTER TABLE `column` ENABLE KEYS */;

#
# Structure for table "user_content"
#

DROP TABLE IF EXISTS `user_content`;
CREATE TABLE `user_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `p_id` int(11) DEFAULT '0' COMMENT '子id',
  `us_id` int(11) DEFAULT NULL COMMENT '留言ID',
  `cs_id` int(11) DEFAULT NULL COMMENT '回复人的ID',
  `us_title` char(50) DEFAULT '' COMMENT '留言标题',
  `us_content` text COMMENT '用户留言/回复信息',
  `us_time` datetime DEFAULT NULL COMMENT '留言/回复 时间',
  `us_flag` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='用户留言表';

#
# Data for table "user_content"
#

/*!40000 ALTER TABLE `user_content` DISABLE KEYS */;
INSERT INTO `user_content` VALUES (2,0,1,NULL,'群主转让','我就是我','2018-06-07 11:04:41',0),(3,0,3,NULL,'你是谁','我怎么知道你是谁','2018-06-07 17:45:27',0),(4,0,4,NULL,'什么是统计代码？','<span style=\"color:#333333;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">统计代码其实就是一段文字，包括一个javascript的引用和一个图片引用，当您将这段代码放在您的网页中后，如果您的网页被访问，这段JS代码就会运行并调用我要啦某一台服务器上的一个程序，从而让程序感知到您的网站被访问了。</span>','2018-06-07 17:48:12',0),(5,0,2,NULL,'如何获取并使用统计代码？','<span style=\"color:#333333;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">统计ID”下面会列出您在申请时填写的站点信息，如下图所示。</span>','2018-06-07 17:49:05',0),(6,0,5,NULL,'保存并上传统计代码至您的网页','<span style=\"color:#333333;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">把经过修改的网页上传到您的服务器或者虚拟空间上，如果您使用批量替换功能添加了统计代码，则建议您上传全部的网页，以防止漏上传。</span>','2018-06-07 17:49:57',0),(13,6,1,NULL,'','你好，我叫root是一个管理员','2018-06-08 11:35:31',0),(14,5,2,NULL,'','<table class=\"c-table c-table-hover mt20\" id=\"table-searchEngines\" style=\"border:1px solid #E3E6E9;width:691px;font-size:14px;color:#333333;font-family:Helvetica, PingFangSC-Regular, &quot;background-color:#FFFFFF;\">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t百度\r\n\t\t\t</td>\r\n\t\t\t<td class=\"tc\" style=\"text-align:center;\">\r\n\t\t\t\t1\r\n\t\t\t</td>\r\n\t\t\t<td class=\"tc\" style=\"text-align:center;\">\r\n\t\t\t\t50.0%\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<div class=\"c-progress c-progress-inline-2\" style=\"background:#DCDCDC;font-size:0px;vertical-align:middle;\">\r\n\t\t\t\t\t<div class=\"c-progress-bar\" style=\"background:#4AA6FC;\">\r\n\t\t\t\t\t</div>\r\n\t\t\t\t</div>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t<div class=\"badge-square\" style=\"background-color:#4DD0E1;\">\r\n\t\t\t\t</div>\r\n搜狐搜狗\r\n\t\t\t</td>\r\n\t\t\t<td class=\"tc\" style=\"text-align:center;\">\r\n\t\t\t\t1\r\n\t\t\t</td>\r\n\t\t\t<td class=\"tc\" style=\"text-align:center;\">\r\n\t\t\t\t50.0%\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<div class=\"c-progress c-progress-inline-2\" style=\"background:#DCDCDC;font-size:0px;vertical-align:middle;\">\r\n\t\t\t\t\t<div class=\"c-progress-bar\" style=\"background:#4AA6FC;\">\r\n\t\t\t\t\t</div>\r\n\t\t\t\t</div>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t<div class=\"badge-square\" style=\"background-color:#8ACC78;\">\r\n\t\t\t\t</div>\r\n百度贴吧\r\n\t\t\t</td>\r\n\t\t\t<td class=\"tc\" style=\"text-align:center;\">\r\n\t\t\t\t0\r\n\t\t\t</td>\r\n\t\t\t<td class=\"tc\" style=\"text-align:center;\">\r\n\t\t\t\t0.0%\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<div class=\"c-progress c-progress-inline-2\" style=\"background:#DCDCDC;font-size:0px;vertical-align:middle;\">\r\n\t\t\t\t\t<div class=\"c-progress-bar\" style=\"background:#4AA6FC;\">\r\n\t\t\t\t\t</div>\r\n\t\t\t\t</div>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t<div class=\"badge-square\" style=\"background-color:#F4BA60;\">\r\n\t\t\t\t</div>\r\nGoogle\r\n\t\t\t</td>\r\n\t\t\t<td class=\"tc\" style=\"text-align:center;\">\r\n\t\t\t\t0\r\n\t\t\t</td>\r\n\t\t\t<td class=\"tc\" style=\"text-align:center;\">\r\n\t\t\t\t0.0%\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<div class=\"c-progress c-progress-inline-2\" style=\"background:#DCDCDC;font-size:0px;vertical-align:middle;\">\r\n\t\t\t\t\t<div class=\"c-progress-bar\" style=\"background:#4AA6FC;\">\r\n\t\t\t\t\t</div>\r\n\t\t\t\t</div>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t<div class=\"badge-square\" style=\"background-color:#9576CE;\">\r\n\t\t\t\t</div>\r\n网易有道\r\n\t\t\t</td>\r\n\t\t\t<td class=\"tc\" style=\"text-align:center;\">\r\n\t\t\t\t0\r\n\t\t\t</td>\r\n\t\t\t<td class=\"tc\" style=\"text-align:center;\">\r\n\t\t\t\t0.0%\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<div class=\"c-progress c-progress-inline-2\" style=\"background:#DCDCDC;font-size:0px;vertical-align:middle;\">\r\n\t\t\t\t\t<div class=\"c-progress-bar\" style=\"background:#4AA6FC;\">\r\n\t\t\t\t\t</div>\r\n\t\t\t\t</div>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t<div class=\"badge-square\" style=\"background-color:#62A4F5;\">\r\n\t\t\t\t</div>\r\n腾讯SoSo\r\n\t\t\t</td>\r\n\t\t\t<td class=\"tc\" style=\"text-align:center;\">\r\n\t\t\t\t0\r\n\t\t\t</td>\r\n\t\t\t<td class=\"tc\" style=\"text-align:center;\">\r\n\t\t\t\t0.0%\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<div class=\"c-progress c-progress-inline-2\" style=\"background:#DCDCDC;font-size:0px;vertical-align:middle;\">\r\n\t\t\t\t\t<div class=\"c-progress-bar\" style=\"background:#4AA6FC;\">\r\n\t\t\t\t\t</div>\r\n\t\t\t\t</div>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t<div class=\"badge-square\" style=\"background-color:#E47373;\">\r\n\t\t\t\t</div>\r\n雅虎\r\n\t\t\t</td>\r\n\t\t\t<td class=\"tc\" style=\"text-align:center;\">\r\n\t\t\t\t0\r\n\t\t\t</td>\r\n\t\t\t<td class=\"tc\" style=\"text-align:center;\">\r\n\t\t\t\t0.0%\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<div class=\"c-progress c-progress-inline-2\" style=\"background:#DCDCDC;font-size:0px;vertical-align:middle;\">\r\n\t\t\t\t\t<div class=\"c-progress-bar\" style=\"background:#4AA6FC;\">\r\n\t\t\t\t\t</div>\r\n\t\t\t\t</div>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t<div class=\"badge-square\" style=\"background-color:#DCE675;\">\r\n\t\t\t\t</div>\r\nBingLive\r\n\t\t\t</td>\r\n\t\t\t<td class=\"tc\" style=\"text-align:center;\">\r\n\t\t\t\t0\r\n\t\t\t</td>\r\n\t\t\t<td class=\"tc\" style=\"text-align:center;\">\r\n\t\t\t\t0.0%\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<div class=\"c-progress c-progress-inline-2\" style=\"background:#DCDCDC;font-size:0px;vertical-align:middle;\">\r\n\t\t\t\t\t<div class=\"c-progress-bar\" style=\"background:#4AA6FC;\">\r\n\t\t\t\t\t</div>\r\n\t\t\t\t</div>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t<div class=\"badge-square\" style=\"background-color:#FED54F;\">\r\n\t\t\t\t</div>\r\n360好搜\r\n\t\t\t</td>\r\n\t\t\t<td class=\"tc\" style=\"text-align:center;\">\r\n\t\t\t\t0\r\n\t\t\t</td>\r\n\t\t\t<td class=\"tc\" style=\"text-align:center;\">\r\n\t\t\t\t0.0%\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<div class=\"c-progress c-progress-inline-2\" style=\"background:#DCDCDC;font-size:0px;vertical-align:middle;\">\r\n\t\t\t\t\t<div class=\"c-progress-bar\" style=\"background:#4AA6FC;\">\r\n\t\t\t\t\t</div>\r\n\t\t\t\t</div>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t<div class=\"badge-square\" style=\"background-color:#7F8084;\">\r\n\t\t\t\t</div>\r\n神马<br />\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>','2018-06-08 11:56:46',0),(15,5,2,NULL,'','<table class=\"c-table c-table-hover mt20\" id=\"table-searchEngines\" style=\"border:1px solid #E3E6E9;width:691px;font-size:14px;color:#333333;font-family:Helvetica, PingFangSC-Regular, &quot;background-color:#FFFFFF;\">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t百度\r\n\t\t\t</td>\r\n\t\t\t<td class=\"tc\" style=\"text-align:center;\">\r\n\t\t\t\t1\r\n\t\t\t</td>\r\n\t\t\t<td class=\"tc\" style=\"text-align:center;\">\r\n\t\t\t\t50.0%\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<div class=\"c-progress c-progress-inline-2\" style=\"background:#DCDCDC;font-size:0px;vertical-align:middle;\">\r\n\t\t\t\t\t<div class=\"c-progress-bar\" style=\"background:#4AA6FC;\">\r\n\t\t\t\t\t</div>\r\n\t\t\t\t</div>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t<div class=\"badge-square\" style=\"background-color:#4DD0E1;\">\r\n\t\t\t\t</div>\r\n搜狐搜狗\r\n\t\t\t</td>\r\n\t\t\t<td class=\"tc\" style=\"text-align:center;\">\r\n\t\t\t\t1\r\n\t\t\t</td>\r\n\t\t\t<td class=\"tc\" style=\"text-align:center;\">\r\n\t\t\t\t50.0%\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<div class=\"c-progress c-progress-inline-2\" style=\"background:#DCDCDC;font-size:0px;vertical-align:middle;\">\r\n\t\t\t\t\t<div class=\"c-progress-bar\" style=\"background:#4AA6FC;\">\r\n\t\t\t\t\t</div>\r\n\t\t\t\t</div>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t<div class=\"badge-square\" style=\"background-color:#8ACC78;\">\r\n\t\t\t\t</div>\r\n百度贴吧\r\n\t\t\t</td>\r\n\t\t\t<td class=\"tc\" style=\"text-align:center;\">\r\n\t\t\t\t0\r\n\t\t\t</td>\r\n\t\t\t<td class=\"tc\" style=\"text-align:center;\">\r\n\t\t\t\t0.0%\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<div class=\"c-progress c-progress-inline-2\" style=\"background:#DCDCDC;font-size:0px;vertical-align:middle;\">\r\n\t\t\t\t\t<div class=\"c-progress-bar\" style=\"background:#4AA6FC;\">\r\n\t\t\t\t\t</div>\r\n\t\t\t\t</div>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t<div class=\"badge-square\" style=\"background-color:#F4BA60;\">\r\n\t\t\t\t</div>\r\nGoogle\r\n\t\t\t</td>\r\n\t\t\t<td class=\"tc\" style=\"text-align:center;\">\r\n\t\t\t\t0\r\n\t\t\t</td>\r\n\t\t\t<td class=\"tc\" style=\"text-align:center;\">\r\n\t\t\t\t0.0%\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<div class=\"c-progress c-progress-inline-2\" style=\"background:#DCDCDC;font-size:0px;vertical-align:middle;\">\r\n\t\t\t\t\t<div class=\"c-progress-bar\" style=\"background:#4AA6FC;\">\r\n\t\t\t\t\t</div>\r\n\t\t\t\t</div>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t<div class=\"badge-square\" style=\"background-color:#9576CE;\">\r\n\t\t\t\t</div>\r\n网易有道\r\n\t\t\t</td>\r\n\t\t\t<td class=\"tc\" style=\"text-align:center;\">\r\n\t\t\t\t0\r\n\t\t\t</td>\r\n\t\t\t<td class=\"tc\" style=\"text-align:center;\">\r\n\t\t\t\t0.0%\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<div class=\"c-progress c-progress-inline-2\" style=\"background:#DCDCDC;font-size:0px;vertical-align:middle;\">\r\n\t\t\t\t\t<div class=\"c-progress-bar\" style=\"background:#4AA6FC;\">\r\n\t\t\t\t\t</div>\r\n\t\t\t\t</div>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t<div class=\"badge-square\" style=\"background-color:#62A4F5;\">\r\n\t\t\t\t</div>\r\n腾讯SoSo\r\n\t\t\t</td>\r\n\t\t\t<td class=\"tc\" style=\"text-align:center;\">\r\n\t\t\t\t0\r\n\t\t\t</td>\r\n\t\t\t<td class=\"tc\" style=\"text-align:center;\">\r\n\t\t\t\t0.0%\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<div class=\"c-progress c-progress-inline-2\" style=\"background:#DCDCDC;font-size:0px;vertical-align:middle;\">\r\n\t\t\t\t\t<div class=\"c-progress-bar\" style=\"background:#4AA6FC;\">\r\n\t\t\t\t\t</div>\r\n\t\t\t\t</div>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t<div class=\"badge-square\" style=\"background-color:#E47373;\">\r\n\t\t\t\t</div>\r\n雅虎\r\n\t\t\t</td>\r\n\t\t\t<td class=\"tc\" style=\"text-align:center;\">\r\n\t\t\t\t0\r\n\t\t\t</td>\r\n\t\t\t<td class=\"tc\" style=\"text-align:center;\">\r\n\t\t\t\t0.0%\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<div class=\"c-progress c-progress-inline-2\" style=\"background:#DCDCDC;font-size:0px;vertical-align:middle;\">\r\n\t\t\t\t\t<div class=\"c-progress-bar\" style=\"background:#4AA6FC;\">\r\n\t\t\t\t\t</div>\r\n\t\t\t\t</div>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t<div class=\"badge-square\" style=\"background-color:#DCE675;\">\r\n\t\t\t\t</div>\r\nBingLive\r\n\t\t\t</td>\r\n\t\t\t<td class=\"tc\" style=\"text-align:center;\">\r\n\t\t\t\t0\r\n\t\t\t</td>\r\n\t\t\t<td class=\"tc\" style=\"text-align:center;\">\r\n\t\t\t\t0.0%\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<div class=\"c-progress c-progress-inline-2\" style=\"background:#DCDCDC;font-size:0px;vertical-align:middle;\">\r\n\t\t\t\t\t<div class=\"c-progress-bar\" style=\"background:#4AA6FC;\">\r\n\t\t\t\t\t</div>\r\n\t\t\t\t</div>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t<div class=\"badge-square\" style=\"background-color:#FED54F;\">\r\n\t\t\t\t</div>\r\n360好搜\r\n\t\t\t</td>\r\n\t\t\t<td class=\"tc\" style=\"text-align:center;\">\r\n\t\t\t\t0\r\n\t\t\t</td>\r\n\t\t\t<td class=\"tc\" style=\"text-align:center;\">\r\n\t\t\t\t0.0%\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t\t<div class=\"c-progress c-progress-inline-2\" style=\"background:#DCDCDC;font-size:0px;vertical-align:middle;\">\r\n\t\t\t\t\t<div class=\"c-progress-bar\" style=\"background:#4AA6FC;\">\r\n\t\t\t\t\t</div>\r\n\t\t\t\t</div>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t<div class=\"badge-square\" style=\"background-color:#7F8084;\">\r\n\t\t\t\t</div>\r\n神马<br />\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>','2018-06-08 11:56:57',0),(16,15,2,NULL,'','<h2 class=\"text-center\" style=\"font-family:&quot;font-weight:500;color:#333333;font-size:30px;text-align:center;background-color:#FFFFFF;\">\r\n\t免费查询,软件著作权能否登记\r\n</h2>','2018-06-08 13:59:33',0),(17,13,5,NULL,'','你在说什么？有点听不懂','2018-06-08 14:05:31',0),(18,4,4,NULL,'','<h1 style=\"font-family:&quot;text-align:center;background-color:#FFFFFF;\">\r\n\t&nbsp;这些事情都不清楚，何谈创业？\r\n</h1>','2018-06-08 14:06:45',0),(19,3,3,NULL,'','<span style=\"color:#7D7D7D;font-family:&quot;font-size:14px;background-color:#FFFFFF;\">据深圳市市场监督管理局数据显示，2018年第一季度，深圳市新登记的商事主体有10.09万户，其中企业6.69万户,个体户3.4万户;新登记外资企业同比增长256.5%，登记数量仍然高居全国大中城市首位！</span>','2018-06-08 14:07:21',0),(20,2,1,NULL,'','<span style=\"color:#7D7D7D;font-family:&quot;font-size:14px;background-color:#FFFFFF;\">据深圳市市场监督管理局数据显示，2018年第一季度，深圳市新登记的商事主体有10.09万户，其中企业6.69万户,个体户3.4万户;新登记外资企业同比增长256.5%，登记数量仍然高居全国大中城市首位！</span>','2018-06-08 14:07:44',0),(21,13,5,NULL,'','<span style=\"color:#7D7D7D;font-family:&quot;font-size:14px;background-color:#FFFFFF;\">据深圳市市场监督管理局数据显示，2018年第一季度，深圳市新登记的商事主体有10.09万户，其中企业6.69万户,个体户3.4万户;新登记外资企业同比增长256.5%，登记数量仍然高居全国大中城市首位！</span>','2018-06-08 14:08:19',0),(22,18,2,NULL,'','<span style=\"color:#7D7D7D;font-family:&quot;font-size:14px;background-color:#FFFFFF;\">据深圳市市场监督管理局数据显示，2018年第一季度，深圳市新登记的商事主体有10.09万户，其中企业6.69万户,个体户3.4万户;新登记外资企业同比增长256.5%，登记数量仍然高居全国大中城市首位！</span>','2018-06-08 14:08:49',0),(23,13,3,NULL,'','<span style=\"color:#7D7D7D;font-family:&quot;font-size:14px;background-color:#FFFFFF;\">据深圳市市场监督管理局数据显示，2018年第一季度，深圳市新登记的商事主体有10.09万户，其中企业6.69万户,个体户3.4万户;新登记外资企业同比增长256.5%，登记数量仍然高居全国大中城市首位！</span>','2018-06-08 14:09:01',0),(24,20,1,NULL,'','<span style=\"color:#7D7D7D;font-family:&quot;font-size:14px;background-color:#FFFFFF;\">据深圳市市场监督管理局数据显示，2018年第一季度，深圳市新登记的商事主体有10.09万户，其中企业6.69万户,个体户3.4万户;新登记外资企业同比增长256.5%，登记数量仍然高居全国大中城市首位！</span>','2018-06-08 14:09:14',0),(25,6,2,NULL,'','Step4：选择共享打印机的电脑名称，之后安装打印机需要的打印驱动即可（驱动可以在网上下载','2018-06-07 11:04:41',0),(26,25,2,NULL,'','123','2018-06-11 15:42:36',0),(27,6,2,NULL,'','132','2018-06-11 15:42:51',0),(28,0,2,NULL,'','','2018-06-14 14:24:42',0),(29,23,2,NULL,'','你在收什么东西','2018-06-15 14:21:31',0);
/*!40000 ALTER TABLE `user_content` ENABLE KEYS */;

#
# Structure for table "username"
#

DROP TABLE IF EXISTS `username`;
CREATE TABLE `username` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='羽毛球人员名单';

#
# Data for table "username"
#

/*!40000 ALTER TABLE `username` DISABLE KEYS */;
/*!40000 ALTER TABLE `username` ENABLE KEYS */;

#
# Structure for table "users"
#

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) DEFAULT NULL COMMENT '用户名',
  `user_pwd` varchar(255) DEFAULT NULL COMMENT '用户密码',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='用户表';

#
# Data for table "users"
#

/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'root','root'),(2,'admin','root'),(3,'肖轩','root'),(4,'彭婷婷','root'),(5,'普通管理员','root');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
