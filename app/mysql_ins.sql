drop table if exists `user`,`app`,`bug_trace`,`bug`;
 
CREATE TABLE `app` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `data` longtext NOT NULL,
  `create_time` int(11) NOT NULL,
  `admin` int(11) NOT NULL,
  `app` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 ;
 

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL COMMENT 'email',
  `username` varchar(255) DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `post_time` int(11) DEFAULT NULL COMMENT '发布时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  `level` tinyint(4) DEFAULT NULL COMMENT '级别',
  `info` text COMMENT '信息',
  `app_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 ;

INSERT INTO `user` (`id`, `email`, `username`, `password`, `post_time`, `update_time`, `level`, `info`, `app_id`) VALUES
(1, 'admin@b24.cn', 'admin', '21232f297a57a5a743894a0e4a801fc3', 1348897975, 1348897975, 20, NULL, 1);


INSERT INTO `app` (`id`, `title`, `data`, `create_time`, `admin`, `app`) VALUES
(1, 'BugTrace', '{"users":{"1":"admin"},"title":"BugTrace","version":"v1\\r\\nv2\\r\\nv3\\r\\nv4","module":"sys\\r\\nuser\\r\\ntemp"}', 0, 1, '');

CREATE TABLE IF NOT EXISTS `bug` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `version` varchar(50) NOT NULL,
  `module` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `priority` tinyint(4) NOT NULL,
  `poster` int(11) NOT NULL,
  `doer` int(11) NOT NULL,
  `post_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `state` tinyint(4) NOT NULL,
  `app_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 ;

CREATE TABLE IF NOT EXISTS `bug_trace` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bugid` int(11) NOT NULL,
  `doer` int(11) NOT NULL,
  `poster` int(11) NOT NULL,
  `post_time` int(11) NOT NULL,
	`attached` text NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 ;


