-- phpMyAdmin SQL Dump
-- version phpStudy 2014
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2021 年 03 月 16 日 20:34
-- 服务器版本: 5.5.53
-- PHP 版本: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `dayuqixiu`
--

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_ecms_infoclass_news`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_ecms_infoclass_news` (
  `classid` int(10) unsigned NOT NULL DEFAULT '0',
  `zz_title` text NOT NULL,
  `z_title` varchar(255) NOT NULL DEFAULT '',
  `qz_title` varchar(255) NOT NULL DEFAULT '',
  `save_title` varchar(10) NOT NULL DEFAULT '',
  `zz_titlepic` text NOT NULL,
  `z_titlepic` varchar(255) NOT NULL DEFAULT '',
  `qz_titlepic` varchar(255) NOT NULL DEFAULT '',
  `save_titlepic` varchar(10) NOT NULL DEFAULT '',
  `zz_newstime` text NOT NULL,
  `z_newstime` varchar(255) NOT NULL DEFAULT '',
  `qz_newstime` varchar(255) NOT NULL DEFAULT '',
  `save_newstime` varchar(10) NOT NULL DEFAULT '',
  `zz_ftitle` text NOT NULL,
  `z_ftitle` varchar(255) NOT NULL DEFAULT '',
  `qz_ftitle` varchar(255) NOT NULL DEFAULT '',
  `save_ftitle` varchar(10) NOT NULL DEFAULT '',
  `zz_smalltext` text NOT NULL,
  `z_smalltext` varchar(255) NOT NULL DEFAULT '',
  `qz_smalltext` varchar(255) NOT NULL DEFAULT '',
  `save_smalltext` varchar(10) NOT NULL DEFAULT '',
  `zz_writer` text NOT NULL,
  `z_writer` varchar(255) NOT NULL DEFAULT '',
  `qz_writer` varchar(255) NOT NULL DEFAULT '',
  `save_writer` varchar(10) NOT NULL DEFAULT '',
  `zz_befrom` text NOT NULL,
  `z_befrom` varchar(255) NOT NULL DEFAULT '',
  `qz_befrom` varchar(255) NOT NULL DEFAULT '',
  `save_befrom` varchar(10) NOT NULL DEFAULT '',
  `zz_newstext` text NOT NULL,
  `z_newstext` varchar(255) NOT NULL DEFAULT '',
  `qz_newstext` varchar(255) NOT NULL DEFAULT '',
  `save_newstext` varchar(10) NOT NULL DEFAULT '',
  `zz_diggtop` text NOT NULL,
  `z_diggtop` varchar(255) NOT NULL DEFAULT '',
  `qz_diggtop` varchar(255) NOT NULL DEFAULT '',
  `save_diggtop` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `dayuqixiu_ecms_infoclass_news`
--

INSERT INTO `dayuqixiu_ecms_infoclass_news` (`classid`, `zz_title`, `z_title`, `qz_title`, `save_title`, `zz_titlepic`, `z_titlepic`, `qz_titlepic`, `save_titlepic`, `zz_newstime`, `z_newstime`, `qz_newstime`, `save_newstime`, `zz_ftitle`, `z_ftitle`, `qz_ftitle`, `save_ftitle`, `zz_smalltext`, `z_smalltext`, `qz_smalltext`, `save_smalltext`, `zz_writer`, `z_writer`, `qz_writer`, `save_writer`, `zz_befrom`, `z_befrom`, `qz_befrom`, `save_befrom`, `zz_newstext`, `z_newstext`, `qz_newstext`, `save_newstext`, `zz_diggtop`, `z_diggtop`, `qz_diggtop`, `save_diggtop`) VALUES
(1, '<h1>[!--title--]</h1>\r\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '<div class=\\"content\\">[!--newstext--]\r\n</div>\r\n<div class=\\"upss\\">', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_ecms_infotmp_news`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_ecms_infotmp_news` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `classid` int(10) unsigned NOT NULL DEFAULT '0',
  `oldurl` varchar(200) NOT NULL DEFAULT '',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `tmptime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `keyboard` varchar(100) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `newstime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `titlepic` varchar(120) NOT NULL DEFAULT '',
  `ftitle` varchar(120) NOT NULL DEFAULT '',
  `smalltext` varchar(255) NOT NULL DEFAULT '',
  `writer` varchar(30) NOT NULL DEFAULT '',
  `befrom` varchar(60) NOT NULL DEFAULT '',
  `newstext` mediumtext NOT NULL,
  `diggtop` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `checked` (`checked`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_ecms_news`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_ecms_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ttid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `onclick` int(10) unsigned NOT NULL DEFAULT '0',
  `plnum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `totaldown` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `newspath` char(20) NOT NULL DEFAULT '',
  `filename` char(36) NOT NULL DEFAULT '',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` char(20) NOT NULL DEFAULT '',
  `firsttitle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `isgood` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `isqf` tinyint(1) NOT NULL DEFAULT '0',
  `ismember` tinyint(1) NOT NULL DEFAULT '0',
  `isurl` tinyint(1) NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  `groupid` smallint(6) NOT NULL DEFAULT '0',
  `userfen` smallint(5) unsigned NOT NULL DEFAULT '0',
  `titlefont` char(14) NOT NULL DEFAULT '',
  `titleurl` char(200) NOT NULL DEFAULT '',
  `stb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `fstb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `restb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `keyboard` char(80) NOT NULL DEFAULT '',
  `title` char(100) NOT NULL DEFAULT '',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `titlepic` char(120) NOT NULL DEFAULT '',
  `eckuid` int(11) NOT NULL DEFAULT '0',
  `ftitle` char(120) NOT NULL DEFAULT '',
  `smalltext` char(255) NOT NULL DEFAULT '',
  `diggtop` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `newstime` (`newstime`),
  KEY `ttid` (`ttid`),
  KEY `firsttitle` (`firsttitle`),
  KEY `isgood` (`isgood`),
  KEY `ispic` (`ispic`),
  KEY `useridis` (`userid`,`ismember`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=46 ;

--
-- 转存表中的数据 `dayuqixiu_ecms_news`
--

INSERT INTO `dayuqixiu_ecms_news` (`id`, `classid`, `ttid`, `onclick`, `plnum`, `totaldown`, `newspath`, `filename`, `userid`, `username`, `firsttitle`, `isgood`, `ispic`, `istop`, `isqf`, `ismember`, `isurl`, `truetime`, `lastdotime`, `havehtml`, `groupid`, `userfen`, `titlefont`, `titleurl`, `stb`, `fstb`, `restb`, `keyboard`, `title`, `newstime`, `titlepic`, `eckuid`, `ftitle`, `smalltext`, `diggtop`) VALUES
(1, 15, 0, 0, 0, 0, '', 'index', 1, 'admin', 0, 0, 0, 0, 0, 0, 0, 1615814116, 1615891955, 1, 0, 0, '', '/gywm/gsjj/index.html', 1, 1, 1, '', '公司简介', 1615814020, '', 0, '', '达宇天然气汽车改装厂成立于2007年9月3日，位于四川省达州市高新区斌朗乡木瓜村源金汽车城内，注册资金50万人民币。现公司拥有各类技术人员，施工人员二十余人，办公面积近两百平方', 0),
(2, 16, 0, 0, 0, 0, '', 'index', 1, 'admin', 0, 0, 0, 0, 0, 0, 0, 1615814190, 1615814190, 1, 0, 0, '', '/gywm/qyww/index.html', 1, 1, 1, '', '企业文化', 1615814122, '', 0, '', '达宇天然气汽车改装厂成立于2007年9月3日，位于四川省达州市高新区斌朗乡木瓜村源金汽车城内，注册资金50万人民币。现公司拥有各类技术人员，施工人员二十余人，办公面积近两百平方', 0),
(3, 17, 0, 0, 0, 0, '', 'index', 1, 'admin', 0, 0, 0, 0, 0, 0, 0, 1615814216, 1615814216, 1, 0, 0, '', '/gywm/zzjg/index.html', 1, 1, 1, '', '组织架构', 1615814198, '', 0, '', '达宇天然气汽车改装厂成立于2007年9月3日，位于四川省达州市高新区斌朗乡木瓜村源金汽车城内，注册资金50万人民币。现公司拥有各类技术人员，施工人员二十余人，办公面积近两百平方', 0),
(4, 18, 0, 1, 0, 0, '', 'index', 1, 'admin', 0, 0, 0, 0, 0, 0, 0, 1615814312, 1615891966, 1, 0, 0, '', '/gywm/lxwm/index.html', 1, 1, 1, '', '联系我们', 1615814269, '', 0, '', '联系电话：19983727888\r\n联系地址：达州市高新区斌朗乡木瓜村源金汽车城内', 0),
(5, 9, 0, 0, 0, 0, '', '5', 1, 'admin', 0, 0, 0, 0, 0, 0, 0, 1615815073, 1615815073, 1, 0, 0, '', '/xwzx/hydt/5.html', 1, 1, 1, '', '下半年动力煤价格上涨空间料有限', 1615815050, '', 0, '', '2019年以来，动力煤指数基本维持高位震荡。上半年，供应端存隐忧，价格重心一度抬升，但反弹高度有限。分析人士指出，进入下半年需求旺季，供应端隐忧仍在，三季度初期动力煤价格或延续震', 0),
(6, 9, 0, 0, 0, 0, '', '6', 1, 'admin', 0, 0, 0, 0, 0, 0, 0, 1615815129, 1615815129, 1, 0, 0, '', '/xwzx/hydt/6.html', 1, 1, 1, '', '年中竟然“不差钱” 银行揽储静悄悄', 1615815096, '', 0, '', '拉存款，一直是银行每年季末时点必然上演的大戏。尤其年中因为叠加季末因素，是银行拉存款&ldquo;冲时点&rdquo;的重要时间窗口。银行惯用的手段不仅包括定存送礼返现金等活动，还', 0),
(7, 9, 0, 0, 0, 0, '', '7', 1, 'admin', 0, 0, 0, 0, 0, 0, 0, 1615815156, 1615815156, 1, 0, 0, '', '/xwzx/hydt/7.html', 1, 1, 1, '', '美油期货周五收跌1.6% 6月涨幅达9.3%', 1615815131, '', 0, '', '北京时间29日凌晨，美国原油期货价格周五收跌，但本月涨幅超过9%。交易商仍在密切关注原油市场面临的各种不确定性因素。\r\n\r\nG20峰会正在召开。会议期间，一些与会大国领导人将就贸', 0),
(8, 9, 0, 0, 0, 0, '', '8', 1, 'admin', 0, 0, 0, 0, 0, 0, 0, 1615815193, 1615815193, 1, 0, 0, '', '/xwzx/hydt/8.html', 1, 1, 1, '', '黄金期货周五收高 6月累涨7.7%创3年最大月涨幅', 1615815158, '', 0, '', '北京时间29日凌晨，黄金期货价格周五收高。本周金价逼近6年来的最高水平。在整个6月份当中，金价录得3年来的最大单月涨幅。\r\n\r\n《黄金通讯》编辑Brien Lundin表示：&ldquo;过去一个', 0),
(9, 9, 0, 0, 0, 0, '', '9', 1, 'admin', 0, 0, 0, 0, 0, 0, 0, 1615815227, 1615815227, 1, 0, 0, '', '/xwzx/hydt/9.html', 1, 1, 1, '', '六月份沿海煤炭市场先抑后扬', 1615815195, '', 0, '', '经历了五月中下旬的25元/吨的煤价大幅下跌之后；六月上中旬，港口市场煤价相对稳定，市场煤价 格呈W式波动，保持震荡走势，即使出现过上涨或者下跌，涨幅和跌幅都不大。数据显示，六月初，', 0),
(10, 9, 0, 0, 0, 0, '', '10', 1, 'admin', 0, 0, 0, 0, 0, 0, 0, 1615815254, 1615815254, 1, 0, 0, '', '/xwzx/hydt/10.html', 1, 1, 1, '', '周二美国原油收跌0.1% 结束三连涨', 1615815229, '', 0, '', '北京时间26日凌晨，美国原油期货价格周二收跌，在连续三个交易日攀升之后略有回落。原油市场交易商仍在密切关注美国与伊朗之间的紧张局势。\r\n\r\n分析师称，全球原油需求放缓以及美伊', 0),
(11, 9, 0, 0, 0, 0, '', '11', 1, 'admin', 0, 0, 0, 0, 0, 0, 0, 1615815282, 1615815282, 1, 0, 0, '', '/xwzx/hydt/11.html', 1, 1, 1, '', '周二美国WTI原油期货上涨3.8% 创一周新高', 1615815269, '', 0, '', '北京时间19日凌晨，美国原油期货价格周二收高。国际贸易谈判可能取得进展的迹象，缓解了市场对未来原油需求可能放缓的担忧。\r\n\r\n出于相同的理由，周二美国股市大幅攀升，提振了风险投', 0),
(12, 9, 0, 0, 0, 0, '', '12', 1, 'admin', 0, 0, 0, 0, 0, 0, 0, 1615815313, 1615815313, 1, 0, 0, '', '/xwzx/hydt/12.html', 1, 1, 1, '', '基建潮送暖风 大宗商品“铁公基”迎利好', 1615815285, '', 0, '', '近日，《关于做好地方政府专项债券发行及项目配套融资工作的通知》中，允许地方专项债作为项目资本金的消息，点燃了市场热情，A股方面，基建板块一度全线上涨；大宗商品方面，&ldquo;基建', 0),
(15, 9, 0, 0, 0, 0, '', '15', 1, 'admin', 0, 0, 1, 0, 0, 0, 0, 1615815407, 1615887250, 1, 0, 0, '', '/xwzx/hydt/15.html', 1, 1, 1, '', '资金面料无忧 定向降准有空间', 1615815391, '/d/file/ad8f98934af9ccf9fb953ec4509030d1.jpg', 0, '', '近日，接受中国证券报记者采访的多位专家认为，我国货币政策将更加注重灵活性、前瞻性，降准有空间，但会根据经济内外部环境变化适时而动。央行将更多从公开市场操作方面维持流动性', 0),
(16, 11, 0, 0, 0, 0, '', '16', 1, 'admin', 0, 0, 1, 0, 0, 0, 0, 1615875624, 1615883569, 1, 0, 0, '', '/gssl/cgal/16.html', 1, 1, 1, '', '汽车改装成功案例一', 1615875373, '/d/file/3e702852eca52a7aeb793263ff0b3b01.jpg', 0, '', '亚峰汽车修理厂成功案例', 0),
(17, 11, 0, 0, 0, 0, '', '17', 1, 'admin', 0, 0, 1, 0, 0, 0, 0, 1615875680, 1615883551, 1, 0, 0, '', '/gssl/cgal/17.html', 1, 1, 1, '', '亚峰汽车改装成功案例', 1615875630, '/d/file/6584abe5e2bd9a5789ad8eba7b4d18e2.jpg', 0, '', '亚峰汽车改装成功案例。', 0),
(18, 11, 0, 0, 0, 0, '', '18', 1, 'admin', 0, 0, 1, 0, 0, 0, 0, 1615875752, 1615883516, 1, 0, 0, '', '/gssl/cgal/18.html', 1, 1, 1, '', '达州CNG汽车改装成功案例', 1615875681, '/d/file/f5bfb635f02ad2faf2ec7d1c7006bc7e.jpg', 0, '', '成都CNG汽车改装成功案例：长安4S店时间：2018年12月30日地点：长安4S店满意度：较满意评价：CNG汽车目', 0),
(19, 5, 0, 1, 0, 0, '', '19', 1, 'admin', 0, 0, 1, 0, 0, 0, 0, 1615875949, 1615885792, 1, 0, 0, '', '/fwfw/cngqcgz/19.html', 1, 1, 1, '', '达州CNG改装', 1615875905, '/d/file/c41379d7ec39ec1fea8ab627e0ca6edf.jpg', 0, '', '成都CNG改装及优点：一、CNGCNG（压缩天然气）是一种理想的车用替代能源，其应用技术经数十年发展已日趋成熟。它具有成本低，效', 0),
(20, 5, 0, 1, 0, 0, '', '20', 1, 'admin', 0, 0, 1, 0, 0, 0, 0, 1615875984, 1615885787, 1, 0, 0, '', '/fwfw/cngqcgz/20.html', 1, 1, 1, '', '达州CNG汽车改装', 1615875950, '/d/file/109f1d2940c4def32a40a00875a5e4f2.jpg', 0, '', '成都CNG汽车改装技术要求：1、油改气进行轿车改装时，选用的零部件有必要严厉按规划图纸技能请求进行检查；外购件总成有必要具备经…', 0),
(21, 5, 0, 0, 0, 0, '', '21', 1, 'admin', 0, 0, 1, 0, 0, 0, 0, 1615876037, 1615885781, 1, 0, 0, '', '/fwfw/cngqcgz/21.html', 1, 1, 1, '', '达州CNG改装厂家', 1615876018, '/d/file/9a0f556cebd7ebc4b4e8b2c908dd5660.jpg', 0, '', '成都CNG改装厂家与您介绍改装原理以及注意事项：目前天然气改装有两种控制方式，开环和闭环。开环控制系统，造价低、安装简单、易…', 0),
(22, 5, 0, 0, 0, 0, '', '22', 1, 'admin', 0, 0, 1, 0, 0, 0, 0, 1615876068, 1615885777, 1, 0, 0, '', '/fwfw/cngqcgz/22.html', 1, 1, 1, '', '达州CNG改装维护', 1615876049, '/d/file/21edc75c2ab2b4c5500496d9b1f5e327.jpg', 0, '', '成都CNG改装维护方式：目前在市面上的天然气发动机大多是由汽油机改装而来的，因而“CNG改装” 后汽车的功率通常会下降', 0),
(23, 5, 0, 0, 0, 0, '', '23', 1, 'admin', 0, 0, 1, 0, 0, 0, 0, 1615876097, 1615885771, 1, 0, 0, '', '/fwfw/cngqcgz/23.html', 1, 1, 1, '', '达州CNG改装公司', 1615876079, '/d/file/fa67cb3a55f7aaeac461a851db200979.jpg', 0, '', '成都CNG改装公司与您介绍汽车CNG改装作用和优势：1、降低维修费用使用CNG能使汽车引擎内各部件大幅度延长使用时间，减少维修保养', 0),
(24, 5, 0, 0, 0, 0, '', '24', 1, 'admin', 0, 0, 1, 0, 0, 0, 0, 1615876124, 1615885766, 1, 0, 0, '', '/fwfw/cngqcgz/24.html', 1, 1, 1, '', '达州CNG汽车改装厂家', 1615876105, '/d/file/01363a358886d416d09584be1a5763eb.jpg', 0, '', '成都CNG汽车改装厂家与您介绍改装工艺技术和检验标准：一、改车前主要技术指标的检测及修复1、检测原车发动机的动力性能是否符合', 0),
(25, 6, 0, 0, 0, 0, '', '25', 1, 'admin', 0, 0, 1, 0, 0, 0, 0, 1615876177, 1615885759, 1, 0, 0, '', '/fwfw/ygqfw/25.html', 1, 1, 1, '', '达州油改气', 1615876163, '/d/file/ad9ce0c52ddbdefb9cf826ed65d2e478.jpg', 0, '', '成都油改气及优势：一、汽车油改气汽车油改气是对机动车改变燃料种类的一种改装方式。是指把原先使用燃油的通过改装成烧天然气的一…', 0),
(26, 6, 0, 0, 0, 0, '', '26', 1, 'admin', 0, 0, 1, 0, 0, 0, 0, 1615876246, 1615885754, 1, 0, 0, '', '/fwfw/ygqfw/26.html', 1, 1, 1, '', '达州油改气厂家', 1615876200, '/d/file/e825dcc639746cf388084dabf0c0988c.jpg', 0, '', '成都油改气厂家与您介绍汽车油改气的原理：使用天然气作为燃料的工作原理与原来的汽油机相同。将高压气瓶中储存的天然气经过减压后…', 0),
(27, 7, 0, 1, 0, 0, '', '27', 1, 'admin', 0, 0, 1, 0, 0, 0, 0, 1615876297, 1615886419, 1, 0, 0, '', '/fwfw/cngwx/27.html', 1, 1, 1, '', '达州CNG汽车维修', 1615876270, '/d/file/e1ad60514ee294934c572b629b6f815a.jpg', 0, '', '成都CNG汽车维修检测内容：1、减压阀：检查连接有无松动以及燃气和防冻液是否泄漏，包括与支架、高、低压管以及水管的连接处。2、…', 0),
(28, 6, 0, 0, 0, 0, '', '28', 1, 'admin', 0, 0, 1, 0, 0, 0, 0, 1615876367, 1615885748, 1, 0, 0, '', '/fwfw/ygqfw/28.html', 1, 1, 1, '', '达州油改气公司', 1615876334, '/d/file/32aeda6d45bcd9ab57494e2e9429f247.jpg', 0, '', '成都油改气公司与与您介绍汽车油改气的作用和优点：油改气即为普通汽车加装一套天然气装置，使其可在烧汽油和烧天然气之间自由转换…', 0),
(29, 6, 0, 0, 0, 0, '', '29', 1, 'admin', 0, 0, 1, 0, 0, 0, 0, 1615876403, 1615885743, 1, 0, 0, '', '/fwfw/ygqfw/29.html', 1, 1, 1, '', '达州汽车油改气', 1615876370, '/d/file/2a1d07742c036639ff0f10d4f7936f74.jpg', 0, '', '成都汽车油改气需要遵循的要求和指标：1.安装在发动机机舱中的改装部件，其环境温度应在-40℃～+121℃范围内，其他改装部件应适', 0),
(30, 6, 0, 0, 0, 0, '', '30', 1, 'admin', 0, 0, 1, 0, 0, 0, 0, 1615876451, 1615885736, 1, 0, 0, '', '/fwfw/ygqfw/30.html', 1, 1, 1, '', '达州私家车油改气', 1615876426, '/d/file/73fcf7ded2c9405dbb87981b5ae0f857.jpg', 0, '', '成都私家车油改气要点：1、天然气装置保养应结合汽车各级保养为保障使用安全，天然气装置的维护保养应结合汽车各级保养同时进行。…', 0),
(31, 6, 0, 0, 0, 0, '', '31', 1, 'admin', 0, 0, 1, 0, 0, 0, 0, 1615876478, 1615885731, 1, 0, 0, '', '/fwfw/ygqfw/31.html', 1, 1, 1, '', '达州轿车油改气', 1615876452, '/d/file/3930002fbc5ec49763a76a47e77bc7f1.jpg', 0, '', '成都轿车油改气后注意事项和维护方法：天然气汽车由于其结构上的**之处，其综合性能好，燃烧分布均匀，使用寿命长，从而使得车辆行…', 0),
(32, 11, 0, 0, 0, 0, '', '32', 1, 'admin', 0, 0, 1, 0, 0, 0, 0, 1615883242, 1615883527, 1, 0, 0, '', '/gssl/cgal/32.html', 1, 1, 1, '', '成都油改气厂家改装维修案例', 1615883154, '/d/file/045a7b99dcbc72989f24de9cfd955196.jpg', 0, '', '成都油改气厂家改装维修案例：蜀顺驾校项目时间：2018年11月11日地点：成都蜀顺驾校满意度：较满意评价：CNG汽车目前已进入千家万户，由于使用压缩天然气作燃料，其日常维护十分重要，能**CNG汽车日...\r\n\r\n', 0),
(33, 11, 0, 0, 0, 0, '', '33', 1, 'admin', 0, 0, 1, 0, 0, 0, 0, 1615883299, 1615883535, 1, 0, 0, '', '/gssl/cgal/33.html', 1, 1, 1, '', '成都CNG改装成功案例', 1615883253, '/d/file/dbefe1f9f14f10e6d87fd3d22478a596.jpg', 0, '', '成都CNG改装成功案例：保时捷卡宴改装项目时间：2019年1月8日地点：金牛区满意度：较满意评价：CNG汽车目', 0),
(34, 11, 0, 0, 0, 0, '', '34', 1, 'admin', 0, 0, 1, 0, 0, 0, 0, 1615883360, 1615883464, 1, 0, 0, '', '/gssl/cgal/34.html', 1, 1, 1, '', '成都油改气成功案例', 1615883315, '/d/file/b3461fd00cef952dc4ba079e2bdd8ba7.jpg', 0, '', '成都油改气成功案例：长安逸动油改气项目。时间：2018年11月11日地点：成都金牛区满意度：较满意评价：CNG汽车目前已进入千家万户，由于使用压缩天然气作燃料，其日常维护十分重要，能**CNG汽车日常...\r\n\r\n', 0),
(35, 8, 0, 0, 0, 0, '', '35', 1, 'admin', 0, 0, 0, 0, 0, 0, 0, 1615887112, 1615887112, 1, 0, 0, '', '/xwzx/gsxw/35.html', 1, 1, 1, '', '下半年动力煤价格上涨空间料有限', 1615815050, '', 0, '', '2019年以来，动力煤指数基本维持高位震荡。上半年，供应端存隐忧，价格重心一度抬升，但反弹高度有限。分析人士指出，进入下半年需求旺季，供应端隐忧仍在，三季度初期动力煤价格或延续震', 0),
(36, 8, 0, 0, 0, 0, '', '36', 1, 'admin', 0, 0, 0, 0, 0, 0, 0, 1615887112, 1615887112, 1, 0, 0, '', '/xwzx/gsxw/36.html', 1, 1, 1, '', '年中竟然“不差钱” 银行揽储静悄悄', 1615815096, '', 0, '', '拉存款，一直是银行每年季末时点必然上演的大戏。尤其年中因为叠加季末因素，是银行拉存款&ldquo;冲时点&rdquo;的重要时间窗口。银行惯用的手段不仅包括定存送礼返现金等活动，还', 0),
(37, 8, 0, 0, 0, 0, '', '37', 1, 'admin', 0, 0, 0, 0, 0, 0, 0, 1615887112, 1615887112, 1, 0, 0, '', '/xwzx/gsxw/37.html', 1, 1, 1, '', '美油期货周五收跌1.6% 6月涨幅达9.3%', 1615815131, '', 0, '', '北京时间29日凌晨，美国原油期货价格周五收跌，但本月涨幅超过9%。交易商仍在密切关注原油市场面临的各种不确定性因素。\r\n\r\nG20峰会正在召开。会议期间，一些与会大国领导人将就贸', 0),
(38, 8, 0, 0, 0, 0, '', '38', 1, 'admin', 0, 0, 0, 0, 0, 0, 0, 1615887112, 1615887112, 1, 0, 0, '', '/xwzx/gsxw/38.html', 1, 1, 1, '', '黄金期货周五收高 6月累涨7.7%创3年最大月涨幅', 1615815158, '', 0, '', '北京时间29日凌晨，黄金期货价格周五收高。本周金价逼近6年来的最高水平。在整个6月份当中，金价录得3年来的最大单月涨幅。\r\n\r\n《黄金通讯》编辑Brien Lundin表示：&ldquo;过去一个', 0),
(39, 8, 0, 0, 0, 0, '', '39', 1, 'admin', 0, 0, 0, 0, 0, 0, 0, 1615887112, 1615887112, 1, 0, 0, '', '/xwzx/gsxw/39.html', 1, 1, 1, '', '六月份沿海煤炭市场先抑后扬', 1615815195, '', 0, '', '经历了五月中下旬的25元/吨的煤价大幅下跌之后；六月上中旬，港口市场煤价相对稳定，市场煤价 格呈W式波动，保持震荡走势，即使出现过上涨或者下跌，涨幅和跌幅都不大。数据显示，六月初，', 0),
(40, 8, 0, 0, 0, 0, '', '40', 1, 'admin', 0, 0, 0, 0, 0, 0, 0, 1615887112, 1615887112, 1, 0, 0, '', '/xwzx/gsxw/40.html', 1, 1, 1, '', '周二美国原油收跌0.1% 结束三连涨', 1615815229, '', 0, '', '北京时间26日凌晨，美国原油期货价格周二收跌，在连续三个交易日攀升之后略有回落。原油市场交易商仍在密切关注美国与伊朗之间的紧张局势。\r\n\r\n分析师称，全球原油需求放缓以及美伊', 0),
(41, 8, 0, 0, 0, 0, '', '41', 1, 'admin', 0, 0, 0, 0, 0, 0, 0, 1615887112, 1615887112, 1, 0, 0, '', '/xwzx/gsxw/41.html', 1, 1, 1, '', '周二美国WTI原油期货上涨3.8% 创一周新高', 1615815269, '', 0, '', '北京时间19日凌晨，美国原油期货价格周二收高。国际贸易谈判可能取得进展的迹象，缓解了市场对未来原油需求可能放缓的担忧。\r\n\r\n出于相同的理由，周二美国股市大幅攀升，提振了风险投', 0),
(42, 8, 0, 0, 0, 0, '', '42', 1, 'admin', 0, 0, 0, 0, 0, 0, 0, 1615887112, 1615887112, 1, 0, 0, '', '/xwzx/gsxw/42.html', 1, 1, 1, '', '基建潮送暖风 大宗商品“铁公基”迎利好', 1615815285, '', 0, '', '近日，《关于做好地方政府专项债券发行及项目配套融资工作的通知》中，允许地方专项债作为项目资本金的消息，点燃了市场热情，A股方面，基建板块一度全线上涨；大宗商品方面，&ldquo;基建', 0),
(43, 8, 0, 0, 0, 0, '', '43', 1, 'admin', 0, 0, 0, 0, 0, 0, 0, 1615887112, 1615887112, 1, 0, 0, '', '/xwzx/gsxw/43.html', 1, 1, 1, '', '黄金期货周二收高0.6% 创14个月新高', 1615815315, '', 0, '', '北京时间19日凌晨，黄金期货价格周二攀升并收于14个月来最高水平。欧洲央行行长马里奥-德拉吉（Mario Draghi）的讲话为降息搭好了舞台。\r\n\r\n美联储从周二开始召开货币政策会议，将在', 0),
(44, 8, 0, 0, 0, 0, '', '44', 1, 'admin', 0, 0, 0, 0, 0, 0, 0, 1615887112, 1615887112, 1, 0, 0, '', '/xwzx/gsxw/44.html', 1, 1, 1, '', '电厂需求走低库存回升 旺季煤价中长期走势成谜', 1615815343, '', 0, '', '煤炭行业供给侧改革政策的推行，让中国煤炭行业呈现新格局。\r\n\r\n易煤价格指数 显示，截至5月31日，山西大同地区主流煤矿坑口价为428元/吨，较5月初下跌17元/吨，跌幅3.8%；内蒙古地区主流', 0),
(45, 8, 0, 0, 0, 0, '', '45', 1, 'admin', 0, 0, 1, 0, 0, 0, 0, 1615887112, 1615887779, 1, 0, 0, '', '/xwzx/gsxw/45.html', 1, 1, 1, '', '资金面料无忧 定向降准有空间', 1615728991, '/d/file/29fa74b9dacb0297e642de028affa7ef.jpg', 0, '', '近日，接受中国证券报记者采访的多位专家认为，我国货币政策将更加注重灵活性、前瞻性，降准有空间，但会根据经济内外部环境变化适时而动。央行将更多从公开市场操作方面维持流动性', 0);

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_ecms_news_check`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_ecms_news_check` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ttid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `onclick` int(10) unsigned NOT NULL DEFAULT '0',
  `plnum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `totaldown` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `newspath` char(20) NOT NULL DEFAULT '',
  `filename` char(36) NOT NULL DEFAULT '',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` char(20) NOT NULL DEFAULT '',
  `firsttitle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `isgood` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `isqf` tinyint(1) NOT NULL DEFAULT '0',
  `ismember` tinyint(1) NOT NULL DEFAULT '0',
  `isurl` tinyint(1) NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  `groupid` smallint(6) NOT NULL DEFAULT '0',
  `userfen` smallint(5) unsigned NOT NULL DEFAULT '0',
  `titlefont` char(14) NOT NULL DEFAULT '',
  `titleurl` char(200) NOT NULL DEFAULT '',
  `stb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `fstb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `restb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `keyboard` char(80) NOT NULL DEFAULT '',
  `title` char(100) NOT NULL DEFAULT '',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `titlepic` char(120) NOT NULL DEFAULT '',
  `eckuid` int(11) NOT NULL DEFAULT '0',
  `ftitle` char(120) NOT NULL DEFAULT '',
  `smalltext` char(255) NOT NULL DEFAULT '',
  `diggtop` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `newstime` (`newstime`),
  KEY `ttid` (`ttid`),
  KEY `firsttitle` (`firsttitle`),
  KEY `isgood` (`isgood`),
  KEY `ispic` (`ispic`),
  KEY `useridis` (`userid`,`ismember`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_ecms_news_check_data`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_ecms_news_check_data` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `keyid` varchar(255) NOT NULL DEFAULT '',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `newstempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `haveaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `infotags` varchar(80) NOT NULL DEFAULT '',
  `writer` varchar(30) NOT NULL DEFAULT '',
  `befrom` varchar(60) NOT NULL DEFAULT '',
  `newstext` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_ecms_news_data_1`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_ecms_news_data_1` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `keyid` varchar(255) NOT NULL DEFAULT '',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `newstempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `haveaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `infotags` varchar(80) NOT NULL DEFAULT '',
  `writer` varchar(30) NOT NULL DEFAULT '',
  `befrom` varchar(60) NOT NULL DEFAULT '',
  `newstext` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `dayuqixiu_ecms_news_data_1`
--

INSERT INTO `dayuqixiu_ecms_news_data_1` (`id`, `classid`, `keyid`, `dokey`, `newstempid`, `closepl`, `haveaddfen`, `infotags`, `writer`, `befrom`, `newstext`) VALUES
(1, 15, '', 1, 3, 0, 0, '', '', '', '达宇天然气汽车改装厂成立于2007年9月3日，位于四川省达州市高新区斌朗乡木瓜村源金汽车城内，注册资金50万人民币。现公司拥有各类技术人员，施工人员二十余人，办公面积近两百平方米，是一家集生产制造、产品设计、销售、安装、售后服务于一体的CNG汽车改装有限公司。公司自成立以来，主要从事汽车油改气、CNG汽车改装、CNG汽车维修，CNG配件销售等汽车改装业务。多年来我司改装CNG汽车几千辆，未发生过CNG汽车改装质量问题。一直坚持以&ldquo;用户为标准，以质量求市场&rdquo;为导向，提供24小时服务及上门服务等措施满足顾客需求。<br /><br />公司经营理念：诚信为本、开拓创新、精益求精、顾客满意。<br /><br />我们始终坚持以信誉为根本，以技术为已任，以质量为生命，以服务为基础，运用高新技术，不断走创新之路，为客户提供改装服务。成绩只属于过去，未来我们将更加努力，并一如既往的提供**的产品和专业的售后服务和技术。<br /><br />达宇天然气汽车改装厂与您携手精诚合作，共创辉煌明天。'),
(2, 16, '', 1, 0, 0, 0, '', '', '', '<p style=\\"margin: 0px; padding: 0px; transition:0.3s; color: rgb(102, 102, 102); text-transform: none; line-height: 2; text-indent: 2em; letter-spacing: normal; font-family: &quot;Microsoft YaHei&quot;, arial, helvetica, clean, sans-serif; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; white-space: normal; box-sizing: border-box; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\\">达宇天然气汽车改装厂成立于2007年9月3日，位于四川省达州市高新区斌朗乡木瓜村源金汽车城内，注册资金50万人民币。现公司拥有各类技术人员，施工人员二十余人，办公面积近两百平方米，是一家集生产制造、产品设计、销售、安装、售后服务于一体的CNG汽车改装有限公司。公司自成立以来，主要从事汽车油改气、CNG汽车改装、CNG汽车维修，CNG配件销售等汽车改装业务。多年来我司改装CNG汽车几千辆，未发生过CNG汽车改装质量问题。一直坚持以&ldquo;用户为标准，以质量求市场&rdquo;为导向，提供24小时服务及上门服务等措施满足顾客需求。</p>\r\n<p style=\\"margin: 0px; padding: 0px; transition:0.3s; color: rgb(102, 102, 102); text-transform: none; line-height: 2; text-indent: 2em; letter-spacing: normal; font-family: &quot;Microsoft YaHei&quot;, arial, helvetica, clean, sans-serif; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; white-space: normal; box-sizing: border-box; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\\">公司经营理念：诚信为本、开拓创新、精益求精、顾客满意。</p>\r\n<p style=\\"margin: 0px; padding: 0px; transition:0.3s; color: rgb(102, 102, 102); text-transform: none; line-height: 2; text-indent: 2em; letter-spacing: normal; font-family: &quot;Microsoft YaHei&quot;, arial, helvetica, clean, sans-serif; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; white-space: normal; box-sizing: border-box; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\\">我们始终坚持以信誉为根本，以技术为已任，以质量为生命，以服务为基础，运用高新技术，不断走创新之路，为客户提供改装服务。成绩只属于过去，未来我们将更加努力，并一如既往的提供**的产品和专业的售后服务和技术。</p>\r\n<p style=\\"margin: 0px; padding: 0px; transition:0.3s; color: rgb(102, 102, 102); text-transform: none; line-height: 2; text-indent: 2em; letter-spacing: normal; font-family: &quot;Microsoft YaHei&quot;, arial, helvetica, clean, sans-serif; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; white-space: normal; box-sizing: border-box; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\\">达宇天然气汽车改装厂与您携手精诚合作，共创辉煌明天。</p>'),
(3, 17, '', 1, 0, 0, 0, '', '', '', '<p style=\\"margin: 0px; padding: 0px; transition:0.3s; color: rgb(102, 102, 102); text-transform: none; line-height: 2; text-indent: 2em; letter-spacing: normal; font-family: &quot;Microsoft YaHei&quot;, arial, helvetica, clean, sans-serif; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; white-space: normal; box-sizing: border-box; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\\">达宇天然气汽车改装厂成立于2007年9月3日，位于四川省达州市高新区斌朗乡木瓜村源金汽车城内，注册资金50万人民币。现公司拥有各类技术人员，施工人员二十余人，办公面积近两百平方米，是一家集生产制造、产品设计、销售、安装、售后服务于一体的CNG汽车改装有限公司。公司自成立以来，主要从事汽车油改气、CNG汽车改装、CNG汽车维修，CNG配件销售等汽车改装业务。多年来我司改装CNG汽车几千辆，未发生过CNG汽车改装质量问题。一直坚持以&ldquo;用户为标准，以质量求市场&rdquo;为导向，提供24小时服务及上门服务等措施满足顾客需求。</p>\r\n<p style=\\"margin: 0px; padding: 0px; transition:0.3s; color: rgb(102, 102, 102); text-transform: none; line-height: 2; text-indent: 2em; letter-spacing: normal; font-family: &quot;Microsoft YaHei&quot;, arial, helvetica, clean, sans-serif; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; white-space: normal; box-sizing: border-box; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\\">公司经营理念：诚信为本、开拓创新、精益求精、顾客满意。</p>\r\n<p style=\\"margin: 0px; padding: 0px; transition:0.3s; color: rgb(102, 102, 102); text-transform: none; line-height: 2; text-indent: 2em; letter-spacing: normal; font-family: &quot;Microsoft YaHei&quot;, arial, helvetica, clean, sans-serif; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; white-space: normal; box-sizing: border-box; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\\">我们始终坚持以信誉为根本，以技术为已任，以质量为生命，以服务为基础，运用高新技术，不断走创新之路，为客户提供改装服务。成绩只属于过去，未来我们将更加努力，并一如既往的提供**的产品和专业的售后服务和技术。</p>\r\n<p style=\\"margin: 0px; padding: 0px; transition:0.3s; color: rgb(102, 102, 102); text-transform: none; line-height: 2; text-indent: 2em; letter-spacing: normal; font-family: &quot;Microsoft YaHei&quot;, arial, helvetica, clean, sans-serif; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; white-space: normal; box-sizing: border-box; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\\">达宇天然气汽车改装厂与您携手精诚合作，共创辉煌明天。</p>'),
(4, 18, '', 1, 4, 0, 0, '', '', '', '联系电话：19983727888<br />联系地址：达州市高新区斌朗乡木瓜村源金汽车城内'),
(5, 9, '', 1, 0, 0, 0, '', '', '', '2019年以来，动力煤指数基本维持高位震荡。上半年，供应端存隐忧，价格重心一度抬升，但反弹高度有限。分析人士指出，进入下半年需求旺季，供应端隐忧仍在，三季度初期动力煤价格或延续震荡偏强走势，不过也需要警惕需求不及预期情况下价格回落的风险。<br />宝城期货研究指出，下半年保供应稳价格政策导向预计难改，动力煤市场优质产能加速释放，且中间环节成本下降，港口报价成本降低；一旦后期需求旺季不如市场预 期般乐观，煤炭价格将逐渐震荡回调为主。且在中间环节以及下游高库存有所缓解情况下，动力煤市场供需形势较2018年已有明显好转，价格很难有大幅走高动 力。价格中心或围绕530元/吨-650元/吨区间震荡整理。（来源：中证网）'),
(6, 9, '', 1, 0, 0, 0, '', '', '', '<p style=\\"margin: 0px 0px 20px; padding: 0px; border: 0px currentColor; border-image: none; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: SimSun, 宋体, &quot;Arial Narrow&quot;; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\\">拉存款，一直是银行每年季末时点必然上演的大戏。</p>\r\n<p style=\\"margin: 0px 0px 20px; padding: 0px; border: 0px currentColor; border-image: none; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: SimSun, 宋体, &quot;Arial Narrow&quot;; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\\">尤其年中因为叠加季末因素，是银行拉存款&ldquo;冲时点&rdquo;的重要时间窗口。银行惯用的手段不仅包括定存送礼返现金等活动，还会推出具有较好预期收益率的理财产品。</p>\r\n<p style=\\"margin: 0px 0px 20px; padding: 0px; border: 0px currentColor; border-image: none; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: SimSun, 宋体, &quot;Arial Narrow&quot;; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\\">不过，与往年不同的是，临近6月末，银行&ldquo;撩客户&rdquo;的热情比以往冷淡了不少。</p>\r\n<p style=\\"margin: 0px 0px 20px; padding: 0px; border: 0px currentColor; border-image: none; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: SimSun, 宋体, &quot;Arial Narrow&quot;; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\\">银行为何&ldquo;不差钱&rdquo;</p>\r\n<p style=\\"margin: 0px 0px 20px; padding: 0px; border: 0px currentColor; border-image: none; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: SimSun, 宋体, &quot;Arial Narrow&quot;; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\\">银行急于揽储往往会推高理财产品的收益。但最近，银行理财产品的预期收益率并未如期大涨，甚至很多产品预期收益率未突破5%。</p>\r\n<p style=\\"margin: 0px 0px 20px; padding: 0px; border: 0px currentColor; border-image: none; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: SimSun, 宋体, &quot;Arial Narrow&quot;; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\\">据融360大数据研究院监测的数据显示，临近月末的两周，银行理财收益率继续下行，并没有因季末而有所回升。6月21日至6月26日，银行理财平均预期收益率为4.16%，较上周继续下行2BP。</p>\r\n<p style=\\"margin: 0px 0px 20px; padding: 0px; border: 0px currentColor; border-image: none; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: SimSun, 宋体, &quot;Arial Narrow&quot;; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\\">同时，很多投资者发现，最近银行官网、微信公众号和网点宣传单等推介高息理财产品的活动并不多。</p>\r\n<p style=\\"margin: 0px 0px 20px; padding: 0px; border: 0px currentColor; border-image: none; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: SimSun, 宋体, &quot;Arial Narrow&quot;; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\\">对于年中时点银行揽储相对平静的表现，普益标准研究员于康认为，市场资金宽裕以及银行理财净值转型期的阶段性原因，降低了银行揽储的意愿。</p>\r\n<p style=\\"margin: 0px 0px 20px; padding: 0px; border: 0px currentColor; border-image: none; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: SimSun, 宋体, &quot;Arial Narrow&quot;; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\\">同时，央行近期的投放使得银行间流动性较为宽松，市场资金面较为充裕，整体上削弱了银行揽储的意愿。</p>\r\n<p style=\\"margin: 0px 0px 20px; padding: 0px; border: 0px currentColor; border-image: none; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: SimSun, 宋体, &quot;Arial Narrow&quot;; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\\">6月24日，<a href=\\"http://www.gtgqw.com/city/shanghai.html\\" style=\\"color: rgb(0, 0, 255); text-decoration: none;\\">上海</a>同业拆放利率(Shibor)全线走低，其中隔夜Shibor跌11.2BP至1%，创下近10年来新低。6月中旬以来，DR007也在波动中下降。</p>\r\n<p style=\\"margin: 0px 0px 20px; padding: 0px; border: 0px currentColor; border-image: none; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: SimSun, 宋体, &quot;Arial Narrow&quot;; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\\">阶段性的放松，是否意味着银行存款压力不存在了呢？</p>\r\n<p style=\\"margin: 0px 0px 20px; padding: 0px; border: 0px currentColor; border-image: none; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: SimSun, 宋体, &quot;Arial Narrow&quot;; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\\">实际上，与大行和股份行网点多、客户基础好相比，城商行和农商行等中小型银行的揽储日子仍然难过。</p>\r\n<p style=\\"margin: 0px 0px 20px; padding: 0px; border: 0px currentColor; border-image: none; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: SimSun, 宋体, &quot;Arial Narrow&quot;; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\\">利用高收益理财产品吸引资金来冲业绩的情况为何今年没有泛滥？</p>\r\n<p style=\\"margin: 0px 0px 20px; padding: 0px; border: 0px currentColor; border-image: none; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: SimSun, 宋体, &quot;Arial Narrow&quot;; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\\">对此，于康认为，在净值转型期，银行理财揽储功用大幅降低。</p>\r\n<p style=\\"margin: 0px 0px 20px; padding: 0px; border: 0px currentColor; border-image: none; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: SimSun, 宋体, &quot;Arial Narrow&quot;; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\\">&ldquo;预期收益型产品的硬性压降要求，导致很多银行不能通过提升预期收益产品收益类吸收资金，避免出现预期收益规模超过压降节奏的问题。&rdquo;于康认为，目前封闭式净值型产品的期限通常都在半年以上，也较难承担短期揽储任务。</p>\r\n<p style=\\"margin: 0px 0px 20px; padding: 0px; border: 0px currentColor; border-image: none; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: SimSun, 宋体, &quot;Arial Narrow&quot;; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\\">年中时点，银行仍有一定的揽储压力，但随着产品类型的转化，揽储表现方式已有所变化。</p>\r\n<p style=\\"margin: 0px 0px 20px; padding: 0px; border: 0px currentColor; border-image: none; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: SimSun, 宋体, &quot;Arial Narrow&quot;; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\\">监管调整指挥棒</p>\r\n<p style=\\"margin: 0px 0px 20px; padding: 0px; border: 0px currentColor; border-image: none; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: SimSun, 宋体, &quot;Arial Narrow&quot;; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\\">&ldquo;高息揽储情况以前在银行业还是比较多的，但现在银行业的内部考核更注重实质效益和风险管控，也是银行业生存发展内生要求。&rdquo;西南地区某中小银行高管表示。</p>\r\n<p style=\\"margin: 0px 0px 20px; padding: 0px; border: 0px currentColor; border-image: none; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: SimSun, 宋体, &quot;Arial Narrow&quot;; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\\">存款偏离度是衡量银行存款波动的指标。2018年6月8日，银保监会联合央行发布《关于完善商业银行存款偏离度管理有关事项的通知》，从加强存款偏离度管理等五个方面进一步完善存款偏离度管理。</p>\r\n<p style=\\"margin: 0px 0px 20px; padding: 0px; border: 0px currentColor; border-image: none; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: SimSun, 宋体, &quot;Arial Narrow&quot;; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\\">虽然存款偏离度监管指标值由3%调整至4%，减轻了中小银行的揽储考核压力，但监管整体举措意在约束商业银行违规吸存、虚假增存和月末存款&ldquo;冲时点&rdquo;等行为。</p>\r\n<p style=\\"margin: 0px 0px 20px; padding: 0px; border: 0px currentColor; border-image: none; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: SimSun, 宋体, &quot;Arial Narrow&quot;; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\\">上述银行高管也认为，监管部门对于存贷款业务偏离度实施监管，促使银行业摈弃贪大求快、盲目扩张的发展模式。（来源：上海证券报）</p>'),
(7, 9, '', 1, 0, 0, 0, '', '', '', '北京时间29日凌晨，美国原油期货价格周五收跌，但本月涨幅超过9%。交易商仍在密切关注原油市场面临的各种不确定性因素。<br /><br />G20峰会正在召开。会议期间，一些与会大国领导人将就贸易等问题举行会谈。<br /><br />石油输出国组织（OPEC）成员国及其盟国将在下周召开会议，商讨原油产量问题并作出决定。<br /><br />纽约商品交易所8月交割的西德州中质原油(WTI)期货价格价格下跌96美分，或1.6%，收于58.47美元/桶。本周原油期货价格累计上涨1.8%。<br /><br />按照最活跃合约计算，6月份的WTI累计上涨9.3%。第二季度内，WTI原油累计下跌约2.8%。（来源：新浪美股）'),
(8, 9, '', 1, 0, 0, 0, '', '', '', '北京时间29日凌晨，黄金期货价格周五收高。本周金价逼近6年来的最高水平。在整个6月份当中，金价录得3年来的最大单月涨幅。<br /><br />《黄金通讯》编辑Brien Lundin表示：&ldquo;过去一个月内，随着美联储的货币政策立场从今年年初的鹰派惊人地转变到鸽派，投资者预期终于发生了改变，黄金价格也录得了巨大涨幅。&rdquo;<br /><br />他表示：&ldquo;投资者终于意识到，在未来很长时间内，我们将面临超低甚至负的实际利率，这对黄金来说是一个非常有利的上涨因素。&rdquo;<br /><br />纽约商品交易所8月交割的黄金期货价格上涨1.70美元，涨幅0.1%，收于1413.70美元/盎司。周四的黄金期货价格一度上涨至1418.70美元/盎司，为2013年8月28日以来的最高收盘价。<br /><br />黄金期货价格在过去一周累计上涨约1%。金价在6月上涨7.7%，为2016年6月以来的最大月度涨幅。第二季度的黄金期货价格上涨超过8%。（来源：新浪美股）'),
(9, 9, '', 1, 0, 0, 0, '', '', '', '经历了五月中下旬的25元/吨的煤价大幅下跌之后；六月上中旬，港口市场煤价相对稳定，市场煤价 格呈W式波动，保持震荡走势，即使出现过上涨或者下跌，涨幅和跌幅都不大。数据显示，六月初，环渤海港口5500和5000大卡市场动力煤实际交易价格分 别为596、508元/吨；而6月19日，港口5500和5000大卡市场动力煤实际交易价格分别为595、516元/吨，从价格变化上分析，5500大 卡市场动力煤价格变化不大，而5000大卡市场动力煤价格上涨了8元/吨。<br /><br />六月份上中旬，对市场有利和不利因素交织在一起，且实力 相当，促使港口煤价呈W式波动。从6月5日开始，水泥行业的错峰生产使得水泥行业用煤量的减少。此外，在高库存的情况下，电厂主要拉运长协煤炭，零星采购 市场煤，市场煤需求在下降。供给方面，受发运成本倒挂影响，贸易商发运积极性减弱，发运数量减少；而煤炭进入自燃期，部分蒙煤户发运量减少，造成大秦线和 蒙冀线发运数量下降。港口现货煤炭出现供需双低，交易量不多，但价格稳定。<br /><br />进入六月下旬，市场逐渐趋好，下游拉运积极性提高，助推煤价小幅 上涨。用煤高峰就要来到，电厂日耗逐渐恢复至中高位水平，贸易商发运成本继续保持倒挂等等支撑了港口煤价；此外，受环保和安全检查影响，煤炭企业生产和发 运受到一定影响，环渤海港口调进煤炭数量出现减少。在市场上，优质低硫煤出现紧缺，助推煤价上涨。截止6月26日，环渤海十大运煤港口合计存煤2301万 吨，较月初相比下降了290万吨；秦皇岛港和国投曹妃甸港存煤下降较多，其中，有&ldquo;煤炭价格风向标&rdquo;之称的秦皇岛港存煤一度降至533万吨，优质低硫煤种 出现缺货。<br /><br />南方部分地区气温升至30摄氏度，&ldquo;迎峰度夏&rdquo;用煤高峰已经到来；虽然进入夏季以后，水电和特高压等清洁能源发电也在增加，但总 体对能源的需求也在增加，南方电厂发电负荷增加、需求回升也在情理之中。预计本月底，沿海六大电厂日耗迅速恢复至65万吨以上高位，带动对煤炭需求的回 升。随着煤炭市场需求的转好，环渤海港口库存的低位运行，沿海地区煤炭拉运量的增加；上游对优质煤炭发运不能及时补充，助推港口煤价出现反弹，预计此轮煤 价涨幅能达到15元/吨。（来源：鄂尔多斯煤炭网）'),
(10, 9, '', 1, 0, 0, 0, '', '', '', '北京时间26日凌晨，美国原油期货价格周二收跌，在连续三个交易日攀升之后略有回落。原油市场交易商仍在密切关注美国与伊朗之间的紧张局势。<br /><br />分析师称，全球原油需求放缓以及美伊紧张局势对油价造成了影响，本周的G20峰会也备受关注。<br /><br />纽约商品交易所8月交割的西德州中质原油（WTI）期货价格下跌7美分，跌幅0.1%，收于57.83美元/桶。该期货周一收于57.90美元/桶，创5月29日以来的最高收盘价。上周WTI期货累计上涨8.8%，为2016年12月2日以来的最大单周涨幅。<br /><br />作为国际原油价格基准的伦敦洲际交易所8月布伦特原油期货价格上涨18美分，涨幅0.3%，报65.05美元/桶。该期货上周累计上涨超过5%。（来源：新浪美股）<br /><br /><br />&nbsp;'),
(11, 9, '', 1, 0, 0, 0, '', '', '', '北京时间19日凌晨，美国原油期货价格周二收高。国际贸易谈判可能取得进展的迹象，缓解了市场对未来原油需求可能放缓的担忧。<br /><br />出于相同的理由，周二美国股市大幅攀升，提振了风险投资偏好。<br /><br />纽约商品交易所7月交割的西德州中质原油（WTI）期货价格上涨1.97美元，涨幅3.8%，收于53.90美元/桶。按照FactSet数据，这是自6月7日以来即期WTI原油期货的最高收盘价。（来源：新浪美股）<br /><br /><br />&nbsp;'),
(12, 9, '', 1, 0, 0, 0, '', '', '', '近日，《关于做好地方政府专项债券发行及项目配套融资工作的通知》中，允许地方专项债作为项目资本金的消息，点燃了市场热情，A股方面，基建板块一度全线上涨；大宗商品方面，&ldquo;基建系&rdquo;期货也普遍大涨。<br /><br />业内人士表示，本次专项债新利好政策将会带动基建投资出现稳定回升，利好基础设施相关行业。此次新政除了支持现有基建项目资金的进一步落地之外，也有望助推未来新基建项目投资及开工的逐渐落地，从而长期利好基建行业。<br /><br />专项债新政助力基建回暖<br /><br />《通知》主要内容为加大逆周期调节力度，更好发挥地方政府专项债券的重要作用，着力加大对重点领域和薄弱环节的支持力度，增加有效投资、优化经济结构、稳定总需求，保持经济持续健康发展。这一高规格文件发布后，引发市场对基建投资回暖的预期。<br /><br />&ldquo;2018年我国基建投资明显下滑，累计同比增速从年初的最高超过11%下降至最低季节零增长的位置，也是拖累总体投资需求的最主要因素之一。后来中央采取一系列措施，包括加快基建投资项目落地、增加地方专项债发行等，从资产端和负债端两个方向稳定基建投资，基建投资增速从去年四季度开始回升。不过，今年二季度基建投资增速回升乏力，中央继续加大稳增长力度，包括发布上述《通知》。按照此前的逻辑来看，基建投资增速有望继续稳定回升。&rdquo;方正中期期货研究院宏观经济研究员李彦森表示。<br /><br />专项债增加资金用途能给基建投资方面带来多少增量？<br /><br />对此，招商证券建筑工程行业分析师郑晓刚、于泽群分析称，《通知》在五个方面做出了支持专项债融资工作。其中提出专项债可作为符合条件的重大项目资本金，据推算，截至目前地方专项债发行约为9000亿元，仍有1.25万亿元专项债额度。从往年专项债投资比例来看，其中近30%左右资金用于基建投资，下半年仍有3750亿元专项债可用于基建，假设有50%的资金用于重大项目资本金，常见的铁路项目资本金必须需要20%，大多数公路及轻轨项目资本金需要25%-30%，若分别按照1:3与1:4配套资金模式，下半年专项债带动资金约0.75万亿元-0.94万亿元，而2018年广义基建投资总额为17.6万亿元，占比达4.2%-5.3%。因此，预计全年基建投资有望再次回到8%左右增速。<br /><br />中信证券首席经济学家诸建芳也表示，此文件将有利于基建投资进一步企稳回升，信号和实际意义均显著，维持基建增速年末回升至8%上方的判断。<br /><br />哪些行业有望受益<br /><br />&ldquo;从国家统计局口径来看，基建投资回暖、基础设施相关行业将成为最大受益者，包括中游的铁路、船舶、航空航天和其他运输设备制造业，以及黑色金属和有色金属冶炼加工业等，上游的黑色和有色金属矿采选业也将受到一定的积极传导。&rdquo;李彦森表示。<br /><br />具体来看，李彦森解释称，建筑材料将最先受到影响，包括黑色、有色金属以及水泥等非金属材料。修建铁路和地铁等对钢材需求的提振作用，也会带动黑色产业链相关品种需求的增长。此外，在基建投资扩张的过程中，机械设备是另一个提振黑色金属需求的因素，同时这将对A股机械设备、电气设备等板块带来利好影响。<br /><br />山金期货研究所所长曹有明认为，基建投资增加，通常会使得钢铁、煤炭、水泥三个行业受益。基建潮起会增加对钢铁、水泥这两个主要大宗商品的需求，相应的也会提高对它们的上游产品如煤炭、铁矿石的需求。目前来看，由于煤炭生产成本比较固定，经过供给侧改革之后，煤炭价格整体维持在高位运行，煤炭企业效益相对来说更为稳定。而钢铁行业由于受到成本上升影响，吨钢利润已比之前有了较大幅度的下降，但也处于较高位置。水泥价格目前维持高位运行，未来仍有上涨空间。整体来看，预计煤炭、水泥板块表现更为亮眼，钢铁板块应该也会有表现的机会。<br /><br />&ldquo;除了铁路、地铁、水利工程、地下管廊等传统的基建项目之外，信息化建设相关的基建如5G等也不容忽视，这对于有色金属中的铜、锡等与电子行业关系紧密的品种有一定影响，并会对A股中的通信、电子、计算机等行业板块产生利好影响。&rdquo;李彦森表示。<br /><br />若从今年以来基建项目发展来看，国投安信期货黑色首席分析师曹颖表示，今年批复的各地基建项目规模较大，以公路、铁路、桥梁项目为主，对钢材、沥青、水泥等基建原材料都形成一定的需求提振。而本次专项债新利好政策大约可拉动1万亿左右基建项目投资额增量。按照往年基建投资额对钢材的需求消费量推算，约折合钢材需求2000万吨-3000万吨。<br /><br />黑色系行情可期<br /><br />就下半年基建项目发展而言，曹颖认为，除了支持现有基建项目资金的进一步落地之外，对新基建项目投资及开工的利好刺激需要一年以上的时间才能实现最终落地。因此，本次专项债政策的放宽主要影响中长期地方基建项目的融资，因此对下半年基建项目及基建用钢等原材料的需求拉动作用或较为有限。<br /><br />曹颖进一步表示，今年我国基建项目开工呈现显著的开工早、发力快的特征，这与财政政策、货币政策及产业政策多重利好提振离不开干系。今年年初财政支出力度较大，地方债也迅速提前放量发行，均支持地方基建项目的快速落地。但这些利好因素基本在今年上半年已经发力，边际效用开始递减，进一步提振有限。不过，地方政府专项债政策的适当放宽，将会进一步支持后续基建项目落地。<br /><br />展望后市，曹有明表示，预计未来一段时间，大宗商品将会呈现显著的分化走势。黑色系商品仍将维持在高位，即使有调整，空间预计也不大。而由于全球宏观经济下行风险加大，有色、化工商品可能会存在较大下行压力。虽然粕类已出现一轮上涨，但农产品整体仍处于低位，未来能否有较大的上涨行情，还要看7-8月份大豆产区天气情况。因此，相对来说，投资基建受益股如煤炭、水泥、钢铁板块股票将是个不错的选择。<br /><br />信达证券钢铁行业分析师认为，2019年下半年，钢铁行业超低排放标准的实施与&ldquo;常态化&rdquo;环保限产政策的执行，将使得钢材市场长期处于&ldquo;弱供给&rdquo;的供需结构。同时，城投公司发债、IPO的全面放开以及地方政府专项债发行政策的落实，将有效刺激地方基础设施建设投资，从而增大对于钢铁的需求。供需端的不平衡，预计将使得2019年钢材价格维持相对高位。产品价格的稳定，在一定程度上保证了企业的利润。因此，对钢铁行业维持&ldquo;看好&rdquo;评级。<br /><br />在李彦森看来，基建投资将对A股中的机械设备、电气设备、通信、电子、计算机等行业板块产生直接利好影响，甚至间接利好钢铁、有色金属等行业，但这是中长期的逻辑，具体每一个行业或板块需要具体分析。从基本面来看，基建投资增长将逐步向上游传导，进而影响企业收入增长，最终反映到利润层面可能需要数月甚至数年时间。不排除有短期炒作现象，但可能风险较大。因此，可以精选上述行业中的龙头企业，分多次逢低进行长线布局，注意把控风险。（来源：中国证券报&middot;中证网）'),
(15, 9, '', 1, 0, 0, 0, '', '', '', '近日，接受中国证券报记者采访的多位专家认为，我国货币政策将更加注重灵活性、前瞻性，降准有空间，但会根据经济内外部环境变化适时而动。央行将更多从公开市场操作方面维持流动性合理充裕，引导资金面平稳跨季，稳定市场预期。年中流动性料无忧。<br /><br />资金面料平稳<br /><br />多位专家表示，年中流动性总体仍将保持平稳。中信证券研究部固定收益首席分析师明明认为，年中流动性主要受三方面影响：一是季节性因素；二是到期因素，6月MLF到期量较大；三是外汇流动情况，需进一步观察。<br /><br />&ldquo;通过&lsquo;稳流动性&rsquo;进而&lsquo;稳预期&rsquo;成为央行阶段性目标。&rdquo;光大证券银行业首席分析师王一峰表示，央行通过滴灌呵护市场的意图较为明确，二季度流动性并无大碍。<br /><br />新时代证券首席经济学家潘向东表示，虽然流动性有缺口，但央行的货币政策工具较为丰富。从目前央行的定向降准以及二季度TMLF(定向中期借贷便利)操作可以看出，未来央行公开市场操作主要依靠&ldquo;TMLF+OMO(公开市场操作)+定向降准&rdquo;的方式来缓解流动性压力。<br /><br />王一峰表示，预计公开市场操作仍将滴灌，主要集中于月度例行缴税时点，对冲资金缺口，平滑资金利率波动。<br /><br />降准有空间<br /><br />多位专家认为，从内外部环境变化看，未来定向降准仍有空间，也不排除降息的可能性。<br /><br />潘向东介绍，随着澳大利亚央行三年来首次降息，美债收益率倒挂，美联储主席&ldquo;鸽派&rdquo;发声意味着未来美元有降息的可能性，全球流动性转向边际宽松，海外市场对货币政策约束进一步放松，为我国央行降息降准打开空间。<br /><br />潘 向东表示，央行可能通过利率市场化改革，下调LPR(贷款基础利率)、定向降准、降低TMLF操作利率等政策，甚至降准、降息来维持流动性稳定，以配合金 融供给侧结构性改革，降低中小微和民企融资成本。&ldquo;但由于我国2018年以来已多次降低存款准备金率，未来全面降准的空间有所压缩。&rdquo;<br /><br />明明认为，随着经济放缓和全球货币政策转松，适当下调政策利率，配合稳杠杆政策可以更好地稳定经济和提高经济质量。考虑到供给侧结构性改革，也可以进一步下调TMLF利率实现降低小微企业信贷综合融资成本的目标。<br /><br />但在兴业研究宏观分析师郭于玮看来，二季度CPI中枢相对较高，加之汇率仍受到外部不确定性的影响，近期降息可能性不大。<br /><br />总量稳健结构宽松<br /><br />王一峰表示，&ldquo;总量稳健、结构宽松&rdquo;将是货币政策实践操作的主要特征。央行在维持货币供给与名义经济增速基本匹配的情况下，更多通过定向调控工具的实施和改善信贷投放微观约束条件，逐步疏通货币政策传导渠道。<br /><br />&ldquo;货币政策将根据国内外经济形势的边际变化动态调整，从稳总量和调结构两方面发力。&rdquo;郭于玮认为，一方面，由于一季度社融增速显著回升，宏观杠杆率出现小幅上 升，为实现宏观杠杆率的稳定，下半年社融增速回升将相对温和。信贷投放节奏可能依据经济数据动态调整。另一方面，通过MPA考核等方式优化信贷投放结构， 引导金融资源流向小微企业、民营企业等薄弱环节。下半年通胀压力会减轻，不会对货币政策形成掣肘。<br /><br />潘向东表示，我国货币政策以内为主。货币政策在基调上可能更加中性，但可以结构性发力。（来源：中国证券报）'),
(16, 11, '', 1, 0, 0, 0, '', '', '', '<img src=\\"/d/file/3e702852eca52a7aeb793263ff0b3b01.jpg\\" /><br /><br />&nbsp;'),
(17, 11, '', 1, 0, 0, 0, '', '', '', '<img src=\\"/d/file/6584abe5e2bd9a5789ad8eba7b4d18e2.jpg\\" /><br /><br />&nbsp;'),
(18, 11, '', 1, 0, 0, 0, '', '', '', '<img src=\\"/d/file/f5bfb635f02ad2faf2ec7d1c7006bc7e.jpg\\" /><br />&nbsp;'),
(19, 5, '', 1, 0, 0, 0, '', '', '', '<img src=\\"/d/file/c41379d7ec39ec1fea8ab627e0ca6edf.jpg\\" />'),
(20, 5, '', 1, 0, 0, 0, '', '', '', '<img src=\\"/d/file/109f1d2940c4def32a40a00875a5e4f2.jpg\\" />'),
(21, 5, '', 1, 0, 0, 0, '', '', '', '<img src=\\"/d/file/9a0f556cebd7ebc4b4e8b2c908dd5660.jpg\\" />'),
(22, 5, '', 1, 0, 0, 0, '', '', '', '<img src=\\"/d/file/9b849cfb18e459fa2ee9627c84b197e0.jpg\\" />'),
(23, 5, '', 1, 0, 0, 0, '', '', '', '<img src=\\"/d/file/fa67cb3a55f7aaeac461a851db200979.jpg\\" />'),
(24, 5, '', 1, 0, 0, 0, '', '', '', '<img src=\\"/d/file/b569e7b96b8c006250f9b41dc4dfa998.jpg\\" />'),
(25, 6, '', 1, 0, 0, 0, '', '', '', '<img src=\\"/d/file/69461b413e413cc116c6a63b9dab6b31.jpg\\" />'),
(26, 6, '', 1, 0, 0, 0, '', '', '', '<img src=\\"/d/file/d1463c86535679ac53cba9b5ad2385f4.jpg\\" />'),
(27, 7, '', 1, 0, 0, 0, '', '', '', '<img src=\\"/d/file/61a7c4b6250d2ee7fb80f9de2a303223.jpg\\" />'),
(28, 6, '', 1, 0, 0, 0, '', '', '', '<img src=\\"/d/file/32aeda6d45bcd9ab57494e2e9429f247.jpg\\" />'),
(29, 6, '', 1, 0, 0, 0, '', '', '', '<img src=\\"/d/file/2a1d07742c036639ff0f10d4f7936f74.jpg\\" />'),
(30, 6, '', 1, 0, 0, 0, '', '', '', '<img src=\\"/d/file/39845ab98e12d2a16590460dc844059c.jpg\\" />'),
(31, 6, '', 1, 0, 0, 0, '', '', '', '<img src=\\"/d/file/3930002fbc5ec49763a76a47e77bc7f1.jpg\\" />'),
(32, 11, '', 1, 0, 0, 0, '', '', '', '<img src=\\"/d/file/045a7b99dcbc72989f24de9cfd955196.jpg\\" />'),
(33, 11, '', 1, 0, 0, 0, '', '', '', '<img src=\\"/d/file/dbefe1f9f14f10e6d87fd3d22478a596.jpg\\" />'),
(34, 11, '', 1, 0, 0, 0, '', '', '', '<img src=\\"/d/file/b3461fd00cef952dc4ba079e2bdd8ba7.jpg\\" />'),
(35, 8, '', 1, 0, 0, 0, '', '', '', '2019年以来，动力煤指数基本维持高位震荡。上半年，供应端存隐忧，价格重心一度抬升，但反弹高度有限。分析人士指出，进入下半年需求旺季，供应端隐忧仍在，三季度初期动力煤价格或延续震荡偏强走势，不过也需要警惕需求不及预期情况下价格回落的风险。<br />宝城期货研究指出，下半年保供应稳价格政策导向预计难改，动力煤市场优质产能加速释放，且中间环节成本下降，港口报价成本降低；一旦后期需求旺季不如市场预 期般乐观，煤炭价格将逐渐震荡回调为主。且在中间环节以及下游高库存有所缓解情况下，动力煤市场供需形势较2018年已有明显好转，价格很难有大幅走高动 力。价格中心或围绕530元/吨-650元/吨区间震荡整理。（来源：中证网）');
INSERT INTO `dayuqixiu_ecms_news_data_1` (`id`, `classid`, `keyid`, `dokey`, `newstempid`, `closepl`, `haveaddfen`, `infotags`, `writer`, `befrom`, `newstext`) VALUES
(36, 8, '', 1, 0, 0, 0, '', '', '', '<p style="margin: 0px 0px 20px; padding: 0px; border: 0px currentColor; border-image: none; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: SimSun, 宋体, &quot;Arial Narrow&quot;; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">拉存款，一直是银行每年季末时点必然上演的大戏。</p>\r\n<p style="margin: 0px 0px 20px; padding: 0px; border: 0px currentColor; border-image: none; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: SimSun, 宋体, &quot;Arial Narrow&quot;; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">尤其年中因为叠加季末因素，是银行拉存款&ldquo;冲时点&rdquo;的重要时间窗口。银行惯用的手段不仅包括定存送礼返现金等活动，还会推出具有较好预期收益率的理财产品。</p>\r\n<p style="margin: 0px 0px 20px; padding: 0px; border: 0px currentColor; border-image: none; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: SimSun, 宋体, &quot;Arial Narrow&quot;; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">不过，与往年不同的是，临近6月末，银行&ldquo;撩客户&rdquo;的热情比以往冷淡了不少。</p>\r\n<p style="margin: 0px 0px 20px; padding: 0px; border: 0px currentColor; border-image: none; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: SimSun, 宋体, &quot;Arial Narrow&quot;; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">银行为何&ldquo;不差钱&rdquo;</p>\r\n<p style="margin: 0px 0px 20px; padding: 0px; border: 0px currentColor; border-image: none; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: SimSun, 宋体, &quot;Arial Narrow&quot;; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">银行急于揽储往往会推高理财产品的收益。但最近，银行理财产品的预期收益率并未如期大涨，甚至很多产品预期收益率未突破5%。</p>\r\n<p style="margin: 0px 0px 20px; padding: 0px; border: 0px currentColor; border-image: none; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: SimSun, 宋体, &quot;Arial Narrow&quot;; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">据融360大数据研究院监测的数据显示，临近月末的两周，银行理财收益率继续下行，并没有因季末而有所回升。6月21日至6月26日，银行理财平均预期收益率为4.16%，较上周继续下行2BP。</p>\r\n<p style="margin: 0px 0px 20px; padding: 0px; border: 0px currentColor; border-image: none; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: SimSun, 宋体, &quot;Arial Narrow&quot;; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">同时，很多投资者发现，最近银行官网、微信公众号和网点宣传单等推介高息理财产品的活动并不多。</p>\r\n<p style="margin: 0px 0px 20px; padding: 0px; border: 0px currentColor; border-image: none; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: SimSun, 宋体, &quot;Arial Narrow&quot;; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">对于年中时点银行揽储相对平静的表现，普益标准研究员于康认为，市场资金宽裕以及银行理财净值转型期的阶段性原因，降低了银行揽储的意愿。</p>\r\n<p style="margin: 0px 0px 20px; padding: 0px; border: 0px currentColor; border-image: none; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: SimSun, 宋体, &quot;Arial Narrow&quot;; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">同时，央行近期的投放使得银行间流动性较为宽松，市场资金面较为充裕，整体上削弱了银行揽储的意愿。</p>\r\n<p style="margin: 0px 0px 20px; padding: 0px; border: 0px currentColor; border-image: none; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: SimSun, 宋体, &quot;Arial Narrow&quot;; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">6月24日，<a href="http://www.gtgqw.com/city/shanghai.html" style="color: rgb(0, 0, 255); text-decoration: none;">上海</a>同业拆放利率(Shibor)全线走低，其中隔夜Shibor跌11.2BP至1%，创下近10年来新低。6月中旬以来，DR007也在波动中下降。</p>\r\n<p style="margin: 0px 0px 20px; padding: 0px; border: 0px currentColor; border-image: none; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: SimSun, 宋体, &quot;Arial Narrow&quot;; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">阶段性的放松，是否意味着银行存款压力不存在了呢？</p>\r\n<p style="margin: 0px 0px 20px; padding: 0px; border: 0px currentColor; border-image: none; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: SimSun, 宋体, &quot;Arial Narrow&quot;; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">实际上，与大行和股份行网点多、客户基础好相比，城商行和农商行等中小型银行的揽储日子仍然难过。</p>\r\n<p style="margin: 0px 0px 20px; padding: 0px; border: 0px currentColor; border-image: none; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: SimSun, 宋体, &quot;Arial Narrow&quot;; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">利用高收益理财产品吸引资金来冲业绩的情况为何今年没有泛滥？</p>\r\n<p style="margin: 0px 0px 20px; padding: 0px; border: 0px currentColor; border-image: none; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: SimSun, 宋体, &quot;Arial Narrow&quot;; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">对此，于康认为，在净值转型期，银行理财揽储功用大幅降低。</p>\r\n<p style="margin: 0px 0px 20px; padding: 0px; border: 0px currentColor; border-image: none; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: SimSun, 宋体, &quot;Arial Narrow&quot;; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">&ldquo;预期收益型产品的硬性压降要求，导致很多银行不能通过提升预期收益产品收益类吸收资金，避免出现预期收益规模超过压降节奏的问题。&rdquo;于康认为，目前封闭式净值型产品的期限通常都在半年以上，也较难承担短期揽储任务。</p>\r\n<p style="margin: 0px 0px 20px; padding: 0px; border: 0px currentColor; border-image: none; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: SimSun, 宋体, &quot;Arial Narrow&quot;; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">年中时点，银行仍有一定的揽储压力，但随着产品类型的转化，揽储表现方式已有所变化。</p>\r\n<p style="margin: 0px 0px 20px; padding: 0px; border: 0px currentColor; border-image: none; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: SimSun, 宋体, &quot;Arial Narrow&quot;; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">监管调整指挥棒</p>\r\n<p style="margin: 0px 0px 20px; padding: 0px; border: 0px currentColor; border-image: none; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: SimSun, 宋体, &quot;Arial Narrow&quot;; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">&ldquo;高息揽储情况以前在银行业还是比较多的，但现在银行业的内部考核更注重实质效益和风险管控，也是银行业生存发展内生要求。&rdquo;西南地区某中小银行高管表示。</p>\r\n<p style="margin: 0px 0px 20px; padding: 0px; border: 0px currentColor; border-image: none; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: SimSun, 宋体, &quot;Arial Narrow&quot;; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">存款偏离度是衡量银行存款波动的指标。2018年6月8日，银保监会联合央行发布《关于完善商业银行存款偏离度管理有关事项的通知》，从加强存款偏离度管理等五个方面进一步完善存款偏离度管理。</p>\r\n<p style="margin: 0px 0px 20px; padding: 0px; border: 0px currentColor; border-image: none; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: SimSun, 宋体, &quot;Arial Narrow&quot;; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">虽然存款偏离度监管指标值由3%调整至4%，减轻了中小银行的揽储考核压力，但监管整体举措意在约束商业银行违规吸存、虚假增存和月末存款&ldquo;冲时点&rdquo;等行为。</p>\r\n<p style="margin: 0px 0px 20px; padding: 0px; border: 0px currentColor; border-image: none; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: SimSun, 宋体, &quot;Arial Narrow&quot;; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">上述银行高管也认为，监管部门对于存贷款业务偏离度实施监管，促使银行业摈弃贪大求快、盲目扩张的发展模式。（来源：上海证券报）</p>'),
(37, 8, '', 1, 0, 0, 0, '', '', '', '北京时间29日凌晨，美国原油期货价格周五收跌，但本月涨幅超过9%。交易商仍在密切关注原油市场面临的各种不确定性因素。<br /><br />G20峰会正在召开。会议期间，一些与会大国领导人将就贸易等问题举行会谈。<br /><br />石油输出国组织（OPEC）成员国及其盟国将在下周召开会议，商讨原油产量问题并作出决定。<br /><br />纽约商品交易所8月交割的西德州中质原油(WTI)期货价格价格下跌96美分，或1.6%，收于58.47美元/桶。本周原油期货价格累计上涨1.8%。<br /><br />按照最活跃合约计算，6月份的WTI累计上涨9.3%。第二季度内，WTI原油累计下跌约2.8%。（来源：新浪美股）'),
(38, 8, '', 1, 0, 0, 0, '', '', '', '北京时间29日凌晨，黄金期货价格周五收高。本周金价逼近6年来的最高水平。在整个6月份当中，金价录得3年来的最大单月涨幅。<br /><br />《黄金通讯》编辑Brien Lundin表示：&ldquo;过去一个月内，随着美联储的货币政策立场从今年年初的鹰派惊人地转变到鸽派，投资者预期终于发生了改变，黄金价格也录得了巨大涨幅。&rdquo;<br /><br />他表示：&ldquo;投资者终于意识到，在未来很长时间内，我们将面临超低甚至负的实际利率，这对黄金来说是一个非常有利的上涨因素。&rdquo;<br /><br />纽约商品交易所8月交割的黄金期货价格上涨1.70美元，涨幅0.1%，收于1413.70美元/盎司。周四的黄金期货价格一度上涨至1418.70美元/盎司，为2013年8月28日以来的最高收盘价。<br /><br />黄金期货价格在过去一周累计上涨约1%。金价在6月上涨7.7%，为2016年6月以来的最大月度涨幅。第二季度的黄金期货价格上涨超过8%。（来源：新浪美股）'),
(39, 8, '', 1, 0, 0, 0, '', '', '', '经历了五月中下旬的25元/吨的煤价大幅下跌之后；六月上中旬，港口市场煤价相对稳定，市场煤价 格呈W式波动，保持震荡走势，即使出现过上涨或者下跌，涨幅和跌幅都不大。数据显示，六月初，环渤海港口5500和5000大卡市场动力煤实际交易价格分 别为596、508元/吨；而6月19日，港口5500和5000大卡市场动力煤实际交易价格分别为595、516元/吨，从价格变化上分析，5500大 卡市场动力煤价格变化不大，而5000大卡市场动力煤价格上涨了8元/吨。<br /><br />六月份上中旬，对市场有利和不利因素交织在一起，且实力 相当，促使港口煤价呈W式波动。从6月5日开始，水泥行业的错峰生产使得水泥行业用煤量的减少。此外，在高库存的情况下，电厂主要拉运长协煤炭，零星采购 市场煤，市场煤需求在下降。供给方面，受发运成本倒挂影响，贸易商发运积极性减弱，发运数量减少；而煤炭进入自燃期，部分蒙煤户发运量减少，造成大秦线和 蒙冀线发运数量下降。港口现货煤炭出现供需双低，交易量不多，但价格稳定。<br /><br />进入六月下旬，市场逐渐趋好，下游拉运积极性提高，助推煤价小幅 上涨。用煤高峰就要来到，电厂日耗逐渐恢复至中高位水平，贸易商发运成本继续保持倒挂等等支撑了港口煤价；此外，受环保和安全检查影响，煤炭企业生产和发 运受到一定影响，环渤海港口调进煤炭数量出现减少。在市场上，优质低硫煤出现紧缺，助推煤价上涨。截止6月26日，环渤海十大运煤港口合计存煤2301万 吨，较月初相比下降了290万吨；秦皇岛港和国投曹妃甸港存煤下降较多，其中，有&ldquo;煤炭价格风向标&rdquo;之称的秦皇岛港存煤一度降至533万吨，优质低硫煤种 出现缺货。<br /><br />南方部分地区气温升至30摄氏度，&ldquo;迎峰度夏&rdquo;用煤高峰已经到来；虽然进入夏季以后，水电和特高压等清洁能源发电也在增加，但总 体对能源的需求也在增加，南方电厂发电负荷增加、需求回升也在情理之中。预计本月底，沿海六大电厂日耗迅速恢复至65万吨以上高位，带动对煤炭需求的回 升。随着煤炭市场需求的转好，环渤海港口库存的低位运行，沿海地区煤炭拉运量的增加；上游对优质煤炭发运不能及时补充，助推港口煤价出现反弹，预计此轮煤 价涨幅能达到15元/吨。（来源：鄂尔多斯煤炭网）'),
(40, 8, '', 1, 0, 0, 0, '', '', '', '北京时间26日凌晨，美国原油期货价格周二收跌，在连续三个交易日攀升之后略有回落。原油市场交易商仍在密切关注美国与伊朗之间的紧张局势。<br /><br />分析师称，全球原油需求放缓以及美伊紧张局势对油价造成了影响，本周的G20峰会也备受关注。<br /><br />纽约商品交易所8月交割的西德州中质原油（WTI）期货价格下跌7美分，跌幅0.1%，收于57.83美元/桶。该期货周一收于57.90美元/桶，创5月29日以来的最高收盘价。上周WTI期货累计上涨8.8%，为2016年12月2日以来的最大单周涨幅。<br /><br />作为国际原油价格基准的伦敦洲际交易所8月布伦特原油期货价格上涨18美分，涨幅0.3%，报65.05美元/桶。该期货上周累计上涨超过5%。（来源：新浪美股）<br /><br /><br />&nbsp;'),
(41, 8, '', 1, 0, 0, 0, '', '', '', '北京时间19日凌晨，美国原油期货价格周二收高。国际贸易谈判可能取得进展的迹象，缓解了市场对未来原油需求可能放缓的担忧。<br /><br />出于相同的理由，周二美国股市大幅攀升，提振了风险投资偏好。<br /><br />纽约商品交易所7月交割的西德州中质原油（WTI）期货价格上涨1.97美元，涨幅3.8%，收于53.90美元/桶。按照FactSet数据，这是自6月7日以来即期WTI原油期货的最高收盘价。（来源：新浪美股）<br /><br /><br />&nbsp;'),
(42, 8, '', 1, 0, 0, 0, '', '', '', '近日，《关于做好地方政府专项债券发行及项目配套融资工作的通知》中，允许地方专项债作为项目资本金的消息，点燃了市场热情，A股方面，基建板块一度全线上涨；大宗商品方面，&ldquo;基建系&rdquo;期货也普遍大涨。<br /><br />业内人士表示，本次专项债新利好政策将会带动基建投资出现稳定回升，利好基础设施相关行业。此次新政除了支持现有基建项目资金的进一步落地之外，也有望助推未来新基建项目投资及开工的逐渐落地，从而长期利好基建行业。<br /><br />专项债新政助力基建回暖<br /><br />《通知》主要内容为加大逆周期调节力度，更好发挥地方政府专项债券的重要作用，着力加大对重点领域和薄弱环节的支持力度，增加有效投资、优化经济结构、稳定总需求，保持经济持续健康发展。这一高规格文件发布后，引发市场对基建投资回暖的预期。<br /><br />&ldquo;2018年我国基建投资明显下滑，累计同比增速从年初的最高超过11%下降至最低季节零增长的位置，也是拖累总体投资需求的最主要因素之一。后来中央采取一系列措施，包括加快基建投资项目落地、增加地方专项债发行等，从资产端和负债端两个方向稳定基建投资，基建投资增速从去年四季度开始回升。不过，今年二季度基建投资增速回升乏力，中央继续加大稳增长力度，包括发布上述《通知》。按照此前的逻辑来看，基建投资增速有望继续稳定回升。&rdquo;方正中期期货研究院宏观经济研究员李彦森表示。<br /><br />专项债增加资金用途能给基建投资方面带来多少增量？<br /><br />对此，招商证券建筑工程行业分析师郑晓刚、于泽群分析称，《通知》在五个方面做出了支持专项债融资工作。其中提出专项债可作为符合条件的重大项目资本金，据推算，截至目前地方专项债发行约为9000亿元，仍有1.25万亿元专项债额度。从往年专项债投资比例来看，其中近30%左右资金用于基建投资，下半年仍有3750亿元专项债可用于基建，假设有50%的资金用于重大项目资本金，常见的铁路项目资本金必须需要20%，大多数公路及轻轨项目资本金需要25%-30%，若分别按照1:3与1:4配套资金模式，下半年专项债带动资金约0.75万亿元-0.94万亿元，而2018年广义基建投资总额为17.6万亿元，占比达4.2%-5.3%。因此，预计全年基建投资有望再次回到8%左右增速。<br /><br />中信证券首席经济学家诸建芳也表示，此文件将有利于基建投资进一步企稳回升，信号和实际意义均显著，维持基建增速年末回升至8%上方的判断。<br /><br />哪些行业有望受益<br /><br />&ldquo;从国家统计局口径来看，基建投资回暖、基础设施相关行业将成为最大受益者，包括中游的铁路、船舶、航空航天和其他运输设备制造业，以及黑色金属和有色金属冶炼加工业等，上游的黑色和有色金属矿采选业也将受到一定的积极传导。&rdquo;李彦森表示。<br /><br />具体来看，李彦森解释称，建筑材料将最先受到影响，包括黑色、有色金属以及水泥等非金属材料。修建铁路和地铁等对钢材需求的提振作用，也会带动黑色产业链相关品种需求的增长。此外，在基建投资扩张的过程中，机械设备是另一个提振黑色金属需求的因素，同时这将对A股机械设备、电气设备等板块带来利好影响。<br /><br />山金期货研究所所长曹有明认为，基建投资增加，通常会使得钢铁、煤炭、水泥三个行业受益。基建潮起会增加对钢铁、水泥这两个主要大宗商品的需求，相应的也会提高对它们的上游产品如煤炭、铁矿石的需求。目前来看，由于煤炭生产成本比较固定，经过供给侧改革之后，煤炭价格整体维持在高位运行，煤炭企业效益相对来说更为稳定。而钢铁行业由于受到成本上升影响，吨钢利润已比之前有了较大幅度的下降，但也处于较高位置。水泥价格目前维持高位运行，未来仍有上涨空间。整体来看，预计煤炭、水泥板块表现更为亮眼，钢铁板块应该也会有表现的机会。<br /><br />&ldquo;除了铁路、地铁、水利工程、地下管廊等传统的基建项目之外，信息化建设相关的基建如5G等也不容忽视，这对于有色金属中的铜、锡等与电子行业关系紧密的品种有一定影响，并会对A股中的通信、电子、计算机等行业板块产生利好影响。&rdquo;李彦森表示。<br /><br />若从今年以来基建项目发展来看，国投安信期货黑色首席分析师曹颖表示，今年批复的各地基建项目规模较大，以公路、铁路、桥梁项目为主，对钢材、沥青、水泥等基建原材料都形成一定的需求提振。而本次专项债新利好政策大约可拉动1万亿左右基建项目投资额增量。按照往年基建投资额对钢材的需求消费量推算，约折合钢材需求2000万吨-3000万吨。<br /><br />黑色系行情可期<br /><br />就下半年基建项目发展而言，曹颖认为，除了支持现有基建项目资金的进一步落地之外，对新基建项目投资及开工的利好刺激需要一年以上的时间才能实现最终落地。因此，本次专项债政策的放宽主要影响中长期地方基建项目的融资，因此对下半年基建项目及基建用钢等原材料的需求拉动作用或较为有限。<br /><br />曹颖进一步表示，今年我国基建项目开工呈现显著的开工早、发力快的特征，这与财政政策、货币政策及产业政策多重利好提振离不开干系。今年年初财政支出力度较大，地方债也迅速提前放量发行，均支持地方基建项目的快速落地。但这些利好因素基本在今年上半年已经发力，边际效用开始递减，进一步提振有限。不过，地方政府专项债政策的适当放宽，将会进一步支持后续基建项目落地。<br /><br />展望后市，曹有明表示，预计未来一段时间，大宗商品将会呈现显著的分化走势。黑色系商品仍将维持在高位，即使有调整，空间预计也不大。而由于全球宏观经济下行风险加大，有色、化工商品可能会存在较大下行压力。虽然粕类已出现一轮上涨，但农产品整体仍处于低位，未来能否有较大的上涨行情，还要看7-8月份大豆产区天气情况。因此，相对来说，投资基建受益股如煤炭、水泥、钢铁板块股票将是个不错的选择。<br /><br />信达证券钢铁行业分析师认为，2019年下半年，钢铁行业超低排放标准的实施与&ldquo;常态化&rdquo;环保限产政策的执行，将使得钢材市场长期处于&ldquo;弱供给&rdquo;的供需结构。同时，城投公司发债、IPO的全面放开以及地方政府专项债发行政策的落实，将有效刺激地方基础设施建设投资，从而增大对于钢铁的需求。供需端的不平衡，预计将使得2019年钢材价格维持相对高位。产品价格的稳定，在一定程度上保证了企业的利润。因此，对钢铁行业维持&ldquo;看好&rdquo;评级。<br /><br />在李彦森看来，基建投资将对A股中的机械设备、电气设备、通信、电子、计算机等行业板块产生直接利好影响，甚至间接利好钢铁、有色金属等行业，但这是中长期的逻辑，具体每一个行业或板块需要具体分析。从基本面来看，基建投资增长将逐步向上游传导，进而影响企业收入增长，最终反映到利润层面可能需要数月甚至数年时间。不排除有短期炒作现象，但可能风险较大。因此，可以精选上述行业中的龙头企业，分多次逢低进行长线布局，注意把控风险。（来源：中国证券报&middot;中证网）'),
(43, 8, '', 1, 0, 0, 0, '', '', '', '北京时间19日凌晨，黄金期货价格周二攀升并收于14个月来最高水平。欧洲央行行长马里奥-德拉吉（Mario Draghi）的讲话为降息搭好了舞台。<br /><br />美联储从周二开始召开货币政策会议，将在周三公布利率决定并举行新闻发布会。<br /><br />Forex.com公司技术分析师Fawad Razaqzada表示，尽管他预计美联储不会在周三宣布降息，但&ldquo;它很有可能会让市场为迎接7月降息做好准备&rdquo;。<br /><br />他表示，借贷成本的降低对黄金及白银等不提供收益率的商品期货有好处。<br /><br />周二，纽约商品交易所8月交割的黄金期货价格上涨7.80美元，涨幅0.6%，收于1350.70美元/盎司。按FactSet提供的数据，按最活跃合约计算，这是自2018年4月18日以来的黄金期货的最高收盘价。<br /><br />欧洲央行行长德拉吉在周二表示，欧洲央行最早可能会在7月份召开的下次货币政策会议上推出更多刺激措施。德拉吉的讲话使美元兑欧元走软，并推动了大多数股指攀升。（来源：新浪美股）'),
(44, 8, '', 1, 0, 0, 0, '', '', '', '煤炭行业供给侧改革政策的推行，让中国煤炭行业呈现新格局。<br /><br />易煤价格指数 显示，截至5月31日，山西大同地区主流煤矿坑口价为428元/吨，较5月初下跌17元/吨，跌幅3.8%；内蒙古地区主流煤矿坑口价为379元/吨左 右，较5月初下跌16元/吨，跌幅4.1%；陕西榆林地区主流煤矿坑口价为476元/吨，较5月初下跌45元/吨，跌幅9.5%。但进入六月后，动力煤与 坑口煤价又有小幅回弹。<br /><br />&ldquo;从历史数据分析来看，尽管最近几年煤炭价格出现过短时间内的快速上升，供应有适度偏紧的情况，也出现过阶段性的煤 炭供过于求，煤炭价格快速下滑的情况，不过从供需形势看，全国煤炭产能严重过剩，产量基本供求平衡市场形势不会有大的改变。&rdquo;6月14日，煤炭专家李朝林 在接受21世纪经济报道记者采访时表示，由于国家宏观调控，煤炭的产量和煤炭的消费量受到限制，煤炭供求大体趋于平衡，煤炭价格基本稳定。而煤价短期因供 需关系调整产生震荡后，在中长期或将维持稳定。<br /><br />下游需求分化<br /><br />每年5月份起，我国发电厂进入发电旺季，但今年我国发电增速下滑 趋势明显。数据显示，5月份，发电5589亿千瓦时，同比增长0.2%，增速较上月回落3.6个百分点，较去年同期回落9.6个百分点。今年1-5月份， 发电2.8万亿千瓦时，增长3.3%，增速较去年同期回落5.2个百分点。<br /><br />发电增速趋缓的背后，我国下游动力煤价格进入下行通道，内蒙地区出现减产，销售整体趋于平淡，煤矿库存较高，坑口价稳中趋弱，但呈现一定波动。<br /><br />煤炭网数据显示，进入6月份后，秦皇岛5000混煤6月3日价格为507元/吨，周环比上涨6元，天津港5000大卡煤价508元/吨，周环比上涨6元；河北曹妃甸动力煤(Q5000)价格为513元/吨，京唐港动力末煤5000价格也为513元/吨，周环比上涨6元。<br /><br />&ldquo;我国煤炭行业的发展与政策、市场、安全直接相关，具体表现在煤炭供求关系上。&rdquo;李朝林如此表示。<br /><br />2018 年，我国煤炭市场供需实现基本平衡。中煤协发布的《2018煤炭行业发展年度报告》显示，2018年，我国煤炭消费总量约38.8亿吨，同比增加1%，其 中电力行业全年耗煤21亿吨左右，钢铁行业耗煤6.2亿吨，建筑钢材行业耗煤5亿吨，化工行业耗煤2.8 亿吨，其他行业耗煤约3.8亿吨，减少约6000万吨，4大行业消费量占比分别为54%、16%、13%和7%，合计为 90%。据公开数据，2018年全国煤炭消费量同比增长1%。<br /><br />但在2019年，我国煤炭行业的需求有所分化。其中，因发电整体增速下滑以及水电挤占，火电行业消费增速放慢，而环保政策调整下钢铁、建筑钢材行业需求增速加快。<br /><br />另一方面，进入6月以来，各地也相继公布了水泥行业夏季错峰安排。其中，山东省6月1-20日错峰20天，河南6月停产1个月，山西夏季停窑20天，陕西夏季限产30%，唐山水泥企业整个6月份都处在第二阶段错峰限产中，第二阶段停产时间为4月1日至9月底。<br /><br />这种情况下，以水泥为代表的化工厂等周边需求减少导致煤炭地销量减少，叠加港口煤价下行，各地煤矿库存逐步出现积压。<br /><br />但地产投资维持较高增速是今年拉动煤炭需求的主要原因。<br /><br />2018 年地产投资强劲拉动煤炭需求增长。2018年前11月地产投资增速由2017年7.0%提升至9.7%。房地产新开工面积增速由2017年的7%提升至 2018年前11月的16.8%，表明当下开发商开工建设积极。商品房待售面积继续下降，由2017年底的5.89亿平方米下降至5.26亿平方米，房地 产继续去库存。<br /><br />民生证券研究员黄彤分析称，下游需求持续走弱，高库存下电厂外购补库需求不大，到港煤船继续保持低位。前期动力煤现货价格持续下跌，若下跌至580-600元/吨的长协价格区间，则电力企业更倾向于采购现货，且夏季用煤高峰即将到来，预计下旬煤价有望小幅探涨。<br /><br />煤价趋稳<br /><br />改变过去的暴涨暴跌的行情，我国煤价进入相对稳定周期，而在业内看来，这是我国煤炭行业供给侧改革政策推行的具体表现。<br /><br />据统计，在2016至2018年，我国共计退出过剩产能6.9亿吨。新投产产能约3亿吨，新旧产能更迭，产能结构优化。<br /><br />这种供给侧结构性改革，还让煤炭企业财务结构优化。<br /><br />2016年至2019年3月，煤炭采掘业从业人数由442万人下降至294万人，下降33%。受益于煤价上涨，和人员去化成本下降影响，煤炭企业盈利能力大幅改善。<br /><br />数 据显示，2018年有息负债规模首次下滑，由2017年的2.28万亿元，减少至2.07万亿元。随之资产负债率水平稳步下滑，2017年煤炭集团平均资 产负债率约为71.26%，下降2个百分点，而进入2018年继续下滑1.4个百分点，下降至69.85%，&ldquo;去杠杆&rdquo;效果明显。<br /><br />从供应端来看，今年的产能供应情况并无大的变化。<br /><br />今年，受煤矿主产区加强安检力度影响，1-4月份全国原煤累计产量11.1亿吨，同比增长0.6%，产出释放缓慢。<br /><br />&ldquo;通过供需平衡表预测，2019年煤炭行业新增供给基本被新增需求消化掉，供需实现基本平衡。&rdquo;李朝林表示：&ldquo;所以除了局部或区域性会出现特殊情况，整体来说，煤价的稳定是大趋势。&rdquo;<br /><br />事 实上，在业界来看，平稳运行将是今后煤炭市场主旋律。2018年11月30日，国家发改委发布了《关于做好2019年煤炭中长期合同签订履行有关工作的通 知》，引导煤炭供求企业及早签订数量相对固定、价格机制明确的中长期煤炭供求合同，鼓励支持企业签订更多的2年及以上量价齐全的中长期合同。<br /><br />但夏季消费处于消费旺季，弘业期货股份有限公司分析师吴勇在其研报中预测指出：旺季渐入，煤炭价格有望探底回升。而增幅空间还需要根据下游用户的需求情况。<br /><br />但河南利源焦化有限公司销售部部长郭五生依然认为：&ldquo;下游的需求旺盛或者疲弱，也就是说是否处于用煤高峰期，对煤价的波动并不会带来太大影响。以我公司的采购状况来看，煤价目前都是基本维持稳定的。&rdquo;<br /><br />值得注意的是，煤炭的消费空间相对有限。<br /><br />李 朝林指出，由于我国化石性能源赋存特点是富煤贫油少气，煤炭一直是工业发展最重要的战略燃料，以煤为主的能源结构不可能短期内改变，将会在相当长的时间内 存在，不过，由于煤炭的大量使用加重了我国环境及空气污染的强度，因此，国家提出了限制煤炭消费总量，保护环境的目标。未来，我国煤炭的生产量和消费量都 相对受限，煤炭消费被石油、天然气等低污染能源代替，水能、核能、太阳能、风能等环保新能源的推广使用也进一步压缩煤炭的使用空间，&ldquo;随着技术的进步，新 能源发电成本不断降低，替代煤发电的速度加快，煤炭消费比重及消费总量，消费空间将不断压缩。&rdquo;（来源：21世纪经济报道）'),
(45, 8, '', 1, 0, 0, 0, '', '', '', '近日，接受中国证券报记者采访的多位专家认为，我国货币政策将更加注重灵活性、前瞻性，降准有空间，但会根据经济内外部环境变化适时而动。央行将更多从公开市场操作方面维持流动性合理充裕，引导资金面平稳跨季，稳定市场预期。年中流动性料无忧。<br /><br />资金面料平稳<br /><br />多位专家表示，年中流动性总体仍将保持平稳。中信证券研究部固定收益首席分析师明明认为，年中流动性主要受三方面影响：一是季节性因素；二是到期因素，6月MLF到期量较大；三是外汇流动情况，需进一步观察。<br /><br />&ldquo;通过&lsquo;稳流动性&rsquo;进而&lsquo;稳预期&rsquo;成为央行阶段性目标。&rdquo;光大证券银行业首席分析师王一峰表示，央行通过滴灌呵护市场的意图较为明确，二季度流动性并无大碍。<br /><br />新时代证券首席经济学家潘向东表示，虽然流动性有缺口，但央行的货币政策工具较为丰富。从目前央行的定向降准以及二季度TMLF(定向中期借贷便利)操作可以看出，未来央行公开市场操作主要依靠&ldquo;TMLF+OMO(公开市场操作)+定向降准&rdquo;的方式来缓解流动性压力。<br /><br />王一峰表示，预计公开市场操作仍将滴灌，主要集中于月度例行缴税时点，对冲资金缺口，平滑资金利率波动。<br /><br />降准有空间<br /><br />多位专家认为，从内外部环境变化看，未来定向降准仍有空间，也不排除降息的可能性。<br /><br />潘向东介绍，随着澳大利亚央行三年来首次降息，美债收益率倒挂，美联储主席&ldquo;鸽派&rdquo;发声意味着未来美元有降息的可能性，全球流动性转向边际宽松，海外市场对货币政策约束进一步放松，为我国央行降息降准打开空间。<br /><br />潘 向东表示，央行可能通过利率市场化改革，下调LPR(贷款基础利率)、定向降准、降低TMLF操作利率等政策，甚至降准、降息来维持流动性稳定，以配合金 融供给侧结构性改革，降低中小微和民企融资成本。&ldquo;但由于我国2018年以来已多次降低存款准备金率，未来全面降准的空间有所压缩。&rdquo;<br /><br />明明认为，随着经济放缓和全球货币政策转松，适当下调政策利率，配合稳杠杆政策可以更好地稳定经济和提高经济质量。考虑到供给侧结构性改革，也可以进一步下调TMLF利率实现降低小微企业信贷综合融资成本的目标。<br /><br />但在兴业研究宏观分析师郭于玮看来，二季度CPI中枢相对较高，加之汇率仍受到外部不确定性的影响，近期降息可能性不大。<br /><br />总量稳健结构宽松<br /><br />王一峰表示，&ldquo;总量稳健、结构宽松&rdquo;将是货币政策实践操作的主要特征。央行在维持货币供给与名义经济增速基本匹配的情况下，更多通过定向调控工具的实施和改善信贷投放微观约束条件，逐步疏通货币政策传导渠道。<br /><br />&ldquo;货币政策将根据国内外经济形势的边际变化动态调整，从稳总量和调结构两方面发力。&rdquo;郭于玮认为，一方面，由于一季度社融增速显著回升，宏观杠杆率出现小幅上 升，为实现宏观杠杆率的稳定，下半年社融增速回升将相对温和。信贷投放节奏可能依据经济数据动态调整。另一方面，通过MPA考核等方式优化信贷投放结构， 引导金融资源流向小微企业、民营企业等薄弱环节。下半年通胀压力会减轻，不会对货币政策形成掣肘。<br /><br />潘向东表示，我国货币政策以内为主。货币政策在基调上可能更加中性，但可以结构性发力。（来源：中国证券报）');

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_ecms_news_doc`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_ecms_news_doc` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ttid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `onclick` int(10) unsigned NOT NULL DEFAULT '0',
  `plnum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `totaldown` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `newspath` char(20) NOT NULL DEFAULT '',
  `filename` char(36) NOT NULL DEFAULT '',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` char(20) NOT NULL DEFAULT '',
  `firsttitle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `isgood` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `isqf` tinyint(1) NOT NULL DEFAULT '0',
  `ismember` tinyint(1) NOT NULL DEFAULT '0',
  `isurl` tinyint(1) NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  `groupid` smallint(6) NOT NULL DEFAULT '0',
  `userfen` smallint(5) unsigned NOT NULL DEFAULT '0',
  `titlefont` char(14) NOT NULL DEFAULT '',
  `titleurl` char(200) NOT NULL DEFAULT '',
  `stb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `fstb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `restb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `keyboard` char(80) NOT NULL DEFAULT '',
  `title` char(100) NOT NULL DEFAULT '',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `titlepic` char(120) NOT NULL DEFAULT '',
  `eckuid` int(11) NOT NULL DEFAULT '0',
  `ftitle` char(120) NOT NULL DEFAULT '',
  `smalltext` char(255) NOT NULL DEFAULT '',
  `diggtop` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `newstime` (`newstime`),
  KEY `ttid` (`ttid`),
  KEY `firsttitle` (`firsttitle`),
  KEY `isgood` (`isgood`),
  KEY `ispic` (`ispic`),
  KEY `useridis` (`userid`,`ismember`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_ecms_news_doc_data`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_ecms_news_doc_data` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `keyid` varchar(255) NOT NULL DEFAULT '',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `newstempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `haveaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `infotags` varchar(80) NOT NULL DEFAULT '',
  `writer` varchar(30) NOT NULL DEFAULT '',
  `befrom` varchar(60) NOT NULL DEFAULT '',
  `newstext` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_ecms_news_doc_index`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_ecms_news_doc_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `checked` (`checked`),
  KEY `newstime` (`newstime`),
  KEY `truetime` (`truetime`,`id`),
  KEY `havehtml` (`classid`,`truetime`,`havehtml`,`checked`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_ecms_news_index`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_ecms_news_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `checked` (`checked`),
  KEY `newstime` (`newstime`),
  KEY `truetime` (`truetime`,`id`),
  KEY `havehtml` (`classid`,`truetime`,`havehtml`,`checked`,`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=46 ;

--
-- 转存表中的数据 `dayuqixiu_ecms_news_index`
--

INSERT INTO `dayuqixiu_ecms_news_index` (`id`, `classid`, `checked`, `newstime`, `truetime`, `lastdotime`, `havehtml`) VALUES
(1, 15, 1, 1615814020, 1615814116, 1615891955, 1),
(2, 16, 1, 1615814122, 1615814190, 1615814190, 1),
(3, 17, 1, 1615814198, 1615814216, 1615814216, 1),
(4, 18, 1, 1615814269, 1615814312, 1615891966, 1),
(5, 9, 1, 1615815050, 1615815073, 1615815073, 1),
(6, 9, 1, 1615815096, 1615815129, 1615815129, 1),
(7, 9, 1, 1615815131, 1615815156, 1615815156, 1),
(8, 9, 1, 1615815158, 1615815193, 1615815193, 1),
(9, 9, 1, 1615815195, 1615815227, 1615815227, 1),
(10, 9, 1, 1615815229, 1615815254, 1615815254, 1),
(11, 9, 1, 1615815269, 1615815282, 1615815282, 1),
(12, 9, 1, 1615815285, 1615815313, 1615815313, 1),
(15, 9, 1, 1615815391, 1615815407, 1615887250, 1),
(16, 11, 1, 1615875373, 1615875624, 1615883569, 1),
(17, 11, 1, 1615875630, 1615875680, 1615883551, 1),
(18, 11, 1, 1615875681, 1615875752, 1615883516, 1),
(19, 5, 1, 1615875905, 1615875949, 1615885792, 1),
(20, 5, 1, 1615875950, 1615875984, 1615885787, 1),
(21, 5, 1, 1615876018, 1615876037, 1615885781, 1),
(22, 5, 1, 1615876049, 1615876068, 1615885777, 1),
(23, 5, 1, 1615876079, 1615876097, 1615885771, 1),
(24, 5, 1, 1615876105, 1615876124, 1615885766, 1),
(25, 6, 1, 1615876163, 1615876177, 1615885759, 1),
(26, 6, 1, 1615876200, 1615876246, 1615885754, 1),
(27, 7, 1, 1615876270, 1615876297, 1615886419, 1),
(28, 6, 1, 1615876334, 1615876367, 1615885748, 1),
(29, 6, 1, 1615876370, 1615876403, 1615885743, 1),
(30, 6, 1, 1615876426, 1615876451, 1615885736, 1),
(31, 6, 1, 1615876452, 1615876478, 1615885731, 1),
(32, 11, 1, 1615883154, 1615883242, 1615883527, 1),
(33, 11, 1, 1615883253, 1615883299, 1615883535, 1),
(34, 11, 1, 1615883315, 1615883360, 1615883464, 1),
(35, 8, 1, 1615815050, 1615887112, 1615887112, 1),
(36, 8, 1, 1615815096, 1615887112, 1615887112, 1),
(37, 8, 1, 1615815131, 1615887112, 1615887112, 1),
(38, 8, 1, 1615815158, 1615887112, 1615887112, 1),
(39, 8, 1, 1615815195, 1615887112, 1615887112, 1),
(40, 8, 1, 1615815229, 1615887112, 1615887112, 1),
(41, 8, 1, 1615815269, 1615887112, 1615887112, 1),
(42, 8, 1, 1615815285, 1615887112, 1615887112, 1),
(43, 8, 1, 1615815315, 1615887112, 1615887112, 1),
(44, 8, 1, 1615815343, 1615887112, 1615887112, 1),
(45, 8, 1, 1615728991, 1615887112, 1615887779, 1);

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsad`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsad` (
  `adid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `picurl` varchar(255) NOT NULL DEFAULT '',
  `url` text NOT NULL,
  `pic_width` int(10) unsigned NOT NULL DEFAULT '0',
  `pic_height` int(10) unsigned NOT NULL DEFAULT '0',
  `onclick` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `adtype` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `target` varchar(10) NOT NULL DEFAULT '',
  `alt` varchar(120) NOT NULL DEFAULT '',
  `starttime` date NOT NULL DEFAULT '0000-00-00',
  `endtime` date NOT NULL DEFAULT '0000-00-00',
  `adsay` varchar(255) NOT NULL DEFAULT '',
  `titlefont` varchar(14) NOT NULL DEFAULT '',
  `titlecolor` varchar(10) NOT NULL DEFAULT '',
  `htmlcode` text NOT NULL,
  `t` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ylink` tinyint(1) NOT NULL DEFAULT '0',
  `reptext` text NOT NULL,
  PRIMARY KEY (`adid`),
  KEY `classid` (`classid`),
  KEY `t` (`t`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsadclass`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsadclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` char(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `dayuqixiu_enewsadclass`
--

INSERT INTO `dayuqixiu_enewsadclass` (`classid`, `classname`) VALUES
(1, '默认广告分类');

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsadminstyle`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsadminstyle` (
  `styleid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `stylename` char(30) NOT NULL DEFAULT '',
  `path` smallint(5) unsigned NOT NULL DEFAULT '0',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`styleid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `dayuqixiu_enewsadminstyle`
--

INSERT INTO `dayuqixiu_enewsadminstyle` (`styleid`, `stylename`, `path`, `isdefault`) VALUES
(1, '管理员后台界面', 1, 1),
(2, '编辑后台界面', 2, 0);

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsag`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsag` (
  `agid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `agname` varchar(60) NOT NULL DEFAULT '',
  `isadmin` tinyint(1) NOT NULL DEFAULT '0',
  `auids` text NOT NULL,
  PRIMARY KEY (`agid`),
  KEY `isadmin` (`isadmin`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `dayuqixiu_enewsag`
--

INSERT INTO `dayuqixiu_enewsag` (`agid`, `agname`, `isadmin`, `auids`) VALUES
(1, '管理员', 9, ''),
(2, '版主', 5, '');

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsautodo`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsautodo` (
  `doid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `dotype` char(50) NOT NULL DEFAULT '',
  `classid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `tid` int(10) unsigned NOT NULL DEFAULT '0',
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `dotime` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `pid` int(11) NOT NULL DEFAULT '0',
  `ckstr` char(32) NOT NULL DEFAULT '',
  `fname` char(255) NOT NULL DEFAULT '',
  `ecmspno` char(32) NOT NULL DEFAULT '',
  `ckpass` char(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`doid`),
  KEY `userid` (`userid`),
  KEY `pid` (`pid`),
  KEY `dotime` (`dotime`),
  KEY `ckstr` (`ckstr`),
  KEY `ecmspno` (`ecmspno`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsbefrom`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsbefrom` (
  `befromid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `sitename` char(60) NOT NULL DEFAULT '',
  `siteurl` char(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`befromid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsbq`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsbq` (
  `bqid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `bqname` varchar(60) NOT NULL DEFAULT '',
  `bqsay` text NOT NULL,
  `funname` varchar(60) NOT NULL DEFAULT '',
  `bq` varchar(60) NOT NULL DEFAULT '',
  `issys` tinyint(1) NOT NULL DEFAULT '0',
  `bqgs` text NOT NULL,
  `isclose` tinyint(1) NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `myorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bqid`),
  KEY `classid` (`classid`),
  KEY `isclose` (`isclose`),
  KEY `myorder` (`myorder`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=32 ;

--
-- 转存表中的数据 `dayuqixiu_enewsbq`
--

INSERT INTO `dayuqixiu_enewsbq` (`bqid`, `bqname`, `bqsay`, `funname`, `bq`, `issys`, `bqgs`, `isclose`, `classid`, `myorder`) VALUES
(1, '文字调用标签', '<table border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\" width=\\"100%\\" bgcolor=\\"#dbeaf5\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\"center\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">栏目ID</div>\r\n            </td>\r\n            <td height=\\"25\\">查看栏目ID点<a onclick=\\"window.open(\\''../ListClass.php?[!--ehash--]\\'');\\"><strong><u>这里</u></strong></a>，查看标题分类ID点<a onclick=\\"window.open(\\''../info/InfoType.php?[!--ehash--]\\'');\\"><strong><u>这里</u></strong></a>,当前ID=\\''selfinfo\\''<br />\r\n            多个栏目ID与标题分类ID可用,号格开，如\\''1,2\\''</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示条数</div>\r\n            </td>\r\n            <td height=\\"25\\">显示前几条记录</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">标题截取数</div>\r\n            </td>\r\n            <td height=\\"25\\">截取几个字符</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">是否显示时间</div>\r\n            </td>\r\n            <td height=\\"25\\">是否在标题后显示时间，0为不显示，1为显示</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">操作类型</div>\r\n            </td>\r\n            <td height=\\"25\\">具体看操作类型说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">是否显示栏目名</div>\r\n            </td>\r\n            <td height=\\"25\\">0为不显示，1为显示</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">时间格式化</div>\r\n            </td>\r\n            <td height=\\"25\\">形式：Y-m-d H:i:s．默认为：\\''(m-d)\\''</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">附加SQL条件</div>\r\n            </td>\r\n            <td height=\\"25\\">附加调用条件，如：&quot;title=\\''帝国\\''&quot;</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示排序</div>\r\n            </td>\r\n            <td height=\\"25\\">可指定按相应的字段排序，如：&quot;id desc&quot;</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td colspan=\\"2\\">\r\n            <div align=\\"center\\">（注：在栏目ID中写大栏目，系统会自己搜索子栏目的信息）</div>\r\n            </td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_GetClassNews', 'phomenews', 1, '[phomenews]栏目ID,显示条数,标题截取数,是否显示时间,操作类型,是否显示栏目名,\\''时间格式化\\'',附加SQL条件,显示排序[/phomenews]', 0, 1, 9),
(22, '留言板调用', '<table border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\" width=\\"100%\\" bgcolor=\\"#dbeaf5\\">\r\n    <tbody>\r\n        <tr>\r\n            <td width=\\"40%\\">\r\n            <div align=\\"center\\">参数</div>\r\n            </td>\r\n            <td width=\\"60%\\">参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示信息数</div>\r\n            </td>\r\n            <td height=\\"25\\">显示记录数</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">标签模板ID</div>\r\n            </td>\r\n            <td height=\\"25\\">\r\n            <div align=\\"left\\">查看标签模板ID点<a onclick=\\"window.open(\\''ListBqtemp.php?[!--ehash--]\\'');\\"><strong><u>这里</u></strong></a></div>\r\n            </td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">&nbsp;</div>\r\n            </td>\r\n            <td height=\\"25\\">模板标签变量说明：<br />\r\n            留言ID：[!--lyid--]，留言内容：[!--lytext--]<br />\r\n            回复内容：[!--retext--]，留言时间：[!--lytime--]<br />\r\n            留言者：[!--name--]，留言者邮箱：[!--email--]<br />\r\n            序号：[!--no--]</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">留言分类ID</div>\r\n            </td>\r\n            <td height=\\"25\\">\r\n            <div align=\\"left\\">点击<strong><a onclick=\\"window.open(\\''../tool/GbookClass.php?[!--ehash--]\\'');\\">这里</a></strong>查看分类ID，0为不限制</div>\r\n            </td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_ShowLyInfo', 'gbookinfo', 1, '[gbookinfo]显示信息数,标签模板ID,留言分类ID[/gbookinfo]', 0, 3, 5),
(23, '专题调用标签', '<table border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\" width=\\"100%\\" bgcolor=\\"#dbeaf5\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\"center\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">\r\n            <div align=\\"center\\">标签模板ID</div>\r\n            </div>\r\n            </td>\r\n            <td height=\\"25\\">查看标签模板ID点<a onclick=\\"window.open(\\''ListBqtemp.php?[!--ehash--]\\'');\\"><strong><u>这里</u></strong></a></td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">&nbsp;</div>\r\n            </td>\r\n            <td height=\\"25\\">\r\n            <p>模板标签变量说明：(list.var)<br />\r\n            [!--classurl--]：专题链接，[!--classname--]：专题名称<br />\r\n            [!--classid--]：专题id，[!--classimg--]：专题图片<br />\r\n            [!--intro--]：专题简介,[!--no--]：序号</p>\r\n            </td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">专题类别ID</div>\r\n            </td>\r\n            <td height=\\"25\\">\r\n            <div align=\\"left\\">点击<strong><a onclick=\\"window.open(\\''../special/ListZtClass.php?[!--ehash--]\\'');\\">这里</a></strong>查看分类ID，0为不限制，多个分类ID用逗号隔开，如\\''1,2\\''</div>\r\n            </td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示专题数</div>\r\n            </td>\r\n            <td height=\\"25\\">0为不限制</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">所属栏目ID</div>\r\n            </td>\r\n            <td height=\\"25\\">点击<strong><a onclick=\\"window.open(\\''../ListClass.php?[!--ehash--]\\'');\\">这里</a></strong>查看栏目ID，0为不限制，多个栏目ID用逗号隔开，如\\''1,2\\''</td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_ShowZtData', 'eshowzt', 1, '[eshowzt]标签模板ID,专题类别ID,显示专题数,所属栏目ID[/eshowzt]', 0, 2, 6),
(2, '图文信息调用(标题图片的信息)', '<table border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\" width=\\"100%\\" bgcolor=\\"#dbeaf5\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\"center\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">栏目ID</div>\r\n            </td>\r\n            <td height=\\"25\\">查看栏目ID点<a onclick=\\"window.open(\\''../ListClass.php?[!--ehash--]\\'');\\"><strong><u>这里</u></strong></a>，查看标题分类ID点<a onclick=\\"window.open(\\''../info/InfoType.php?[!--ehash--]\\'');\\"><strong><u>这里</u></strong></a>,当前ID=\\''selfinfo\\''<br />\r\n            多个栏目ID与标题分类ID可用,号格开，如\\''1,2\\''</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">每行显示条数</div>\r\n            </td>\r\n            <td height=\\"25\\">每行显示几个图片</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示总信息数</div>\r\n            </td>\r\n            <td height=\\"25\\">显示信息总数</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">图片宽度，图片高度</div>\r\n            </td>\r\n            <td height=\\"25\\">图文信息图片大小</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">是否显示标题</div>\r\n            </td>\r\n            <td height=\\"25\\">是否在图片下显示标题，0为不显示，1为显示</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td bgcolor=\\"#ffffff\\" height=\\"25\\">\r\n            <div align=\\"center\\">标题截取数</div>\r\n            </td>\r\n            <td height=\\"25\\">截取几个字符</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td bgcolor=\\"#ffffff\\" height=\\"25\\">\r\n            <div align=\\"center\\">操作类型说明</div>\r\n            </td>\r\n            <td height=\\"25\\">具体看操作类型说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">附加SQL条件</div>\r\n            </td>\r\n            <td height=\\"25\\">附加调用条件，如：&quot;title=\\''帝国\\''&quot;</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示排序</div>\r\n            </td>\r\n            <td height=\\"25\\">可指定按相应的字段排序，如：&quot;id desc&quot;</td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_GetClassNewsPic', 'phomenewspic', 1, '[phomenewspic]栏目ID,每行显示条数,显示总信息数,图片宽度,图片高度,是否显示标题,标题截取数,操作类型,附加SQL条件,显示排序[/phomenewspic]', 0, 1, 9),
(5, '广告标签', '<table border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\" width=\\"100%\\" bgcolor=\\"#dbeaf5\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\"center\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">广告ID</div>\r\n            </td>\r\n            <td height=\\"25\\">查看广告ID点<a onclick=\\"window.open(\\''../tool/ListAd.php?[!--ehash--]\\'');\\"><strong><u>这里</u></strong></a></td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_GetAd', 'phomead', 1, '[phomead]广告ID[/phomead]', 0, 3, 5),
(6, '投票标签', '<table border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\" width=\\"100%\\" bgcolor=\\"#dbeaf5\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\"center\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">投票ID</div>\r\n            </td>\r\n            <td height=\\"25\\">查看投票ID点<a onclick=\\"window.open(\\''../tool/ListVote.php?[!--ehash--]\\'');\\"><strong><u>这里</u></strong></a></td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_GetVote', 'phomevote', 1, '[phomevote]投票ID[/phomevote]', 0, 3, 5),
(11, '带模板的信息调用标签[万能标签]', '<table border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\" width=\\"100%\\" bgcolor=\\"#dbeaf5\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\"center\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">栏目ID</div>\r\n            </td>\r\n            <td height=\\"25\\">查看栏目ID点<a onclick=\\"window.open(\\''../ListClass.php?[!--ehash--]\\'');\\"><strong><u>这里</u></strong></a>，查看标题分类ID点<a onclick=\\"window.open(\\''../info/InfoType.php?[!--ehash--]\\'');\\"><strong><u>这里</u></strong></a>,当前ID=\\''selfinfo\\''<br />\r\n            多个栏目ID与标题分类ID可用,号格开，如\\''1,2\\''</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示条数</div>\r\n            </td>\r\n            <td height=\\"25\\">显示前几条记录</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">标题截取数</div>\r\n            </td>\r\n            <td height=\\"25\\">截取几个字符</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">是否显示栏目名</div>\r\n            </td>\r\n            <td height=\\"25\\">0为不显示，1为显示</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">操作类型</div>\r\n            </td>\r\n            <td height=\\"25\\">具体看操作类型说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">标签模板ID</div>\r\n            </td>\r\n            <td height=\\"25\\">查看标签模板ID点<a onclick=\\"window.open(\\''ListBqtemp.php?[!--ehash--]\\'');\\"><strong><u>这里</u></strong></a></td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">只显示有标题图片</div>\r\n            </td>\r\n            <td height=\\"25\\">0为不限制，1为只显示有标题图片的信息</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">附加SQL条件</div>\r\n            </td>\r\n            <td height=\\"25\\">附加调用条件，如：&quot;title=\\''帝国\\''&quot;</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示排序</div>\r\n            </td>\r\n            <td height=\\"25\\">可指定按相应的字段排序，如：&quot;id desc&quot;</td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_GetEcmsInfo', 'ecmsinfo', 1, '[ecmsinfo]栏目ID,显示条数,标题截取数,是否显示栏目名,操作类型,模板ID,只显示有标题图片,附加SQL条件,显示排序[/ecmsinfo]', 0, 1, 10),
(12, '友情链接标签', '<table border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\" width=\\"100%\\" bgcolor=\\"#dbeaf5\\">\r\n    <tbody>\r\n        <tr>\r\n            <td width=\\"40%\\">\r\n            <div align=\\"center\\">参数</div>\r\n            </td>\r\n            <td width=\\"60%\\">参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">每行显示记录数</div>\r\n            </td>\r\n            <td height=\\"25\\">每行显示记录数</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示总记录数</div>\r\n            </td>\r\n            <td height=\\"25\\">\r\n            <div align=\\"left\\">总记录数</div>\r\n            </td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">操作类型</div>\r\n            </td>\r\n            <td height=\\"25\\">\r\n            <div align=\\"left\\">0为所有记录，1为图片链接，2为文字链接</div>\r\n            </td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">分类ID</div>\r\n            </td>\r\n            <td height=\\"25\\">\r\n            <div align=\\"left\\">点击<strong><a onclick=\\"window.open(\\''../tool/LinkClass.php?[!--ehash--]\\'');\\">这里</a></strong>查看分类ID，0为不限制</div>\r\n            </td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">是否显示原链接</div>\r\n            </td>\r\n            <td height=\\"25\\">\r\n            <div align=\\"left\\">0为统计点击链接，1为显示原链接</div>\r\n            </td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_GetSitelink', 'phomelink', 1, '[phomelink]每行显示数,显示总数,操作类型,分类id,是否显示原链接[/phomelink]', 0, 3, 5),
(15, '引用文件标签', '<p>[includefile]\\''文件地址\\''[/includefile]<br />\r\n文件地址需要为相对地址,并且从后台目录算起：&quot;../../header.html&quot;（这个地址的header.html是放在ecms根目录）</p>', 'sys_IncludeFile', 'includefile', 1, '[includefile]\\''文件地址\\''[/includefile]', 1, 4, 4),
(16, '读取远程页面', '<p>[readhttp]\\''页面地址\\''[/readhttp]</p>', 'sys_ReadFile', 'readhttp', 1, '[readhttp]\\''页面地址\\''[/readhttp]', 1, 4, 4),
(17, '网站信息统计', '<p>操作类型说明：\r\n<table border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\" width=\\"100%\\">\r\n    <tbody>\r\n        <tr bgcolor=\\"#dbeaf5\\">\r\n            <td width=\\"25%\\">\r\n            <div align=\\"center\\">操作类型</div>\r\n            </td>\r\n            <td width=\\"75%\\">内容</td>\r\n        </tr>\r\n        <tr>\r\n            <td>\r\n            <div align=\\"center\\">0</div>\r\n            </td>\r\n            <td>统计栏目数据</td>\r\n        </tr>\r\n        <tr>\r\n            <td>\r\n            <div align=\\"center\\">1</div>\r\n            </td>\r\n            <td>统计标题分类</td>\r\n        </tr>\r\n        <tr>\r\n            <td>\r\n            <div align=\\"center\\">2</div>\r\n            </td>\r\n            <td>统计数据表</td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n<br />\r\n时间范围：0为不限；1为今日；2为本月；3为本年。<br />\r\n统计类型：0为统计信息数；1为统计评论数；2为统计点击数；3为统计下载数。<br />\r\n如果操作类型是&ldquo;统计数据表&rdquo;，栏目ID=\\''数据表名\\''</p>', 'sys_TotalData', 'totaldata', 1, '[totaldata]栏目ID,操作类型,时间范围,统计类型[/totaldata]', 0, 1, 7),
(18, 'FLASH幻灯信息调用', '<table border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\" width=\\"100%\\" bgcolor=\\"#dbeaf5\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\"center\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">\r\n            <div align=\\"center\\">栏目ID</div>\r\n            </div>\r\n            </td>\r\n            <td height=\\"25\\">查看栏目ID点<a onclick=\\"window.open(\\''../ListClass.php?[!--ehash--]\\'');\\"><strong><u>这里</u></strong></a>，查看标题分类ID点<a onclick=\\"window.open(\\''../info/InfoType.php?[!--ehash--]\\'');\\"><strong><u>这里</u></strong></a>,当前ID=\\''selfinfo\\''<br />\r\n            多个栏目ID与标题分类ID可用,号格开，如\\''1,2\\''</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示总数</div>\r\n            </td>\r\n            <td height=\\"25\\">显示信息总数</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">图片宽度，图片高度</div>\r\n            </td>\r\n            <td height=\\"25\\">图文信息图片大小</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">是否显示标题</div>\r\n            </td>\r\n            <td height=\\"25\\">是否在图片下显示标题，0为不显示，1为显示</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td bgcolor=\\"#ffffff\\" height=\\"25\\">\r\n            <div align=\\"center\\">标题截取数</div>\r\n            </td>\r\n            <td height=\\"25\\">截取几个字符</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td bgcolor=\\"#ffffff\\" height=\\"25\\">\r\n            <div align=\\"center\\">操作类型说明</div>\r\n            </td>\r\n            <td height=\\"25\\">具体看操作类型说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">附加SQL条件</div>\r\n            </td>\r\n            <td height=\\"25\\">附加调用条件，如：&quot;title=\\''帝国\\''&quot;</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示排序</div>\r\n            </td>\r\n            <td height=\\"25\\">可指定按相应的字段排序，如：&quot;id desc&quot;</td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_FlashPixpic', 'phomeflashpic', 1, '[phomeflashpic]栏目ID,显示总数,图片宽度,图片高度,是否显示标题,标题截取数,操作类型,停顿秒数,附加SQL条件,显示排序[/phomeflashpic]', 0, 1, 9),
(19, '搜索关键字调用标签', '<p>栏目id为0，则显示所有栏目的关键字</p>\r\n<p>操作类型：0为搜索热门排行，1为最新搜索排行</p>', 'sys_ShowSearchKey', 'showsearch', 1, '[showsearch]每行显示条数,总条数,栏目id,操作类型[/showsearch]', 0, 1, 7),
(20, '循环子栏目数据标签', '<table border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\" width=\\"100%\\" bgcolor=\\"#dbeaf5\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\"center\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">栏目ID</div>\r\n            </td>\r\n            <td height=\\"25\\">查看栏目ID点<a onclick=\\"window.open(\\''../ListClass.php?[!--ehash--]\\'');\\"><strong><u>这里</u></strong></a>，单个为父栏目ID，多栏目可用&quot;,&quot;格开<br />\r\n            当前栏目ID用：\\''selfinfo\\''</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示条数</div>\r\n            </td>\r\n            <td height=\\"25\\">显示前几条记录</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">标题截取数</div>\r\n            </td>\r\n            <td height=\\"25\\">截取几个字符</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">是否显示栏目名</div>\r\n            </td>\r\n            <td height=\\"25\\">0为不显示，1为显示</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">操作类型</div>\r\n            </td>\r\n            <td height=\\"25\\">0：栏目最新<br />\r\n            1：栏目热门<br />\r\n            2：栏目推荐<br />\r\n            3：栏目评论排行<br />\r\n            4：栏目头条<br />\r\n            5：栏目下载排行</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">标签模板ID</div>\r\n            </td>\r\n            <td height=\\"25\\">查看标签模板ID点<a onclick=\\"window.open(\\''ListBqtemp.php?[!--ehash--]\\'');\\"><strong><u>这里</u></strong></a></td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">只显示有标题图片</div>\r\n            </td>\r\n            <td height=\\"25\\">0为不限制，1为只显示有标题图片的信息</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示栏目数</div>\r\n            </td>\r\n            <td height=\\"25\\">0为不限制</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示头条操作类型</div>\r\n            </td>\r\n            <td height=\\"25\\">0：不显示栏目头条<br />\r\n            1：栏目内容简介<br />\r\n            2：栏目推荐信息<br />\r\n            3：栏目头条信息<br />\r\n            4：栏目最新信息</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">头条标题截取数</div>\r\n            </td>\r\n            <td height=\\"25\\">截取几个字符</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">头条简介截取数</div>\r\n            </td>\r\n            <td height=\\"25\\">截取几个字符</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">头条只显示有标题图片</div>\r\n            </td>\r\n            <td height=\\"25\\">0为不限制，1为只显示有标题图片的信息</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">附加SQL条件</div>\r\n            </td>\r\n            <td height=\\"25\\">附加调用条件，如：&quot;title=\\''帝国\\''&quot;</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示排序</div>\r\n            </td>\r\n            <td height=\\"25\\">可指定按相应的字段排序，如：&quot;id desc&quot;</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">头条的模板变量<br />\r\n            (标签模板的页面模板内容中使用)</div>\r\n            </td>\r\n            <td height=\\"25\\">[!--sonclass.id--]：信息ID<br />\r\n            [!--sonclass.title--]：信息标题<br />\r\n            [!--sonclass.oldtitle--]：信息标题(不截取字数)<br />\r\n            [!--sonclass.titlepic--]：标题图片<br />\r\n            [!--sonclass.titleurl--]：信息链接<br />\r\n            [!--sonclass.text--]：信息简介</td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_ForSonclassData', 'listsonclass', 1, '[listsonclass]栏目ID,显示条数,标题截取数,是否显示栏目名,操作类型,模板ID,只显示有标题图片,显示栏目数,显示头条操作类型,头条标题截取数,头条简介截取数,头条只显示有标题图片,附加SQL条件,显示排序[/listsonclass]', 0, 1, 9),
(21, '带模板的栏目导航标签', '<table border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\" width=\\"100%\\" bgcolor=\\"#dbeaf5\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\"center\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">父栏目ID</div>\r\n            </td>\r\n            <td height=\\"25\\">查看栏目ID点<a onclick=\\"window.open(\\''../ListClass.php?[!--ehash--]\\'');\\"><strong><u>这里</u></strong></a><br />\r\n            \\''0\\''为显示所有一级栏目<br />\r\n            \\''selfinfo\\''显示本栏目下级栏目</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">\r\n            <div align=\\"center\\">标签模板ID</div>\r\n            </div>\r\n            </td>\r\n            <td height=\\"25\\">查看标签模板ID点<a onclick=\\"window.open(\\''ListBqtemp.php?[!--ehash--]\\'');\\"><strong><u>这里</u></strong></a></td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">&nbsp;</div>\r\n            </td>\r\n            <td height=\\"25\\">\r\n            <p>模板标签变量说明：[!--bclassname--]：父栏目名,[!--bclassurl--]：父栏目链接,[!--bclassid--]：父栏目id</p>\r\n            <p>list.var模板标签：<br />\r\n            [!--classurl--]：栏目链接,[!--classname--]：栏目名称,[!--classid--]：栏目id,[!--classimg--]：栏目图片,[!--intro--]：栏目简介,[!--num--]：信息数,[!--no--]：序号</p>\r\n            </td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">是否显示栏目信息数</div>\r\n            </td>\r\n            <td height=\\"25\\">0为不显示，1为显示</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示栏目数</div>\r\n            </td>\r\n            <td height=\\"25\\">0为不限制</td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_ShowClassByTemp', 'showclasstemp', 1, '[showclasstemp]父栏目ID,标签模板ID,是否显示栏目信息数,显示栏目数[/showclasstemp]', 0, 2, 6),
(24, '图库模型分页标签', '<p>\r\n<table border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\" width=\\"100%\\" bgcolor=\\"#dbeaf5\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\"center\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">\r\n            <div align=\\"center\\">标签模板ID</div>\r\n            </div>\r\n            </td>\r\n            <td height=\\"25\\">查看标签模板ID点<a onclick=\\"window.open(\\''ListBqtemp.php?[!--ehash--]\\'');\\"><strong><u>这里</u></strong></a></td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">&nbsp;</div>\r\n            </td>\r\n            <td height=\\"25\\">\r\n            <p><strong>模板标签变量说明：</strong><br />\r\n            图片集JS数组：[!--photor--]，缩略图导航：[!--smalldh--]<br />\r\n            分页导航：[!--select--]，标题分页导航：[!--titleselect--]，分页列表式导航：[!--listpage--]</p>\r\n            <p><strong>list.var模板标签：</strong><br />\r\n            图片名称：[!--picname--]，图片地址：[!--picurl--]</p>\r\n            </td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">导航图片宽度<br />\r\n            导航图片高度</div>\r\n            </td>\r\n            <td height=\\"25\\">0为按原图大小</td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n</p>', 'sys_PhotoMorepage', 'eshowphoto', 1, '[eshowphoto]标签模板ID,导航图片宽度,导航图片高度[/eshowphoto]', 0, 1, 7),
(25, '复选项输出函数', '<p>如：[echocheckbox]\\''title\\'',\\''&lt;br&gt;\\''[/echocheckbox]：表示按回车分隔输出title字段的项</p>', 'sys_EchoCheckboxFValue', 'echocheckbox', 1, '[echocheckbox]\\''字段\\'',\\''分隔符\\''[/echocheckbox]', 0, 3, 5),
(26, '相关链接标签', '<p><strong>标签模板ID</strong>：查看标签模板ID点<a onclick=\\"window.open(\\''ListBqtemp.php?[!--ehash--]\\'');\\"><strong><u>这里</u></strong></a><br />\r\n<strong>操作类型</strong>：0为默认；1为按表；2为按栏目；3为按标题分类<br />\r\n<strong>操作对象</strong>：对应操作类型的表/栏目/标题分类。空则为默认。<br />\r\n<strong>是否显示栏目名</strong>：0为不显示；1为显示<br />\r\n<strong>只显示标题图片的信息</strong>：0为不限；1为只显示标题图片的信息</p>', 'sys_GetOtherLinkInfo', 'otherlink', 1, '[otherlink]标签模板ID,操作对象,调用条数,标题截取字数,是否显示栏目名,操作类型,只显示标题图片的信息[/otherlink]', 0, 1, 9),
(27, '评论调用标签', '<p><strong>标签模板ID</strong>：查看标签模板ID点<a onclick=\\"window.open(\\''ListBqtemp.php?[!--ehash--]\\'');\\"><strong><u>这里</u></strong></a><br />\r\n<strong>栏目ID</strong>：0为不限调用栏目，父栏目会应用于子栏目<br />\r\n<strong>信息ID</strong>：0为不限<br />\r\n<strong>显示推荐评论</strong>：0为不限；1为只显示推荐评论<br />\r\n<strong>操作类型</strong>：0为按发布时间；1为按支持数；2为按反对数<br />\r\n<strong>标签模板说明</strong>：[!--title--]:信息标题；[!--titleurl--]:信息链接；[!--titlepic--]:信息标题图片；[!--id--]:信息ID<br />\r\n[!--classid--]:栏目ID；[!--plid--]:评论ID；[!--username--]:发表者；[!--no--]:编号<br />\r\n[!--pltext--]:评论内容；[!--pltime--]:评论时间；[!--zcnum--]:支持数；[!--fdnum--]:反对数</p>', 'sys_ShowPlInfo', 'showplinfo', 1, '[showplinfo]调用条数,标签模板ID,栏目ID,信息ID,显示推荐评论,操作类型[/showplinfo]', 0, 3, 5),
(28, '循环栏目导航标签', '<p>\r\n<table border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\" width=\\"100%\\" bgcolor=\\"#dbeaf5\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\"center\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">父栏目ID</div>\r\n            </td>\r\n            <td height=\\"25\\">查看栏目ID点<a onclick=\\"window.open(\\''../ListClass.php?[!--ehash--]\\'');\\"><strong><u>这里</u></strong></a><br />\r\n            \\''0\\''为显示所有一级栏目<br />\r\n            \\''selfinfo\\''显示本栏目下级栏目<br />\r\n            多栏目固定调用可用&quot;,&quot;格开</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">\r\n            <div align=\\"center\\">标签模板ID</div>\r\n            </div>\r\n            </td>\r\n            <td height=\\"25\\">查看标签模板ID点<a onclick=\\"window.open(\\''ListBqtemp.php?[!--ehash--]\\'');\\"><strong><u>这里</u></strong></a></td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">&nbsp;</div>\r\n            </td>\r\n            <td height=\\"25\\">\r\n            <p>模板标签变量说明：[!--bclassname--]：父栏目名,[!--bclassurl--]：父栏目链接,[!--bclassid--]：父栏目id，[!--bclassimg--]：父栏目图片,[!--bintro--]：父栏目简介,[!--bnum--]：父栏目信息数,[!--bno--]：父栏目序号</p>\r\n            <p>list.var模板标签：<br />\r\n            [!--classurl--]：栏目链接,[!--classname--]：栏目名称,[!--classid--]：栏目id,[!--classimg--]：栏目图片,[!--intro--]：栏目简介,[!--num--]：信息数,[!--no--]：序号</p>\r\n            </td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">是否显示栏目信息数</div>\r\n            </td>\r\n            <td height=\\"25\\">0为不显示，1为显示</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示栏目数</div>\r\n            </td>\r\n            <td height=\\"25\\">0为不限制</td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n</p>', 'sys_ForShowSonClass', 'listshowclass', 1, '[listshowclass]父栏目ID,标签模板ID,是否显示栏目信息数,显示栏目数[/listshowclass]', 0, 2, 6),
(29, '调用TAGS的信息标签', '<table border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\" width=\\"100%\\" bgcolor=\\"#dbeaf5\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\"center\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">TAGS的ID</div>\r\n            </td>\r\n            <td height=\\"25\\">查看TAGS的ID点<a onclick=\\"window.open(\\''../tags/ListTags.php?[!--ehash--]\\'');\\"><strong><u>这里</u></strong></a><br />\r\n            多个ID可以用,号格开，如\\''1,2\\''</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示条数</div>\r\n            </td>\r\n            <td height=\\"25\\">显示前几条记录</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">标题截取数</div>\r\n            </td>\r\n            <td height=\\"25\\">截取几个字符</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">标签模板ID</div>\r\n            </td>\r\n            <td height=\\"25\\">查看标签模板ID点<a onclick=\\"window.open(\\''ListBqtemp.php?[!--ehash--]\\'');\\"><strong><u>这里</u></strong></a></td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">栏目ID</div>\r\n            </td>\r\n            <td height=\\"25\\">限制只调用某一个或多个栏目的信息<br />\r\n            多个ID可以用,号格开，如\\''1,2\\''</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">系统模型ID</div>\r\n            </td>\r\n            <td height=\\"25\\">限制只调用某一个或多个系统模型的信息<br />\r\n            多个ID可以用,号格开，如\\''1,2\\''</td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_eShowTagsInfo', 'tagsinfo', 0, '[tagsinfo]TAGS的ID,显示条数,标题截取数,标签模板ID,栏目ID,系统模型ID[/tagsinfo]', 0, 0, 9),
(30, '调用碎片的信息标签', '<table border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\" width=\\"100%\\" bgcolor=\\"#dbeaf5\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\"center\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">碎片变量名</div>\r\n            </td>\r\n            <td height=\\"25\\">查看碎片变量名点<a onclick=\\"window.open(\\''../sp/ListSp.php?[!--ehash--]\\'');\\"><strong><u>这里</u></strong></a></td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示条数</div>\r\n            </td>\r\n            <td height=\\"25\\">显示前几条记录</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">标题截取数</div>\r\n            </td>\r\n            <td height=\\"25\\">截取几个字符</td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n<p><br />\r\n&nbsp;</p>\r\n<table border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\" width=\\"100%\\" bgcolor=\\"#dbeaf5\\">\r\n    <tbody>\r\n        <tr>\r\n            <td colspan=\\"2\\">\r\n            <div align=\\"center\\">碎片标签模板变量说明</div>\r\n            </td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\" width=\\"34%\\">\r\n            <div align=\\"center\\">静态碎片</div>\r\n            </td>\r\n            <td height=\\"25\\" width=\\"66%\\">模板标签变量说明：[!--the.spname--]：碎片名称,[!--the.spid--]：碎片ID,[!--the.sppic--]：碎片效果图,[!--the.spsay--]：碎片描述\r\n            <p>list.var模板标签：<br />\r\n            [!--title--]：标题,[!--oldtitle--]：标题ALT,[!--newstime--]：发布时间,[!--id--]：碎片信息ID,[!--titleurl--]：标题链接,[!--titlepic--]：标题缩图,[!--bigpic--]：标题大图,[!--titlepre--]：标题左边,[!--titlenext--]：标题右边,[!--smalltext--]：内容简介,[!--no.num--]：编号</p>\r\n            </td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">动态碎片</div>\r\n            </td>\r\n            <td height=\\"25\\">模板标签变量说明：[!--the.spname--]：碎片名称,[!--the.spid--]：碎片ID,[!--the.sppic--]：碎片效果图,[!--the.spsay--]：碎片描述\r\n            <p>list.var模板标签：<br />\r\n            支持变量同模型信息调用</p>\r\n            </td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">代码碎片</div>\r\n            </td>\r\n            <td height=\\"25\\">无需标签模板，直接显示代码内容</td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_eShowSpInfo', 'spinfo', 0, '[spinfo]碎片变量名,显示条数,标题截取数[/spinfo]', 0, 0, 9),
(31, '调用TAGS标签', '<table border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\" width=\\"100%\\" bgcolor=\\"#dbeaf5\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\"center\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">分类ID</div>\r\n            </td>\r\n            <td height=\\"25\\">\\''\\''空为不限制，查看TAGS分类ID点<a onclick=\\"window.open(\\''../tags/TagsClass.php?[!--ehash--]\\'');\\"><strong><u>这里</u></strong></a><br />\r\n            多个可以用,号格开，如\\''1,2\\''<br />\r\n            内容页显示当前TAGS可以用\\''selfinfo\\''</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示数量</div>\r\n            </td>\r\n            <td height=\\"25\\">显示前几条记录，0为显示所有（\\''selfinfo\\''本设置无效）</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">每行显示数量</div>\r\n            </td>\r\n            <td height=\\"25\\">一行显示多少个TAGS，0为不换行</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示排序</div>\r\n            </td>\r\n            <td height=\\"25\\">使用默认设置\\''\\''空就可以，默认是\\''tagid desc\\''（\\''selfinfo\\''本设置无效）</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">只显示推荐</div>\r\n            </td>\r\n            <td height=\\"25\\">只显示推荐的TAGS，0为不限制，1为限制（\\''selfinfo\\''本设置无效）</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">推荐TAGS属性</div>\r\n            </td>\r\n            <td height=\\"25\\">如果是推荐的TAGS，内容是否要加粗或加红（\\''selfinfo\\''本设置无效）<br />\r\n            设置\\''s\\''表示加粗、\\''r\\''表示加红、同时加粗加红用\\''s,r\\''</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示间隔符</div>\r\n            </td>\r\n            <td height=\\"25\\">TAGS之间显示间隔符，默认是\\'' &amp;nbsp; \\''</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">是否显示信息数量</div>\r\n            </td>\r\n            <td height=\\"25\\">是否在TAGS后显示信息数量，0为不显示，1为显示（\\''selfinfo\\''本设置无效）</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">链接附加参数</div>\r\n            </td>\r\n            <td height=\\"25\\">可指定在TAGS链接后面增加参数，比如：\\''&amp;tempid=模板ID\\''</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">链接变量名</div>\r\n            </td>\r\n            <td height=\\"25\\">可指定在链接使用的变量名(需加引号)：tagname或tagid，默认为tagname，比如：\\''tagname\\''</td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_eShowTags', 'showtags', 0, '[showtags]分类ID,显示数量,每行显示数量,显示排序,只显示推荐,推荐TAGS属性,显示间隔符,是否显示信息数,链接附加参数,链接变量名[/showtags]', 0, 0, 9);

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsbqclass`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsbqclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` char(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `dayuqixiu_enewsbqclass`
--

INSERT INTO `dayuqixiu_enewsbqclass` (`classid`, `classname`) VALUES
(1, '信息调用'),
(2, '栏目调用'),
(3, '非信息调用'),
(4, '其它标签');

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsbqtemp`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsbqtemp` (
  `tempid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tempname` varchar(60) NOT NULL DEFAULT '',
  `modid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `temptext` text NOT NULL,
  `showdate` varchar(50) NOT NULL DEFAULT '',
  `listvar` text NOT NULL,
  `subnews` smallint(5) unsigned NOT NULL DEFAULT '0',
  `rownum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `docode` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tempid`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- 转存表中的数据 `dayuqixiu_enewsbqtemp`
--

INSERT INTO `dayuqixiu_enewsbqtemp` (`tempid`, `tempname`, `modid`, `temptext`, `showdate`, `listvar`, `subnews`, `rownum`, `classid`, `docode`) VALUES
(1, '子栏目导航标签模板', 1, '| [!--empirenews.listtemp--]<!--list.var1-->[!--empirenews.listtemp--]', 'Y-m-d H:i:s', '<a href=\\"[!--classurl--]\\">[!--classname--]</a> | ', 0, 1, 0, 0),
(2, '标题列表模板', 1, '[!--empirenews.listtemp--]<!--list.var1-->[!--empirenews.listtemp--]', 'Y-m-d H:i:s', '<li><a href="[!--titleurl--]" title="[!--oldtitle--]">[!--title--]</a></li>', 0, 1, 0, 0),
(3, '标题+简介', 1, '[!--empirenews.listtemp--]<!--list.var1-->[!--empirenews.listtemp--]', 'm-d', '<li><p><strong><a href="[!--titleurl--]" title="[!--oldtitle--]">[!--title--]</a></strong>[!--smalltext--] </p></li>', 60, 1, 0, 0),
(4, '头条相关', 1, '[!--empirenews.listtemp--]<!--list.var1-->　<!--list.var2-->[!--empirenews.listtemp--]', 'Y-m-d H:i:s', '<a href="[!--titleurl--]" title="[!--oldtitle--]">·[!--title--]</a>', 0, 2, 0, 0),
(5, '图片+标题+简介', 1, '[!--empirenews.listtemp--]\r\n<!--list.var1-->\r\n[!--empirenews.listtemp--]', 'Y-m-d H:i:s', '<table width=\\"94%\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"0\\" cellspacing=\\"6\\" class=\\"picText\\">\r\n<tr valign=\\"top\\">\r\n<td><a href=\\"[!--titleurl--]\\" target=\\"_blank\\"><img width=\\"70\\" height=\\"78\\" src=\\"[!--titlepic--]\\" alt=\\"[!--oldtitle--]\\" /></a></td>\r\n<td><strong><a href=\\"[!--titleurl--]\\" title=\\"[!--oldtitle--]\\">[!--title--]</a></strong>[!--smalltext--]</td>\r\n</tr>\r\n</table>', 56, 1, 0, 0),
(7, '循环子栏目标签', 1, '<table width="100%" border="0" cellspacing="0" cellpadding="0" class="title">\r\n<tr>\r\n<td><strong>[!--the.classname--]</strong></td>\r\n<td align="right"><a href="[!--the.classurl--]">更多&gt;&gt;</a></td>\r\n</tr>\r\n</table>\r\n<table width="100%" border="0" cellspacing="0" cellpadding="0" class="box">\r\n<tr>\r\n<td><ul>\r\n       [!--empirenews.listtemp--]\r\n       <!--list.var1-->\r\n       [!--empirenews.listtemp--]\r\n</ul>\r\n</td>\r\n</tr>\r\n</table>', 'Y-m-d', '<li><a href="[!--titleurl--]" title="[!--oldtitle--]">[!--title--]</a> <span>[!--newstime--]</span></li>', 0, 1, 0, 0),
(8, '头条标题', 1, '[!--empirenews.listtemp--]\r\n<!--list.var1-->\r\n[!--empirenews.listtemp--]', 'Y-m-d H:i:s', '<strong><a href="[!--titleurl--]">[!--title--]</a></strong>\r\n<p>　　[!--smalltext--]</p>', 150, 1, 0, 0),
(9, '标题+软件简介', 2, '[!--empirenews.listtemp--]<!--list.var1-->[!--empirenews.listtemp--]', 'Y-m-d H:i:s', '<li><p><strong><a href=\\"[!--titleurl--]\\" title=\\"[!--oldtitle--]\\">[!--title--]</a></strong>[!--softsay--]</p></li>', 50, 1, 0, 0),
(10, '排行列表', 1, '[!--empirenews.listtemp--]<!--list.var1-->[!--empirenews.listtemp--]', 'Y-m-d H:i:s', '<li class="no[!--no.num--]"><a href="[!--titleurl--]" title="[!--oldtitle--]">[!--title--]</a></li>', 0, 1, 0, 0),
(11, '图片集分页模板', 1, '<script type=\\"text/javascript\\">\r\n        var photosr=new Array();\r\n        [!--photor--]\r\n        function GotoPhPage(page){\r\n                page=parseInt(page);\r\n                document.getElementById(\\"showpagephoto\\").innerHTML=photosr[page];\r\n                document.ViewPhotoForm.thisphpage.value=page;\r\n                document.ViewPhotoForm.tothephpage.options[page-1].selected=true;\r\n        }\r\n        //上一页\r\n        function PriPhPage(){\r\n                var thispage=parseInt(document.ViewPhotoForm.thisphpage.value);\r\n                var num=photosr.length;\r\n                if(thispage<=1)\r\n                {\r\n                        return false;\r\n                }\r\n                GotoPhPage(thispage-1);\r\n        }\r\n        //下一页\r\n        function NextPhPage(){\r\n                var thispage=parseInt(document.ViewPhotoForm.thisphpage.value);\r\n                var num=photosr.length;\r\n                if(thispage>=num-1)\r\n                {\r\n                        return false;\r\n                }\r\n                GotoPhPage(thispage+1);\r\n        }\r\n        function PhAutoPlay(){\r\n                var sec=parseInt(document.ViewPhotoForm.autoplaysec.value);\r\n                var i;\r\n                var num=photosr.length;\r\n                for(i=1;i<=sec;i++)\r\n                {\r\n                        if(document.ViewPhotoForm.autophstop.value==0)\r\n                        {\r\n                                window.setTimeout(\\"PhAutoPlayExe(\\"+i+\\",\\"+sec+\\")\\",i*1000);\r\n                        }\r\n                        else\r\n                        {\r\n                                break;\r\n                        }\r\n                }\r\n        }\r\n        function PhAutoPlayExe(num,sec){\r\n                var t;\r\n                if(document.ViewPhotoForm.autophstop.value==1)\r\n                {\r\n                        return \\"\\";\r\n                }\r\n                if(num==sec) \r\n                {\r\n                        t=NextPhPage();\r\n                        if(t==false)\r\n                        {\r\n                                GotoPhPage(1);\r\n                        }\r\n                        PhAutoPlay();\r\n                } \r\n        }\r\n        </script>\r\n        \r\n<table width=\\"100%\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"3\\" cellspacing=\\"1\\">\r\n  <tr> \r\n    <td height=\\"25\\" id=\\"showpagephoto\\" align=\\"center\\"> \r\n      <!--list.var1-->\r\n    </td>\r\n  </tr>\r\n  <form name=\\"ViewPhotoForm\\" id=\\"ViewPhotoForm\\" method=\\"POST\\" action=\\"\\">\r\n    <tr> \r\n      <td height=\\"25\\"> <div align=\\"center\\"> \r\n          <input type=\\"button\\" name=\\"Submit\\" value=\\"上一页\\" onclick=\\"PriPhPage();\\">\r\n          &nbsp;&nbsp; \r\n          <select name=\\"tothephpage\\" onchange=\\"GotoPhPage(this.options[this.selectedIndex].value)\\">\r\n            [!--select--]\r\n          </select>\r\n          &nbsp;&nbsp; \r\n          <input type=\\"button\\" name=\\"Submit2\\" value=\\"下一页\\" onclick=\\"NextPhPage();\\">\r\n          <input name=\\"thisphpage\\" type=\\"hidden\\" value=\\"1\\">\r\n        </div></td>\r\n    </tr>\r\n    <tr>\r\n      <td height=\\"25\\"><div align=\\"center\\">\r\n          <select name=\\"autoplaysec\\">\r\n            <option value=\\"1\\">1秒</option>\r\n            <option value=\\"2\\">2秒</option>\r\n            <option value=\\"3\\" selected>3秒</option>\r\n            <option value=\\"4\\">4秒</option>\r\n            <option value=\\"5\\">5秒</option>\r\n            <option value=\\"6\\">6秒</option>\r\n            <option value=\\"7\\">7秒</option>\r\n            <option value=\\"8\\">8秒</option>\r\n            <option value=\\"9\\">9秒</option>\r\n            <option value=\\"10\\">10秒</option>\r\n          </select>\r\n                  <input name=\\"autophstop\\" type=\\"hidden\\" value=\\"0\\">\r\n          <input type=\\"button\\" name=\\"Submit3\\" value=\\"自动播放\\" onclick=\\"document.ViewPhotoForm.autophstop.value=0;PhAutoPlay();\\">\r\n          &nbsp;<input type=\\"button\\" name=\\"Submit32\\" value=\\"停止播放\\" onclick=\\"document.ViewPhotoForm.autophstop.value=1;\\">\r\n        </div></td>\r\n    </tr>\r\n  </form>\r\n</table>\r\n<table width=\\"500\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"3\\" cellspacing=\\"1\\">\r\n<tr><td>\r\n<marquee  behavior=alternate ONMOUSEOUT=\\"this.scrollDelay=1\\" ONMOUSEOVER=\\"this.scrollDelay=600\\"  scrollamount=1  SCROLLDELAY=1  border=0  scrolldelay=70  width=\\"100%\\"  align=middle>\r\n        [!--smalldh--]\r\n</marquee>\r\n</td></tr></table>', 'Y-m-d H:i:s', '<a href=\\''#ecms\\'' onclick=\\''NextPhPage();\\'' title=\\''点击进入下一张图片\\''><img src=\\''[!--picurl--]\\'' alt=\\''[!--picname--]\\'' border=1 class=\\''photoresize\\''></a><br><span style=\\''line-height=18pt\\''>[!--picname--]</span>', 0, 1, 0, 0),
(12, '栏目tabs导航', 1, '[!--empirenews.listtemp--]<!--list.var1-->[!--empirenews.listtemp--]', 'Y-m-d H:i:s', '<li id="tabnav_btn_[!--no--]" onmouseover="tabit(this)"><a href="[!--classurl--]">[!--classname--]</a></li>', 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsbqtempclass`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsbqtempclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` char(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsbuybak`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsbuybak` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` char(20) NOT NULL DEFAULT '',
  `card_no` char(120) NOT NULL DEFAULT '',
  `buytime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cardfen` int(10) unsigned NOT NULL DEFAULT '0',
  `money` int(10) unsigned NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `userdate` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsbuygroup`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsbuygroup` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `gname` varchar(255) NOT NULL DEFAULT '',
  `gmoney` int(10) unsigned NOT NULL DEFAULT '0',
  `gfen` int(10) unsigned NOT NULL DEFAULT '0',
  `gdate` int(10) unsigned NOT NULL DEFAULT '0',
  `ggroupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `gzgroupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `buygroupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `gsay` text NOT NULL,
  `myorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewscard`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewscard` (
  `cardid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `card_no` char(30) NOT NULL DEFAULT '',
  `password` char(20) NOT NULL DEFAULT '',
  `money` int(10) unsigned NOT NULL DEFAULT '0',
  `cardfen` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` date NOT NULL DEFAULT '0000-00-00',
  `cardtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `carddate` int(10) unsigned NOT NULL DEFAULT '0',
  `cdgroupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `cdzgroupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cardid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsclass`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `bclassid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `classname` varchar(50) NOT NULL DEFAULT '',
  `sonclass` text NOT NULL,
  `is_zt` tinyint(1) NOT NULL DEFAULT '0',
  `lencord` smallint(6) NOT NULL DEFAULT '0',
  `link_num` tinyint(4) NOT NULL DEFAULT '0',
  `newstempid` smallint(6) NOT NULL DEFAULT '0',
  `onclick` int(11) NOT NULL DEFAULT '0',
  `listtempid` smallint(6) NOT NULL DEFAULT '0',
  `featherclass` text NOT NULL,
  `islast` tinyint(1) NOT NULL DEFAULT '0',
  `classpath` text NOT NULL,
  `classtype` varchar(10) NOT NULL DEFAULT '',
  `newspath` varchar(20) NOT NULL DEFAULT '',
  `filename` tinyint(1) NOT NULL DEFAULT '0',
  `filetype` varchar(10) NOT NULL DEFAULT '',
  `openpl` tinyint(1) NOT NULL DEFAULT '0',
  `openadd` tinyint(1) NOT NULL DEFAULT '0',
  `newline` int(11) NOT NULL DEFAULT '0',
  `hotline` int(11) NOT NULL DEFAULT '0',
  `goodline` int(11) NOT NULL DEFAULT '0',
  `classurl` varchar(200) NOT NULL DEFAULT '',
  `groupid` smallint(6) NOT NULL DEFAULT '0',
  `myorder` smallint(6) NOT NULL DEFAULT '0',
  `filename_qz` varchar(20) NOT NULL DEFAULT '',
  `hotplline` tinyint(4) NOT NULL DEFAULT '0',
  `modid` smallint(6) NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `firstline` tinyint(4) NOT NULL DEFAULT '0',
  `bname` varchar(50) NOT NULL DEFAULT '',
  `islist` tinyint(1) NOT NULL DEFAULT '0',
  `searchtempid` smallint(6) NOT NULL DEFAULT '0',
  `tid` smallint(6) NOT NULL DEFAULT '0',
  `tbname` varchar(60) NOT NULL DEFAULT '',
  `maxnum` int(11) NOT NULL DEFAULT '0',
  `checkpl` tinyint(1) NOT NULL DEFAULT '0',
  `down_num` tinyint(4) NOT NULL DEFAULT '0',
  `online_num` tinyint(4) NOT NULL DEFAULT '0',
  `listorder` varchar(50) NOT NULL DEFAULT '',
  `reorder` varchar(50) NOT NULL DEFAULT '',
  `intro` text NOT NULL,
  `classimg` varchar(255) NOT NULL DEFAULT '',
  `jstempid` smallint(6) NOT NULL DEFAULT '0',
  `addinfofen` int(11) NOT NULL DEFAULT '0',
  `listdt` tinyint(1) NOT NULL DEFAULT '0',
  `showclass` tinyint(1) NOT NULL DEFAULT '0',
  `showdt` tinyint(1) NOT NULL DEFAULT '0',
  `checkqadd` tinyint(1) NOT NULL DEFAULT '0',
  `qaddlist` tinyint(1) NOT NULL DEFAULT '0',
  `qaddgroupid` text NOT NULL,
  `qaddshowkey` tinyint(1) NOT NULL DEFAULT '0',
  `adminqinfo` tinyint(1) NOT NULL DEFAULT '0',
  `doctime` smallint(6) NOT NULL DEFAULT '0',
  `classpagekey` varchar(255) NOT NULL DEFAULT '',
  `dtlisttempid` smallint(6) NOT NULL DEFAULT '0',
  `classtempid` smallint(6) NOT NULL DEFAULT '0',
  `nreclass` tinyint(1) NOT NULL DEFAULT '0',
  `nreinfo` tinyint(1) NOT NULL DEFAULT '0',
  `nrejs` tinyint(1) NOT NULL DEFAULT '0',
  `nottobq` tinyint(1) NOT NULL DEFAULT '0',
  `ipath` varchar(255) NOT NULL DEFAULT '',
  `addreinfo` tinyint(1) NOT NULL DEFAULT '0',
  `haddlist` tinyint(4) NOT NULL DEFAULT '0',
  `sametitle` tinyint(1) NOT NULL DEFAULT '0',
  `definfovoteid` smallint(6) NOT NULL DEFAULT '0',
  `wburl` varchar(255) NOT NULL DEFAULT '',
  `qeditchecked` tinyint(1) NOT NULL DEFAULT '0',
  `wapstyleid` smallint(6) NOT NULL DEFAULT '0',
  `repreinfo` tinyint(1) NOT NULL DEFAULT '0',
  `pltempid` smallint(6) NOT NULL DEFAULT '0',
  `cgroupid` text NOT NULL,
  `yhid` smallint(6) NOT NULL DEFAULT '0',
  `wfid` smallint(6) NOT NULL DEFAULT '0',
  `cgtoinfo` tinyint(1) NOT NULL DEFAULT '0',
  `bdinfoid` varchar(25) NOT NULL DEFAULT '',
  `repagenum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `keycid` smallint(6) NOT NULL DEFAULT '0',
  `allinfos` int(10) unsigned NOT NULL DEFAULT '0',
  `infos` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `oneinfo` tinyint(1) NOT NULL DEFAULT '0',
  `addsql` varchar(255) NOT NULL DEFAULT '',
  `wapislist` tinyint(1) NOT NULL DEFAULT '0',
  `fclast` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`classid`),
  KEY `bclassid` (`bclassid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- 转存表中的数据 `dayuqixiu_enewsclass`
--

INSERT INTO `dayuqixiu_enewsclass` (`classid`, `bclassid`, `classname`, `sonclass`, `is_zt`, `lencord`, `link_num`, `newstempid`, `onclick`, `listtempid`, `featherclass`, `islast`, `classpath`, `classtype`, `newspath`, `filename`, `filetype`, `openpl`, `openadd`, `newline`, `hotline`, `goodline`, `classurl`, `groupid`, `myorder`, `filename_qz`, `hotplline`, `modid`, `checked`, `firstline`, `bname`, `islist`, `searchtempid`, `tid`, `tbname`, `maxnum`, `checkpl`, `down_num`, `online_num`, `listorder`, `reorder`, `intro`, `classimg`, `jstempid`, `addinfofen`, `listdt`, `showclass`, `showdt`, `checkqadd`, `qaddlist`, `qaddgroupid`, `qaddshowkey`, `adminqinfo`, `doctime`, `classpagekey`, `dtlisttempid`, `classtempid`, `nreclass`, `nreinfo`, `nrejs`, `nottobq`, `ipath`, `addreinfo`, `haddlist`, `sametitle`, `definfovoteid`, `wburl`, `qeditchecked`, `wapstyleid`, `repreinfo`, `pltempid`, `cgroupid`, `yhid`, `wfid`, `cgtoinfo`, `bdinfoid`, `repagenum`, `keycid`, `allinfos`, `infos`, `addtime`, `oneinfo`, `addsql`, `wapislist`, `fclast`) VALUES
(1, 0, '服务范围', '|5|6|7|', 0, 10, 10, 0, 0, 0, '', 0, 'fwfw', '.html', '', 0, '.html', 0, 1, 10, 10, 10, '', 0, 0, '', 10, 1, 1, 10, '服务范围', 0, 0, 1, 'news', 0, 0, 2, 2, 'id DESC', 'newstime DESC', '', '', 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, '', 1, 0, 0, 0, '', 0, 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, 0, 1615813312, 0, '', 0, 1615813312),
(2, 0, '新闻中心', '|8|9|10|', 0, 10, 10, 2, 0, 0, '', 0, 'xwzx', '.html', '', 0, '.html', 0, 1, 10, 10, 10, '', 0, 0, '', 10, 1, 1, 10, '新闻中心', 0, 0, 1, 'news', 0, 0, 2, 2, 'id DESC', 'newstime DESC', '', '', 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, '', 1, 0, 0, 0, '', 0, 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, 0, 1615813328, 0, '', 0, 1615813328),
(3, 0, '公司实力', '|11|12|13|14|', 0, 10, 10, 0, 0, 0, '', 0, 'gssl', '.html', '', 0, '.html', 0, 1, 10, 10, 10, '', 0, 0, '', 10, 1, 1, 10, '公司实力', 0, 0, 1, 'news', 0, 0, 2, 2, 'id DESC', 'newstime DESC', '', '', 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, '', 1, 0, 0, 0, '', 0, 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, 0, 1615813342, 0, '', 0, 1615813342),
(4, 0, '关于我们', '|15|16|17|18|', 0, 10, 10, 0, 0, 0, '', 0, 'gywm', '.html', '', 0, '.html', 0, 1, 10, 10, 10, '', 0, 0, '', 10, 1, 1, 10, '关于我们', 0, 0, 1, 'news', 0, 0, 2, 2, 'id DESC', 'newstime DESC', '', '', 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, '', 1, 0, 0, 0, '', 0, 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, 0, 1615813355, 0, '', 0, 1615813355),
(5, 1, 'CNG汽车改装', '', 0, 10, 10, 1, 0, 1, '|1|', 1, 'fwfw/cngqcgz', '.html', '', 0, '.html', 0, 1, 10, 10, 10, '', 0, 0, '', 10, 1, 1, 10, 'CNG汽车改装', 0, 0, 1, 'news', 0, 0, 2, 2, 'id DESC', 'newstime DESC', '', '', 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, '', 1, 1, 0, 0, 0, 0, '', 1, 0, 0, 0, '', 0, 0, 0, 0, '', 0, 0, 0, '', 0, 0, 6, 6, 1615813407, 0, '', 0, 1615813407),
(6, 1, '油改气服务', '', 0, 10, 10, 1, 0, 1, '|1|', 1, 'fwfw/ygqfw', '.html', '', 0, '.html', 0, 1, 10, 10, 10, '', 0, 0, '', 10, 1, 1, 10, '油改气服务', 0, 0, 1, 'news', 0, 0, 2, 2, 'id DESC', 'newstime DESC', '', '', 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, '', 1, 1, 0, 0, 0, 0, '', 1, 0, 0, 0, '', 0, 0, 0, 0, '', 0, 0, 0, '', 0, 0, 6, 6, 1615813567, 0, '', 0, 1615813567),
(7, 1, 'CNG维修', '', 0, 10, 10, 1, 0, 1, '|1|', 1, 'fwfw/cngwx', '.html', '', 0, '.html', 0, 1, 10, 10, 10, '', 0, 0, '', 10, 1, 1, 10, 'CNG维修', 0, 0, 1, 'news', 0, 0, 2, 2, 'id DESC', 'newstime DESC', '', '', 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, '', 1, 1, 0, 0, 0, 0, '', 1, 0, 0, 0, '', 0, 0, 0, 0, '', 0, 0, 0, '', 0, 0, 1, 1, 1615813597, 0, '', 0, 1615813597),
(8, 2, '公司新闻', '', 0, 10, 10, 2, 0, 1, '|2|', 1, 'xwzx/gsxw', '.html', '', 0, '.html', 0, 1, 10, 10, 10, '', 0, 0, '', 10, 1, 1, 10, '公司新闻', 0, 0, 1, 'news', 0, 0, 2, 2, 'id DESC', 'newstime DESC', '', '', 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, '', 1, 1, 0, 0, 0, 0, '', 1, 0, 0, 0, '', 0, 0, 0, 0, '', 0, 0, 0, '', 0, 0, 11, 11, 1615813662, 0, '', 0, 1615813662),
(9, 2, '行业动态', '', 0, 10, 10, 2, 0, 1, '|2|', 1, 'xwzx/hydt', '.html', '', 0, '.html', 0, 1, 10, 10, 10, '', 0, 0, '', 10, 1, 1, 10, '行业动态', 0, 0, 1, 'news', 0, 0, 2, 2, 'id DESC', 'newstime DESC', '', '', 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, '', 1, 1, 0, 0, 0, 0, '', 1, 0, 0, 0, '', 0, 0, 0, 0, '', 0, 0, 0, '', 0, 0, 9, 9, 1615813682, 0, '', 0, 1615813682),
(10, 2, '常见问题', '', 0, 10, 10, 2, 0, 1, '|2|', 1, 'xwzx/cjwt', '.html', '', 0, '.html', 0, 1, 10, 10, 10, '', 0, 0, '', 10, 1, 1, 10, '常见问题', 0, 0, 1, 'news', 0, 0, 2, 2, 'id DESC', 'newstime DESC', '', '', 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, '', 1, 1, 0, 0, 0, 0, '', 1, 0, 0, 0, '', 0, 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, 0, 1615813703, 0, '', 0, 1615813703),
(11, 3, '成功案例', '', 0, 10, 10, 1, 0, 1, '|3|', 1, 'gssl/cgal', '.html', '', 0, '.html', 0, 1, 10, 10, 10, '', 0, 0, '', 10, 1, 1, 10, '成功案例', 0, 0, 1, 'news', 0, 0, 2, 2, 'id DESC', 'newstime DESC', '', '', 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, '', 1, 1, 0, 0, 0, 0, '', 1, 0, 0, 0, '', 0, 0, 0, 0, '', 0, 0, 0, '', 0, 0, 6, 6, 1615813725, 0, '', 0, 1615813725),
(12, 3, '荣誉资质', '', 0, 10, 10, 1, 0, 1, '|3|', 1, 'gssl/ryzz', '.html', '', 0, '.html', 0, 1, 10, 10, 10, '', 0, 0, '', 10, 1, 1, 10, '荣誉资质', 0, 0, 1, 'news', 0, 0, 2, 2, 'id DESC', 'newstime DESC', '', '', 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, '', 1, 1, 0, 0, 0, 0, '', 1, 0, 0, 0, '', 0, 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, 0, 1615813762, 0, '', 0, 1615813762),
(13, 3, '客户评价', '', 0, 10, 10, 1, 0, 1, '|3|', 1, 'gssl/khpj', '.html', '', 0, '.html', 0, 1, 10, 10, 10, '', 0, 0, '', 10, 1, 1, 10, '客户评价', 0, 0, 1, 'news', 0, 0, 2, 2, 'id DESC', 'newstime DESC', '', '', 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, '', 1, 1, 0, 0, 0, 0, '', 1, 0, 0, 0, '', 0, 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, 0, 1615813793, 0, '', 0, 1615813793),
(14, 3, '公司掠影', '', 0, 10, 10, 1, 0, 1, '|3|', 1, 'gssl/gsly', '.html', '', 0, '.html', 0, 1, 10, 10, 10, '', 0, 0, '', 10, 1, 1, 10, '公司掠影', 0, 0, 1, 'news', 0, 0, 2, 2, 'id DESC', 'newstime DESC', '', '', 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, '', 1, 1, 0, 0, 0, 0, '', 1, 0, 0, 0, '', 0, 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, 0, 1615813829, 0, '', 0, 1615813829),
(15, 4, '公司简介', '', 0, 10, 10, 1, 0, 1, '|4|', 1, 'gywm/gsjj', '.html', '', 0, '.html', 0, 1, 10, 10, 10, '', 0, 0, '', 10, 1, 1, 10, '公司简介', 0, 0, 1, 'news', 0, 0, 2, 2, 'id DESC', 'newstime DESC', '', '', 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, '', 1, 1, 0, 0, 0, 0, '', 1, 0, 0, 0, '', 0, 0, 0, 0, '', 0, 0, 0, '', 0, 0, 1, 1, 1615813861, 0, '', 0, 1615813861),
(16, 4, '企业文化', '', 0, 10, 10, 1, 0, 1, '|4|', 1, 'gywm/qyww', '.html', '', 0, '.html', 0, 1, 10, 10, 10, '', 0, 0, '', 10, 1, 1, 10, '企业文化', 0, 0, 1, 'news', 0, 0, 2, 2, 'id DESC', 'newstime DESC', '', '', 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, '', 1, 1, 0, 0, 0, 0, '', 1, 0, 0, 0, '', 0, 0, 0, 0, '', 0, 0, 0, '', 0, 0, 1, 1, 1615813887, 0, '', 0, 1615813887),
(17, 4, '组织架构', '', 0, 10, 10, 1, 0, 1, '|4|', 1, 'gywm/zzjg', '.html', '', 0, '.html', 0, 1, 10, 10, 10, '', 0, 0, '', 10, 1, 1, 10, '组织架构', 0, 0, 1, 'news', 0, 0, 2, 2, 'id DESC', 'newstime DESC', '', '', 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, '', 1, 1, 0, 0, 0, 0, '', 1, 0, 0, 0, '', 0, 0, 0, 0, '', 0, 0, 0, '', 0, 0, 1, 1, 1615813904, 0, '', 0, 1615813904),
(18, 4, '联系我们', '', 0, 10, 10, 1, 0, 1, '|4|', 1, 'gywm/lxwm', '.html', '', 0, '.html', 0, 1, 10, 10, 10, '', 0, 0, '', 10, 1, 1, 10, '联系我们', 0, 0, 1, 'news', 0, 0, 2, 2, 'id DESC', 'newstime DESC', '', '', 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, '', 1, 1, 0, 0, 0, 0, '', 1, 0, 0, 0, '', 0, 0, 0, 0, '', 0, 0, 0, '', 0, 0, 1, 1, 1615813925, 0, '', 0, 1615813925);

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsclassadd`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsclassadd` (
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `classtext` mediumtext NOT NULL,
  `ttids` text NOT NULL,
  `eclasspagetext` mediumtext NOT NULL,
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `dayuqixiu_enewsclassadd`
--

INSERT INTO `dayuqixiu_enewsclassadd` (`classid`, `classtext`, `ttids`, `eclasspagetext`) VALUES
(1, '', '', ''),
(2, '', '', ''),
(3, '', '', ''),
(4, '', '', ''),
(5, '', '', ''),
(6, '', '', ''),
(7, '', '', ''),
(8, '', '', ''),
(9, '', '', ''),
(10, '', '', ''),
(11, '', '', ''),
(12, '', '', ''),
(13, '', '', ''),
(14, '', '', ''),
(15, '', '', ''),
(16, '', '', ''),
(17, '', '', ''),
(18, '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsclassf`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsclassf` (
  `fid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `f` varchar(30) NOT NULL DEFAULT '',
  `fname` varchar(30) NOT NULL DEFAULT '',
  `fform` varchar(20) NOT NULL DEFAULT '',
  `fhtml` mediumtext NOT NULL,
  `fzs` varchar(255) NOT NULL DEFAULT '',
  `myorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ftype` varchar(30) NOT NULL DEFAULT '',
  `flen` varchar(20) NOT NULL DEFAULT '',
  `fvalue` text NOT NULL,
  `fformsize` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsclassnavcache`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsclassnavcache` (
  `navtype` char(16) NOT NULL DEFAULT '',
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `modid` smallint(5) unsigned NOT NULL DEFAULT '0',
  KEY `navtype` (`navtype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `dayuqixiu_enewsclassnavcache`
--

INSERT INTO `dayuqixiu_enewsclassnavcache` (`navtype`, `userid`, `modid`) VALUES
('modclass', 0, 1),
('jsclass', 0, 0),
('listenews', 0, 0),
('listclass', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsclasstemp`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsclasstemp` (
  `tempid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tempname` varchar(30) NOT NULL DEFAULT '',
  `temptext` mediumtext NOT NULL,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`tempid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `dayuqixiu_enewsclasstemp`
--

INSERT INTO `dayuqixiu_enewsclasstemp` (`tempid`, `tempname`, `temptext`, `classid`) VALUES
(1, '通用一级栏目模板', '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name=\\"keywords\\" content=\\"[!--pagekey--]\\" />\r\n<meta name=\\"description\\" content=\\"[!--pagedes--]\\" />\r\n<link href=\\"[!--news.url--]skin/default/css/style.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<script type=\\"text/javascript\\" src=\\"[!--news.url--]skin/default/js/tabs.js\\"></script>\r\n</head>\r\n<body class=\\"channle\\">\r\n[!--temp.header--]\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\">\r\n<tr valign=\\"top\\">\r\n<td class=\\"news_list\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"position\\">\r\n<tr>\r\n<td>您当前的位置：[!--newsnav--]</td>\r\n</tr>\r\n</table>\r\n[listsonclass]\\''selfinfo\\'',5,38,0,0,7,0,0[/listsonclass]</td>\r\n<td class=\\"sider\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title\\">\r\n<tr>\r\n<td><strong>推荐资讯</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"8\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td>[phomenewspic]\\''selfinfo\\'',2,4,128,90,1,20,2[/phomenewspic]\r\n</td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>最后更新</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><ul>\r\n[ecmsinfo]\\''selfinfo\\'',10,44,0,0,2,0[/ecmsinfo] \r\n</ul></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>热门点击</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><ol class=\\"rank\\">\r\n[ecmsinfo]\\''selfinfo\\'',10,40,0,1,10,0[/ecmsinfo] \r\n</ol></td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', 0),
(2, '分类信息一级栏目模板', '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name=\\"keywords\\" content=\\"[!--pagekey--]\\" />\r\n<meta name=\\"description\\" content=\\"[!--pagedes--]\\" />\r\n<link href=\\"[!--news.url--]skin/default/css/style.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<script type=\\"text/javascript\\" src=\\"[!--news.url--]skin/default/js/tabs.js\\"></script>\r\n</head>\r\n<body class=\\"channle\\">\r\n[!--temp.header--]\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\">\r\n<tr valign=\\"top\\">\r\n<td class=\\"news_list\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"position\\">\r\n<tr>\r\n<td>您当前的位置：[!--newsnav--]</td>\r\n</tr>\r\n</table>\r\n[listsonclass]\\''selfinfo\\'',5,38,0,0,7,0,0[/listsonclass]</td>\r\n<td class=\\"sider\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title\\">\r\n<tr>\r\n<td><strong>分类信息搜索</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><form action=\\"[!--news.url--]e/search/index.php\\" method=\\"post\\" name=\\"searchform\\" id=\\"searchform\\">\r\n<table width=\\"98%\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"0\\" cellspacing=\\"6\\">\r\n<input type=\\"hidden\\" name=\\"tbname\\" value=\\"info\\">\r\n<input type=\\"hidden\\" name=\\"tempid\\" value=\\"1\\">\r\n<tr>\r\n<td><input name=\\"keyboard\\" type=\\"text\\" class=\\"inputText\\" id=\\"keyboard\\" size=\\"18\\" />\r\n<select name=\\"show\\">\r\n<option value=\\"title,smalltext,myarea\\" selected=\\"selected\\">不限</option>\r\n<option value=\\"title\\">信息标题</option>\r\n<option value=\\"smalltext\\">信息内容</option>\r\n<option value=\\"myarea\\">所在地</option>\r\n</select></td>\r\n</tr>\r\n<tr>\r\n<td><select name=\\"classid\\">\r\n<option value=\\''9\\''>所有分类</option>\r\n<option value=\\''10\\''>|-房屋信息</option>\r\n<option value=\\''11\\'' >&nbsp;&nbsp;|-房屋求租</option>\r\n<option value=\\''12\\'' >&nbsp;&nbsp;|-房屋出租</option>\r\n<option value=\\''13\\'' >&nbsp;&nbsp;|-房屋求购</option>\r\n<option value=\\''14\\'' >&nbsp;&nbsp;|-房屋出售</option>\r\n<option value=\\''15\\'' >&nbsp;&nbsp;|-办公用房</option>\r\n<option value=\\''16\\'' >&nbsp;&nbsp;|-旺铺门面</option>\r\n<option value=\\''17\\''>|-跳蚤市场</option>\r\n<option value=\\''18\\'' >&nbsp;&nbsp;|-电脑配件</option>\r\n<option value=\\''19\\'' >&nbsp;&nbsp;|-电器数码</option>\r\n<option value=\\''20\\'' >&nbsp;&nbsp;|-通讯产品</option>\r\n<option value=\\''21\\'' >&nbsp;&nbsp;|-居家用品</option>\r\n<option value=\\''22\\''>|-同城生活</option>\r\n<option value=\\''23\\'' >&nbsp;&nbsp;|-本地新闻</option>\r\n<option value=\\''24\\'' >&nbsp;&nbsp;|-购物打折</option>\r\n<option value=\\''25\\'' >&nbsp;&nbsp;|-旅游活动</option>\r\n<option value=\\''26\\'' >&nbsp;&nbsp;|-便民告示</option>\r\n<option value=\\''27\\''>|-求职招聘</option>\r\n<option value=\\''28\\'' >&nbsp;&nbsp;|-工程技术</option>\r\n<option value=\\''29\\'' >&nbsp;&nbsp;|-财务会计</option>\r\n<option value=\\''30\\'' >&nbsp;&nbsp;|-餐饮行业</option>\r\n<option value=\\''31\\'' >&nbsp;&nbsp;|-经营管理</option>\r\n</select>\r\n<input name=\\"Submit2\\" type=\\"image\\" value=\\"搜索\\" src=\\"[!--news.url--]skin/default/images/search.gif\\" />　\r\n[<a href=\\"[!--news.url--]e/DoInfo/ChangeClass.php?mid=8\\" target=\\"_blank\\">发布信息</a>]</td>\r\n</tr>\r\n</table>\r\n</form></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title\\">\r\n<tr>\r\n<td><strong>地区导航</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td>[!--temp.infoarea--]</td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>分类导航</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td>[!--temp.infoclassnav--]</td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>热门点击</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><ol class=\\"rank\\">\r\n[ecmsinfo]\\''selfinfo\\'',10,40,0,1,10,0[/ecmsinfo] \r\n</ol></td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', 0);

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsclasstempclass`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsclasstempclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` char(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsclass_stats`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsclass_stats` (
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `uptime` int(10) unsigned NOT NULL DEFAULT '0',
  `pvall` int(10) unsigned NOT NULL DEFAULT '0',
  `pvyear` int(10) unsigned NOT NULL DEFAULT '0',
  `pvhalfyear` int(10) unsigned NOT NULL DEFAULT '0',
  `pvquarter` int(10) unsigned NOT NULL DEFAULT '0',
  `pvmonth` int(10) unsigned NOT NULL DEFAULT '0',
  `pvweek` int(10) unsigned NOT NULL DEFAULT '0',
  `pvday` int(10) unsigned NOT NULL DEFAULT '0',
  `pvyesterday` int(10) unsigned NOT NULL DEFAULT '0',
  `ipall` int(10) unsigned NOT NULL DEFAULT '0',
  `ipyear` int(10) unsigned NOT NULL DEFAULT '0',
  `iphalfyear` int(10) unsigned NOT NULL DEFAULT '0',
  `ipquarter` int(10) unsigned NOT NULL DEFAULT '0',
  `ipmonth` int(10) unsigned NOT NULL DEFAULT '0',
  `ipweek` int(10) unsigned NOT NULL DEFAULT '0',
  `ipday` int(10) unsigned NOT NULL DEFAULT '0',
  `ipyesterday` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `dayuqixiu_enewsclass_stats`
--

INSERT INTO `dayuqixiu_enewsclass_stats` (`classid`, `uptime`, `pvall`, `pvyear`, `pvhalfyear`, `pvquarter`, `pvmonth`, `pvweek`, `pvday`, `pvyesterday`, `ipall`, `ipyear`, `iphalfyear`, `ipquarter`, `ipmonth`, `ipweek`, `ipday`, `ipyesterday`) VALUES
(1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsclass_stats_ip`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsclass_stats_ip` (
  `ip` char(21) NOT NULL DEFAULT '',
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsclass_stats_set`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsclass_stats_set` (
  `openstats` tinyint(1) NOT NULL DEFAULT '0',
  `pvtime` int(10) unsigned NOT NULL DEFAULT '0',
  `statsdate` int(10) unsigned NOT NULL DEFAULT '0',
  `changedate` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `dayuqixiu_enewsclass_stats_set`
--

INSERT INTO `dayuqixiu_enewsclass_stats_set` (`openstats`, `pvtime`, `statsdate`, `changedate`) VALUES
(0, 3600, 0, 20170227);

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsdiggips`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsdiggips` (
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL DEFAULT '0',
  `ips` mediumtext NOT NULL,
  KEY `classid` (`classid`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsdo`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsdo` (
  `doid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `doname` varchar(60) NOT NULL DEFAULT '',
  `dotime` smallint(6) NOT NULL DEFAULT '0',
  `isopen` tinyint(1) NOT NULL DEFAULT '0',
  `doing` tinyint(4) NOT NULL DEFAULT '0',
  `classid` text NOT NULL,
  `lasttime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`doid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `dayuqixiu_enewsdo`
--

INSERT INTO `dayuqixiu_enewsdo` (`doid`, `doname`, `dotime`, `isopen`, `doing`, `classid`, `lasttime`) VALUES
(1, '自动刷新首页', 12, 0, 0, ',', 1273215883);

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsdolog`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsdolog` (
  `logid` bigint(20) NOT NULL AUTO_INCREMENT,
  `logip` varchar(20) NOT NULL DEFAULT '',
  `logtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `username` varchar(30) NOT NULL DEFAULT '',
  `enews` varchar(30) NOT NULL DEFAULT '',
  `doing` varchar(255) NOT NULL DEFAULT '',
  `pubid` bigint(16) unsigned NOT NULL DEFAULT '0',
  `ipport` varchar(6) NOT NULL DEFAULT '',
  PRIMARY KEY (`logid`),
  KEY `pubid` (`pubid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=264 ;

--
-- 转存表中的数据 `dayuqixiu_enewsdolog`
--

INSERT INTO `dayuqixiu_enewsdolog` (`logid`, `logip`, `logtime`, `username`, `enews`, `doing`, `pubid`, `ipport`) VALUES
(1, '127.0.0.1', '2021-03-15 21:00:49', 'admin', 'login', '---', 0, '57664'),
(2, '127.0.0.1', '2021-03-15 21:01:53', 'admin', 'AddClass', 'classid=1<br>classname=服务范围', 0, '57693'),
(3, '127.0.0.1', '2021-03-15 21:02:08', 'admin', 'AddClass', 'classid=2<br>classname=新闻中心', 0, '57698'),
(4, '127.0.0.1', '2021-03-15 21:02:22', 'admin', 'AddClass', 'classid=3<br>classname=公司实力', 0, '57703'),
(5, '127.0.0.1', '2021-03-15 21:02:35', 'admin', 'AddClass', 'classid=4<br>classname=关于我们', 0, '57707'),
(6, '127.0.0.1', '2021-03-15 21:03:27', 'admin', 'AddClass', 'classid=5<br>classname=CNG汽车改装', 0, '57715'),
(7, '127.0.0.1', '2021-03-15 21:04:01', 'admin', 'DelTable', 'tid=2<br>tbname=download', 0, '57723'),
(8, '127.0.0.1', '2021-03-15 21:04:04', 'admin', 'DelTable', 'tid=3<br>tbname=photo', 0, '57723'),
(9, '127.0.0.1', '2021-03-15 21:04:08', 'admin', 'DelTable', 'tid=4<br>tbname=flash', 0, '57723'),
(10, '127.0.0.1', '2021-03-15 21:04:11', 'admin', 'DelTable', 'tid=5<br>tbname=movie', 0, '57723'),
(11, '127.0.0.1', '2021-03-15 21:04:15', 'admin', 'DelTable', 'tid=6<br>tbname=shop', 0, '57723'),
(12, '127.0.0.1', '2021-03-15 21:04:18', 'admin', 'DelTable', 'tid=7<br>tbname=article', 0, '57723'),
(13, '127.0.0.1', '2021-03-15 21:04:21', 'admin', 'DelTable', 'tid=8<br>tbname=info', 0, '57723'),
(14, '127.0.0.1', '2021-03-15 21:06:07', 'admin', 'AddClass', 'classid=6<br>classname=油改气服务', 0, '57757'),
(15, '127.0.0.1', '2021-03-15 21:06:37', 'admin', 'AddClass', 'classid=7<br>classname=CNG维修', 0, '57761'),
(16, '127.0.0.1', '2021-03-15 21:07:42', 'admin', 'AddClass', 'classid=8<br>classname=公司新闻', 0, '57778'),
(17, '127.0.0.1', '2021-03-15 21:08:02', 'admin', 'AddClass', 'classid=9<br>classname=行业动态', 0, '57787'),
(18, '127.0.0.1', '2021-03-15 21:08:23', 'admin', 'AddClass', 'classid=10<br>classname=常见问题', 0, '57794'),
(19, '127.0.0.1', '2021-03-15 21:08:45', 'admin', 'AddClass', 'classid=11<br>classname=成功案例', 0, '57800'),
(20, '127.0.0.1', '2021-03-15 21:09:22', 'admin', 'AddClass', 'classid=12<br>classname=荣誉资质', 0, '57808'),
(21, '127.0.0.1', '2021-03-15 21:09:53', 'admin', 'AddClass', 'classid=13<br>classname=客户评价', 0, '57819'),
(22, '127.0.0.1', '2021-03-15 21:10:29', 'admin', 'AddClass', 'classid=14<br>classname=公司掠影', 0, '57832'),
(23, '127.0.0.1', '2021-03-15 21:11:01', 'admin', 'AddClass', 'classid=15<br>classname=公司简介', 0, '57844'),
(24, '127.0.0.1', '2021-03-15 21:11:27', 'admin', 'AddClass', 'classid=16<br>classname=企业文化', 0, '57852'),
(25, '127.0.0.1', '2021-03-15 21:11:44', 'admin', 'AddClass', 'classid=17<br>classname=组织架构', 0, '57858'),
(26, '127.0.0.1', '2021-03-15 21:12:05', 'admin', 'AddClass', 'classid=18<br>classname=联系我们', 0, '57867'),
(27, '127.0.0.1', '2021-03-15 21:12:54', 'admin', 'SetMoreClass', '---', 0, '57877'),
(28, '127.0.0.1', '2021-03-15 21:15:16', 'admin', 'AddNews', 'classid=15<br>id=1<br>title=公司简介', 1000010000000001, '57907'),
(29, '127.0.0.1', '2021-03-15 21:16:30', 'admin', 'AddNews', 'classid=16<br>id=2<br>title=企业文化', 1000010000000002, '57924'),
(30, '127.0.0.1', '2021-03-15 21:16:56', 'admin', 'AddNews', 'classid=17<br>id=3<br>title=组织架构', 1000010000000003, '57936'),
(31, '127.0.0.1', '2021-03-15 21:18:32', 'admin', 'AddNews', 'classid=18<br>id=4<br>title=联系我们', 1000010000000004, '57974'),
(32, '127.0.0.1', '2021-03-15 21:24:39', 'admin', 'SetEnews', '---', 0, '58027'),
(33, '127.0.0.1', '2021-03-15 21:27:01', 'admin', 'EditNews', 'classid=18<br>id=4<br>title=联系我们', 1000010000000004, '58053'),
(34, '127.0.0.1', '2021-03-15 21:28:57', 'admin', 'LoadInCj', 'classid=1<br>classname=公司新闻', 0, '58081'),
(35, '127.0.0.1', '2021-03-15 21:31:13', 'admin', 'AddNews', 'classid=9<br>id=5<br>title=下半年动力煤价格上涨空间料有限', 1000010000000005, '58139'),
(36, '127.0.0.1', '2021-03-15 21:32:09', 'admin', 'AddNews', 'classid=9<br>id=6<br>title=年中竟然“不差钱” 银行揽储静悄悄', 1000010000000006, '58172'),
(37, '127.0.0.1', '2021-03-15 21:32:36', 'admin', 'AddNews', 'classid=9<br>id=7<br>title=美油期货周五收跌1.6% 6月涨幅达9.3%', 1000010000000007, '58185'),
(38, '127.0.0.1', '2021-03-15 21:33:13', 'admin', 'AddNews', 'classid=9<br>id=8<br>title=黄金期货周五收高 6月累涨7.7%创3年最大月涨幅', 1000010000000008, '55787'),
(39, '127.0.0.1', '2021-03-15 21:33:47', 'admin', 'AddNews', 'classid=9<br>id=9<br>title=六月份沿海煤炭市场先抑后扬', 1000010000000009, '55801'),
(40, '127.0.0.1', '2021-03-15 21:34:14', 'admin', 'AddNews', 'classid=9<br>id=10<br>title=周二美国原油收跌0.1% 结束三连涨', 1000010000000010, '55816'),
(41, '127.0.0.1', '2021-03-15 21:34:42', 'admin', 'AddNews', 'classid=9<br>id=11<br>title=周二美国WTI原油期货上涨3.8% 创一周新高', 1000010000000011, '55831'),
(42, '127.0.0.1', '2021-03-15 21:35:13', 'admin', 'AddNews', 'classid=9<br>id=12<br>title=基建潮送暖风 大宗商品“铁公基”迎利好', 1000010000000012, '55847'),
(43, '127.0.0.1', '2021-03-15 21:35:41', 'admin', 'AddNews', 'classid=9<br>id=13<br>title=黄金期货周二收高0.6% 创14个月新高', 1000010000000013, '55873'),
(44, '127.0.0.1', '2021-03-15 21:36:10', 'admin', 'AddNews', 'classid=9<br>id=14<br>title=电厂需求走低库存回升 旺季煤价中长期走势成谜', 1000010000000014, '55887'),
(45, '127.0.0.1', '2021-03-15 21:36:47', 'admin', 'AddNews', 'classid=9<br>id=15<br>title=资金面料无忧 定向降准有空间', 1000010000000015, '55906'),
(46, '127.0.0.1', '2021-03-16 14:14:45', 'admin', 'login', '---', 0, '56241'),
(47, '127.0.0.1', '2021-03-16 14:20:24', 'admin', 'AddNews', 'classid=11<br>id=16<br>title=汽车改装成功案例一', 1000010000000016, '56402'),
(48, '127.0.0.1', '2021-03-16 14:21:20', 'admin', 'AddNews', 'classid=11<br>id=17<br>title=亚峰汽车改装成功案例', 1000010000000017, '56442'),
(49, '127.0.0.1', '2021-03-16 14:22:32', 'admin', 'AddNews', 'classid=11<br>id=18<br>title=达州CNG汽车改装成功案例', 1000010000000018, '56497'),
(50, '127.0.0.1', '2021-03-16 14:25:49', 'admin', 'AddNews', 'classid=5<br>id=19<br>title=成都CNG改装', 1000010000000019, '56612'),
(51, '127.0.0.1', '2021-03-16 14:26:24', 'admin', 'AddNews', 'classid=5<br>id=20<br>title=成都CNG汽车改装', 1000010000000020, '56628'),
(52, '127.0.0.1', '2021-03-16 14:27:17', 'admin', 'AddNews', 'classid=5<br>id=21<br>title=成都CNG改装厂家', 1000010000000021, '56673'),
(53, '127.0.0.1', '2021-03-16 14:27:48', 'admin', 'AddNews', 'classid=5<br>id=22<br>title=成都CNG改装维护', 1000010000000022, '56689'),
(54, '127.0.0.1', '2021-03-16 14:28:17', 'admin', 'AddNews', 'classid=5<br>id=23<br>title=成都CNG改装公司', 1000010000000023, '56705'),
(55, '127.0.0.1', '2021-03-16 14:28:44', 'admin', 'AddNews', 'classid=5<br>id=24<br>title=成都CNG汽车改装厂家', 1000010000000024, '56726'),
(56, '127.0.0.1', '2021-03-16 14:29:37', 'admin', 'AddNews', 'classid=6<br>id=25<br>title=成都油改气', 1000010000000025, '56765'),
(57, '127.0.0.1', '2021-03-16 14:30:46', 'admin', 'AddNews', 'classid=6<br>id=26<br>title=成都油改气厂家', 1000010000000026, '56804'),
(58, '127.0.0.1', '2021-03-16 14:31:37', 'admin', 'AddNews', 'classid=7<br>id=27<br>title=成都CNG汽车维修', 1000010000000027, '56838'),
(59, '127.0.0.1', '2021-03-16 14:32:47', 'admin', 'AddNews', 'classid=6<br>id=28<br>title=成都油改气公司', 1000010000000028, '56895'),
(60, '127.0.0.1', '2021-03-16 14:33:23', 'admin', 'AddNews', 'classid=6<br>id=29<br>title=成都汽车油改气', 1000010000000029, '56906'),
(61, '127.0.0.1', '2021-03-16 14:34:11', 'admin', 'AddNews', 'classid=6<br>id=30<br>title=成都私家车油改气', 1000010000000030, '56936'),
(62, '127.0.0.1', '2021-03-16 14:34:38', 'admin', 'AddNews', 'classid=6<br>id=31<br>title=成都轿车油改气', 1000010000000031, '53190'),
(63, '127.0.0.1', '2021-03-16 15:57:52', 'admin', 'login', '---', 0, '53120'),
(64, '127.0.0.1', '2021-03-16 16:14:07', 'admin', 'EditTempvar', 'varid=1<br>var=header&amp;gid=1', 0, '53225'),
(65, '127.0.0.1', '2021-03-16 16:14:40', 'admin', 'EditPublicTemp', 'gid=1', 0, '53233'),
(66, '127.0.0.1', '2021-03-16 16:15:53', 'admin', 'EditPublicTemp', 'gid=1', 0, '53244'),
(67, '127.0.0.1', '2021-03-16 16:16:51', 'admin', 'RepTemp', 'gid=1', 0, '53262'),
(68, '127.0.0.1', '2021-03-16 16:17:02', 'admin', 'EditPublicTemp', 'gid=1', 0, '53268'),
(69, '127.0.0.1', '2021-03-16 16:17:47', 'admin', 'EditPublicTemp', 'gid=1', 0, '53294'),
(70, '127.0.0.1', '2021-03-16 16:21:37', 'admin', 'EditPublicTemp', 'gid=1', 0, '53346'),
(71, '127.0.0.1', '2021-03-16 16:23:36', 'admin', 'EditPublicTemp', 'gid=1', 0, '53375'),
(72, '127.0.0.1', '2021-03-16 16:27:22', 'admin', 'AddNews', 'classid=11<br>id=32<br>title=成都油改气厂家改装维修案例', 1000010000000032, '53460'),
(73, '127.0.0.1', '2021-03-16 16:28:19', 'admin', 'AddNews', 'classid=11<br>id=33<br>title=成都CNG改装成功案例', 1000010000000033, '53494'),
(74, '127.0.0.1', '2021-03-16 16:29:20', 'admin', 'AddNews', 'classid=11<br>id=34<br>title=成都油改气成功案例', 1000010000000034, '53545'),
(75, '127.0.0.1', '2021-03-16 16:30:24', 'admin', 'EditNews', 'classid=11<br>id=34<br>title=成都油改气成功案例', 1000010000000034, '53554'),
(76, '127.0.0.1', '2021-03-16 16:30:45', 'admin', 'login', '---', 0, '53563'),
(77, '127.0.0.1', '2021-03-16 16:31:04', 'admin', 'EditNews', 'classid=11<br>id=34<br>title=成都油改气成功案例', 1000010000000034, '53585'),
(78, '127.0.0.1', '2021-03-16 16:31:15', 'admin', 'EditNews', 'classid=11<br>id=33<br>title=成都CNG改装成功案例', 1000010000000033, '53591'),
(79, '127.0.0.1', '2021-03-16 16:31:26', 'admin', 'EditNews', 'classid=11<br>id=32<br>title=成都油改气厂家改装维修案例', 1000010000000032, '53591'),
(80, '127.0.0.1', '2021-03-16 16:31:39', 'admin', 'EditNews', 'classid=11<br>id=18<br>title=达州CNG汽车改装成功案例', 1000010000000018, '53604'),
(81, '127.0.0.1', '2021-03-16 16:31:56', 'admin', 'EditNews', 'classid=11<br>id=18<br>title=达州CNG汽车改装成功案例', 1000010000000018, '53626'),
(82, '127.0.0.1', '2021-03-16 16:32:07', 'admin', 'EditNews', 'classid=11<br>id=32<br>title=成都油改气厂家改装维修案例', 1000010000000032, '53632'),
(83, '127.0.0.1', '2021-03-16 16:32:15', 'admin', 'EditNews', 'classid=11<br>id=33<br>title=成都CNG改装成功案例', 1000010000000033, '53632'),
(84, '127.0.0.1', '2021-03-16 16:32:23', 'admin', 'EditNews', 'classid=11<br>id=17<br>title=亚峰汽车改装成功案例', 1000010000000017, '53632'),
(85, '127.0.0.1', '2021-03-16 16:32:31', 'admin', 'EditNews', 'classid=11<br>id=17<br>title=亚峰汽车改装成功案例', 1000010000000017, '53632'),
(86, '127.0.0.1', '2021-03-16 16:32:41', 'admin', 'EditNews', 'classid=11<br>id=16<br>title=汽车改装成功案例一', 1000010000000016, '53656'),
(87, '127.0.0.1', '2021-03-16 16:32:49', 'admin', 'EditNews', 'classid=11<br>id=16<br>title=汽车改装成功案例一', 1000010000000016, '53656'),
(88, '127.0.0.1', '2021-03-16 16:41:47', 'admin', 'EditPublicTemp', 'gid=1', 0, '53963'),
(89, '127.0.0.1', '2021-03-16 16:49:15', 'admin', 'EditPublicTemp', 'gid=1', 0, '54039'),
(90, '127.0.0.1', '2021-03-16 16:50:39', 'admin', 'EditPublicTemp', 'gid=1', 0, '54052'),
(91, '127.0.0.1', '2021-03-16 16:51:19', 'admin', 'EditPublicTemp', 'gid=1', 0, '54063'),
(92, '127.0.0.1', '2021-03-16 16:51:43', 'admin', 'EditPublicTemp', 'gid=1', 0, '54070'),
(93, '127.0.0.1', '2021-03-16 16:54:15', 'admin', 'EditNews', 'classid=5<br>id=24<br>title=成都CNG汽车改装厂家', 1000010000000024, '54148'),
(94, '127.0.0.1', '2021-03-16 16:54:16', 'admin', 'EditNews', 'classid=5<br>id=24<br>title=成都CNG汽车改装厂家', 1000010000000024, '54154'),
(95, '127.0.0.1', '2021-03-16 16:54:18', 'admin', 'EditNews', 'classid=5<br>id=24<br>title=成都CNG汽车改装厂家', 1000010000000024, '54157'),
(96, '127.0.0.1', '2021-03-16 16:54:39', 'admin', 'EditNews', 'classid=5<br>id=24<br>title=成都CNG汽车改装厂家', 1000010000000024, '54166'),
(97, '127.0.0.1', '2021-03-16 16:54:39', 'admin', 'EditNews', 'classid=5<br>id=24<br>title=成都CNG汽车改装厂家', 1000010000000024, '54169'),
(98, '127.0.0.1', '2021-03-16 16:54:42', 'admin', 'EditNews', 'classid=5<br>id=24<br>title=成都CNG汽车改装厂家', 1000010000000024, '54175'),
(99, '127.0.0.1', '2021-03-16 16:54:42', 'admin', 'EditNews', 'classid=5<br>id=24<br>title=成都CNG汽车改装厂家', 1000010000000024, '54151'),
(100, '127.0.0.1', '2021-03-16 16:54:43', 'admin', 'EditNews', 'classid=5<br>id=24<br>title=成都CNG汽车改装厂家', 1000010000000024, '54184'),
(101, '127.0.0.1', '2021-03-16 16:54:43', 'admin', 'EditNews', 'classid=5<br>id=24<br>title=成都CNG汽车改装厂家', 1000010000000024, '54204'),
(102, '127.0.0.1', '2021-03-16 16:54:43', 'admin', 'EditNews', 'classid=5<br>id=24<br>title=成都CNG汽车改装厂家', 1000010000000024, '54208'),
(103, '127.0.0.1', '2021-03-16 16:54:43', 'admin', 'EditNews', 'classid=5<br>id=24<br>title=成都CNG汽车改装厂家', 1000010000000024, '54211'),
(104, '127.0.0.1', '2021-03-16 16:54:43', 'admin', 'EditNews', 'classid=5<br>id=24<br>title=成都CNG汽车改装厂家', 1000010000000024, '54163'),
(105, '127.0.0.1', '2021-03-16 16:54:43', 'admin', 'EditNews', 'classid=5<br>id=24<br>title=成都CNG汽车改装厂家', 1000010000000024, '54172'),
(106, '127.0.0.1', '2021-03-16 16:54:43', 'admin', 'EditNews', 'classid=5<br>id=24<br>title=成都CNG汽车改装厂家', 1000010000000024, '54214'),
(107, '127.0.0.1', '2021-03-16 16:54:43', 'admin', 'EditNews', 'classid=5<br>id=24<br>title=成都CNG汽车改装厂家', 1000010000000024, '54160'),
(108, '127.0.0.1', '2021-03-16 16:54:43', 'admin', 'EditNews', 'classid=6<br>id=31<br>title=成都轿车油改气', 1000010000000031, '54230'),
(109, '127.0.0.1', '2021-03-16 16:54:44', 'admin', 'EditNews', 'classid=5<br>id=24<br>title=成都CNG汽车改装厂家', 1000010000000024, '54178'),
(110, '127.0.0.1', '2021-03-16 16:54:44', 'admin', 'EditNews', 'classid=5<br>id=24<br>title=成都CNG汽车改装厂家', 1000010000000024, '54187'),
(111, '127.0.0.1', '2021-03-16 16:54:44', 'admin', 'EditNews', 'classid=5<br>id=24<br>title=成都CNG汽车改装厂家', 1000010000000024, '54181'),
(112, '127.0.0.1', '2021-03-16 16:54:59', 'admin', 'EditNews', 'classid=5<br>id=23<br>title=成都CNG改装公司', 1000010000000023, '54251'),
(113, '127.0.0.1', '2021-03-16 16:55:11', 'admin', 'EditNews', 'classid=5<br>id=23<br>title=成都CNG改装公司', 1000010000000023, '54258'),
(114, '127.0.0.1', '2021-03-16 16:55:49', 'admin', 'EditNews', 'classid=5<br>id=22<br>title=成都CNG改装维护', 1000010000000022, '54329'),
(115, '127.0.0.1', '2021-03-16 16:55:49', 'admin', 'EditNews', 'classid=5<br>id=22<br>title=成都CNG改装维护', 1000010000000022, '54290'),
(116, '127.0.0.1', '2021-03-16 16:55:49', 'admin', 'EditNews', 'classid=5<br>id=22<br>title=成都CNG改装维护', 1000010000000022, '54293'),
(117, '127.0.0.1', '2021-03-16 16:55:49', 'admin', 'EditNews', 'classid=5<br>id=22<br>title=成都CNG改装维护', 1000010000000022, '54278'),
(118, '127.0.0.1', '2021-03-16 16:55:50', 'admin', 'EditNews', 'classid=5<br>id=22<br>title=成都CNG改装维护', 1000010000000022, '54320'),
(119, '127.0.0.1', '2021-03-16 16:55:50', 'admin', 'EditNews', 'classid=5<br>id=22<br>title=成都CNG改装维护', 1000010000000022, '54314'),
(120, '127.0.0.1', '2021-03-16 16:55:50', 'admin', 'EditNews', 'classid=5<br>id=22<br>title=成都CNG改装维护', 1000010000000022, '54317'),
(121, '127.0.0.1', '2021-03-16 16:55:50', 'admin', 'EditNews', 'classid=5<br>id=22<br>title=成都CNG改装维护', 1000010000000022, '54281'),
(122, '127.0.0.1', '2021-03-16 16:55:51', 'admin', 'EditNews', 'classid=5<br>id=22<br>title=成都CNG改装维护', 1000010000000022, '54302'),
(123, '127.0.0.1', '2021-03-16 16:55:51', 'admin', 'EditNews', 'classid=5<br>id=22<br>title=成都CNG改装维护', 1000010000000022, '54305'),
(124, '127.0.0.1', '2021-03-16 16:55:51', 'admin', 'EditNews', 'classid=5<br>id=22<br>title=成都CNG改装维护', 1000010000000022, '54299'),
(125, '127.0.0.1', '2021-03-16 16:55:51', 'admin', 'EditNews', 'classid=5<br>id=22<br>title=成都CNG改装维护', 1000010000000022, '54326'),
(126, '127.0.0.1', '2021-03-16 16:55:51', 'admin', 'EditNews', 'classid=5<br>id=22<br>title=成都CNG改装维护', 1000010000000022, '54287'),
(127, '127.0.0.1', '2021-03-16 16:55:52', 'admin', 'EditNews', 'classid=5<br>id=22<br>title=成都CNG改装维护', 1000010000000022, '54275'),
(128, '127.0.0.1', '2021-03-16 16:55:52', 'admin', 'EditNews', 'classid=5<br>id=22<br>title=成都CNG改装维护', 1000010000000022, '54332'),
(129, '127.0.0.1', '2021-03-16 16:55:53', 'admin', 'EditNews', 'classid=5<br>id=22<br>title=成都CNG改装维护', 1000010000000022, '54335'),
(130, '127.0.0.1', '2021-03-16 16:55:53', 'admin', 'EditNews', 'classid=5<br>id=22<br>title=成都CNG改装维护', 1000010000000022, '54272'),
(131, '127.0.0.1', '2021-03-16 16:55:53', 'admin', 'EditNews', 'classid=5<br>id=22<br>title=成都CNG改装维护', 1000010000000022, '54308'),
(132, '127.0.0.1', '2021-03-16 16:55:53', 'admin', 'EditNews', 'classid=5<br>id=22<br>title=成都CNG改装维护', 1000010000000022, '54284'),
(133, '127.0.0.1', '2021-03-16 16:55:53', 'admin', 'EditNews', 'classid=5<br>id=22<br>title=成都CNG改装维护', 1000010000000022, '54370'),
(134, '127.0.0.1', '2021-03-16 16:55:54', 'admin', 'EditNews', 'classid=5<br>id=22<br>title=成都CNG改装维护', 1000010000000022, '54296'),
(135, '127.0.0.1', '2021-03-16 16:55:54', 'admin', 'EditNews', 'classid=5<br>id=22<br>title=成都CNG改装维护', 1000010000000022, '54342'),
(136, '127.0.0.1', '2021-03-16 16:55:54', 'admin', 'EditNews', 'classid=5<br>id=22<br>title=成都CNG改装维护', 1000010000000022, '54344'),
(137, '127.0.0.1', '2021-03-16 16:55:54', 'admin', 'EditNews', 'classid=5<br>id=22<br>title=成都CNG改装维护', 1000010000000022, '54348'),
(138, '127.0.0.1', '2021-03-16 16:55:54', 'admin', 'EditNews', 'classid=5<br>id=22<br>title=成都CNG改装维护', 1000010000000022, '54351'),
(139, '127.0.0.1', '2021-03-16 16:55:54', 'admin', 'EditNews', 'classid=5<br>id=22<br>title=成都CNG改装维护', 1000010000000022, '54361'),
(140, '127.0.0.1', '2021-03-16 16:55:54', 'admin', 'EditNews', 'classid=5<br>id=22<br>title=成都CNG改装维护', 1000010000000022, '54357'),
(141, '127.0.0.1', '2021-03-16 16:55:54', 'admin', 'EditNews', 'classid=5<br>id=22<br>title=成都CNG改装维护', 1000010000000022, '54354'),
(142, '127.0.0.1', '2021-03-16 16:55:55', 'admin', 'EditNews', 'classid=5<br>id=22<br>title=成都CNG改装维护', 1000010000000022, '54364'),
(143, '127.0.0.1', '2021-03-16 16:55:55', 'admin', 'EditNews', 'classid=5<br>id=22<br>title=成都CNG改装维护', 1000010000000022, '54367'),
(144, '127.0.0.1', '2021-03-16 16:55:55', 'admin', 'EditNews', 'classid=5<br>id=22<br>title=成都CNG改装维护', 1000010000000022, '54373'),
(145, '127.0.0.1', '2021-03-16 16:55:55', 'admin', 'EditNews', 'classid=5<br>id=22<br>title=成都CNG改装维护', 1000010000000022, '54311'),
(146, '127.0.0.1', '2021-03-16 16:55:55', 'admin', 'EditNews', 'classid=5<br>id=22<br>title=成都CNG改装维护', 1000010000000022, '54323'),
(147, '127.0.0.1', '2021-03-16 16:56:03', 'admin', 'EditNews', 'classid=5<br>id=21<br>title=成都CNG改装厂家', 1000010000000021, '54382'),
(148, '127.0.0.1', '2021-03-16 16:56:13', 'admin', 'EditNews', 'classid=5<br>id=20<br>title=成都CNG汽车改装', 1000010000000020, '54389'),
(149, '127.0.0.1', '2021-03-16 16:56:29', 'admin', 'EditNews', 'classid=5<br>id=21<br>title=成都CNG改装厂家', 1000010000000021, '54408'),
(150, '127.0.0.1', '2021-03-16 16:56:38', 'admin', 'EditNews', 'classid=5<br>id=20<br>title=成都CNG汽车改装', 1000010000000020, '54408'),
(151, '127.0.0.1', '2021-03-16 16:56:47', 'admin', 'EditNews', 'classid=5<br>id=19<br>title=成都CNG改装', 1000010000000019, '54408'),
(152, '127.0.0.1', '2021-03-16 16:56:55', 'admin', 'EditNews', 'classid=5<br>id=19<br>title=成都CNG改装', 1000010000000019, '54426'),
(153, '127.0.0.1', '2021-03-16 16:57:09', 'admin', 'EditNews', 'classid=6<br>id=31<br>title=成都轿车油改气', 1000010000000031, '54438'),
(154, '127.0.0.1', '2021-03-16 16:57:20', 'admin', 'EditNews', 'classid=6<br>id=30<br>title=成都私家车油改气', 1000010000000030, '54438'),
(155, '127.0.0.1', '2021-03-16 16:57:20', 'admin', 'EditNews', 'classid=6<br>id=30<br>title=成都私家车油改气', 1000010000000030, '54449'),
(156, '127.0.0.1', '2021-03-16 16:57:20', 'admin', 'EditNews', 'classid=6<br>id=30<br>title=成都私家车油改气', 1000010000000030, '54446'),
(157, '127.0.0.1', '2021-03-16 16:57:28', 'admin', 'EditNews', 'classid=6<br>id=29<br>title=成都汽车油改气', 1000010000000029, '54449'),
(158, '127.0.0.1', '2021-03-16 16:57:38', 'admin', 'EditNews', 'classid=6<br>id=28<br>title=成都油改气公司', 1000010000000028, '54449'),
(159, '127.0.0.1', '2021-03-16 16:58:04', 'admin', 'EditNews', 'classid=6<br>id=29<br>title=成都汽车油改气', 1000010000000029, '54480'),
(160, '127.0.0.1', '2021-03-16 16:58:19', 'admin', 'EditNews', 'classid=6<br>id=28<br>title=成都油改气公司', 1000010000000028, '54487'),
(161, '127.0.0.1', '2021-03-16 16:58:47', 'admin', 'EditNews', 'classid=6<br>id=26<br>title=成都油改气厂家', 1000010000000026, '54498'),
(162, '127.0.0.1', '2021-03-16 16:59:00', 'admin', 'EditNews', 'classid=6<br>id=26<br>title=成都油改气厂家', 1000010000000026, '54501'),
(163, '127.0.0.1', '2021-03-16 16:59:10', 'admin', 'EditNews', 'classid=6<br>id=26<br>title=成都油改气厂家', 1000010000000026, '54507'),
(164, '127.0.0.1', '2021-03-16 16:59:13', 'admin', 'EditNews', 'classid=6<br>id=26<br>title=成都油改气厂家', 1000010000000026, '54495'),
(165, '127.0.0.1', '2021-03-16 16:59:39', 'admin', 'EditNews', 'classid=6<br>id=26<br>title=成都油改气厂家', 1000010000000026, '54531'),
(166, '127.0.0.1', '2021-03-16 16:59:41', 'admin', 'EditNews', 'classid=6<br>id=26<br>title=成都油改气厂家', 1000010000000026, '54537'),
(167, '127.0.0.1', '2021-03-16 16:59:43', 'admin', 'EditNews', 'classid=6<br>id=26<br>title=成都油改气厂家', 1000010000000026, '54540'),
(168, '127.0.0.1', '2021-03-16 16:59:48', 'admin', 'EditNews', 'classid=6<br>id=26<br>title=成都油改气厂家', 1000010000000026, '54525'),
(169, '127.0.0.1', '2021-03-16 16:59:48', 'admin', 'EditNews', 'classid=6<br>id=26<br>title=成都油改气厂家', 1000010000000026, '54528'),
(170, '127.0.0.1', '2021-03-16 16:59:51', 'admin', 'EditNews', 'classid=6<br>id=26<br>title=成都油改气厂家', 1000010000000026, '54513'),
(171, '127.0.0.1', '2021-03-16 16:59:55', 'admin', 'EditNews', 'classid=6<br>id=25<br>title=成都油改气', 1000010000000025, '54598'),
(172, '127.0.0.1', '2021-03-16 16:59:55', 'admin', 'EditNews', 'classid=6<br>id=25<br>title=成都油改气', 1000010000000025, '54600'),
(173, '127.0.0.1', '2021-03-16 16:59:55', 'admin', 'EditNews', 'classid=6<br>id=25<br>title=成都油改气', 1000010000000025, '54602'),
(174, '127.0.0.1', '2021-03-16 16:59:55', 'admin', 'EditNews', 'classid=6<br>id=25<br>title=成都油改气', 1000010000000025, '54591'),
(175, '127.0.0.1', '2021-03-16 16:59:55', 'admin', 'EditNews', 'classid=6<br>id=25<br>title=成都油改气', 1000010000000025, '54593'),
(176, '127.0.0.1', '2021-03-16 16:59:55', 'admin', 'EditNews', 'classid=6<br>id=25<br>title=成都油改气', 1000010000000025, '54595'),
(177, '127.0.0.1', '2021-03-16 16:59:56', 'admin', 'EditNews', 'classid=6<br>id=25<br>title=成都油改气', 1000010000000025, '54604'),
(178, '127.0.0.1', '2021-03-16 16:59:57', 'admin', 'EditNews', 'classid=6<br>id=25<br>title=成都油改气', 1000010000000025, '54614'),
(179, '127.0.0.1', '2021-03-16 16:59:57', 'admin', 'EditNews', 'classid=6<br>id=25<br>title=成都油改气', 1000010000000025, '54617'),
(180, '127.0.0.1', '2021-03-16 16:59:58', 'admin', 'EditNews', 'classid=6<br>id=25<br>title=成都油改气', 1000010000000025, '54626'),
(181, '127.0.0.1', '2021-03-16 16:59:58', 'admin', 'EditNews', 'classid=6<br>id=25<br>title=成都油改气', 1000010000000025, '54623'),
(182, '127.0.0.1', '2021-03-16 16:59:58', 'admin', 'EditNews', 'classid=6<br>id=25<br>title=成都油改气', 1000010000000025, '54620'),
(183, '127.0.0.1', '2021-03-16 16:59:59', 'admin', 'EditNews', 'classid=6<br>id=25<br>title=成都油改气', 1000010000000025, '54629'),
(184, '127.0.0.1', '2021-03-16 17:00:09', 'admin', 'EditNews', 'classid=6<br>id=26<br>title=成都油改气厂家', 1000010000000026, '54519'),
(185, '127.0.0.1', '2021-03-16 17:00:10', 'admin', 'EditNews', 'classid=6<br>id=26<br>title=成都油改气厂家', 1000010000000026, '54510'),
(186, '127.0.0.1', '2021-03-16 17:00:10', 'admin', 'EditNews', 'classid=6<br>id=26<br>title=成都油改气厂家', 1000010000000026, '54504'),
(187, '127.0.0.1', '2021-03-16 17:00:14', 'admin', 'EditNews', 'classid=6<br>id=26<br>title=成都油改气厂家', 1000010000000026, '54543'),
(188, '127.0.0.1', '2021-03-16 17:00:15', 'admin', 'EditNews', 'classid=6<br>id=26<br>title=成都油改气厂家', 1000010000000026, '54534'),
(189, '127.0.0.1', '2021-03-16 17:00:21', 'admin', 'EditNews', 'classid=6<br>id=26<br>title=成都油改气厂家', 1000010000000026, '54522'),
(190, '127.0.0.1', '2021-03-16 17:00:24', 'admin', 'EditNews', 'classid=6<br>id=26<br>title=成都油改气厂家', 1000010000000026, '54516'),
(191, '127.0.0.1', '2021-03-16 17:08:01', 'admin', 'EditTempvar', 'varid=1<br>var=header&amp;gid=1', 0, '54719'),
(192, '127.0.0.1', '2021-03-16 17:08:10', 'admin', 'EditPublicTemp', 'gid=1', 0, '54719'),
(193, '127.0.0.1', '2021-03-16 17:08:51', 'admin', 'EditNews', 'classid=6<br>id=31<br>title=达州轿车油改气', 1000010000000031, '54743'),
(194, '127.0.0.1', '2021-03-16 17:08:56', 'admin', 'EditNews', 'classid=6<br>id=30<br>title=达州私家车油改气', 1000010000000030, '54743'),
(195, '127.0.0.1', '2021-03-16 17:09:03', 'admin', 'EditNews', 'classid=6<br>id=29<br>title=达州汽车油改气', 1000010000000029, '54743'),
(196, '127.0.0.1', '2021-03-16 17:09:08', 'admin', 'EditNews', 'classid=6<br>id=28<br>title=达州油改气公司', 1000010000000028, '54743'),
(197, '127.0.0.1', '2021-03-16 17:09:14', 'admin', 'EditNews', 'classid=6<br>id=26<br>title=达州油改气厂家', 1000010000000026, '54743'),
(198, '127.0.0.1', '2021-03-16 17:09:19', 'admin', 'EditNews', 'classid=6<br>id=25<br>title=达州油改气', 1000010000000025, '54743'),
(199, '127.0.0.1', '2021-03-16 17:09:26', 'admin', 'EditNews', 'classid=5<br>id=24<br>title=达州CNG汽车改装厂家', 1000010000000024, '54743'),
(200, '127.0.0.1', '2021-03-16 17:09:31', 'admin', 'EditNews', 'classid=5<br>id=23<br>title=达州CNG改装公司', 1000010000000023, '54743'),
(201, '127.0.0.1', '2021-03-16 17:09:37', 'admin', 'EditNews', 'classid=5<br>id=22<br>title=达州CNG改装维护', 1000010000000022, '54743'),
(202, '127.0.0.1', '2021-03-16 17:09:41', 'admin', 'EditNews', 'classid=5<br>id=21<br>title=达州CNG改装厂家', 1000010000000021, '54743'),
(203, '127.0.0.1', '2021-03-16 17:09:47', 'admin', 'EditNews', 'classid=5<br>id=20<br>title=达州CNG汽车改装', 1000010000000020, '54743'),
(204, '127.0.0.1', '2021-03-16 17:09:52', 'admin', 'EditNews', 'classid=5<br>id=19<br>title=达州CNG改装', 1000010000000019, '54743'),
(205, '127.0.0.1', '2021-03-16 17:16:57', 'admin', 'EditTempvar', 'varid=1<br>var=header&amp;gid=1', 0, '54880'),
(206, '127.0.0.1', '2021-03-16 17:17:27', 'admin', 'EditPublicTemp', 'gid=1', 0, '54888'),
(207, '127.0.0.1', '2021-03-16 17:18:47', 'admin', 'EditNews', 'classid=7<br>id=27<br>title=达州CNG汽车维修', 1000010000000027, '54915'),
(208, '127.0.0.1', '2021-03-16 17:19:01', 'admin', 'EditNews', 'classid=7<br>id=27<br>title=达州CNG汽车维修', 1000010000000027, '54979'),
(209, '127.0.0.1', '2021-03-16 17:19:03', 'admin', 'EditNews', 'classid=7<br>id=27<br>title=达州CNG汽车维修', 1000010000000027, '54940'),
(210, '127.0.0.1', '2021-03-16 17:19:15', 'admin', 'EditNews', 'classid=7<br>id=27<br>title=达州CNG汽车维修', 1000010000000027, '54955'),
(211, '127.0.0.1', '2021-03-16 17:19:16', 'admin', 'EditNews', 'classid=7<br>id=27<br>title=达州CNG汽车维修', 1000010000000027, '54943'),
(212, '127.0.0.1', '2021-03-16 17:19:21', 'admin', 'EditNews', 'classid=7<br>id=27<br>title=达州CNG汽车维修', 1000010000000027, '54946'),
(213, '127.0.0.1', '2021-03-16 17:19:26', 'admin', 'EditNews', 'classid=7<br>id=27<br>title=达州CNG汽车维修', 1000010000000027, '54934'),
(214, '127.0.0.1', '2021-03-16 17:19:29', 'admin', 'EditNews', 'classid=7<br>id=27<br>title=达州CNG汽车维修', 1000010000000027, '54924'),
(215, '127.0.0.1', '2021-03-16 17:19:30', 'admin', 'EditNews', 'classid=7<br>id=27<br>title=达州CNG汽车维修', 1000010000000027, '54949'),
(216, '127.0.0.1', '2021-03-16 17:19:34', 'admin', 'EditNews', 'classid=7<br>id=27<br>title=达州CNG汽车维修', 1000010000000027, '54931'),
(217, '127.0.0.1', '2021-03-16 17:19:34', 'admin', 'EditNews', 'classid=7<br>id=27<br>title=达州CNG汽车维修', 1000010000000027, '54952'),
(218, '127.0.0.1', '2021-03-16 17:19:37', 'admin', 'EditNews', 'classid=7<br>id=27<br>title=达州CNG汽车维修', 1000010000000027, '54921'),
(219, '127.0.0.1', '2021-03-16 17:19:40', 'admin', 'EditNews', 'classid=7<br>id=27<br>title=达州CNG汽车维修', 1000010000000027, '54961'),
(220, '127.0.0.1', '2021-03-16 17:19:42', 'admin', 'EditNews', 'classid=7<br>id=27<br>title=达州CNG汽车维修', 1000010000000027, '54928'),
(221, '127.0.0.1', '2021-03-16 17:20:01', 'admin', 'EditNews', 'classid=7<br>id=27<br>title=达州CNG汽车维修', 1000010000000027, '54958'),
(222, '127.0.0.1', '2021-03-16 17:20:02', 'admin', 'EditNews', 'classid=7<br>id=27<br>title=达州CNG汽车维修', 1000010000000027, '54918'),
(223, '127.0.0.1', '2021-03-16 17:20:19', 'admin', 'EditNews', 'classid=7<br>id=27<br>title=达州CNG汽车维修', 1000010000000027, '54937'),
(224, '127.0.0.1', '2021-03-16 17:26:39', 'admin', 'EditTempvar', 'varid=1<br>var=header&amp;gid=1', 0, '55044'),
(225, '127.0.0.1', '2021-03-16 17:26:46', 'admin', 'EditPublicTemp', 'gid=1', 0, '55044'),
(226, '127.0.0.1', '2021-03-16 17:31:52', 'admin', 'CopyNews_all', 'classid=9<br>classname=行业动态<br>to_classid=8', 0, '55111'),
(227, '127.0.0.1', '2021-03-16 17:33:45', 'admin', 'EditNews', 'classid=8<br>id=45<br>title=资金面料无忧 定向降准有空间', 1000010000000045, '55157'),
(228, '127.0.0.1', '2021-03-16 17:34:10', 'admin', 'EditNews', 'classid=9<br>id=15<br>title=资金面料无忧 定向降准有空间', 1000010000000015, '55170'),
(229, '127.0.0.1', '2021-03-16 17:35:21', 'admin', 'EditNews', 'classid=9<br>id=14<br>title=电厂需求走低库存回升 旺季煤价中长期走势成谜', 1000010000000014, '55202'),
(230, '127.0.0.1', '2021-03-16 17:36:25', 'admin', 'DelNews', 'classid=9<br>id=14<br>title=电厂需求走低库存回升 旺季煤价中长期走势成谜', 1000010000000014, '55207'),
(231, '127.0.0.1', '2021-03-16 17:36:32', 'admin', 'DelNews', 'classid=9<br>id=13<br>title=黄金期货周二收高0.6% 创14个月新高', 1000010000000013, '55207'),
(232, '127.0.0.1', '2021-03-16 17:42:19', 'admin', 'EditPublicTemp', 'gid=1', 0, '55253'),
(233, '127.0.0.1', '2021-03-16 17:42:59', 'admin', 'EditInfoSimple', 'classid=8<br>id=45<br>title=资金面料无忧 定向降准有空间', 1000010000000045, '55272'),
(234, '127.0.0.1', '2021-03-16 17:43:06', 'admin', 'AddInfoToReHtml', 'classid=8<br>do=6', 0, '55274'),
(235, '127.0.0.1', '2021-03-16 17:47:48', 'admin', 'EditPublicTemp', 'gid=1', 0, '55331'),
(236, '127.0.0.1', '2021-03-16 17:48:32', 'admin', 'EditPublicTemp', 'gid=1', 0, '55352'),
(237, '127.0.0.1', '2021-03-16 17:49:28', 'admin', 'EditTempvar', 'varid=2<br>var=footer&amp;gid=1', 0, '55367'),
(238, '127.0.0.1', '2021-03-16 18:08:11', 'admin', 'login', '---', 0, '55861'),
(239, '127.0.0.1', '2021-03-16 18:22:45', 'admin', 'EditListtemp', 'tempid=1<br>tempname=默认新闻列表模板&amp;gid=1', 0, '54656'),
(240, '127.0.0.1', '2021-03-16 18:23:11', 'admin', 'ReListHtml_all', '---', 0, '54661'),
(241, '127.0.0.1', '2021-03-16 18:35:37', 'admin', 'EditNewstemp', 'tempid=1<br>tempname=默认新闻内容模板&amp;gid=1', 0, '55032'),
(242, '127.0.0.1', '2021-03-16 18:37:57', 'admin', 'EditNewstemp', 'tempid=1<br>tempname=默认新闻内容模板&amp;gid=1', 0, '55076'),
(243, '127.0.0.1', '2021-03-16 18:39:09', 'admin', 'EditNewstemp', 'tempid=1<br>tempname=默认新闻内容模板&amp;gid=1', 0, '55108'),
(244, '127.0.0.1', '2021-03-16 18:46:44', 'admin', 'EditNewstemp', 'tempid=8<br>tempname=默认文章内容模板&amp;gid=1', 0, '55177'),
(245, '127.0.0.1', '2021-03-16 18:48:05', 'admin', 'EditNewstemp', 'tempid=8<br>tempname=服务内容模板&amp;gid=1', 0, '55218'),
(246, '127.0.0.1', '2021-03-16 18:48:34', 'admin', 'EditNewstemp', 'tempid=2<br>tempname=新闻内容模板&amp;gid=1', 0, '55225'),
(247, '127.0.0.1', '2021-03-16 18:49:23', 'admin', 'SetMoreClass', '---', 0, '55235'),
(248, '127.0.0.1', '2021-03-16 18:51:38', 'admin', 'EditNewstemp', 'tempid=3<br>tempname=公司简介模板&amp;gid=1', 0, '55275'),
(249, '127.0.0.1', '2021-03-16 18:52:13', 'admin', 'EditNewstemp', 'tempid=4<br>tempname=联系我们模板&amp;gid=1', 0, '55290'),
(250, '127.0.0.1', '2021-03-16 18:52:35', 'admin', 'EditNews', 'classid=15<br>id=1<br>title=公司简介', 1000010000000001, '55303'),
(251, '127.0.0.1', '2021-03-16 18:52:46', 'admin', 'EditNews', 'classid=18<br>id=4<br>title=联系我们', 1000010000000004, '55314'),
(252, '127.0.0.1', '2021-03-16 19:09:58', 'admin', 'EditTempvar', 'varid=4<br>var=infoarea&amp;gid=1', 0, '55539'),
(253, '127.0.0.1', '2021-03-16 19:12:35', 'admin', 'EditNewstemp', 'tempid=2<br>tempname=新闻内容模板&amp;gid=1', 0, '55593'),
(254, '127.0.0.1', '2021-03-16 19:12:50', 'admin', 'EditNewstemp', 'tempid=8<br>tempname=服务内容模板&amp;gid=1', 0, '55599'),
(255, '127.0.0.1', '2021-03-16 19:14:40', 'admin', 'EditNewstemp', 'tempid=2<br>tempname=新闻内容模板&amp;gid=1', 0, '55624'),
(256, '127.0.0.1', '2021-03-16 19:14:53', 'admin', 'EditNewstemp', 'tempid=8<br>tempname=服务内容模板&amp;gid=1', 0, '55628'),
(257, '127.0.0.1', '2021-03-16 19:16:14', 'admin', 'EditNewstemp', 'tempid=8<br>tempname=服务内容模板&amp;gid=1', 0, '55656'),
(258, '127.0.0.1', '2021-03-16 19:17:37', 'admin', 'EditNewstemp', 'tempid=1<br>tempname=服务内容模板&amp;gid=1', 0, '55693'),
(259, '127.0.0.1', '2021-03-16 19:17:44', 'admin', 'DelNewstemp', 'tempid=9<br>tempname=默认分类信息内容模板&amp;gid=1', 0, '55698'),
(260, '127.0.0.1', '2021-03-16 19:17:50', 'admin', 'DelNewstemp', 'tempid=8<br>tempname=服务内容模板&amp;gid=1', 0, '55698'),
(261, '127.0.0.1', '2021-03-16 19:17:54', 'admin', 'DelNewstemp', 'tempid=7<br>tempname=默认商城内容模板&amp;gid=1', 0, '55698'),
(262, '127.0.0.1', '2021-03-16 19:17:58', 'admin', 'DelNewstemp', 'tempid=6<br>tempname=默认电影内容模板&amp;gid=1', 0, '55698'),
(263, '127.0.0.1', '2021-03-16 19:18:03', 'admin', 'DelNewstemp', 'tempid=5<br>tempname=默认FLASH内容模板&amp;gid=1', 0, '55698');

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsdownerror`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsdownerror` (
  `errorid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `errortext` varchar(255) NOT NULL DEFAULT '',
  `errortime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `errorip` varchar(20) NOT NULL DEFAULT '',
  `email` varchar(80) NOT NULL DEFAULT '',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `cid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`errorid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsdownrecord`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsdownrecord` (
  `id` int(11) NOT NULL DEFAULT '0',
  `pathid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `title` varchar(120) NOT NULL DEFAULT '',
  `cardfen` int(11) NOT NULL DEFAULT '0',
  `truetime` int(11) NOT NULL DEFAULT '0',
  `classid` smallint(6) NOT NULL DEFAULT '0',
  `online` tinyint(1) NOT NULL DEFAULT '0',
  KEY `userid` (`userid`),
  KEY `truetime` (`truetime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsdownurlqz`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsdownurlqz` (
  `urlid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `urlname` varchar(30) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `downtype` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`urlid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewserrorclass`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewserrorclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsf`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsf` (
  `fid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `f` varchar(30) NOT NULL DEFAULT '',
  `fname` varchar(30) NOT NULL DEFAULT '',
  `fform` varchar(20) NOT NULL DEFAULT '',
  `fhtml` mediumtext NOT NULL,
  `fzs` varchar(255) NOT NULL DEFAULT '',
  `isadd` tinyint(1) NOT NULL DEFAULT '0',
  `isshow` tinyint(1) NOT NULL DEFAULT '0',
  `iscj` tinyint(1) NOT NULL DEFAULT '0',
  `cjhtml` mediumtext NOT NULL,
  `myorder` smallint(6) NOT NULL DEFAULT '0',
  `ftype` varchar(30) NOT NULL DEFAULT '',
  `flen` varchar(20) NOT NULL DEFAULT '',
  `dotemp` tinyint(1) NOT NULL DEFAULT '0',
  `tid` smallint(6) NOT NULL DEFAULT '0',
  `tbname` varchar(60) NOT NULL DEFAULT '',
  `savetxt` tinyint(1) NOT NULL DEFAULT '0',
  `fvalue` text NOT NULL,
  `iskey` tinyint(1) NOT NULL DEFAULT '0',
  `tobr` tinyint(1) NOT NULL DEFAULT '0',
  `dohtml` tinyint(1) NOT NULL DEFAULT '0',
  `qfhtml` mediumtext NOT NULL,
  `isonly` tinyint(1) NOT NULL DEFAULT '0',
  `linkfieldval` varchar(30) NOT NULL DEFAULT '',
  `samedata` tinyint(1) NOT NULL DEFAULT '0',
  `fformsize` varchar(12) NOT NULL DEFAULT '',
  `tbdataf` tinyint(1) NOT NULL DEFAULT '0',
  `ispage` tinyint(1) NOT NULL DEFAULT '0',
  `adddofun` varchar(255) NOT NULL DEFAULT '',
  `editdofun` varchar(255) NOT NULL DEFAULT '',
  `qadddofun` varchar(255) NOT NULL DEFAULT '',
  `qeditdofun` varchar(255) NOT NULL DEFAULT '',
  `linkfieldtb` varchar(60) NOT NULL DEFAULT '',
  `linkfieldshow` varchar(30) NOT NULL DEFAULT '',
  `editorys` tinyint(1) NOT NULL DEFAULT '0',
  `issmalltext` tinyint(1) NOT NULL DEFAULT '0',
  `fmvnum` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`fid`),
  KEY `tid` (`tid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=107 ;

--
-- 转存表中的数据 `dayuqixiu_enewsf`
--

INSERT INTO `dayuqixiu_enewsf` (`fid`, `f`, `fname`, `fform`, `fhtml`, `fzs`, `isadd`, `isshow`, `iscj`, `cjhtml`, `myorder`, `ftype`, `flen`, `dotemp`, `tid`, `tbname`, `savetxt`, `fvalue`, `iskey`, `tobr`, `dohtml`, `qfhtml`, `isonly`, `linkfieldval`, `samedata`, `fformsize`, `tbdataf`, `ispage`, `adddofun`, `editdofun`, `qadddofun`, `qeditdofun`, `linkfieldtb`, `linkfieldshow`, `editorys`, `issmalltext`, `fmvnum`) VALUES
(1, 'title', '标题', 'text', '<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\" bgcolor=\\"#DBEAF5\\">\r\n<tr> \r\n  <td height=\\"25\\" bgcolor=\\"#FFFFFF\\">\r\n	<?=$tts?\\"<select name=\\''ttid\\''><option value=\\''0\\''>标题分类</option>$tts</select>\\":\\"\\"?>\r\n	<input type=text name=title value=\\"<?=ehtmlspecialchars(stripSlashes($r[title]))?>\\" size=\\"60\\"> \r\n	<input type=\\"button\\" name=\\"button\\" value=\\"图文\\" onclick=\\"document.add.title.value=document.add.title.value+\\''(图文)\\'';\\"> \r\n  </td>\r\n</tr>\r\n<tr> \r\n  <td height=\\"25\\" bgcolor=\\"#FFFFFF\\">属性: \r\n	<input name=\\"titlefont[b]\\" type=\\"checkbox\\" value=\\"b\\"<?=$titlefontb?>>粗体\r\n	<input name=\\"titlefont[i]\\" type=\\"checkbox\\" value=\\"i\\"<?=$titlefonti?>>斜体\r\n	<input name=\\"titlefont[s]\\" type=\\"checkbox\\" value=\\"s\\"<?=$titlefonts?>>删除线\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;颜色: <input name=\\"titlecolor\\" type=\\"text\\" value=\\"<?=stripSlashes($r[titlecolor])?>\\" size=\\"10\\" class=\\"color\\">\r\n  </td>\r\n</tr>\r\n</table>', '标题', 0, 1, 1, '  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--title--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_title]" cols="60" rows="10" id="textarea"><?=ehtmlspecialchars(stripSlashes($r[zz_title]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_title]" type="text" id="add[z_title]" value="<?=stripSlashes($r[z_title])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>', 0, 'CHAR', '100', 1, 1, 'news', 0, '', 0, 0, 0, '<input name=\\"title\\" type=\\"text\\" size=\\"42\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":DoReqValue($mid,\\''title\\'',stripSlashes($r[title]))?>\\">', 0, '', 0, '60', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(2, 'special.field', '特殊属性', '', '<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\" bgcolor=\\"#DBEAF5\\">\r\n  <tr>\r\n    <td height=\\"25\\" bgcolor=\\"#FFFFFF\\">信息属性: \r\n      <input name=\\"checked\\" type=\\"checkbox\\" value=\\"1\\"<?=$r[checked]?\\'' checked\\'':\\''\\''?>>\r\n      审核 &nbsp;&nbsp; 推荐 \r\n      <select name=\\"isgood\\" id=\\"isgood\\">\r\n        <option value=\\"0\\">不推荐</option>\r\n	<?=$ftnr[\\''igname\\'']?>\r\n      </select>\r\n      &nbsp;&nbsp; 头条 \r\n      <select name=\\"firsttitle\\" id=\\"firsttitle\\">\r\n        <option value=\\"0\\">非头条</option>\r\n	<?=$ftnr[\\''ftname\\'']?>\r\n      </select></td>\r\n  </tr>\r\n  <tr> \r\n    <td height=\\"25\\" bgcolor=\\"#FFFFFF\\">关键字&nbsp;&nbsp;&nbsp;: \r\n      <input name=\\"keyboard\\" type=\\"text\\" size=\\"52\\" value=\\"<?=stripSlashes($r[keyboard])?>\\">\r\n      <font color=\\"#666666\\">(多个请用&quot;,&quot;隔开)</font></td>\r\n  </tr>\r\n  <tr> \r\n    <td height=\\"25\\" bgcolor=\\"#FFFFFF\\">外部链接: \r\n      <input name=\\"titleurl\\" type=\\"text\\" value=\\"<?=stripSlashes($r[titleurl])?>\\" size=\\"52\\">\r\n      <font color=\\"#666666\\">(填写后信息连接地址将为此链接)</font></td>\r\n  </tr>\r\n</table>', '特殊属性', 0, 1, 0, '', 1, '', '', 0, 1, 'news', 0, '', 0, 0, 0, '<input name=\\"keyboard\\" type=\\"text\\" size=42 value=\\"<?=stripSlashes($r[keyboard])?>\\">\r\n<font color=\\"#666666\\">(多个请用&quot;,&quot;隔开)</font>', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(3, 'titlepic', '标题图片', 'img', '<input name=\\"titlepic\\" type=\\"text\\" id=\\"titlepic\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":ehtmlspecialchars(stripSlashes($r[titlepic]))?>\\" size=\\"45\\">\r\n<a onclick=\\"window.open(\\''ecmseditor/FileMain.php?type=1&classid=<?=$classid?>&infoid=<?=$id?>&filepass=<?=$filepass?>&sinfo=1&doing=1&field=titlepic<?=$ecms_hashur[ehref]?>\\'',\\''\\'',\\''width=700,height=550,scrollbars=yes\\'');\\" title=\\"选择已上传的图片\\"><img src=\\"../data/images/changeimg.gif\\" border=\\"0\\" align=\\"absbottom\\"></a>', '标题图片', 0, 1, 1, '  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      ( \r\n      <input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--titlepic--]\\" size=\\"20\\">\r\n      )</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n    <tr>\r\n      <td>附件前缀 \r\n        <input name=\\"add[qz_titlepic]\\" type=\\"text\\" id=\\"add[qz_titlepic]\\" value=\\"<?=stripSlashes($r[qz_titlepic])?>\\"> \r\n        <input name=\\"add[save_titlepic]\\" type=\\"checkbox\\" id=\\"add[save_titlepic]\\" value=\\" checked\\"<?=$r[save_titlepic]?>>\r\n        远程保存 </td>\r\n    </tr>\r\n    <tr> \r\n      <td><textarea name=\\"add[zz_titlepic]\\" cols=\\"60\\" rows=\\"10\\" id=\\"add[zz_titlepic]\\"><?=ehtmlspecialchars(stripSlashes($r[zz_titlepic]))?></textarea></td>\r\n    </tr>\r\n    <tr> \r\n      <td><input name=\\"add[z_titlepic]\\" type=\\"text\\" id=\\"titlepic5\\" value=\\"<?=stripSlashes($r[z_titlepic])?>\\">\r\n        (如填写这里，这就是字段的值)</td>\r\n    </tr>\r\n  </table></td>\r\n  </tr>\r\n', 2, 'CHAR', '120', 1, 1, 'news', 0, '', 0, 0, 0, '<input type=\\"file\\" name=\\"titlepicfile\\" size=\\"45\\">', 0, '', 0, '60', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(4, 'newstime', '发布时间', 'text', '<input name=\\"newstime\\" type=\\"text\\" value=\\"<?=$r[newstime]?>\\" size=\\"28\\" class=\\"Wdate\\" onClick=\\"WdatePicker({skin:\\''default\\'',dateFmt:\\''yyyy-MM-dd HH:mm:ss\\''})\\"><input type=button name=button value=\\"设为当前时间\\" onclick=\\"document.add.newstime.value=\\''<?=$todaytime?>\\''\\">', '发布时间', 0, 1, 1, '  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--newstime--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_newstime]" cols="60" rows="10" id="textarea"><?=ehtmlspecialchars(stripSlashes($r[zz_newstime]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_newstime]" type="text" id="add[z_newstime]" value="<?=stripSlashes($r[z_newstime])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>', 1, 'INT', '11', 1, 1, 'news', 0, '', 1, 0, 0, '', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(5, 'ftitle', '副标题', 'text', '<input name=\\"ftitle\\" type=\\"text\\" size=60 id=\\"ftitle\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":ehtmlspecialchars(stripSlashes($r[ftitle]))?>\\">\r\n', '副标题', 1, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--ftitle--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_ftitle]" cols="60" rows="10" id="textarea"><?=ehtmlspecialchars(stripSlashes($r[zz_ftitle]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_ftitle]" type="text" id="add[z_ftitle]" value="<?=stripSlashes($r[z_ftitle])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 0, 'CHAR', '120', 1, 1, 'news', 0, '', 0, 0, 1, '<input name=\\"ftitle\\" type=\\"text\\" size=42 id=\\"ftitle\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":DoReqValue($mid,\\''ftitle\\'',stripSlashes($r[ftitle]))?>\\">\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(6, 'smalltext', '内容简介', 'textarea', '<textarea name=\\"smalltext\\" cols=\\"80\\" rows=\\"10\\" id=\\"smalltext\\"><?=$ecmsfirstpost==1?\\"\\":ehtmlspecialchars(stripSlashes($r[smalltext]))?></textarea>\r\n', '内容简介', 1, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--smalltext--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_smalltext]" cols="60" rows="10" id="textarea"><?=ehtmlspecialchars(stripSlashes($r[zz_smalltext]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_smalltext]" type="text" id="add[z_smalltext]" value="<?=stripSlashes($r[z_smalltext])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 2, 'CHAR', '255', 1, 1, 'news', 0, '', 0, 1, 1, '<textarea name=\\"smalltext\\" cols=\\"60\\" rows=\\"10\\" id=\\"smalltext\\"><?=$ecmsfirstpost==1?\\"\\":DoReqValue($mid,\\''smalltext\\'',stripSlashes($r[smalltext]))?></textarea>\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 1, ''),
(7, 'writer', '作者', 'text', '<?php\r\n$writer_sql=$empire->query(\\"select writer from {$dbtbpre}enewswriter\\");\r\nwhile($w_r=$empire->fetch($writer_sql))\r\n{\r\n	$w_class.=\\"<option value=\\''\\".$w_r[writer].\\"\\''>\\".$w_r[writer].\\"</option>\\";\r\n}\r\n?>\r\n<input type=text name=writer value=\\"<?=$ecmsfirstpost==1?\\"\\":ehtmlspecialchars(stripSlashes($r[writer]))?>\\" size=\\"\\"> \r\n        <select name=\\"w_id\\" id=\\"select7\\" onchange=\\"document.add.writer.value=document.add.w_id.value\\">\r\n          <option>选择作者</option>\r\n		  <?=$w_class?>\r\n        </select>\r\n<input type=\\"button\\" name=\\"wbutton\\" value=\\"增加作者\\" onclick=\\"window.open(\\''NewsSys/writer.php?<?=$ecms_hashur[ehref]?>&addwritername=\\''+document.add.writer.value);\\">\r\n', '作者', 1, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--writer--]\\" size=\\"20\\">)</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n          <td><textarea name=\\"add[zz_writer]\\" cols=\\"60\\" rows=\\"10\\" id=\\"textarea\\"><?=ehtmlspecialchars(stripSlashes($r[zz_writer]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\"add[z_writer]\\" type=\\"text\\" id=\\"add[z_writer]\\" value=\\"<?=stripSlashes($r[z_writer])?>\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 2, 'CHAR', '30', 1, 1, 'news', 0, '', 0, 0, 1, '<input name=\\"writer\\" type=\\"text\\" id=\\"writer\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":DoReqValue($mid,\\''writer\\'',stripSlashes($r[writer]))?>\\" size=\\"\\">\r\n', 0, '', 0, '', 1, 0, '', '', '', '', '', '', 0, 0, ''),
(8, 'befrom', '信息来源', 'text', '<?php\r\n$befrom_sql=$empire->query(\\"select sitename from {$dbtbpre}enewsbefrom\\");\r\nwhile($b_r=$empire->fetch($befrom_sql))\r\n{\r\n	$b_class.=\\"<option value=\\''\\".$b_r[sitename].\\"\\''>\\".$b_r[sitename].\\"</option>\\";\r\n}\r\n?>\r\n<input type=\\"text\\" name=\\"befrom\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":ehtmlspecialchars(stripSlashes($r[befrom]))?>\\" size=\\"\\"> \r\n        <select name=\\"befrom_id\\" id=\\"befromid\\" onchange=\\"document.add.befrom.value=document.add.befrom_id.value\\">\r\n          <option>选择信息来源</option>\r\n          <?=$b_class?>\r\n        </select>\r\n<input type=\\"button\\" name=\\"wbutton\\" value=\\"增加来源\\" onclick=\\"window.open(\\''NewsSys/BeFrom.php?<?=$ecms_hashur[ehref]?>&addsitename=\\''+document.add.befrom.value);\\">\r\n', '信息来源', 1, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--befrom--]\\" size=\\"20\\">)</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n          <td><textarea name=\\"add[zz_befrom]\\" cols=\\"60\\" rows=\\"10\\" id=\\"textarea\\"><?=ehtmlspecialchars(stripSlashes($r[zz_befrom]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\"add[z_befrom]\\" type=\\"text\\" id=\\"add[z_befrom]\\" value=\\"<?=stripSlashes($r[z_befrom])?>\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 2, 'CHAR', '60', 1, 1, 'news', 0, '', 0, 0, 1, '<input name=\\"befrom\\" type=\\"text\\" id=\\"befrom\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":DoReqValue($mid,\\''befrom\\'',stripSlashes($r[befrom]))?>\\" size=\\"\\">\r\n', 0, '', 0, '', 1, 0, '', '', '', '', '', '', 0, 0, ''),
(9, 'newstext', '新闻正文', 'editor', '<?=ECMS_ShowEditorVar(\\"newstext\\",$ecmsfirstpost==1?\\"\\":stripSlashes($r[newstext]),\\"Default\\",\\"\\",\\"300\\",\\"100%\\")?>\r\n<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"3\\" cellspacing=\\"1\\" bgcolor=\\"#DBEAF5\\">\r\n          <tr> \r\n            <td bgcolor=\\"#FFFFFF\\"> <input name=\\"dokey\\" type=\\"checkbox\\" value=\\"1\\"<?=$r[dokey]==1?\\'' checked\\'':\\''\\''?>>\r\n              关键字替换&nbsp;&nbsp; <input name=\\"copyimg\\" type=\\"checkbox\\" id=\\"copyimg\\" value=\\"1\\">\r\n      远程保存图片(\r\n      <input name=\\"mark\\" type=\\"checkbox\\" id=\\"mark\\" value=\\"1\\">\r\n      <a href=\\"SetEnews.php<?=$ecms_hashur[whehref]?>\\" target=\\"_blank\\">加水印</a>)&nbsp;&nbsp; \r\n      <input name=\\"copyflash\\" type=\\"checkbox\\" id=\\"copyflash\\" value=\\"1\\">\r\n      远程保存FLASH(地址前缀： \r\n      <input name=\\"qz_url\\" type=\\"text\\" id=\\"qz_url\\" size=\\"\\">\r\n              )</td>\r\n          </tr>\r\n          <tr>\r\n            \r\n    <td bgcolor=\\"#FFFFFF\\"><input name=\\"repimgnexturl\\" type=\\"checkbox\\" id=\\"repimgnexturl\\" value=\\"1\\"> 图片链接转为下一页&nbsp;&nbsp; <input name=\\"autopage\\" type=\\"checkbox\\" id=\\"autopage\\" value=\\"1\\">自动分页\r\n      ,每 \r\n      <input name=\\"autosize\\" type=\\"text\\" id=\\"autosize\\" value=\\"5000\\" size=\\"5\\">\r\n      个字节为一页&nbsp;&nbsp; 取第 \r\n      <input name=\\"getfirsttitlepic\\" type=\\"text\\" id=\\"getfirsttitlepic\\" value=\\"\\" size=\\"1\\">\r\n      张上传图为标题图片( \r\n      <input name=\\"getfirsttitlespic\\" type=\\"checkbox\\" id=\\"getfirsttitlespic\\" value=\\"1\\">\r\n      缩略图: 宽 \r\n      <input name=\\"getfirsttitlespicw\\" type=\\"text\\" id=\\"getfirsttitlespicw\\" size=\\"3\\" value=\\"<?=$public_r[spicwidth]?>\\">\r\n      *高\r\n      <input name=\\"getfirsttitlespich\\" type=\\"text\\" id=\\"getfirsttitlespich\\" size=\\"3\\" value=\\"<?=$public_r[spicheight]?>\\">\r\n      )</td>\r\n          </tr>\r\n        </table>\r\n', '新闻正文', 1, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--newstext--]\\" size=\\"20\\">)</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n          <td><textarea name=\\"add[zz_newstext]\\" cols=\\"60\\" rows=\\"10\\" id=\\"textarea\\"><?=ehtmlspecialchars(stripSlashes($r[zz_newstext]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\"add[z_newstext]\\" type=\\"text\\" id=\\"add[z_newstext]\\" value=\\"<?=stripSlashes($r[z_newstext])?>\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 2, 'MEDIUMTEXT', '', 1, 1, 'news', 0, '', 0, 1, 1, '<?=ECMS_ShowEditorVar(\\"newstext\\",$ecmsfirstpost==1?\\"\\":DoReqValue($mid,\\''newstext\\'',stripSlashes($r[newstext])),\\"Default\\",\\"\\",\\"300\\",\\"100%\\")?>\r\n', 0, '', 0, '', 1, 1, '', '', '', '', '', '', 0, 0, ''),
(10, 'diggtop', '顶', 'text', '\r\n<input name="diggtop" type="text" id="diggtop" value="<?=$ecmsfirstpost==1?"":ehtmlspecialchars(stripSlashes($r[diggtop]))?>" size="">\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--diggtop--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_diggtop]" cols="60" rows="10" id="textarea"><?=ehtmlspecialchars(stripSlashes($r[zz_diggtop]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_diggtop]" type="text" id="add[z_diggtop]" value="<?=stripSlashes($r[z_diggtop])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 3, 'INT', '', 1, 1, 'news', 0, '', 0, 0, 1, '\r\n<input name="diggtop" type="text" id="diggtop" value="<?=$ecmsfirstpost==1?"":DoReqValue($mid,''diggtop'',stripSlashes($r[diggtop]))?>" size="">\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsfava`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsfava` (
  `favaid` bigint(20) NOT NULL AUTO_INCREMENT,
  `id` int(11) NOT NULL DEFAULT '0',
  `favatime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `userid` int(11) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `classid` smallint(6) NOT NULL DEFAULT '0',
  `cid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`favaid`),
  KEY `userid` (`userid`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsfavaclass`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsfavaclass` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(30) NOT NULL DEFAULT '',
  `userid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsfeedback`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsfeedback` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) NOT NULL DEFAULT '',
  `saytext` text NOT NULL,
  `name` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(80) NOT NULL DEFAULT '',
  `mycall` varchar(30) NOT NULL DEFAULT '',
  `homepage` varchar(160) NOT NULL DEFAULT '',
  `company` varchar(80) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `saytime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `job` varchar(36) NOT NULL DEFAULT '',
  `ip` varchar(20) NOT NULL DEFAULT '',
  `filepath` varchar(20) NOT NULL DEFAULT '',
  `filename` text NOT NULL,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `haveread` tinyint(1) NOT NULL DEFAULT '0',
  `eipport` varchar(6) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `bid` (`bid`),
  KEY `haveread` (`haveread`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsfeedbackclass`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsfeedbackclass` (
  `bid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `bname` varchar(60) NOT NULL DEFAULT '',
  `btemp` mediumtext NOT NULL,
  `bzs` varchar(255) NOT NULL DEFAULT '',
  `enter` text NOT NULL,
  `mustenter` text NOT NULL,
  `filef` varchar(255) NOT NULL DEFAULT '',
  `groupid` smallint(6) NOT NULL DEFAULT '0',
  `checkboxf` text NOT NULL,
  `usernames` text NOT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `dayuqixiu_enewsfeedbackclass`
--

INSERT INTO `dayuqixiu_enewsfeedbackclass` (`bid`, `bname`, `btemp`, `bzs`, `enter`, `mustenter`, `filef`, `groupid`, `checkboxf`, `usernames`) VALUES
(1, '默认反馈分类', '[!--cp.header--]\r\n<table width=100% align=center cellpadding=3 cellspacing=1 class=\\"tableborder\\">\r\n  <form name=\\''feedback\\'' method=\\''post\\'' enctype=\\''multipart/form-data\\'' action=\\''../../enews/index.php\\''>\r\n    <input name=\\''enews\\'' type=\\''hidden\\'' value=\\''AddFeedback\\''>\r\n    <tr>\r\n      <td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''><div align=\\"right\\">您的姓名:</div></td>\r\n      <td bgcolor=\\''ffffff\\''><input name=\\''name\\'' type=\\''text\\'' size=\\''42\\''>\r\n        (*)</td>\r\n    </tr>\r\n    <tr>\r\n      <td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''><div align=\\"right\\">职务:</div></td>\r\n      <td bgcolor=\\''ffffff\\''><input name=\\''job\\'' type=\\''text\\'' size=\\''42\\''></td>\r\n    </tr>\r\n    <tr>\r\n      <td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''><div align=\\"right\\">公司名称:</div></td>\r\n      <td bgcolor=\\''ffffff\\''><input name=\\''company\\'' type=\\''text\\'' size=\\''42\\''></td>\r\n    </tr>\r\n    <tr>\r\n      <td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''><div align=\\"right\\">联系邮箱:</div></td>\r\n      <td bgcolor=\\''ffffff\\''><input name=\\''email\\'' type=\\''text\\'' size=\\''42\\''></td>\r\n    </tr>\r\n    <tr>\r\n      <td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''><div align=\\"right\\">联系电话:</div></td>\r\n      <td bgcolor=\\''ffffff\\''><input name=\\''mycall\\'' type=\\''text\\'' size=\\''42\\''>\r\n        (*)</td>\r\n    </tr>\r\n    <tr>\r\n      <td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''><div align=\\"right\\">网站:</div></td>\r\n      <td bgcolor=\\''ffffff\\''><input name=\\''homepage\\'' type=\\''text\\'' size=\\''42\\''></td>\r\n    </tr>\r\n    <tr>\r\n      <td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''><div align=\\"right\\">联系地址:</div></td>\r\n      <td bgcolor=\\''ffffff\\''><input name=\\''address\\'' type=\\''text\\'' size=\\"42\\"></td>\r\n    </tr>\r\n    <tr>\r\n      <td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''><div align=\\"right\\">信息标题:</div></td>\r\n      <td bgcolor=\\''ffffff\\''><input name=\\''title\\'' type=\\''text\\'' size=\\"42\\"> (*)</td>\r\n    </tr>\r\n    <tr> \r\n      <td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''><div align=\\"right\\">信息内容(*):</div></td>\r\n      <td bgcolor=\\''ffffff\\''><textarea name=\\''saytext\\'' cols=\\''60\\'' rows=\\''12\\''></textarea> \r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td bgcolor=\\''ffffff\\''></td>\r\n      <td bgcolor=\\''ffffff\\''><input type=\\''submit\\'' name=\\''submit\\'' value=\\''提交\\''></td>\r\n    </tr>\r\n  </form>\r\n</table>\r\n[!--cp.footer--]', '', '您的姓名<!--field--->name<!--record-->职务<!--field--->job<!--record-->公司名称<!--field--->company<!--record-->联系邮箱<!--field--->email<!--record-->联系电话<!--field--->mycall<!--record-->网站<!--field--->homepage<!--record-->联系地址<!--field--->address<!--record-->信息标题<!--field--->title<!--record-->信息内容<!--field--->saytext<!--record-->', ',name,mycall,title,saytext,', ',', 0, '', '');

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsfeedbackf`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsfeedbackf` (
  `fid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `f` varchar(30) NOT NULL DEFAULT '',
  `fname` varchar(30) NOT NULL DEFAULT '',
  `fform` varchar(20) NOT NULL DEFAULT '',
  `fzs` varchar(255) NOT NULL DEFAULT '',
  `myorder` smallint(6) NOT NULL DEFAULT '0',
  `ftype` varchar(30) NOT NULL DEFAULT '',
  `flen` varchar(20) NOT NULL DEFAULT '',
  `fformsize` varchar(12) NOT NULL DEFAULT '',
  `fvalue` text NOT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `dayuqixiu_enewsfeedbackf`
--

INSERT INTO `dayuqixiu_enewsfeedbackf` (`fid`, `f`, `fname`, `fform`, `fzs`, `myorder`, `ftype`, `flen`, `fformsize`, `fvalue`) VALUES
(1, 'title', '标题', 'text', '', 7, 'VARCHAR', '120', '', ''),
(2, 'saytext', '内容', 'textarea', '', 8, 'TEXT', '', '', ''),
(3, 'name', '姓名', 'text', '', 0, 'VARCHAR', '30', '', ''),
(4, 'email', '邮箱', 'text', '', 3, 'VARCHAR', '80', '', ''),
(5, 'mycall', '电话', 'text', '', 4, 'VARCHAR', '30', '', ''),
(6, 'homepage', '网站', 'text', '', 5, 'VARCHAR', '160', '', ''),
(7, 'company', '公司名称', 'text', '', 2, 'VARCHAR', '80', '', ''),
(8, 'address', '联系地址', 'text', '', 6, 'VARCHAR', '255', '', ''),
(9, 'job', '职务', 'text', '', 1, 'VARCHAR', '36', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsfile_1`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsfile_1` (
  `fileid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pubid` bigint(16) unsigned NOT NULL DEFAULT '0',
  `filename` char(60) NOT NULL DEFAULT '',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0',
  `path` char(20) NOT NULL DEFAULT '',
  `adduser` char(30) NOT NULL DEFAULT '',
  `filetime` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `no` char(60) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `onclick` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `cjid` int(10) unsigned NOT NULL DEFAULT '0',
  `fpath` tinyint(1) NOT NULL DEFAULT '0',
  `modtype` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fileid`),
  KEY `id` (`id`),
  KEY `type` (`type`),
  KEY `classid` (`classid`),
  KEY `pubid` (`pubid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=117 ;

--
-- 转存表中的数据 `dayuqixiu_enewsfile_1`
--

INSERT INTO `dayuqixiu_enewsfile_1` (`fileid`, `pubid`, `filename`, `filesize`, `path`, `adduser`, `filetime`, `classid`, `no`, `type`, `onclick`, `id`, `cjid`, `fpath`, `modtype`) VALUES
(1, 0, '4534cde101b020804dd78363ff8345de.jpg', 38543, '', 'admin', 1615875848, 11, '360截图20210316142320379.jpg', 1, 0, 1615875753, 1615875753, 2, 0),
(2, 1000010000000034, 'b3461fd00cef952dc4ba079e2bdd8ba7.jpg', 114710, '', 'admin', 1615883424, 11, '[URL]b3461fd00cef952dc4ba079e2bdd8ba7.jpg', 1, 0, 34, 0, 2, 0),
(3, 1000010000000033, 'dbefe1f9f14f10e6d87fd3d22478a596.jpg', 139949, '', 'admin', 1615883475, 11, '[URL]dbefe1f9f14f10e6d87fd3d22478a596.jpg', 1, 0, 33, 0, 2, 0),
(4, 1000010000000032, '045a7b99dcbc72989f24de9cfd955196.jpg', 94142, '', 'admin', 1615883486, 11, '[URL]045a7b99dcbc72989f24de9cfd955196.jpg', 1, 0, 32, 0, 2, 0),
(5, 1000010000000018, 'f5bfb635f02ad2faf2ec7d1c7006bc7e.jpg', 114710, '', 'admin', 1615883499, 11, '[URL]f5bfb635f02ad2faf2ec7d1c7006bc7e.jpg', 1, 0, 18, 0, 2, 0),
(6, 1000010000000017, '6584abe5e2bd9a5789ad8eba7b4d18e2.jpg', 139949, '', 'admin', 1615883543, 11, '[URL]6584abe5e2bd9a5789ad8eba7b4d18e2.jpg', 1, 0, 17, 0, 2, 0),
(7, 1000010000000016, '3e702852eca52a7aeb793263ff0b3b01.jpg', 128088, '', 'admin', 1615883561, 11, '[URL]3e702852eca52a7aeb793263ff0b3b01.jpg', 1, 0, 16, 0, 2, 0),
(8, 1000010000000024, '01363a358886d416d09584be1a5763eb.jpg', 172817, '', 'admin', 1615884855, 5, '[URL]01363a358886d416d09584be1a5763eb.jpg', 1, 0, 24, 0, 2, 0),
(9, 1000010000000024, 'fba926a10a64e6283b1330f89bbbf59d.jpg', 172817, '', 'admin', 1615884856, 5, '[URL]fba926a10a64e6283b1330f89bbbf59d.jpg', 1, 0, 24, 0, 2, 0),
(10, 1000010000000024, '384a6339e7ef6f6c4e69008d3c97ff5b.jpg', 172817, '', 'admin', 1615884858, 5, '[URL]384a6339e7ef6f6c4e69008d3c97ff5b.jpg', 1, 0, 24, 0, 2, 0),
(11, 1000010000000024, 'bdfbab012b6e2fac68fc920fb39cca7d.jpg', 172817, '', 'admin', 1615884879, 5, '[URL]bdfbab012b6e2fac68fc920fb39cca7d.jpg', 1, 0, 24, 0, 2, 0),
(12, 1000010000000024, 'a2382167a5191620e9654ab35c6ff265.jpg', 172817, '', 'admin', 1615884879, 5, '[URL]a2382167a5191620e9654ab35c6ff265.jpg', 1, 0, 24, 0, 2, 0),
(13, 1000010000000024, '1565c35f85d8f8640b195f28c2c48c7e.jpg', 172817, '', 'admin', 1615884882, 5, '[URL]1565c35f85d8f8640b195f28c2c48c7e.jpg', 1, 0, 24, 0, 2, 0),
(14, 1000010000000024, '693fe6ab6fa24b9f621bcc9663d37ec6.jpg', 172817, '', 'admin', 1615884882, 5, '[URL]693fe6ab6fa24b9f621bcc9663d37ec6.jpg', 1, 0, 24, 0, 2, 0),
(15, 1000010000000024, 'e86081026def09a0177768f98e7201dc.jpg', 172817, '', 'admin', 1615884883, 5, '[URL]e86081026def09a0177768f98e7201dc.jpg', 1, 0, 24, 0, 2, 0),
(16, 1000010000000024, '86903f43308647e7627c3ae866ffff53.jpg', 172817, '', 'admin', 1615884883, 5, '[URL]86903f43308647e7627c3ae866ffff53.jpg', 1, 0, 24, 0, 2, 0),
(17, 1000010000000024, 'a6e59a3d39ac4e30e978ed51dd019a02.jpg', 172817, '', 'admin', 1615884883, 5, '[URL]a6e59a3d39ac4e30e978ed51dd019a02.jpg', 1, 0, 24, 0, 2, 0),
(18, 1000010000000024, 'b88f1900d505eeb34be96c368296e919.jpg', 172817, '', 'admin', 1615884883, 5, '[URL]b88f1900d505eeb34be96c368296e919.jpg', 1, 0, 24, 0, 2, 0),
(19, 1000010000000024, '68c2639a0ec65d775c07c7f05f1b839e.jpg', 172817, '', 'admin', 1615884883, 5, '[URL]68c2639a0ec65d775c07c7f05f1b839e.jpg', 1, 0, 24, 0, 2, 0),
(20, 1000010000000024, '526f6816ead8408a0ba4bfbe53a86951.jpg', 172817, '', 'admin', 1615884883, 5, '[URL]526f6816ead8408a0ba4bfbe53a86951.jpg', 1, 0, 24, 0, 2, 0),
(21, 1000010000000024, '38b578132ff94e94a98abdf36dd1e650.jpg', 172817, '', 'admin', 1615884883, 5, '[URL]38b578132ff94e94a98abdf36dd1e650.jpg', 1, 0, 24, 0, 2, 0),
(22, 1000010000000024, '63c4114a75366788af92239f818055e3.jpg', 172817, '', 'admin', 1615884883, 5, '[URL]63c4114a75366788af92239f818055e3.jpg', 1, 0, 24, 0, 2, 0),
(23, 1000010000000031, '3930002fbc5ec49763a76a47e77bc7f1.jpg', 134382, '', 'admin', 1615884883, 6, '[URL]3930002fbc5ec49763a76a47e77bc7f1.jpg', 1, 0, 31, 0, 2, 0),
(24, 1000010000000024, '1635647e38c9917229534d1b1f215a34.jpg', 172817, '', 'admin', 1615884884, 5, '[URL]1635647e38c9917229534d1b1f215a34.jpg', 1, 0, 24, 0, 2, 0),
(25, 1000010000000024, 'd4b8a0a8b741ebbb17dbe4b965caaf8b.jpg', 172817, '', 'admin', 1615884884, 5, '[URL]d4b8a0a8b741ebbb17dbe4b965caaf8b.jpg', 1, 0, 24, 0, 2, 0),
(26, 1000010000000024, 'b569e7b96b8c006250f9b41dc4dfa998.jpg', 172817, '', 'admin', 1615884884, 5, '[URL]b569e7b96b8c006250f9b41dc4dfa998.jpg', 1, 0, 24, 0, 2, 0),
(27, 1000010000000023, 'fa67cb3a55f7aaeac461a851db200979.jpg', 173253, '', 'admin', 1615884899, 5, '[URL]fa67cb3a55f7aaeac461a851db200979.jpg', 1, 0, 23, 0, 2, 0),
(28, 1000010000000022, '21edc75c2ab2b4c5500496d9b1f5e327.jpg', 169927, '', 'admin', 1615884949, 5, '[URL]21edc75c2ab2b4c5500496d9b1f5e327.jpg', 1, 0, 22, 0, 2, 0),
(29, 1000010000000022, 'c27de38f644c2a0aee1bfa9bf2bdd793.jpg', 169927, '', 'admin', 1615884949, 5, '[URL]c27de38f644c2a0aee1bfa9bf2bdd793.jpg', 1, 0, 22, 0, 2, 0),
(30, 1000010000000022, '21cfbe6c65f696cbc0589930f3f7b5e1.jpg', 169927, '', 'admin', 1615884949, 5, '[URL]21cfbe6c65f696cbc0589930f3f7b5e1.jpg', 1, 0, 22, 0, 2, 0),
(31, 1000010000000022, 'e8217f42fccc5c7606d6a184247dcb49.jpg', 169927, '', 'admin', 1615884949, 5, '[URL]e8217f42fccc5c7606d6a184247dcb49.jpg', 1, 0, 22, 0, 2, 0),
(32, 1000010000000022, 'bdf2e62b5e0199f59c68f1931f512d20.jpg', 169927, '', 'admin', 1615884950, 5, '[URL]bdf2e62b5e0199f59c68f1931f512d20.jpg', 1, 0, 22, 0, 2, 0),
(33, 1000010000000022, '4fa031e31aa8a46b416b6d0a578a8ab6.jpg', 169927, '', 'admin', 1615884950, 5, '[URL]4fa031e31aa8a46b416b6d0a578a8ab6.jpg', 1, 0, 22, 0, 2, 0),
(34, 1000010000000022, 'a2a1deee33958ead43c32d8c58975ab1.jpg', 169927, '', 'admin', 1615884950, 5, '[URL]a2a1deee33958ead43c32d8c58975ab1.jpg', 1, 0, 22, 0, 2, 0),
(35, 1000010000000022, '021fbb23c4b4536b5fcde0132254be30.jpg', 169927, '', 'admin', 1615884950, 5, '[URL]021fbb23c4b4536b5fcde0132254be30.jpg', 1, 0, 22, 0, 2, 0),
(36, 1000010000000022, '0d2b98c0fc948af9191234e8d28e23ed.jpg', 169927, '', 'admin', 1615884951, 5, '[URL]0d2b98c0fc948af9191234e8d28e23ed.jpg', 1, 0, 22, 0, 2, 0),
(37, 1000010000000022, 'eb40b82545647f626376acf589d7d9eb.jpg', 169927, '', 'admin', 1615884951, 5, '[URL]eb40b82545647f626376acf589d7d9eb.jpg', 1, 0, 22, 0, 2, 0),
(38, 1000010000000022, 'e7c241c38c6df47c100506b84988eac7.jpg', 169927, '', 'admin', 1615884951, 5, '[URL]e7c241c38c6df47c100506b84988eac7.jpg', 1, 0, 22, 0, 2, 0),
(39, 1000010000000022, 'cf78e648328fd5c30eec9b61a97ef244.jpg', 169927, '', 'admin', 1615884951, 5, '[URL]cf78e648328fd5c30eec9b61a97ef244.jpg', 1, 0, 22, 0, 2, 0),
(40, 1000010000000022, '4d73c934372fc4b213ac154d93fc9a52.jpg', 169927, '', 'admin', 1615884951, 5, '[URL]4d73c934372fc4b213ac154d93fc9a52.jpg', 1, 0, 22, 0, 2, 0),
(41, 1000010000000022, '12811c91f318a69902788ea0ced1705c.jpg', 169927, '', 'admin', 1615884952, 5, '[URL]12811c91f318a69902788ea0ced1705c.jpg', 1, 0, 22, 0, 2, 0),
(42, 1000010000000022, 'a6a3d59fbe1be74ddeec8cb0644564d7.jpg', 169927, '', 'admin', 1615884952, 5, '[URL]a6a3d59fbe1be74ddeec8cb0644564d7.jpg', 1, 0, 22, 0, 2, 0),
(43, 1000010000000022, 'be24c4c13c4af1b96cd2703b48209e38.jpg', 169927, '', 'admin', 1615884953, 5, '[URL]be24c4c13c4af1b96cd2703b48209e38.jpg', 1, 0, 22, 0, 2, 0),
(44, 1000010000000022, 'd9b1c506bb21db766e460057c7f0256c.jpg', 169927, '', 'admin', 1615884953, 5, '[URL]d9b1c506bb21db766e460057c7f0256c.jpg', 1, 0, 22, 0, 2, 0),
(45, 1000010000000022, 'e6f4410e02f323ec2712e9a00521b986.jpg', 169927, '', 'admin', 1615884953, 5, '[URL]e6f4410e02f323ec2712e9a00521b986.jpg', 1, 0, 22, 0, 2, 0),
(46, 1000010000000022, 'cdcee7a2031b000180c219af896d4714.jpg', 169927, '', 'admin', 1615884953, 5, '[URL]cdcee7a2031b000180c219af896d4714.jpg', 1, 0, 22, 0, 2, 0),
(47, 1000010000000022, '3f085cb40303a51fa55352d6d25524a7.jpg', 169927, '', 'admin', 1615884953, 5, '[URL]3f085cb40303a51fa55352d6d25524a7.jpg', 1, 0, 22, 0, 2, 0),
(48, 1000010000000022, '1ed5c19a890284caf8cd7a7dc44dd990.jpg', 169927, '', 'admin', 1615884954, 5, '[URL]1ed5c19a890284caf8cd7a7dc44dd990.jpg', 1, 0, 22, 0, 2, 0),
(49, 1000010000000022, 'bc12c5af8d7efca19590a9bd45087830.jpg', 169927, '', 'admin', 1615884954, 5, '[URL]bc12c5af8d7efca19590a9bd45087830.jpg', 1, 0, 22, 0, 2, 0),
(50, 1000010000000022, 'e0d5f25b0bc1398d859ab0de9dc6aac2.jpg', 169927, '', 'admin', 1615884954, 5, '[URL]e0d5f25b0bc1398d859ab0de9dc6aac2.jpg', 1, 0, 22, 0, 2, 0),
(51, 1000010000000022, '38f407c198e2eb21fe913e740ccb7c86.jpg', 169927, '', 'admin', 1615884954, 5, '[URL]38f407c198e2eb21fe913e740ccb7c86.jpg', 1, 0, 22, 0, 2, 0),
(52, 1000010000000022, '6dee25884470a0e5858413ed4983936f.jpg', 169927, '', 'admin', 1615884954, 5, '[URL]6dee25884470a0e5858413ed4983936f.jpg', 1, 0, 22, 0, 2, 0),
(53, 1000010000000022, '16cc308923ab63cfd5c7be219752712a.jpg', 169927, '', 'admin', 1615884954, 5, '[URL]16cc308923ab63cfd5c7be219752712a.jpg', 1, 0, 22, 0, 2, 0),
(54, 1000010000000022, '86d6a6da60d94fbefea236760e0baa6e.jpg', 169927, '', 'admin', 1615884954, 5, '[URL]86d6a6da60d94fbefea236760e0baa6e.jpg', 1, 0, 22, 0, 2, 0),
(55, 1000010000000022, '9f228b671bd19d2d2d34eec332f9a146.jpg', 169927, '', 'admin', 1615884954, 5, '[URL]9f228b671bd19d2d2d34eec332f9a146.jpg', 1, 0, 22, 0, 2, 0),
(56, 1000010000000022, 'e2f815976035b2fc955bd038fafa3605.jpg', 169927, '', 'admin', 1615884955, 5, '[URL]e2f815976035b2fc955bd038fafa3605.jpg', 1, 0, 22, 0, 2, 0),
(57, 1000010000000022, 'e8b72d9ad07168d2f6f7a8ee904b9b61.jpg', 169927, '', 'admin', 1615884955, 5, '[URL]e8b72d9ad07168d2f6f7a8ee904b9b61.jpg', 1, 0, 22, 0, 2, 0),
(58, 1000010000000022, 'aa9df7f8f5a1271efc09b4fa4d24298b.jpg', 169927, '', 'admin', 1615884955, 5, '[URL]aa9df7f8f5a1271efc09b4fa4d24298b.jpg', 1, 0, 22, 0, 2, 0),
(59, 1000010000000022, 'e1a4699f2d149c622e6452fe91ec1a60.jpg', 169927, '', 'admin', 1615884955, 5, '[URL]e1a4699f2d149c622e6452fe91ec1a60.jpg', 1, 0, 22, 0, 2, 0),
(60, 1000010000000022, '9b849cfb18e459fa2ee9627c84b197e0.jpg', 169927, '', 'admin', 1615884955, 5, '[URL]9b849cfb18e459fa2ee9627c84b197e0.jpg', 1, 0, 22, 0, 2, 0),
(61, 1000010000000021, '9a0f556cebd7ebc4b4e8b2c908dd5660.jpg', 129645, '', 'admin', 1615884963, 5, '[URL]9a0f556cebd7ebc4b4e8b2c908dd5660.jpg', 1, 0, 21, 0, 2, 0),
(62, 1000010000000020, '109f1d2940c4def32a40a00875a5e4f2.jpg', 177747, '', 'admin', 1615884973, 5, '[URL]109f1d2940c4def32a40a00875a5e4f2.jpg', 1, 0, 20, 0, 2, 0),
(63, 1000010000000019, 'c41379d7ec39ec1fea8ab627e0ca6edf.jpg', 121073, '', 'admin', 1615885007, 5, '[URL]c41379d7ec39ec1fea8ab627e0ca6edf.jpg', 1, 0, 19, 0, 2, 0),
(64, 1000010000000030, '73fcf7ded2c9405dbb87981b5ae0f857.jpg', 132617, '', 'admin', 1615885040, 6, '[URL]73fcf7ded2c9405dbb87981b5ae0f857.jpg', 1, 0, 30, 0, 2, 0),
(65, 1000010000000030, 'dfe640f4ba4d9811eed54604f58bea5c.jpg', 132617, '', 'admin', 1615885040, 6, '[URL]dfe640f4ba4d9811eed54604f58bea5c.jpg', 1, 0, 30, 0, 2, 0),
(66, 1000010000000030, '39845ab98e12d2a16590460dc844059c.jpg', 132617, '', 'admin', 1615885040, 6, '[URL]39845ab98e12d2a16590460dc844059c.jpg', 1, 0, 30, 0, 2, 0),
(67, 1000010000000029, '2a1d07742c036639ff0f10d4f7936f74.jpg', 129671, '', 'admin', 1615885048, 6, '[URL]2a1d07742c036639ff0f10d4f7936f74.jpg', 1, 0, 29, 0, 2, 0),
(68, 1000010000000028, '32aeda6d45bcd9ab57494e2e9429f247.jpg', 123175, '', 'admin', 1615885058, 6, '[URL]32aeda6d45bcd9ab57494e2e9429f247.jpg', 1, 0, 28, 0, 2, 0),
(69, 1000010000000026, 'e825dcc639746cf388084dabf0c0988c.jpg', 150236, '', 'admin', 1615885126, 6, '[URL]e825dcc639746cf388084dabf0c0988c.jpg', 1, 0, 26, 0, 2, 0),
(70, 1000010000000026, '2c908570cc3fd29aaf0fefe92123ed5b.jpg', 150236, '', 'admin', 1615885140, 6, '[URL]2c908570cc3fd29aaf0fefe92123ed5b.jpg', 1, 0, 26, 0, 2, 0),
(71, 1000010000000026, '50ad133e2ddf6250dc5991c3bc5f1ccc.jpg', 150236, '', 'admin', 1615885150, 6, '[URL]50ad133e2ddf6250dc5991c3bc5f1ccc.jpg', 1, 0, 26, 0, 2, 0),
(72, 1000010000000026, 'd526b439c2bad3aa2c7a2c98e9e5b4e4.jpg', 150236, '', 'admin', 1615885153, 6, '[URL]d526b439c2bad3aa2c7a2c98e9e5b4e4.jpg', 1, 0, 26, 0, 2, 0),
(73, 1000010000000026, 'd7b02b1d38729d23ab48759b265885a3.jpg', 150236, '', 'admin', 1615885179, 6, '[URL]d7b02b1d38729d23ab48759b265885a3.jpg', 1, 0, 26, 0, 2, 0),
(74, 1000010000000026, '019a28750a13bb7b74287c951c807741.jpg', 150236, '', 'admin', 1615885181, 6, '[URL]019a28750a13bb7b74287c951c807741.jpg', 1, 0, 26, 0, 2, 0),
(75, 1000010000000026, 'e8ff1ba6a161ee9d52a20875b6da225f.jpg', 150236, '', 'admin', 1615885183, 6, '[URL]e8ff1ba6a161ee9d52a20875b6da225f.jpg', 1, 0, 26, 0, 2, 0),
(76, 1000010000000026, 'a22e09ae9ac184b59e4e29fc02557ae5.jpg', 150236, '', 'admin', 1615885188, 6, '[URL]a22e09ae9ac184b59e4e29fc02557ae5.jpg', 1, 0, 26, 0, 2, 0),
(77, 1000010000000026, '1777fdc70301079351e9ba29d4d81d9b.jpg', 150236, '', 'admin', 1615885188, 6, '[URL]1777fdc70301079351e9ba29d4d81d9b.jpg', 1, 0, 26, 0, 2, 0),
(78, 1000010000000026, 'b944347d104fabb57398c4d178b0fd0b.jpg', 150236, '', 'admin', 1615885191, 6, '[URL]b944347d104fabb57398c4d178b0fd0b.jpg', 1, 0, 26, 0, 2, 0),
(79, 1000010000000025, 'ad9ce0c52ddbdefb9cf826ed65d2e478.jpg', 123295, '', 'admin', 1615885195, 6, '[URL]ad9ce0c52ddbdefb9cf826ed65d2e478.jpg', 1, 0, 25, 0, 2, 0),
(80, 1000010000000025, 'b88d3e8d3ca9dc95c577463ba4b10f8b.jpg', 123295, '', 'admin', 1615885195, 6, '[URL]b88d3e8d3ca9dc95c577463ba4b10f8b.jpg', 1, 0, 25, 0, 2, 0),
(81, 1000010000000025, '5edf42d3691b835a86afe86832f9a78d.jpg', 123295, '', 'admin', 1615885195, 6, '[URL]5edf42d3691b835a86afe86832f9a78d.jpg', 1, 0, 25, 0, 2, 0),
(82, 1000010000000025, '159007bfb24eb940aaa2fed4d9cc3121.jpg', 123295, '', 'admin', 1615885195, 6, '[URL]159007bfb24eb940aaa2fed4d9cc3121.jpg', 1, 0, 25, 0, 2, 0),
(83, 1000010000000025, '1bcd3dc080c439c30616414f1104d047.jpg', 123295, '', 'admin', 1615885195, 6, '[URL]1bcd3dc080c439c30616414f1104d047.jpg', 1, 0, 25, 0, 2, 0),
(84, 1000010000000025, 'b12154b36af69ba2c2c9d3191053aec1.jpg', 123295, '', 'admin', 1615885195, 6, '[URL]b12154b36af69ba2c2c9d3191053aec1.jpg', 1, 0, 25, 0, 2, 0),
(85, 1000010000000025, '8c20aff8c6199f7685c7d7e276f420a1.jpg', 123295, '', 'admin', 1615885196, 6, '[URL]8c20aff8c6199f7685c7d7e276f420a1.jpg', 1, 0, 25, 0, 2, 0),
(86, 1000010000000025, '40cdd3f6e931c9f3a1b02b06a8fb41e5.jpg', 123295, '', 'admin', 1615885197, 6, '[URL]40cdd3f6e931c9f3a1b02b06a8fb41e5.jpg', 1, 0, 25, 0, 2, 0),
(87, 1000010000000025, '3d0bf6b75c5b3f8b849a988079440b71.jpg', 123295, '', 'admin', 1615885197, 6, '[URL]3d0bf6b75c5b3f8b849a988079440b71.jpg', 1, 0, 25, 0, 2, 0),
(88, 1000010000000025, '4081bf1218f9c8b462dce12d5b9fa97f.jpg', 123295, '', 'admin', 1615885198, 6, '[URL]4081bf1218f9c8b462dce12d5b9fa97f.jpg', 1, 0, 25, 0, 2, 0),
(89, 1000010000000025, 'eed4828bb1231a9261646604a45a7b9d.jpg', 123295, '', 'admin', 1615885198, 6, '[URL]eed4828bb1231a9261646604a45a7b9d.jpg', 1, 0, 25, 0, 2, 0),
(90, 1000010000000025, '41e6e657674a73b898f86097af25d5f2.jpg', 123295, '', 'admin', 1615885198, 6, '[URL]41e6e657674a73b898f86097af25d5f2.jpg', 1, 0, 25, 0, 2, 0),
(91, 1000010000000025, '69461b413e413cc116c6a63b9dab6b31.jpg', 123295, '', 'admin', 1615885199, 6, '[URL]69461b413e413cc116c6a63b9dab6b31.jpg', 1, 0, 25, 0, 2, 0),
(92, 1000010000000026, 'bc1d9814af513c52f662d7ddf3e288cb.jpg', 150236, '', 'admin', 1615885209, 6, '[URL]bc1d9814af513c52f662d7ddf3e288cb.jpg', 1, 0, 26, 0, 2, 0),
(93, 1000010000000026, '9434b093df10d87c7cfca058d63686b9.jpg', 150236, '', 'admin', 1615885210, 6, '[URL]9434b093df10d87c7cfca058d63686b9.jpg', 1, 0, 26, 0, 2, 0),
(94, 1000010000000026, '3a569d33f5e83b77c971eb004c118e18.jpg', 150236, '', 'admin', 1615885210, 6, '[URL]3a569d33f5e83b77c971eb004c118e18.jpg', 1, 0, 26, 0, 2, 0),
(95, 1000010000000026, '45810be6d741890232105660e8882e77.jpg', 150236, '', 'admin', 1615885214, 6, '[URL]45810be6d741890232105660e8882e77.jpg', 1, 0, 26, 0, 2, 0),
(96, 1000010000000026, '9184f3868e555190c6ad7e042d9e3f56.jpg', 150236, '', 'admin', 1615885215, 6, '[URL]9184f3868e555190c6ad7e042d9e3f56.jpg', 1, 0, 26, 0, 2, 0),
(97, 1000010000000026, 'a9b7e64d7b63ebc11744cd5703c358e4.jpg', 150236, '', 'admin', 1615885221, 6, '[URL]a9b7e64d7b63ebc11744cd5703c358e4.jpg', 1, 0, 26, 0, 2, 0),
(98, 1000010000000026, 'd1463c86535679ac53cba9b5ad2385f4.jpg', 150236, '', 'admin', 1615885224, 6, '[URL]d1463c86535679ac53cba9b5ad2385f4.jpg', 1, 0, 26, 0, 2, 0),
(99, 1000010000000027, 'e1ad60514ee294934c572b629b6f815a.jpg', 158012, '', 'admin', 1615886327, 7, '[URL]e1ad60514ee294934c572b629b6f815a.jpg', 1, 0, 27, 0, 2, 0),
(100, 1000010000000027, 'c288c786cce48236ff8dd8cd3b631f94.jpg', 158012, '', 'admin', 1615886343, 7, '[URL]c288c786cce48236ff8dd8cd3b631f94.jpg', 1, 0, 27, 0, 2, 0),
(101, 1000010000000027, 'c5d8ca14a0e36222444527922e9b1ae3.jpg', 158012, '', 'admin', 1615886355, 7, '[URL]c5d8ca14a0e36222444527922e9b1ae3.jpg', 1, 0, 27, 0, 2, 0),
(102, 1000010000000027, '8ef7052b447167d78f19bc0d394fad40.jpg', 158012, '', 'admin', 1615886356, 7, '[URL]8ef7052b447167d78f19bc0d394fad40.jpg', 1, 0, 27, 0, 2, 0),
(103, 1000010000000027, '1aea4b6e247dc13737cc2083c107dcf7.jpg', 158012, '', 'admin', 1615886361, 7, '[URL]1aea4b6e247dc13737cc2083c107dcf7.jpg', 1, 0, 27, 0, 2, 0),
(104, 1000010000000027, '7467a494b863f1a3ea6241fe23836c18.jpg', 158012, '', 'admin', 1615886366, 7, '[URL]7467a494b863f1a3ea6241fe23836c18.jpg', 1, 0, 27, 0, 2, 0),
(105, 1000010000000027, '95b2f20451a93c389b2ca6af51993faa.jpg', 158012, '', 'admin', 1615886369, 7, '[URL]95b2f20451a93c389b2ca6af51993faa.jpg', 1, 0, 27, 0, 2, 0),
(106, 1000010000000027, 'e89fc114650b9fa6730e8650675216f3.jpg', 158012, '', 'admin', 1615886370, 7, '[URL]e89fc114650b9fa6730e8650675216f3.jpg', 1, 0, 27, 0, 2, 0),
(107, 1000010000000027, '0b6a24b67198bc2500437e17e0cf4fb8.jpg', 158012, '', 'admin', 1615886374, 7, '[URL]0b6a24b67198bc2500437e17e0cf4fb8.jpg', 1, 0, 27, 0, 2, 0),
(108, 1000010000000027, '1da559df067351851810c013010cdd83.jpg', 158012, '', 'admin', 1615886374, 7, '[URL]1da559df067351851810c013010cdd83.jpg', 1, 0, 27, 0, 2, 0),
(109, 1000010000000027, '6221856bbf1b3d9b2a8621e8e1eafd47.jpg', 158012, '', 'admin', 1615886377, 7, '[URL]6221856bbf1b3d9b2a8621e8e1eafd47.jpg', 1, 0, 27, 0, 2, 0),
(110, 1000010000000027, '5404f9496604520a46512e4d3180710f.jpg', 158012, '', 'admin', 1615886380, 7, '[URL]5404f9496604520a46512e4d3180710f.jpg', 1, 0, 27, 0, 2, 0),
(111, 1000010000000027, '29e32532264b2443ef882f127d94b0e0.jpg', 158012, '', 'admin', 1615886382, 7, '[URL]29e32532264b2443ef882f127d94b0e0.jpg', 1, 0, 27, 0, 2, 0),
(112, 1000010000000027, 'fcec4b167500047deb45f1787211dda9.jpg', 28991, '', 'admin', 1615886401, 7, '[URL]fcec4b167500047deb45f1787211dda9.jpg', 1, 0, 27, 0, 2, 0),
(113, 1000010000000027, 'ba2cf4cb34a0c07fc79796faa3507dfd.jpg', 60056, '', 'admin', 1615886402, 7, '[URL]ba2cf4cb34a0c07fc79796faa3507dfd.jpg', 1, 0, 27, 0, 2, 0),
(114, 1000010000000027, '61a7c4b6250d2ee7fb80f9de2a303223.jpg', 158012, '', 'admin', 1615886419, 7, '[URL]61a7c4b6250d2ee7fb80f9de2a303223.jpg', 1, 0, 27, 0, 2, 0),
(115, 1000010000000045, '29fa74b9dacb0297e642de028affa7ef.jpg', 21026, '', 'admin', 1615887221, 8, '4ce93b6520cdddcc12c726e5bd433a7f.jpg', 1, 0, 45, 0, 2, 0),
(116, 1000010000000015, 'ad8f98934af9ccf9fb953ec4509030d1.jpg', 123295, '', 'admin', 1615887246, 9, 'de6bf63c4da2b4e6d1312933f0e2dfed.jpg', 1, 0, 15, 0, 2, 0);

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsfile_member`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsfile_member` (
  `fileid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pubid` tinyint(1) NOT NULL DEFAULT '0',
  `filename` char(60) NOT NULL DEFAULT '',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0',
  `path` char(20) NOT NULL DEFAULT '',
  `adduser` char(30) NOT NULL DEFAULT '',
  `filetime` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` tinyint(1) NOT NULL DEFAULT '0',
  `no` char(60) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `onclick` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `cjid` int(10) unsigned NOT NULL DEFAULT '0',
  `fpath` tinyint(1) NOT NULL DEFAULT '0',
  `modtype` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fileid`),
  KEY `id` (`id`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsfile_other`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsfile_other` (
  `fileid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pubid` tinyint(1) NOT NULL DEFAULT '0',
  `filename` char(60) NOT NULL DEFAULT '',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0',
  `path` char(20) NOT NULL DEFAULT '',
  `adduser` char(30) NOT NULL DEFAULT '',
  `filetime` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` tinyint(1) NOT NULL DEFAULT '0',
  `no` char(60) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `onclick` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `cjid` int(10) unsigned NOT NULL DEFAULT '0',
  `fpath` tinyint(1) NOT NULL DEFAULT '0',
  `modtype` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fileid`),
  KEY `id` (`id`),
  KEY `type` (`type`),
  KEY `modtype` (`modtype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsfile_public`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsfile_public` (
  `fileid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pubid` tinyint(1) NOT NULL DEFAULT '0',
  `filename` char(60) NOT NULL DEFAULT '',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0',
  `path` char(20) NOT NULL DEFAULT '',
  `adduser` char(30) NOT NULL DEFAULT '',
  `filetime` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` tinyint(1) NOT NULL DEFAULT '0',
  `no` char(60) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `onclick` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `cjid` int(10) unsigned NOT NULL DEFAULT '0',
  `fpath` tinyint(1) NOT NULL DEFAULT '0',
  `modtype` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fileid`),
  KEY `id` (`id`),
  KEY `type` (`type`),
  KEY `modtype` (`modtype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsgbook`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsgbook` (
  `lyid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(80) NOT NULL DEFAULT '',
  `mycall` varchar(30) NOT NULL DEFAULT '',
  `lytime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lytext` text NOT NULL,
  `retext` text NOT NULL,
  `bid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(20) NOT NULL DEFAULT '',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `eipport` varchar(6) NOT NULL DEFAULT '',
  PRIMARY KEY (`lyid`),
  KEY `bid` (`bid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsgbookclass`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsgbookclass` (
  `bid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `bname` varchar(60) NOT NULL DEFAULT '',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `groupid` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`bid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `dayuqixiu_enewsgbookclass`
--

INSERT INTO `dayuqixiu_enewsgbookclass` (`bid`, `bname`, `checked`, `groupid`) VALUES
(1, '默认留言分类', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsgfenip`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsgfenip` (
  `ip` varchar(20) NOT NULL DEFAULT '',
  `addtime` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsgoodtype`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsgoodtype` (
  `tid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tname` varchar(60) NOT NULL DEFAULT '',
  `ttype` tinyint(1) NOT NULL DEFAULT '0',
  `levelid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `myorder` smallint(6) NOT NULL DEFAULT '0',
  `groupid` varchar(255) NOT NULL DEFAULT '',
  `showall` tinyint(1) NOT NULL DEFAULT '0',
  `showcid` text NOT NULL,
  `hiddencid` text NOT NULL,
  PRIMARY KEY (`tid`),
  KEY `ttype` (`ttype`),
  KEY `levelid` (`levelid`),
  KEY `myorder` (`myorder`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- 转存表中的数据 `dayuqixiu_enewsgoodtype`
--

INSERT INTO `dayuqixiu_enewsgoodtype` (`tid`, `tname`, `ttype`, `levelid`, `myorder`, `groupid`, `showall`, `showcid`, `hiddencid`) VALUES
(1, '一级头条', 1, 1, 0, '', 0, '', ''),
(2, '二级头条', 1, 2, 0, '', 0, '', ''),
(3, '三级头条', 1, 3, 0, '', 0, '', ''),
(4, '四级头条', 1, 4, 0, '', 0, '', ''),
(5, '五级头条', 1, 5, 0, '', 0, '', ''),
(6, '六级头条', 1, 6, 0, '', 0, '', ''),
(7, '七级头条', 1, 7, 0, '', 0, '', ''),
(8, '八级头条', 1, 8, 0, '', 0, '', ''),
(9, '九级头条', 1, 9, 0, '', 0, '', ''),
(10, '一级推荐', 0, 1, 0, '', 0, '', ''),
(11, '二级推荐', 0, 2, 0, '', 0, '', ''),
(12, '三级推荐', 0, 3, 0, '', 0, '', ''),
(13, '四级推荐', 0, 4, 0, '', 0, '', ''),
(14, '五级推荐', 0, 5, 0, '', 0, '', ''),
(15, '六级推荐', 0, 6, 0, '', 0, '', ''),
(16, '七级推荐', 0, 7, 0, '', 0, '', ''),
(17, '八级推荐', 0, 8, 0, '', 0, '', ''),
(18, '九级推荐', 0, 9, 0, '', 0, '', '');

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsgroup`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsgroup` (
  `groupid` smallint(6) NOT NULL AUTO_INCREMENT,
  `groupname` varchar(50) NOT NULL DEFAULT '',
  `dopublic` tinyint(1) NOT NULL DEFAULT '0',
  `doclass` tinyint(1) NOT NULL DEFAULT '0',
  `dotemplate` tinyint(1) NOT NULL DEFAULT '0',
  `dopicnews` tinyint(1) NOT NULL DEFAULT '0',
  `dofile` tinyint(1) NOT NULL DEFAULT '0',
  `douser` tinyint(1) NOT NULL DEFAULT '0',
  `dolog` tinyint(1) NOT NULL DEFAULT '0',
  `domember` tinyint(1) NOT NULL DEFAULT '0',
  `dobefrom` tinyint(1) NOT NULL DEFAULT '0',
  `doword` tinyint(1) NOT NULL DEFAULT '0',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `doad` tinyint(1) NOT NULL DEFAULT '0',
  `dovote` tinyint(1) NOT NULL DEFAULT '0',
  `dogroup` tinyint(1) NOT NULL DEFAULT '0',
  `doall` tinyint(1) NOT NULL DEFAULT '0',
  `docj` tinyint(1) NOT NULL DEFAULT '0',
  `dobq` tinyint(1) NOT NULL DEFAULT '0',
  `domovenews` tinyint(1) NOT NULL DEFAULT '0',
  `dopostdata` tinyint(1) NOT NULL DEFAULT '0',
  `dochangedata` tinyint(1) NOT NULL DEFAULT '0',
  `dopl` tinyint(1) NOT NULL DEFAULT '0',
  `dof` tinyint(1) NOT NULL DEFAULT '0',
  `dom` tinyint(1) NOT NULL DEFAULT '0',
  `dodo` tinyint(1) NOT NULL DEFAULT '0',
  `dodbdata` tinyint(1) NOT NULL DEFAULT '0',
  `dorepnewstext` tinyint(1) NOT NULL DEFAULT '0',
  `dotempvar` tinyint(1) NOT NULL DEFAULT '0',
  `dostats` tinyint(1) NOT NULL DEFAULT '0',
  `dowriter` tinyint(1) NOT NULL DEFAULT '0',
  `dototaldata` tinyint(1) NOT NULL DEFAULT '0',
  `dosearchkey` tinyint(1) NOT NULL DEFAULT '0',
  `dozt` tinyint(1) NOT NULL DEFAULT '0',
  `docard` tinyint(1) NOT NULL DEFAULT '0',
  `dolink` tinyint(1) NOT NULL DEFAULT '0',
  `doselfinfo` tinyint(1) NOT NULL DEFAULT '0',
  `doexecsql` tinyint(1) NOT NULL DEFAULT '0',
  `dotable` tinyint(1) NOT NULL DEFAULT '0',
  `dodownurl` tinyint(1) NOT NULL DEFAULT '0',
  `dodeldownrecord` tinyint(1) NOT NULL DEFAULT '0',
  `doshoppayfs` tinyint(1) NOT NULL DEFAULT '0',
  `doshopps` tinyint(1) NOT NULL DEFAULT '0',
  `doshopdd` tinyint(1) NOT NULL DEFAULT '0',
  `dogbook` tinyint(1) NOT NULL DEFAULT '0',
  `dofeedback` tinyint(1) NOT NULL DEFAULT '0',
  `douserpage` tinyint(1) NOT NULL DEFAULT '0',
  `donotcj` tinyint(1) NOT NULL DEFAULT '0',
  `dodownerror` tinyint(1) NOT NULL DEFAULT '0',
  `dodelinfodata` tinyint(1) NOT NULL DEFAULT '0',
  `doaddinfo` tinyint(1) NOT NULL DEFAULT '0',
  `doeditinfo` tinyint(1) NOT NULL DEFAULT '0',
  `dodelinfo` tinyint(1) NOT NULL DEFAULT '0',
  `doadminstyle` tinyint(1) NOT NULL DEFAULT '0',
  `dorepdownpath` tinyint(1) NOT NULL DEFAULT '0',
  `douserjs` tinyint(1) NOT NULL DEFAULT '0',
  `douserlist` tinyint(1) NOT NULL DEFAULT '0',
  `domsg` tinyint(1) NOT NULL DEFAULT '0',
  `dosendemail` tinyint(1) NOT NULL DEFAULT '0',
  `dosetmclass` tinyint(1) NOT NULL DEFAULT '0',
  `doinfodoc` tinyint(1) NOT NULL DEFAULT '0',
  `dotempgroup` tinyint(1) NOT NULL DEFAULT '0',
  `dofeedbackf` tinyint(1) NOT NULL DEFAULT '0',
  `dotask` tinyint(1) NOT NULL DEFAULT '0',
  `domemberf` tinyint(1) NOT NULL DEFAULT '0',
  `dospacestyle` tinyint(1) NOT NULL DEFAULT '0',
  `dospacedata` tinyint(1) NOT NULL DEFAULT '0',
  `dovotemod` tinyint(1) NOT NULL DEFAULT '0',
  `doplayer` tinyint(1) NOT NULL DEFAULT '0',
  `dowap` tinyint(1) NOT NULL DEFAULT '0',
  `dopay` tinyint(1) NOT NULL DEFAULT '0',
  `dobuygroup` tinyint(1) NOT NULL DEFAULT '0',
  `dosearchall` tinyint(1) NOT NULL DEFAULT '0',
  `doinfotype` tinyint(1) NOT NULL DEFAULT '0',
  `doplf` tinyint(1) NOT NULL DEFAULT '0',
  `dopltable` tinyint(1) NOT NULL DEFAULT '0',
  `dochadminstyle` tinyint(1) NOT NULL DEFAULT '0',
  `dotags` tinyint(1) NOT NULL DEFAULT '0',
  `dosp` tinyint(1) NOT NULL DEFAULT '0',
  `doyh` tinyint(1) NOT NULL DEFAULT '0',
  `dofirewall` tinyint(1) NOT NULL DEFAULT '0',
  `dosetsafe` tinyint(1) NOT NULL DEFAULT '0',
  `douserclass` tinyint(1) NOT NULL DEFAULT '0',
  `doworkflow` tinyint(1) NOT NULL DEFAULT '0',
  `domenu` tinyint(1) NOT NULL DEFAULT '0',
  `dopubvar` tinyint(1) NOT NULL DEFAULT '0',
  `doclassf` tinyint(1) NOT NULL DEFAULT '0',
  `doztf` tinyint(1) NOT NULL DEFAULT '0',
  `dofiletable` tinyint(1) NOT NULL DEFAULT '0',
  `docheckinfo` tinyint(1) NOT NULL DEFAULT '0',
  `dogoodinfo` tinyint(1) NOT NULL DEFAULT '0',
  `dodocinfo` tinyint(1) NOT NULL DEFAULT '0',
  `domoveinfo` tinyint(1) NOT NULL DEFAULT '0',
  `dodttemp` tinyint(1) NOT NULL DEFAULT '0',
  `doloadcj` tinyint(1) NOT NULL DEFAULT '0',
  `domustcheck` tinyint(1) NOT NULL DEFAULT '0',
  `docheckedit` tinyint(1) NOT NULL DEFAULT '0',
  `domemberconnect` tinyint(1) NOT NULL DEFAULT '0',
  `doprecode` tinyint(1) NOT NULL DEFAULT '0',
  `domoreport` tinyint(1) NOT NULL DEFAULT '0',
  `docanhtml` tinyint(1) NOT NULL DEFAULT '0',
  `dodelclass` tinyint(1) NOT NULL DEFAULT '0',
  `doinfofile` tinyint(1) NOT NULL DEFAULT '0',
  `doingroup` tinyint(1) NOT NULL DEFAULT '0',
  `domembergroup` tinyint(1) NOT NULL DEFAULT '0',
  `doviewgroup` tinyint(1) NOT NULL DEFAULT '0',
  `domadmingroup` tinyint(1) NOT NULL DEFAULT '0',
  `dochmoreport` tinyint(1) NOT NULL DEFAULT '0',
  `doisqf` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`groupid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `dayuqixiu_enewsgroup`
--

INSERT INTO `dayuqixiu_enewsgroup` (`groupid`, `groupname`, `dopublic`, `doclass`, `dotemplate`, `dopicnews`, `dofile`, `douser`, `dolog`, `domember`, `dobefrom`, `doword`, `dokey`, `doad`, `dovote`, `dogroup`, `doall`, `docj`, `dobq`, `domovenews`, `dopostdata`, `dochangedata`, `dopl`, `dof`, `dom`, `dodo`, `dodbdata`, `dorepnewstext`, `dotempvar`, `dostats`, `dowriter`, `dototaldata`, `dosearchkey`, `dozt`, `docard`, `dolink`, `doselfinfo`, `doexecsql`, `dotable`, `dodownurl`, `dodeldownrecord`, `doshoppayfs`, `doshopps`, `doshopdd`, `dogbook`, `dofeedback`, `douserpage`, `donotcj`, `dodownerror`, `dodelinfodata`, `doaddinfo`, `doeditinfo`, `dodelinfo`, `doadminstyle`, `dorepdownpath`, `douserjs`, `douserlist`, `domsg`, `dosendemail`, `dosetmclass`, `doinfodoc`, `dotempgroup`, `dofeedbackf`, `dotask`, `domemberf`, `dospacestyle`, `dospacedata`, `dovotemod`, `doplayer`, `dowap`, `dopay`, `dobuygroup`, `dosearchall`, `doinfotype`, `doplf`, `dopltable`, `dochadminstyle`, `dotags`, `dosp`, `doyh`, `dofirewall`, `dosetsafe`, `douserclass`, `doworkflow`, `domenu`, `dopubvar`, `doclassf`, `doztf`, `dofiletable`, `docheckinfo`, `dogoodinfo`, `dodocinfo`, `domoveinfo`, `dodttemp`, `doloadcj`, `domustcheck`, `docheckedit`, `domemberconnect`, `doprecode`, `domoreport`, `docanhtml`, `dodelclass`, `doinfofile`, `doingroup`, `domembergroup`, `doviewgroup`, `domadmingroup`, `dochmoreport`, `doisqf`) VALUES
(1, '超级管理员', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewshmsg`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewshmsg` (
  `mid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(80) NOT NULL DEFAULT '',
  `msgtext` text NOT NULL,
  `haveread` tinyint(1) NOT NULL DEFAULT '0',
  `msgtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `to_username` varchar(30) NOT NULL DEFAULT '',
  `from_userid` int(10) unsigned NOT NULL DEFAULT '0',
  `from_username` varchar(30) NOT NULL DEFAULT '',
  `isadmin` tinyint(1) NOT NULL DEFAULT '0',
  `issys` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`mid`),
  KEY `to_username` (`to_username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewshnotice`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewshnotice` (
  `mid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(80) NOT NULL DEFAULT '',
  `msgtext` text NOT NULL,
  `haveread` tinyint(1) NOT NULL DEFAULT '0',
  `msgtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `to_username` varchar(30) NOT NULL DEFAULT '',
  `from_userid` int(10) unsigned NOT NULL DEFAULT '0',
  `from_username` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`mid`),
  KEY `to_username` (`to_username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewshy`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewshy` (
  `fid` bigint(20) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL DEFAULT '0',
  `fname` varchar(30) NOT NULL DEFAULT '',
  `cid` int(11) NOT NULL DEFAULT '0',
  `fsay` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`fid`),
  KEY `userid` (`userid`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewshyclass`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewshyclass` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(30) NOT NULL DEFAULT '',
  `userid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsindexpage`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsindexpage` (
  `tempid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tempname` varchar(30) NOT NULL DEFAULT '',
  `temptext` mediumtext NOT NULL,
  PRIMARY KEY (`tempid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsinfoclass`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsinfoclass` (
  `classid` int(11) NOT NULL AUTO_INCREMENT,
  `bclassid` int(11) NOT NULL DEFAULT '0',
  `classname` varchar(100) NOT NULL DEFAULT '',
  `infourl` mediumtext NOT NULL,
  `newsclassid` smallint(6) NOT NULL DEFAULT '0',
  `startday` date NOT NULL DEFAULT '0000-00-00',
  `endday` date NOT NULL DEFAULT '0000-00-00',
  `bz` text NOT NULL,
  `num` smallint(6) NOT NULL DEFAULT '0',
  `copyimg` tinyint(1) NOT NULL DEFAULT '0',
  `renum` smallint(6) NOT NULL DEFAULT '0',
  `keyboard` text NOT NULL,
  `oldword` text NOT NULL,
  `newword` text NOT NULL,
  `titlelen` smallint(6) NOT NULL DEFAULT '0',
  `retitlewriter` tinyint(1) NOT NULL DEFAULT '0',
  `smalltextlen` smallint(6) NOT NULL DEFAULT '0',
  `zz_smallurl` text NOT NULL,
  `zz_newsurl` text NOT NULL,
  `httpurl` varchar(255) NOT NULL DEFAULT '',
  `repad` text NOT NULL,
  `imgurl` varchar(255) NOT NULL DEFAULT '',
  `relistnum` smallint(6) NOT NULL DEFAULT '0',
  `zz_titlepicl` text NOT NULL,
  `z_titlepicl` varchar(255) NOT NULL DEFAULT '',
  `qz_titlepicl` varchar(255) NOT NULL DEFAULT '',
  `save_titlepicl` varchar(10) NOT NULL DEFAULT '',
  `keynum` tinyint(4) NOT NULL DEFAULT '0',
  `insertnum` smallint(6) NOT NULL DEFAULT '0',
  `copyflash` tinyint(1) NOT NULL DEFAULT '0',
  `tid` smallint(6) NOT NULL DEFAULT '0',
  `tbname` varchar(60) NOT NULL DEFAULT '',
  `pagetype` tinyint(1) NOT NULL DEFAULT '0',
  `smallpagezz` text NOT NULL,
  `pagezz` text NOT NULL,
  `smallpageallzz` text NOT NULL,
  `pageallzz` text NOT NULL,
  `mark` tinyint(1) NOT NULL DEFAULT '0',
  `enpagecode` tinyint(1) NOT NULL DEFAULT '0',
  `recjtheurl` tinyint(1) NOT NULL DEFAULT '0',
  `hiddenload` tinyint(1) NOT NULL DEFAULT '0',
  `justloadin` tinyint(1) NOT NULL DEFAULT '0',
  `justloadcheck` tinyint(1) NOT NULL DEFAULT '0',
  `delloadinfo` tinyint(1) NOT NULL DEFAULT '0',
  `pagerepad` mediumtext NOT NULL,
  `newsztid` text NOT NULL,
  `getfirstpic` tinyint(4) NOT NULL DEFAULT '0',
  `oldpagerep` text NOT NULL,
  `newpagerep` text NOT NULL,
  `keeptime` smallint(6) NOT NULL DEFAULT '0',
  `lasttime` int(11) NOT NULL DEFAULT '0',
  `newstextisnull` tinyint(1) NOT NULL DEFAULT '0',
  `getfirstspic` tinyint(1) NOT NULL DEFAULT '0',
  `getfirstspicw` smallint(6) NOT NULL DEFAULT '0',
  `getfirstspich` smallint(6) NOT NULL DEFAULT '0',
  `doaddtextpage` tinyint(1) NOT NULL DEFAULT '0',
  `infourlispage` tinyint(1) NOT NULL DEFAULT '0',
  `repf` varchar(255) NOT NULL DEFAULT '',
  `repadf` varchar(255) NOT NULL DEFAULT '',
  `loadkeeptime` smallint(6) NOT NULL DEFAULT '0',
  `isnullf` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`),
  KEY `newsclassid` (`newsclassid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `dayuqixiu_enewsinfoclass`
--

INSERT INTO `dayuqixiu_enewsinfoclass` (`classid`, `bclassid`, `classname`, `infourl`, `newsclassid`, `startday`, `endday`, `bz`, `num`, `copyimg`, `renum`, `keyboard`, `oldword`, `newword`, `titlelen`, `retitlewriter`, `smalltextlen`, `zz_smallurl`, `zz_newsurl`, `httpurl`, `repad`, `imgurl`, `relistnum`, `zz_titlepicl`, `z_titlepicl`, `qz_titlepicl`, `save_titlepicl`, `keynum`, `insertnum`, `copyflash`, `tid`, `tbname`, `pagetype`, `smallpagezz`, `pagezz`, `smallpageallzz`, `pageallzz`, `mark`, `enpagecode`, `recjtheurl`, `hiddenload`, `justloadin`, `justloadcheck`, `delloadinfo`, `pagerepad`, `newsztid`, `getfirstpic`, `oldpagerep`, `newpagerep`, `keeptime`, `lasttime`, `newstextisnull`, `getfirstspic`, `getfirstspicw`, `getfirstspich`, `doaddtextpage`, `infourlispage`, `repf`, `repadf`, `loadkeeptime`, `isnullf`) VALUES
(1, 0, '公司新闻', 'http://www.gtgqw.com/second/nyhg.html\r\nhttp://www.gtgqw.com/second/nyhg2.html\r\nhttp://www.gtgqw.com/second/nyhg3.html', 8, '0000-00-00', '0000-00-00', '', 0, 0, 2, '', '', '', 0, 0, 200, '<li style=\\"height:30px;line-height:30px;\\">\r\n[!--smallurl--]<li style=\\"text-align:center;font-size:14px; height:55px;line-height:55px;\\">\r\n', '<p class=\\"titlehy\\"><a href=\\"[!--newsurl--]\\" target=\\"_blank\\">', '', '<iframe[!--ad--]</iframe>,<IFRAME[!--ad--]</IFRAME>,<table[!--ad--]>,</table>,<TABLE[!--ad--]>,</TABLE>,<form[!--ad--]</form>,<FORM[!--ad--]</FORM>,<object[!--ad--]</object>,<OBJECT[!--ad--]</OBJECT>,<tr[!--ad--]>,</tr>,<TR[!--ad--]>,</TR>,<tbody[!--ad--]>,</tbody>,<TBODY[!--ad--]>,</TBODY>,<script[!--ad--]</script>,<SCRIPT[!--ad--]</SCRIPT>,<td[!--ad--]>,</td>,<TD[!--ad--]>,</TD>,<style[!--ad--]</style>,<STYLE[!--ad--]</STYLE>,<a[!--ad--]>,</a>,<A[!--ad--]>,</A>,<div[!--ad--]>,</div>,<DIV[!--ad--]>,</DIV>,<font[!--ad--]>,</font>,<FONT[!--ad--]>,</FONT>,<span[!--ad--]>,</span>,<SPAN[!--ad--]>,</SPAN>,<img[!--ad--]>,<IMG[!--ad--]>', '', 1, '', '', '', '', 0, 10, 0, 1, 'news', 1, '', '', '', '', 0, 7, 0, 0, 0, 0, 0, '', '', 0, '/shownyhg', 'http://www.gtgqw.com/shownyhg', 0, 1615814951, 0, 0, 105, 118, 0, 0, ',title,newstext,', ',newstext,', 0, ',newstext,');

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsinfotype`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsinfotype` (
  `typeid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tname` varchar(30) NOT NULL DEFAULT '',
  `mid` smallint(6) NOT NULL DEFAULT '0',
  `myorder` smallint(6) NOT NULL DEFAULT '0',
  `yhid` smallint(6) NOT NULL DEFAULT '0',
  `tnum` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `listtempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tpath` varchar(100) NOT NULL DEFAULT '',
  `ttype` varchar(10) NOT NULL DEFAULT '',
  `maxnum` int(10) unsigned NOT NULL DEFAULT '0',
  `reorder` varchar(50) NOT NULL DEFAULT '',
  `tid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tbname` varchar(60) NOT NULL DEFAULT '',
  `timg` varchar(200) NOT NULL DEFAULT '',
  `intro` varchar(255) NOT NULL DEFAULT '',
  `pagekey` varchar(255) NOT NULL DEFAULT '',
  `newline` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hotline` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `goodline` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hotplline` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `firstline` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `jstempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `nrejs` tinyint(1) NOT NULL DEFAULT '0',
  `listdt` tinyint(1) NOT NULL DEFAULT '0',
  `repagenum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `fclast` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`typeid`),
  KEY `mid` (`mid`),
  KEY `myorder` (`myorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsinfovote`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsinfovote` (
  `pubid` bigint(16) unsigned NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) NOT NULL DEFAULT '',
  `votenum` int(10) unsigned NOT NULL DEFAULT '0',
  `voteip` mediumtext NOT NULL,
  `votetext` text NOT NULL,
  `voteclass` tinyint(1) NOT NULL DEFAULT '0',
  `doip` tinyint(1) NOT NULL DEFAULT '0',
  `dotime` date NOT NULL DEFAULT '0000-00-00',
  `tempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `width` int(10) unsigned NOT NULL DEFAULT '0',
  `height` int(10) unsigned NOT NULL DEFAULT '0',
  `diyotherlink` tinyint(1) NOT NULL DEFAULT '0',
  `infouptime` int(10) unsigned NOT NULL DEFAULT '0',
  `infodowntime` int(10) unsigned NOT NULL DEFAULT '0',
  `copyids` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`pubid`),
  KEY `id` (`id`,`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsingroup`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsingroup` (
  `gid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `gname` char(60) NOT NULL DEFAULT '',
  `myorder` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`gid`),
  KEY `myorder` (`myorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsjstemp`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsjstemp` (
  `tempid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tempname` varchar(30) NOT NULL DEFAULT '',
  `temptext` mediumtext NOT NULL,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `showdate` varchar(20) NOT NULL DEFAULT '',
  `modid` smallint(6) NOT NULL DEFAULT '0',
  `subnews` smallint(6) NOT NULL DEFAULT '0',
  `subtitle` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tempid`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `dayuqixiu_enewsjstemp`
--

INSERT INTO `dayuqixiu_enewsjstemp` (`tempid`, `tempname`, `temptext`, `classid`, `isdefault`, `showdate`, `modid`, `subnews`, `subtitle`) VALUES
(1, '默认js模板', '[!--empirenews.listtemp--]<li><a href=\\"[!--titleurl--]\\" title=\\"[!--oldtitle--]\\">[!--title--]</a></li>[!--empirenews.listtemp--]', 0, 1, 'm-d', 1, 0, 32);

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsjstempclass`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsjstempclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewskey`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewskey` (
  `keyid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `keyname` char(50) NOT NULL DEFAULT '',
  `keyurl` char(200) NOT NULL DEFAULT '',
  `cid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`keyid`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewskeyclass`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewskeyclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` char(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewslink`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewslink` (
  `lid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `lname` varchar(100) NOT NULL DEFAULT '',
  `lpic` varchar(255) NOT NULL DEFAULT '',
  `lurl` varchar(255) NOT NULL DEFAULT '',
  `ltime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `onclick` int(11) NOT NULL DEFAULT '0',
  `width` varchar(10) NOT NULL DEFAULT '',
  `height` varchar(10) NOT NULL DEFAULT '',
  `target` varchar(10) NOT NULL DEFAULT '',
  `myorder` tinyint(4) NOT NULL DEFAULT '0',
  `email` varchar(60) NOT NULL DEFAULT '',
  `lsay` text NOT NULL,
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `ltype` smallint(6) NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lid`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewslinkclass`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewslinkclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewslinktmp`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewslinktmp` (
  `newsurl` varchar(255) NOT NULL DEFAULT '',
  `checkrnd` varchar(50) NOT NULL DEFAULT '',
  `linkid` bigint(20) NOT NULL AUTO_INCREMENT,
  `titlepic` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`linkid`),
  KEY `checkrnd` (`checkrnd`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewslisttemp`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewslisttemp` (
  `tempid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tempname` varchar(60) NOT NULL DEFAULT '',
  `temptext` mediumtext NOT NULL,
  `subnews` smallint(6) NOT NULL DEFAULT '0',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `listvar` text NOT NULL,
  `rownum` smallint(6) NOT NULL DEFAULT '0',
  `modid` smallint(6) NOT NULL DEFAULT '0',
  `showdate` varchar(50) NOT NULL DEFAULT '',
  `subtitle` smallint(6) NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `docode` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tempid`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `dayuqixiu_enewslisttemp`
--

INSERT INTO `dayuqixiu_enewslisttemp` (`tempid`, `tempname`, `temptext`, `subnews`, `isdefault`, `listvar`, `rownum`, `modid`, `showdate`, `subtitle`, `classid`, `docode`) VALUES
(1, '默认新闻列表模板', '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<meta name=\\"Copyright\\" content=\\"All Rights Reserved btoe.cn\\" />\r\n<meta http-equiv=\\"X-UA-Compatible\\" content=\\"IE=edge,chrome=1\\" />\r\n<meta name=\\"viewport\\" content=\\"width=device-width, initial-scale=1\\">\r\n<title>[!--pagetitle--]-达宇天然气汽车改装厂</title>\r\n<meta name=\\"keywords\\" content=\\"[!--pagekey--]\\" />\r\n<meta name=\\"description\\" content=\\"[!--pagedes--]\\" />\r\n<link href=\\"/style/css/css.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<link rel=\\"stylesheet\\" type=\\"text/css\\" media=\\"screen\\" href=\\"/style/css/bootstrap.min.css\\" />\r\n<link rel=\\"stylesheet\\" type=\\"text/css\\" media=\\"screen\\" href=\\"/style/css/swiper-3.4.2.min.css\\" />\r\n<link rel=\\"stylesheet\\" type=\\"text/css\\" media=\\"screen\\" href=\\"/style/css/common.css\\" />\r\n \r\n \r\n</head>\r\n<body>\r\n<!-- mbanner -->\r\n<div class=\\"topxunpan\\">\r\n	<div class=\\"center\\">\r\n		<p>\r\n        	<span>TEL：<i>19983727888</i></span>\r\n        	<span>TEL：<i>13458195618（微信同号）</i></span>\r\n            <span>E-MAIL：<i>123456@qq.com</i></span>\r\n        </p>\r\n        <div class=\\"thisxp\\">\r\n            <div class=\\"xp\\" id=\\"xunpanText\\" data-tiptitle=\\"请您登录网站后台查看！\\">\r\n                <img src=\\"/style/images/t_icon_05.png\\" alt=\\"询盘信息\\">\r\n                您暂无未读询盘信息!\r\n                <div id=\\"xunpantip\\"></div>\r\n            </div>\r\n        </div>\r\n        <p><a href=\\"#wjdh-message\\" title=\\"在线留言\\">在线留言</a></p>\r\n	</div>\r\n</div>\r\n\r\n[!--temp.header--]\r\n<!-- mbanner -->\r\n\r\n<div class=\\"mbanner col-lg-12 col-md-12\\">\r\n  <div class=\\"row\\">\r\n    \r\n    <img src=\\"/style/images/54514911fe75bd364a68d55841ff803c@1920X320.jpg\\" alt=\\"改装案例\\">\r\n    \r\n  </div>\r\n</div>\r\n<div class=\\"clearboth\\"></div>\r\n\r\n<!-- caseMenu -->\r\n<div class=\\"caseMenu\\">\r\n  <div class=\\"caseMenuTop\\">\r\n    <div class=\\"container\\">\r\n      <div class=\\"row\\">\r\n        <div class=\\"caseMenuL  col-xs-9 col-sm-9  col-md-9 col-lg-9 \\"> <i><img src=\\"/style/images/locationIco.png\\" alt=\\"当前位置\\"></i>\r\n          当前位置：[!--newsnav--]\r\n        </div>\r\n        <div class=\\"caseMenuR col-xs-3 col-sm-3 col-md-3 col-lg-3\\"> <i class=\\"text-right\\"><a href=\\"javascript:;\\" onClick=\\"javascript :history.back(-1);\\">返回<img src=\\"/style/images/ca1.png\\" alt=\\"返回\\"></a></i> </div>\r\n        <div class=\\"clearboth\\"></div>\r\n      </div>\r\n    </div>\r\n  </div>\r\n  <div class=\\"caseMenuBottom\\">\r\n    <div class=\\"container\\">\r\n      <div class=\\"row\\">\r\n        <!-- 此处调用案例分类 -->\r\n        <div class=\\"caseTitleL col-xs-12 col-sm-12 col-md-12  col-lg-2\\">\r\n          \r\n          <i><img src=\\"/style/images/caseIco2.png\\" alt=\\"[!--class.name--]\\"></i> [!--class.name--]\r\n          \r\n        </div>\r\n        <div class=\\"caseTitleR col-xs-12 col-sm-12 col-md-12  col-lg-10\\">\r\n          <ul>\r\n            \r\n          </ul>\r\n        </div>\r\n      </div>\r\n    </div>\r\n  </div>\r\n</div>\r\n<div class=\\"clearboth\\"></div>\r\n<div class=\\"caseList\\">\r\n  <div class=\\"container\\">\r\n    <div class=\\"row\\">\r\n      <ul>\r\n        \r\n\r\n        [!--empirenews.listtemp--]\r\n<!--list.var1-->\r\n[!--empirenews.listtemp--]\r\n\r\n        \r\n      </ul>\r\n      <div class=\\"clearboth\\"></div>\r\n      <div class=\\"text-center\\">\r\n        <div class=\\"pageBox\\">[!--show.listpage--]</div> \r\n        <style type=\\"text/css\\">\r\n        .pageBox {text-align: center; width:750px; margin-bottom:25px; margin-top:25px; }\r\n        .pageBox a {border:1px solid #ddd;display:inline-block;margin-right:6px;color: #707070;width:34px;height:34px;font:bold 14px/34px arial;}\r\n        .pageBox a:hover,.pageBox a:active{background:#3aa9f2;color: #FFFFFF;text-decoration: none;}\r\n        .pageBox .cur { background: #3aa9f2;border: 1px solid #3aa9f2;text-decoration: none;}\r\n        .pageBox a.cur {color: #fff;}\r\n        .pageBox .disabled {width: 79px;}\r\n        </style>\r\n      </div>\r\n    </div>\r\n  </div>\r\n</div>\r\n<script src=\\"/style/js/jquery.min.js\\"></script>\r\n<script src=\\"/style/js/bootstrap.min.js\\"></script>\r\n<script src=\\"/style/js/swiper-3.4.2.min.js\\"></script>\r\n<script src=\\"/style/js/rem.min.js\\"></script>\r\n<script src=\\"/style/js/color.js\\"></script>\r\n[!--temp.footer--]\r\n\r\n<!--全局使用js，请放于footer-->\r\n<script src=\\"/style/js/nav.js\\"></script>\r\n\r\n \r\n<script src=\\"/style/js/base.js\\" type=\\"text/javascript\\" charset=\\"utf-8\\"></script>\r\n\r\n<script src=\\"/style/js/common.js\\"></script>\r\n</body>\r\n</html>\r\n', 0, 0, '        <li class=\\"col-xs-6 col-sm-6 col-md-4 col-lg-4 \\">\r\n          <div class=\\"caseLdd\\"> <i><a href=\\"[!--titleurl--]\\" class=\\"caseListdd\\" ><img src=\\"[!--titlepic--]\\" alt=\\"[!--title--]\\" class=\\"caseImgList1\\"></a>\r\n            <div class=\\"caseListhide\\"></div>\r\n            <a href=\\"[!--titleurl--]\\" class=\\"caseListBg\\"></a> </i>\r\n            <div class=\\"caseText\\"> <a href=\\"[!--titleurl--]\\" class=\\"caseListTitle\\">[!--title--]</a>\r\n              <div class=\\"caseLine\\"></div>\r\n              <p>[!--smalltext--]</p>\r\n              <a href=\\"[!--titleurl--]\\" class=\\"caseMore\\"><img src=\\"/style/images/caseIco1.png\\" alt=\\"详情\\"></a> <span class=\\"button_text_container\\"></span> </div>\r\n          </div>\r\n        </li>', 1, 1, 'Y-m-d', 0, 0, 0),
(2, '默认下载列表模板', '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name=\\"keywords\\" content=\\"[!--pagekey--]\\" />\r\n<meta name=\\"description\\" content=\\"[!--pagedes--]\\" />\r\n<link href=\\"[!--news.url--]skin/default/css/style.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<script type=\\"text/javascript\\" src=\\"[!--news.url--]skin/default/js/tabs.js\\"></script>\r\n</head>\r\n<body class=\\"listpage\\">\r\n[!--temp.header--]\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\">\r\n<tr valign=\\"top\\">\r\n<td class=\\"list_content\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"position\\">\r\n<tr>\r\n<td>您当前的位置：[!--newsnav--]</td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\">\r\n<tr>\r\n<td colspan=\\"3\\" class=\\"down_list\\"><table bgcolor=\\"#FFFFFF\\" width=\\"100%\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"3\\" cellspacing=\\"1\\" style=\\"table-layout:  fixed;  word-wrap:  break-word\\">\r\n<tr align=\\"center\\">\r\n<td bgcolor=\\"#D0E7F7\\">软件名称</td>\r\n<td width=\\"76\\"  nowrap=\\"nowrap\\" bgcolor=\\"#D0E7F7\\">整理日期</td>\r\n<td width=\\"70\\" nowrap=\\"nowrap\\" bgcolor=\\"#D0E7F7\\">软件大小</td>\r\n<td width=\\"50\\" nowrap=\\"nowrap\\" bgcolor=\\"#D0E7F7\\">人气</td>\r\n<td width=\\"76\\" nowrap=\\"nowrap\\" bgcolor=\\"#D0E7F7\\">软件等级</td>\r\n</tr>\r\n[!--empirenews.listtemp--]\r\n<!--list.var1-->\r\n[!--empirenews.listtemp--]\r\n</table></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"list_page\\">\r\n<tr>\r\n<td>[!--show.page--]</td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table></td>\r\n<td class=\\"sider\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title\\">\r\n<tr>\r\n<td><strong>推荐下载</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><ul>\r\n[ecmsinfo]\\''selfinfo\\'',10,44,0,2,2,0[/ecmsinfo]\r\n</ul></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>最后更新</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><ul>\r\n[ecmsinfo]\\''selfinfo\\'',10,44,0,0,2,0[/ecmsinfo]\r\n</ul></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>热门点击</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><ol class=\\"rank\\">\r\n[ecmsinfo]\\''selfinfo\\'',10,40,0,1,10,0[/ecmsinfo]\r\n</ol></td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', 200, 0, '<tr> \r\n    <td width=\\"290\\"><img src=\\"[!--news.url--]e/data/images/list.gif\\" width=\\"11\\" height=\\"11\\" border=\\"0\\" /> <b>[!--class.name--]<a href=\\"[!--titleurl--]\\">[!--title--]</a></b></td>\r\n    <td align=\\"center\\" nowrap=\\"nowrap\\">[!--newstime--]</td>\r\n    <td align=\\"center\\" nowrap=\\"nowrap\\">[!--filesize--]</td>\r\n    <td align=\\"center\\" nowrap=\\"nowrap\\">[!--totaldown--]</td>\r\n    <td align=\\"center\\" nowrap=\\"nowrap\\"><img src=\\"[!--news.url--]e/data/images/[!--star--]star.gif\\" border=\\"0\\" /></td>\r\n  </tr>\r\n  <tr valign=\\"top\\"> \r\n    <td colspan=\\"5\\" class=\\"softsay\\">[!--softsay--]</td>\r\n</tr>\r\n  <tr> \r\n    <td colspan=\\"5\\"><font color=\\"green\\">界面语言：</font>[!--language--]  <font color=\\"green\\">软件类型：</font>[!--softtype--]  <font color=\\"green\\">授权方式：</font>[!--softsq--]  <font color=\\"green\\">运行平台：</font>[!--softfj--]</td>\r\n</tr></td></tr>\r\n  <tr> \r\n    <td colspan=\\"5\\"><img src=\\"[!--news.url--]e/data/images/line.gif\\" width=\\"100%\\" height=\\"9\\" /></td>\r\n</tr>', 1, 2, 'Y-m-d', 0, 0, 0),
(3, '默认图片列表模板', '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name=\\"keywords\\" content=\\"[!--pagekey--]\\" />\r\n<meta name=\\"description\\" content=\\"[!--pagedes--]\\" />\r\n<link href=\\"[!--news.url--]skin/default/css/style.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<script type=\\"text/javascript\\" src=\\"[!--news.url--]skin/default/js/tabs.js\\"></script>\r\n</head>\r\n<body class=\\"listpage\\">\r\n[!--temp.header--]\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\">\r\n<tr valign=\\"top\\">\r\n<td class=\\"list_content\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"position\\">\r\n<tr>\r\n<td>您当前的位置：[!--newsnav--]</td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\">\r\n<tr>\r\n<td colspan=\\"3\\" class=\\"photo_list\\">\r\n[!--empirenews.listtemp--]\r\n<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\" class=\\"line_bottom\\">\r\n	<tr>\r\n		<td width=\\"25%\\" valign=\\"top\\"><!--list.var1--></td>\r\n		<td width=\\"25%\\" valign=\\"top\\"><!--list.var2--></td>\r\n		<td width=\\"25%\\" valign=\\"top\\"><!--list.var3--></td>\r\n		<td width=\\"25%\\" valign=\\"top\\"><!--list.var4--></td>\r\n	</tr>\r\n</table>\r\n[!--empirenews.listtemp--]\r\n</td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"list_page\\">\r\n<tr>\r\n<td>[!--show.page--]</td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table></td>\r\n<td class=\\"sider\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title\\">\r\n<tr>\r\n<td><strong>图片推荐</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"8\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td>[phomenewspic]\\''selfinfo\\'',2,4,128,90,1,20,2[/phomenewspic] </td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>最后更新</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><ul>\r\n[ecmsinfo]\\''selfinfo\\'',10,44,0,0,2,0[/ecmsinfo]\r\n</ul></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>热门点击</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><ol class=\\"rank\\">\r\n[ecmsinfo]\\''selfinfo\\'',10,40,0,1,10,0[/ecmsinfo]\r\n</ol></td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', 0, 0, '<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"4\\" cellpadding=\\"0\\">\r\n	<tr valign=\\"top\\">\r\n		<td align=\\"center\\" class=\\"titlepic\\"><a href=\\"[!--titleurl--]\\"><img src=\\"[!--titlepic--]\\" alt=\\"[!--oldtitle--]\\" width=\\"128\\" height=\\"90\\" border=\\"0\\" /></a></td>\r\n	</tr>\r\n	<tr>\r\n		<td align=\\"center\\"><a href=\\"[!--titleurl--]\\" title=\\"[!--oldtitle--]\\">[!--title--]</a></td>\r\n	</tr>\r\n</table>', 4, 3, 'Y-m-d H:i:s', 22, 0, 0),
(4, '默认FLASH列表模板', '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name=\\"keywords\\" content=\\"[!--pagekey--]\\" />\r\n<meta name=\\"description\\" content=\\"[!--pagedes--]\\" />\r\n<link href=\\"[!--news.url--]skin/default/css/style.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<script type=\\"text/javascript\\" src=\\"[!--news.url--]skin/default/js/tabs.js\\"></script>\r\n</head>\r\n<body class=\\"listpage\\">\r\n[!--temp.header--]\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\">\r\n<tr valign=\\"top\\">\r\n<td class=\\"list_content\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"position\\">\r\n<tr>\r\n<td>您当前的位置：[!--newsnav--]</td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\">\r\n<tr>\r\n<td colspan=\\"3\\" class=\\"flash_list\\">\r\n[!--empirenews.listtemp--]\r\n<!--list.var1-->\r\n[!--empirenews.listtemp--]\r\n</td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"list_page\\">\r\n<tr>\r\n<td>[!--show.page--]</td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table></td>\r\n<td class=\\"sider\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title\\">\r\n<tr>\r\n<td><strong>推荐下载</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"8\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td>[phomenewspic]\\''selfinfo\\'',2,4,128,90,1,20,2[/phomenewspic] </td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>最后更新</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><ul>\r\n[ecmsinfo]\\''selfinfo\\'',10,44,0,0,2,0[/ecmsinfo]\r\n</ul></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>热门点击</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><ol class=\\"rank\\">\r\n[ecmsinfo]\\''selfinfo\\'',10,40,0,1,10,0[/ecmsinfo]\r\n</ol></td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', 200, 0, '<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"8\\" class=\\"line_bottom\\">\r\n<tr valign=\\"top\\">\r\n<td width=\\"200\\" align=\\"center\\"><a href=\\"[!--titleurl--]\\"><img src=\\"[!--titlepic--]\\" width=\\"200\\" height=\\"150\\" border=\\"0\\" /></a></td>\r\n<td><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\">\r\n<tr>\r\n<td width=\\"70%\\" height=\\"26\\" style=\\"font-size:14px\\"><strong><a href=\\"[!--titleurl--]\\">[!--title--]</a></strong></td>\r\n<td width=\\"30%\\"><div align=\\"right\\">[!--newstime--]</div></td>\r\n</tr>\r\n<tr>\r\n<td colspan=\\"2\\"class=\\"flashsay\\">简介：[!--flashsay--]</td>\r\n</tr>\r\n<tr>\r\n<td height=\\"26\\" colspan=\\"2\\">作者：[!--flashwriter--]　文件大小：[!--filesize--]　作品人气：[!--onclick--] </td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>', 1, 4, 'Y-m-d', 0, 0, 0),
(5, '默认电影列表模板', '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name=\\"keywords\\" content=\\"[!--pagekey--]\\" />\r\n<meta name=\\"description\\" content=\\"[!--pagedes--]\\" />\r\n<link href=\\"[!--news.url--]skin/default/css/style.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<script type=\\"text/javascript\\" src=\\"[!--news.url--]skin/default/js/tabs.js\\"></script>\r\n</head>\r\n<body class=\\"listpage\\">\r\n[!--temp.header--]\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\">\r\n<tr valign=\\"top\\">\r\n<td class=\\"list_content\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"position\\">\r\n<tr>\r\n<td>您当前的位置：[!--newsnav--]</td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\">\r\n<tr>\r\n<td colspan=\\"3\\" class=\\"movie_list\\">\r\n[!--empirenews.listtemp--]\r\n<!--list.var1-->\r\n[!--empirenews.listtemp--]\r\n</td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"list_page\\">\r\n<tr>\r\n<td>[!--show.page--]</td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table></td>\r\n<td class=\\"sider\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title\\">\r\n<tr>\r\n<td><strong>影视推荐</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"8\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td>[phomenewspic]\\''selfinfo\\'',2,4,128,90,1,20,2[/phomenewspic] </td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>最后更新</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><ul>\r\n[ecmsinfo]\\''selfinfo\\'',10,44,0,0,2,0[/ecmsinfo]\r\n</ul></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>热门点击</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><ol class=\\"rank\\">\r\n[ecmsinfo]\\''selfinfo\\'',10,40,0,1,10,0[/ecmsinfo]\r\n</ol></td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', 100, 0, '<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"8\\" class=\\"line_bottom\\">\r\n<tr valign=\\"top\\">\r\n    <td width=\\"27%\\" align=\\"center\\" class=\\"titlepic\\"><a href=\\"[!--titleurl--]\\"><img src=\\"[!--titlepic--]\\" alt=\\"[!--oldtitle--]\\" width=\\"120\\" height=\\"150\\" border=\\"0\\" /></a></td>\r\n<td><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\">\r\n<tr>\r\n          <td width=\\"80%\\" height=\\"26\\" style=\\"font-size:14px\\"><strong><a href=\\"[!--titleurl--]\\">[!--title--]</a></strong> \r\n            <img src=\\"[!--news.url--]e/data/images/[!--star--]star.gif\\" alt=\\"推荐指数[!--star--]颗星\\" border=\\"0\\" align=\\"absmiddle\\" /></td>\r\n          <td width=\\"20%\\"> \r\n            <div align=\\"right\\">[!--newstime--]</div></td>\r\n</tr>\r\n<tr>\r\n<td colspan=\\"2\\"><strong>年代：</strong>2008　　<strong>出品公司：</strong>[!--company--]</td>\r\n</tr>\r\n<tr>\r\n	<td height=\\"26\\" colspan=\\"2\\"><strong>导演：</strong>[!--playadmin--]</td>\r\n</tr>\r\n<tr>\r\n	<td height=\\"26\\" colspan=\\"2\\"><strong>主演：</strong>[!--player--]</td>\r\n</tr>\r\n<tr>\r\n	<td height=\\"26\\" colspan=\\"2\\"><strong>类型：</strong>[!--movietype--]</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\\"2\\"><strong>影片简介：</strong>[!--moviesay--] [<a title=\\"阅读全文\\" href=\\"[!--titleurl--]\\">详细内容</a>]</td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>', 1, 5, 'Y-m-d', 0, 0, 0),
(6, '默认商城列表模板', '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name=\\"keywords\\" content=\\"[!--pagekey--]\\" />\r\n<meta name=\\"description\\" content=\\"[!--pagedes--]\\" />\r\n<link href=\\"[!--news.url--]skin/default/css/style.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<script type=\\"text/javascript\\" src=\\"[!--news.url--]skin/default/js/tabs.js\\"></script>\r\n</head>\r\n<body class=\\"listpage\\">\r\n[!--temp.header--]\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\">\r\n<tr valign=\\"top\\">\r\n<td class=\\"list_content\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"position\\">\r\n<tr>\r\n<td>您当前的位置：[!--newsnav--]</td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\">\r\n<tr>\r\n<td colspan=\\"3\\" class=\\"shop_list\\">\r\n[!--empirenews.listtemp--]\r\n<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\" class=\\"line_bottom\\">\r\n	<tr>\r\n		<td width=\\"25%\\" valign=\\"top\\"><!--list.var1--></td>\r\n		<td width=\\"25%\\" valign=\\"top\\"><!--list.var2--></td>\r\n		<td width=\\"25%\\" valign=\\"top\\"><!--list.var3--></td>\r\n		<td width=\\"25%\\" valign=\\"top\\"><!--list.var4--></td>\r\n	</tr>\r\n</table>\r\n[!--empirenews.listtemp--]\r\n</td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"list_page\\">\r\n<tr>\r\n<td>[!--show.page--]</td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table></td>\r\n<td class=\\"sider\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title\\">\r\n<tr>\r\n<td><strong>商品推荐</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"8\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td>[phomenewspic]\\''selfinfo\\'',2,4,128,90,1,20,2[/phomenewspic] </td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>最后更新</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><ul>\r\n[ecmsinfo]\\''selfinfo\\'',10,44,0,0,2,0[/ecmsinfo]\r\n</ul></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>热门点击</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><ol class=\\"rank\\">\r\n[ecmsinfo]\\''selfinfo\\'',10,40,0,1,10,0[/ecmsinfo]\r\n</ol></td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', 60, 0, '<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"4\\" cellpadding=\\"0\\">\r\n	<tr valign=\\"top\\">\r\n		<td align=\\"center\\" class=\\"titlepic\\"><a href=\\"[!--titleurl--]\\"><img src=\\"[!--titlepic--]\\" alt=\\"[!--oldtitle--]\\" width=\\"120\\" height=\\"120\\" border=\\"0\\" /></a></td>\r\n	</tr>\r\n	<tr>\r\n		<td align=\\"center\\"><a href=\\"[!--titleurl--]\\" title=\\"[!--oldtitle--]\\">[!--title--]</a></td>\r\n	</tr>\r\n	<tr>\r\n		<td align=\\"center\\" class=\\"tprice\\">市场价：<span>￥[!--tprice--]</span></td>\r\n	</tr>\r\n	<tr>\r\n		<td align=\\"center\\" class=\\"price\\">优惠价：<span>￥[!--price--]</span></td>\r\n	</tr>\r\n</table>', 4, 6, 'Y-m-d', 20, 0, 0),
(7, '默认文章列表模板', '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name=\\"keywords\\" content=\\"[!--pagekey--]\\" />\r\n<meta name=\\"description\\" content=\\"[!--pagedes--]\\" />\r\n<link href=\\"[!--news.url--]skin/default/css/style.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<script type=\\"text/javascript\\" src=\\"[!--news.url--]skin/default/js/tabs.js\\"></script>\r\n</head>\r\n<body class=\\"listpage\\">\r\n[!--temp.header--]\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\">\r\n<tr valign=\\"top\\">\r\n<td class=\\"news_list\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"position\\">\r\n<tr>\r\n<td>您当前的位置：[!--newsnav--]</td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td>[!--empirenews.listtemp--]<ul>\r\n<!--list.var1-->\r\n<!--list.var2-->\r\n<!--list.var3-->\r\n<!--list.var4-->\r\n<!--list.var5--></ul>\r\n[!--empirenews.listtemp--]\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"list_page\\">\r\n<tr>\r\n<td>[!--show.page--]</td>\r\n</tr>\r\n</table>\r\n</td>\r\n</tr>\r\n</table></td>\r\n<td class=\\"sider\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title\\">\r\n<tr>\r\n<td><strong>推荐资讯</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"8\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td>[phomenewspic]\\''selfinfo\\'',2,4,128,90,1,20,2[/phomenewspic]\r\n</td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>最后更新</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><ul>\r\n[ecmsinfo]\\''selfinfo\\'',10,44,0,0,2,0[/ecmsinfo] \r\n</ul></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>热门点击</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><ol class=\\"rank\\">\r\n[ecmsinfo]\\''selfinfo\\'',10,40,0,1,10,0[/ecmsinfo] \r\n</ol></td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', 0, 0, '<li><a href=\\"[!--titleurl--]\\" title=\\"[!--oldtitle--]\\">[!--title--]</a> <span>[!--newstime--]</span></li>', 5, 7, 'Y-m-d', 0, 0, 0),
(8, '分类信息默认列表模板', '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name=\\"keywords\\" content=\\"[!--pagekey--]\\" />\r\n<meta name=\\"description\\" content=\\"[!--pagedes--]\\" />\r\n<link href=\\"[!--news.url--]skin/default/css/style.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<script type=\\"text/javascript\\" src=\\"[!--news.url--]skin/default/js/tabs.js\\"></script>\r\n</head>\r\n<body class=\\"listpage\\">\r\n[!--temp.dtheader--]\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\">\r\n<tr valign=\\"top\\">\r\n<td class=\\"list_content\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"position\\">\r\n<tr>\r\n<td>您当前的位置：[!--newsnav--]</td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\">\r\n<tr>\r\n<td colspan=\\"3\\" class=\\"info_list\\">\r\n[!--empirenews.listtemp--]\r\n<!--list.var1-->\r\n[!--empirenews.listtemp--]\r\n</td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"list_page\\">\r\n<tr>\r\n<td>[!--show.page--]</td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table></td>\r\n<td class=\\"sider\\">\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title\\">\r\n<tr>\r\n<td><strong>地区导航</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td>[!--temp.infoarea--]</td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>分类导航</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td>[!--temp.infoclassnav--]</td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>推荐信息</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><ul>\r\n[!--self.goodnews--]\r\n</ul></td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', 120, 0, '<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"8\\" class=\\"line_bottom\\">\r\n<tr valign=\\"top\\">\r\n<td align=\\"center\\" class=\\"titlepic\\"><a href=\\"[!--titleurl--]\\"><img src=\\"[!--titlepic--]\\" alt=\\"[!--oldtitle--]\\" width=\\"80\\" height=\\"60\\" border=\\"0\\" /></a></td>\r\n<td><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\">\r\n<tr>\r\n<td width=\\"70%\\" height=\\"26\\" style=\\"font-size:14px\\"><strong>[<a href=\\"[!--news.url--]e/action/ListInfo.php?classid=[!--classid--]&amp;ph=1&amp;myarea=[!--myarea--]\\">[!--myarea--]</a>] <a href=\\"[!--titleurl--]\\">[!--title--]</a>\r\n</strong> 关注：<span class=\\"click\\">[!--onclick--]</span></td>\r\n<td width=\\"30%\\"><div align=\\"right\\">[!--newstime--]</div></td>\r\n</tr>\r\n<tr>\r\n<td colspan=\\"2\\" class=\\"smalltext\\">[!--smalltext--] [<a title=\\"阅读全文\\" href=\\"[!--titleurl--]\\">详细内容</a>]</td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>', 1, 8, 'Y-m-d', 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewslisttempclass`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewslisttempclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewslog`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewslog` (
  `loginid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL DEFAULT '',
  `logintime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `loginip` varchar(20) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `password` varchar(30) NOT NULL DEFAULT '',
  `loginauth` tinyint(1) NOT NULL DEFAULT '0',
  `ipport` varchar(6) NOT NULL DEFAULT '',
  PRIMARY KEY (`loginid`),
  KEY `status` (`status`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `dayuqixiu_enewslog`
--

INSERT INTO `dayuqixiu_enewslog` (`loginid`, `username`, `logintime`, `loginip`, `status`, `password`, `loginauth`, `ipport`) VALUES
(1, 'admin', '2021-03-15 21:00:49', '127.0.0.1', 1, '', 0, '57664'),
(2, 'admin', '2021-03-16 14:14:45', '127.0.0.1', 1, '', 0, '56241'),
(3, 'admin', '2021-03-16 15:57:52', '127.0.0.1', 1, '', 0, '53120'),
(4, 'admin', '2021-03-16 16:30:45', '127.0.0.1', 1, '', 0, '53563'),
(5, 'admin', '2021-03-16 18:08:11', '127.0.0.1', 1, '', 0, '55861');

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsloginfail`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsloginfail` (
  `ip` varchar(20) NOT NULL DEFAULT '',
  `num` tinyint(4) NOT NULL DEFAULT '0',
  `lasttime` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsmember`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsmember` (
  `userid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` char(20) NOT NULL DEFAULT '',
  `password` char(32) NOT NULL DEFAULT '',
  `rnd` char(20) NOT NULL DEFAULT '',
  `email` char(50) NOT NULL DEFAULT '',
  `registertime` int(10) unsigned NOT NULL DEFAULT '0',
  `groupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userfen` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `userdate` int(10) unsigned NOT NULL DEFAULT '0',
  `money` float(11,2) NOT NULL DEFAULT '0.00',
  `zgroupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `havemsg` tinyint(1) NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `salt` char(8) NOT NULL DEFAULT '',
  `userkey` char(12) NOT NULL DEFAULT '',
  `ingid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `agid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `isern` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`userid`),
  UNIQUE KEY `username` (`username`),
  KEY `groupid` (`groupid`),
  KEY `ingid` (`ingid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsmemberadd`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsmemberadd` (
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `truename` varchar(20) NOT NULL DEFAULT '',
  `oicq` varchar(25) NOT NULL DEFAULT '',
  `msn` varchar(120) NOT NULL DEFAULT '',
  `mycall` varchar(30) NOT NULL DEFAULT '',
  `phone` varchar(30) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `zip` varchar(8) NOT NULL DEFAULT '',
  `spacestyleid` smallint(6) NOT NULL DEFAULT '0',
  `homepage` varchar(200) NOT NULL DEFAULT '',
  `saytext` text NOT NULL,
  `company` varchar(255) NOT NULL DEFAULT '',
  `fax` varchar(30) NOT NULL DEFAULT '',
  `userpic` varchar(200) NOT NULL DEFAULT '',
  `spacename` varchar(255) NOT NULL DEFAULT '',
  `spacegg` text NOT NULL,
  `viewstats` int(11) NOT NULL DEFAULT '0',
  `regip` varchar(20) NOT NULL DEFAULT '',
  `lasttime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(20) NOT NULL DEFAULT '',
  `loginnum` int(10) unsigned NOT NULL DEFAULT '0',
  `regipport` varchar(6) NOT NULL DEFAULT '',
  `lastipport` varchar(6) NOT NULL DEFAULT '',
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsmemberf`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsmemberf` (
  `fid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `f` varchar(30) NOT NULL DEFAULT '',
  `fname` varchar(30) NOT NULL DEFAULT '',
  `fform` varchar(20) NOT NULL DEFAULT '',
  `fhtml` mediumtext NOT NULL,
  `fzs` varchar(255) NOT NULL DEFAULT '',
  `myorder` smallint(6) NOT NULL DEFAULT '0',
  `ftype` varchar(30) NOT NULL DEFAULT '',
  `flen` varchar(20) NOT NULL DEFAULT '',
  `fvalue` text NOT NULL,
  `fformsize` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- 转存表中的数据 `dayuqixiu_enewsmemberf`
--

INSERT INTO `dayuqixiu_enewsmemberf` (`fid`, `f`, `fname`, `fform`, `fhtml`, `fzs`, `myorder`, `ftype`, `flen`, `fvalue`, `fformsize`) VALUES
(1, 'truename', '真实姓名', 'text', '\r\n<input name="truename" type="text" id="truename" value="<?=$ecmsfirstpost==1?"":ehtmlspecialchars(stripSlashes($addr[truename]))?>">\r\n', '', 1, 'VARCHAR', '20', '', ''),
(2, 'oicq', 'QQ号码', 'text', '<input name=\\"oicq\\" type=\\"text\\" id=\\"oicq\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":ehtmlspecialchars(stripSlashes($addr[oicq]))?>\\">\r\n', '', 5, 'VARCHAR', '25', '', ''),
(3, 'msn', 'MSN', 'text', '<input name=\\"msn\\" type=\\"text\\" id=\\"msn\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":ehtmlspecialchars(stripSlashes($addr[msn]))?>\\">\r\n', '', 6, 'VARCHAR', '120', '', ''),
(4, 'mycall', '联系电话', 'text', '<input name=\\"mycall\\" type=\\"text\\" id=\\"mycall\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":ehtmlspecialchars(stripSlashes($addr[mycall]))?>\\">\r\n', '', 2, 'VARCHAR', '30', '', ''),
(5, 'phone', '手机', 'text', '<input name=\\"phone\\" type=\\"text\\" id=\\"phone\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":ehtmlspecialchars(stripSlashes($addr[phone]))?>\\">\r\n', '', 4, 'VARCHAR', '30', '', ''),
(6, 'address', '联系地址', 'text', '<input name=\\"address\\" type=\\"text\\" id=\\"address\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":ehtmlspecialchars(stripSlashes($addr[address]))?>\\" size=\\"50\\">\r\n', '', 9, 'VARCHAR', '255', '', ''),
(7, 'zip', '邮编', 'text', '<input name=\\"zip\\" type=\\"text\\" id=\\"zip\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":ehtmlspecialchars(stripSlashes($addr[zip]))?>\\" size=\\"8\\">\r\n', '', 10, 'VARCHAR', '8', '', ''),
(9, 'homepage', '网址', 'text', '\r\n<input name="homepage" type="text" id="homepage" value="<?=$ecmsfirstpost==1?"":ehtmlspecialchars(stripSlashes($addr[homepage]))?>">\r\n', '', 7, 'VARCHAR', '200', '', ''),
(10, 'saytext', '简介', 'textarea', '<textarea name=\\"saytext\\" cols=\\"65\\" rows=\\"10\\" id=\\"saytext\\"><?=$ecmsfirstpost==1?\\"\\":stripSlashes($addr[saytext])?></textarea>\r\n', '', 11, 'TEXT', '', '', ''),
(11, 'company', '公司名称', 'text', '<input name=\\"company\\" type=\\"text\\" id=\\"company\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":ehtmlspecialchars(stripSlashes($addr[company]))?>\\" size=\\"38\\">\r\n', '', 0, 'VARCHAR', '255', '', ''),
(12, 'fax', '传真', 'text', '\r\n<input name="fax" type="text" id="fax" value="<?=$ecmsfirstpost==1?"":ehtmlspecialchars(stripSlashes($addr[fax]))?>">\r\n', '', 3, 'VARCHAR', '30', '', ''),
(13, 'userpic', '会员头像', 'img', '<input type=\\"file\\" name=\\"userpicfile\\">&nbsp;&nbsp;\r\n<?=empty($addr[userpic])?\\"\\":\\"<img src=\\''\\".ehtmlspecialchars(stripSlashes($addr[userpic])).\\"\\'' border=0>\\"?>', '', 8, 'VARCHAR', '200', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsmemberfeedback`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsmemberfeedback` (
  `fid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(12) NOT NULL DEFAULT '',
  `company` varchar(80) NOT NULL DEFAULT '',
  `phone` varchar(30) NOT NULL DEFAULT '',
  `fax` varchar(20) NOT NULL DEFAULT '',
  `email` varchar(80) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `zip` varchar(8) NOT NULL DEFAULT '',
  `title` varchar(120) NOT NULL DEFAULT '',
  `ftext` text NOT NULL,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `uname` varchar(20) NOT NULL DEFAULT '',
  `addtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `eipport` varchar(6) NOT NULL DEFAULT '',
  PRIMARY KEY (`fid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsmemberform`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsmemberform` (
  `fid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `fname` varchar(60) NOT NULL DEFAULT '',
  `ftemp` mediumtext NOT NULL,
  `fzs` varchar(255) NOT NULL DEFAULT '',
  `enter` text NOT NULL,
  `mustenter` text NOT NULL,
  `filef` varchar(255) NOT NULL DEFAULT '',
  `imgf` varchar(255) NOT NULL DEFAULT '0',
  `tobrf` text NOT NULL,
  `viewenter` text NOT NULL,
  `searchvar` varchar(255) NOT NULL DEFAULT '',
  `canaddf` text NOT NULL,
  `caneditf` text NOT NULL,
  `checkboxf` text NOT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `dayuqixiu_enewsmemberform`
--

INSERT INTO `dayuqixiu_enewsmemberform` (`fid`, `fname`, `ftemp`, `fzs`, `enter`, `mustenter`, `filef`, `imgf`, `tobrf`, `viewenter`, `searchvar`, `canaddf`, `caneditf`, `checkboxf`) VALUES
(1, '个人注册表单', '<table width=\\''100%\\'' align=\\''center\\'' cellpadding=3 cellspacing=1 bgcolor=\\''#DBEAF5\\''>\r\n<tr><td width=\\''25%\\'' height=25 bgcolor=\\''ffffff\\''>真实姓名</td><td bgcolor=\\''ffffff\\''>[!--truename--]</td></tr>\r\n<tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>QQ号码</td><td bgcolor=\\''ffffff\\''>[!--oicq--]</td></tr>\r\n<tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>MSN</td><td bgcolor=\\''ffffff\\''>[!--msn--]</td></tr>\r\n<tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>联系电话</td><td bgcolor=\\''ffffff\\''>[!--mycall--]</td></tr>\r\n<tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>手机</td><td bgcolor=\\''ffffff\\''>[!--phone--]</td></tr>\r\n<tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>网站地址</td><td bgcolor=\\''ffffff\\''>[!--homepage--]</td></tr>\r\n<tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>会员头像</td><td bgcolor=\\''ffffff\\''>[!--userpic--]</td></tr>\r\n<tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>联系地址</td><td bgcolor=\\''ffffff\\''>[!--address--]&nbsp;邮编: [!--zip--]</td></tr>\r\n<tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>个人介绍</td><td bgcolor=\\''ffffff\\''>[!--saytext--]</td></tr>\r\n</table>', '', '真实姓名<!--field--->truename<!--record-->联系电话<!--field--->mycall<!--record-->手机<!--field--->phone<!--record-->QQ号码<!--field--->oicq<!--record-->MSN<!--field--->msn<!--record-->网站地址<!--field--->homepage<!--record-->会员头像<!--field--->userpic<!--record-->联系地址<!--field--->address<!--record-->邮编<!--field--->zip<!--record-->简介<!--field--->saytext<!--record-->', '', ',', ',userpic,', ',saytext,', '真实姓名<!--field--->truename<!--record-->联系电话<!--field--->mycall<!--record-->手机<!--field--->phone<!--record-->QQ号码<!--field--->oicq<!--record-->MSN<!--field--->msn<!--record-->网站地址<!--field--->homepage<!--record-->会员头像<!--field--->userpic<!--record-->联系地址<!--field--->address<!--record-->邮编<!--field--->zip<!--record-->简介<!--field--->saytext<!--record-->', '', ',truename,mycall,phone,oicq,msn,homepage,userpic,address,zip,saytext,', ',truename,mycall,phone,oicq,msn,homepage,userpic,address,zip,saytext,', ','),
(2, '企员注册表单', '<table width=\\''100%\\'' align=\\''center\\'' cellpadding=3 cellspacing=1 bgcolor=\\''#DBEAF5\\''><tr><td width=\\''25%\\'' height=25 bgcolor=\\''ffffff\\''>公司名称</td><td bgcolor=\\''ffffff\\''>[!--company--](*)</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>联系人</td><td bgcolor=\\''ffffff\\''>[!--truename--](*)</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>联系电话</td><td bgcolor=\\''ffffff\\''>[!--mycall--](*)</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>传真</td><td bgcolor=\\''ffffff\\''>[!--fax--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>手机</td><td bgcolor=\\''ffffff\\''>[!--phone--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>QQ号码</td><td bgcolor=\\''ffffff\\''>[!--oicq--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>MSN</td><td bgcolor=\\''ffffff\\''>[!--msn--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>网址</td><td bgcolor=\\''ffffff\\''>[!--homepage--]</td></tr>\r\n<tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>会员头像</td><td bgcolor=\\''ffffff\\''>[!--userpic--]</td></tr>\r\n<tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>联系地址</td><td bgcolor=\\''ffffff\\''>[!--address--]&nbsp;邮编: [!--zip--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>公司介绍</td><td bgcolor=\\''ffffff\\''>[!--saytext--]</td></tr></table>', '', '公司名称<!--field--->company<!--record-->联系人<!--field--->truename<!--record-->联系电话<!--field--->mycall<!--record-->传真<!--field--->fax<!--record-->手机<!--field--->phone<!--record-->QQ号码<!--field--->oicq<!--record-->MSN<!--field--->msn<!--record-->网址<!--field--->homepage<!--record-->会员头像<!--field--->userpic<!--record-->联系地址<!--field--->address<!--record-->邮编<!--field--->zip<!--record-->公司介绍<!--field--->saytext<!--record-->', ',company,truename,mycall,', ',', ',userpic,', ',saytext,', '公司名称<!--field--->company<!--record-->联系人<!--field--->truename<!--record-->联系电话<!--field--->mycall<!--record-->传真<!--field--->fax<!--record-->手机<!--field--->phone<!--record-->QQ号码<!--field--->oicq<!--record-->MSN<!--field--->msn<!--record-->网址<!--field--->homepage<!--record-->会员头像<!--field--->userpic<!--record-->联系地址<!--field--->address<!--record-->邮编<!--field--->zip<!--record-->公司介绍<!--field--->saytext<!--record-->', ',company,', ',company,truename,mycall,fax,phone,oicq,msn,homepage,userpic,address,zip,saytext,', ',company,truename,mycall,fax,phone,oicq,msn,homepage,userpic,address,zip,saytext,', ',');

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsmembergbook`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsmembergbook` (
  `gid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `isprivate` tinyint(1) NOT NULL DEFAULT '0',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `uname` varchar(20) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `addtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `gbtext` text NOT NULL,
  `retext` text NOT NULL,
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `eipport` varchar(6) NOT NULL DEFAULT '',
  PRIMARY KEY (`gid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsmembergroup`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsmembergroup` (
  `groupid` smallint(6) NOT NULL AUTO_INCREMENT,
  `groupname` varchar(60) NOT NULL DEFAULT '',
  `level` smallint(6) NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `favanum` smallint(6) NOT NULL DEFAULT '0',
  `daydown` int(11) NOT NULL DEFAULT '0',
  `msglen` int(11) NOT NULL DEFAULT '0',
  `msgnum` int(11) NOT NULL DEFAULT '0',
  `canreg` tinyint(1) NOT NULL DEFAULT '0',
  `formid` smallint(6) NOT NULL DEFAULT '0',
  `regchecked` tinyint(1) NOT NULL DEFAULT '0',
  `spacestyleid` smallint(6) NOT NULL DEFAULT '0',
  `dayaddinfo` smallint(6) NOT NULL DEFAULT '0',
  `infochecked` tinyint(1) NOT NULL DEFAULT '0',
  `plchecked` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`groupid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `dayuqixiu_enewsmembergroup`
--

INSERT INTO `dayuqixiu_enewsmembergroup` (`groupid`, `groupname`, `level`, `checked`, `favanum`, `daydown`, `msglen`, `msgnum`, `canreg`, `formid`, `regchecked`, `spacestyleid`, `dayaddinfo`, `infochecked`, `plchecked`) VALUES
(1, '普通会员', 1, 0, 120, 0, 255, 50, 1, 1, 0, 1, 0, 0, 0),
(2, 'VIP会员', 2, 0, 200, 0, 255, 120, 0, 1, 0, 1, 0, 0, 0),
(3, '企业会员', 1, 0, 120, 0, 255, 50, 1, 2, 0, 2, 0, 0, 0),
(4, '企业VIP会员', 2, 0, 200, 0, 255, 120, 0, 2, 0, 2, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsmemberpub`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsmemberpub` (
  `userid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `todayinfodate` char(10) NOT NULL DEFAULT '',
  `todayaddinfo` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `todaydate` char(10) NOT NULL DEFAULT '',
  `todaydown` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `authstr` char(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsmember_connect`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsmember_connect` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `apptype` char(20) NOT NULL DEFAULT '',
  `bindkey` char(32) NOT NULL DEFAULT '',
  `bindtime` int(10) unsigned NOT NULL DEFAULT '0',
  `loginnum` int(10) unsigned NOT NULL DEFAULT '0',
  `lasttime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `bindkey` (`bindkey`),
  KEY `apptype` (`apptype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsmember_connect_app`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsmember_connect_app` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `apptype` char(20) NOT NULL DEFAULT '',
  `appname` char(30) NOT NULL DEFAULT '',
  `appid` char(60) NOT NULL DEFAULT '',
  `appkey` char(120) NOT NULL DEFAULT '',
  `isclose` tinyint(1) NOT NULL DEFAULT '0',
  `myorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `qappname` char(30) NOT NULL DEFAULT '',
  `appsay` char(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `apptype` (`apptype`),
  KEY `isclose` (`isclose`),
  KEY `myorder` (`myorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsmenu`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsmenu` (
  `menuid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menuname` varchar(60) NOT NULL DEFAULT '',
  `menuurl` varchar(255) NOT NULL DEFAULT '',
  `myorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `addhash` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`menuid`),
  KEY `myorder` (`myorder`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsmenuclass`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsmenuclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(60) NOT NULL DEFAULT '',
  `issys` tinyint(1) NOT NULL DEFAULT '0',
  `myorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `classtype` tinyint(1) NOT NULL DEFAULT '0',
  `groupids` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`),
  KEY `myorder` (`myorder`),
  KEY `classtype` (`classtype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsmod`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsmod` (
  `mid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `mname` varchar(100) NOT NULL DEFAULT '',
  `mtemp` mediumtext NOT NULL,
  `mzs` varchar(255) NOT NULL DEFAULT '',
  `cj` mediumtext NOT NULL,
  `enter` mediumtext NOT NULL,
  `tempvar` mediumtext NOT NULL,
  `sonclass` text NOT NULL,
  `searchvar` varchar(255) NOT NULL DEFAULT '',
  `tid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tbname` varchar(60) NOT NULL DEFAULT '',
  `qenter` mediumtext NOT NULL,
  `mustqenterf` text NOT NULL,
  `qmtemp` mediumtext NOT NULL,
  `listandf` text NOT NULL,
  `setandf` tinyint(1) NOT NULL DEFAULT '0',
  `listtempvar` mediumtext NOT NULL,
  `qmname` varchar(30) NOT NULL DEFAULT '',
  `canaddf` text NOT NULL,
  `caneditf` text NOT NULL,
  `definfovoteid` smallint(6) NOT NULL DEFAULT '0',
  `showmod` tinyint(1) NOT NULL DEFAULT '0',
  `usemod` tinyint(1) NOT NULL DEFAULT '0',
  `myorder` smallint(6) NOT NULL DEFAULT '0',
  `orderf` text NOT NULL,
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `listfile` varchar(30) NOT NULL DEFAULT '',
  `printtempid` smallint(6) NOT NULL DEFAULT '0',
  `maddfun` varchar(255) NOT NULL DEFAULT '',
  `meditfun` varchar(255) NOT NULL DEFAULT '',
  `qmaddfun` varchar(255) NOT NULL DEFAULT '',
  `qmeditfun` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`mid`),
  KEY `tid` (`tid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `dayuqixiu_enewsmod`
--

INSERT INTO `dayuqixiu_enewsmod` (`mid`, `mname`, `mtemp`, `mzs`, `cj`, `enter`, `tempvar`, `sonclass`, `searchvar`, `tid`, `tbname`, `qenter`, `mustqenterf`, `qmtemp`, `listandf`, `setandf`, `listtempvar`, `qmname`, `canaddf`, `caneditf`, `definfovoteid`, `showmod`, `usemod`, `myorder`, `orderf`, `isdefault`, `listfile`, `printtempid`, `maddfun`, `meditfun`, `qmaddfun`, `qmeditfun`) VALUES
(1, '新闻系统模型', '<table width=\\''100%\\'' align=center cellpadding=3 cellspacing=1 class=\\"tableborder\\"><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>标题(*)</td><td bgcolor=\\''ffffff\\''>[!--title--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>副标题</td><td bgcolor=\\''ffffff\\''>[!--ftitle--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>特殊属性</td><td bgcolor=\\''ffffff\\''>[!--special.field--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>发布时间</td><td bgcolor=\\''ffffff\\''>[!--newstime--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>标题图片</td><td bgcolor=\\''ffffff\\''>[!--titlepic--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>内容简介</td><td bgcolor=\\''ffffff\\''>[!--smalltext--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>作者</td><td bgcolor=\\''ffffff\\''>[!--writer--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>信息来源</td><td bgcolor=\\''ffffff\\''>[!--befrom--]</td></tr><tr><td height=25 colspan=2 bgcolor=\\''ffffff\\''><div align=left>新闻正文(*)</div></td></tr></table><div style=\\"background-color:#D0D0D0\\">[!--newstext--]</div>', '新闻系统模型', '标题<!--field--->title<!--record-->副标题<!--field--->ftitle<!--record-->发布时间<!--field--->newstime<!--record-->标题图片<!--field--->titlepic<!--record-->内容简介<!--field--->smalltext<!--record-->作者<!--field--->writer<!--record-->信息来源<!--field--->befrom<!--record-->新闻正文<!--field--->newstext<!--record-->', '标题<!--field--->title<!--record-->副标题<!--field--->ftitle<!--record-->特殊属性<!--field--->special.field<!--record-->发布时间<!--field--->newstime<!--record-->标题图片<!--field--->titlepic<!--record-->内容简介<!--field--->smalltext<!--record-->作者<!--field--->writer<!--record-->信息来源<!--field--->befrom<!--record-->新闻正文<!--field--->newstext<!--record-->', '标题<!--field--->title<!--record-->副标题<!--field--->ftitle<!--record-->发布时间<!--field--->newstime<!--record-->标题图片<!--field--->titlepic<!--record-->内容简介<!--field--->smalltext<!--record-->作者<!--field--->writer<!--record-->信息来源<!--field--->befrom<!--record-->新闻正文<!--field--->newstext<!--record-->顶<!--field--->diggtop<!--record-->', '|5|6|7|8|9|10|11|12|13|14|15|16|17|18|', ',title,smalltext,', 1, 'news', '标题<!--field--->title<!--record-->副标题<!--field--->ftitle<!--record-->特殊属性<!--field--->special.field<!--record-->标题图片<!--field--->titlepic<!--record-->内容简介<!--field--->smalltext<!--record-->作者<!--field--->writer<!--record-->信息来源<!--field--->befrom<!--record-->新闻正文<!--field--->newstext<!--record-->', ',title,newstext,', '<table width=100% align=center cellpadding=3 cellspacing=1 class=\\"tableborder\\"><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>标题(*)</td><td bgcolor=\\''ffffff\\''>[!--title--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>副标题</td><td bgcolor=\\''ffffff\\''>[!--ftitle--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>关键字</td><td bgcolor=\\''ffffff\\''>[!--special.field--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>标题图片</td><td bgcolor=\\''ffffff\\''>[!--titlepic--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>内容简介</td><td bgcolor=\\''ffffff\\''>[!--smalltext--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>作者</td><td bgcolor=\\''ffffff\\''>[!--writer--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>信息来源</td><td bgcolor=\\''ffffff\\''>[!--befrom--]</td></tr><tr><td height=25 colspan=2 bgcolor=\\''ffffff\\''><div align=left>新闻正文(*)</div></td></tr></table><div style=\\"background-color:#D0D0D0\\">[!--newstext--]</div>', '', 0, '标题<!--field--->title<!--record-->副标题<!--field--->ftitle<!--record-->发布时间<!--field--->newstime<!--record-->标题图片<!--field--->titlepic<!--record-->内容简介<!--field--->smalltext<!--record-->顶<!--field--->diggtop<!--record-->', '新闻', ',title,ftitle,newstime,titlepic,smalltext,writer,befrom,newstext,', ',title,ftitle,newstime,titlepic,smalltext,writer,befrom,newstext,', 0, 0, 0, 0, '', 1, '', 0, '', '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsmoreport`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsmoreport` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pname` char(60) NOT NULL DEFAULT '',
  `purl` char(255) NOT NULL DEFAULT '',
  `ppath` char(255) NOT NULL DEFAULT '',
  `postpass` char(120) NOT NULL DEFAULT '',
  `postfile` char(255) NOT NULL DEFAULT '',
  `tempgid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `mustdt` tinyint(1) NOT NULL DEFAULT '0',
  `isclose` tinyint(1) NOT NULL DEFAULT '0',
  `closeadd` tinyint(1) NOT NULL DEFAULT '0',
  `headersign` char(255) NOT NULL DEFAULT '',
  `openadmin` tinyint(1) NOT NULL DEFAULT '0',
  `rehtml` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pid`),
  KEY `isclose` (`isclose`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `dayuqixiu_enewsmoreport`
--

INSERT INTO `dayuqixiu_enewsmoreport` (`pid`, `pname`, `purl`, `ppath`, `postpass`, `postfile`, `tempgid`, `mustdt`, `isclose`, `closeadd`, `headersign`, `openadmin`, `rehtml`) VALUES
(1, '主访问端', '', '', '', '', 0, 0, 0, 0, '', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsnewstemp`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsnewstemp` (
  `tempid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tempname` varchar(60) NOT NULL DEFAULT '',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `temptext` mediumtext NOT NULL,
  `showdate` varchar(50) NOT NULL DEFAULT '',
  `modid` smallint(6) NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`tempid`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `dayuqixiu_enewsnewstemp`
--

INSERT INTO `dayuqixiu_enewsnewstemp` (`tempid`, `tempname`, `isdefault`, `temptext`, `showdate`, `modid`, `classid`) VALUES
(1, '服务内容模板', 0, '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<meta name=\\"Copyright\\" content=\\"All Rights Reserved btoe.cn\\" />\r\n<meta http-equiv=\\"X-UA-Compatible\\" content=\\"IE=edge,chrome=1\\" />\r\n<title>[!--pagetitle--]-达宇天然气汽车改装厂</title>\r\n<meta name=\\"keywords\\" content=\\"[!--pagekey--]\\" />\r\n<meta name=\\"description\\" content=\\"[!--pagedes--]\\" />\r\n<meta name=\\"viewport\\" content=\\"width=device-width, initial-scale=1\\">\r\n<link href=\\"/style/css/css.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<link rel=\\"stylesheet\\" type=\\"text/css\\" media=\\"screen\\" href=\\"/style/css/bootstrap.min.css\\" />\r\n<link rel=\\"stylesheet\\" type=\\"text/css\\" media=\\"screen\\" href=\\"/style/css/swiper-3.4.2.min.css\\" />\r\n<link rel=\\"stylesheet\\" type=\\"text/css\\" media=\\"screen\\" href=\\"/style/css/common.css\\" />\r\n \r\n \r\n</head>\r\n<body>\r\n<div class=\\"topxunpan\\">\r\n	<div class=\\"center\\">\r\n		<p>\r\n        	<span>TEL：<i>19983727888</i></span>\r\n        	<span>TEL：<i>13458195618（微信同号）</i></span>\r\n            <span>E-MAIL：<i>123456@qq.com</i></span>\r\n        </p>\r\n        <div class=\\"thisxp\\">\r\n            <div class=\\"xp\\" id=\\"xunpanText\\" data-tiptitle=\\"请您登录网站后台查看！\\">\r\n                <img src=\\"/style/images/t_icon_05.png\\" alt=\\"询盘信息\\">\r\n                您暂无未读询盘信息!\r\n                <div id=\\"xunpantip\\"></div>\r\n            </div>\r\n        </div>\r\n        <p><a href=\\"#wjdh-message\\" title=\\"在线留言\\">在线留言</a></p>\r\n	</div>\r\n</div>\r\n\r\n[!--temp.header--]\r\n<!-- mbanner -->\r\n\r\n<div class=\\"mbanner col-lg-12 col-md-12\\">\r\n  <div class=\\"row\\">\r\n    \r\n    <img src=\\"/style/images/a2c27610b7f029e2f04a936955bc1552@1920X320.jpg\\" alt=\\"业务中心\\">\r\n    \r\n  </div>\r\n</div>\r\n<div class=\\"clearboth\\"></div>\r\n\r\n<!-- caseMenu -->\r\n<div class=\\"caseMenuTop caseMenuTop1\\">\r\n  <div class=\\"container\\">\r\n    <div class=\\"row\\">\r\n      <div class=\\"caseMenuL col-lg-9 col-md-9 col-sm-9 col-xs-9\\"> <i><img src=\\"/style/images/locationIco.png\\" alt=\\"当前位置\\"></i>\r\n        当前位置：[!--newsnav--]\r\n      </div>\r\n      <div class=\\"caseMenuR col-xs-3 col-sm-3 col-md-3 col-lg-3\\"> <i class=\\"text-right\\"><a href=\\"javascript:;\\" onClick=\\"javascript :history.back(-1);\\">返回<img src=\\"/style/images/ca1.png\\" alt=\\"返回\\"></a></i> </div>\r\n      <div class=\\"clearboth\\"></div>\r\n    </div>\r\n  </div>\r\n</div>\r\n\r\n<div class=\\"clearboth\\"></div>\r\n<div class=\\"proList\\">\r\n  <div class=\\"container\\">\r\n    <div class=\\"row\\">\r\n      <div class=\\" col-lg-2-0 proListL  col-xs-12\\">\r\n        [!--temp.infoarea--]\r\n\r\n\r\n      </div>\r\n      <div class=\\" col-lg-8-0 proListR  col-xs-12\\">\r\n\r\n\r\n\r\n        <div class=\\"clearboth\\"></div>\r\n        <div class=\\"productsCenter col-xs-12 col-sm-12 col-md-12 col-lg-12\\">\r\n          <div class=\\"row\\">\r\n            <div class=\\"productsTTOP\\">\r\n              <div class=\\"productCenTop\\">\r\n                <div class=\\"productsCC\\">\r\n                  <div class=\\"productsCtl wjdhBg col-xs-12 col-sm-12 col-md-2 col-lg-2\\">[!--pagetitle--]</div>\r\n                  <div class=\\"details col-xs-12 col-sm-12 col-md-7 col-lg-7\\"> content details </div>\r\n                  \r\n                </div>\r\n                <div class=\\"page-content\\"> \r\n                  [!--newstext--]\r\n                </div>\r\n              </div>\r\n            </div>\r\n          </div>\r\n        </div>\r\n        <div class=\\"clearboth\\" id=\\"prodoc\\">\r\n          \r\n        </div>\r\n\r\n\r\n      </div>\r\n    </div>\r\n  </div>\r\n</div>\r\n</div>\r\n<script src=\\"/style/js/jquery.min.js\\"></script>\r\n<script src=\\"/style/js/bootstrap.min.js\\"></script>\r\n<script src=\\"/style/js/swiper-3.4.2.min.js\\"></script>\r\n<script src=\\"/style/js/color.js\\"></script>\r\n<script src=\\"/style/js/addpage.js\\"></script>\r\n<script src=\\"/style/js/rem.min.js\\"></script>\r\n<script src=\\"/style/js/qrcode.js\\"></script>\r\n[!--temp.footer--]\r\n\r\n<!--全局使用js，请放于footer-->\r\n<script src=\\"/style/js/nav.js\\"></script>\r\n\r\n \r\n<script src=\\"/style/js/base.js\\" type=\\"text/javascript\\" charset=\\"utf-8\\"></script>\r\n\r\n<script src=\\"/style/js/common.js\\"></script>\r\n</body>\r\n</html>\r\n', 'Y-m-d H:i:s', 1, 0),
(2, '新闻内容模板', 0, '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<meta name=\\"Copyright\\" content=\\"All Rights Reserved btoe.cn\\" />\r\n<meta http-equiv=\\"X-UA-Compatible\\" content=\\"IE=edge,chrome=1\\" />\r\n<title>[!--pagetitle--]-达宇天然气汽车改装厂</title>\r\n<meta name=\\"keywords\\" content=\\"[!--pagekey--]\\" />\r\n<meta name=\\"description\\" content=\\"[!--pagedes--]\\" />\r\n<meta name=\\"viewport\\" content=\\"width=device-width, initial-scale=1\\">\r\n<link href=\\"/style/css/css.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<link rel=\\"stylesheet\\" type=\\"text/css\\" media=\\"screen\\" href=\\"/style/css/bootstrap.min.css\\" />\r\n<link rel=\\"stylesheet\\" type=\\"text/css\\" media=\\"screen\\" href=\\"/style/css/swiper-3.4.2.min.css\\" />\r\n<link rel=\\"stylesheet\\" type=\\"text/css\\" media=\\"screen\\" href=\\"/style/css/common.css\\" />\r\n \r\n \r\n<body>\r\n<div class=\\"topxunpan\\">\r\n	<div class=\\"center\\">\r\n		<p>\r\n        	<span>TEL：<i>19983727888</i></span>\r\n        	<span>TEL：<i>13458195618（微信同号）</i></span>\r\n            <span>E-MAIL：<i>123456@qq.com</i></span>\r\n        </p>\r\n        <div class=\\"thisxp\\">\r\n            <div class=\\"xp\\" id=\\"xunpanText\\" data-tiptitle=\\"请您登录网站后台查看！\\">\r\n                <img src=\\"/style/images/t_icon_05.png\\" alt=\\"询盘信息\\">\r\n                您暂无未读询盘信息!\r\n                <div id=\\"xunpantip\\"></div>\r\n            </div>\r\n        </div>\r\n        <p><a href=\\"#wjdh-message\\" title=\\"在线留言\\">在线留言</a></p>\r\n	</div>\r\n</div>\r\n	\r\n	[!--temp.header--]\r\n\r\n\r\n<!-- mbanner --><div class=\\"mbanner col-lg-12 col-md-12\\">\r\n	<div class=\\"row\\">\r\n	  \r\n    <img src=\\"/style/images/6d048635137b7d977f837756274324ab@1920X320.jpg\\" alt=\\"新闻资讯\\">\r\n    \r\n  </div>\r\n</div>\r\n<div class=\\"clearboth\\"></div>\r\n\r\n<!-- caseMenu -->\r\n<div class=\\"caseMenuTop\\">\r\n  <div class=\\"container\\">\r\n    <div class=\\"row\\">\r\n      <div class=\\"caseMenuL col-lg-9 col-md-9 col-sm-9 col-xs-9\\"> <i><img src=\\"/style/images/locationIco.png\\" alt=\\"当前位置\\"></i>\r\n        当前位置：[!--newsnav--]\r\n      </div>\r\n      <div class=\\"caseMenuR col-xs-3 col-sm-3 col-md-3 col-lg-3\\"> <i class=\\"text-right\\"><a href=\\"javascript:;\\" onClick=\\"javascript :history.back(-1);\\">返回<img src=\\"/style/images/ca1.png\\" alt=\\"返回\\"></a></i> </div>\r\n      <div class=\\"clearboth\\"></div>\r\n    </div>\r\n  </div>\r\n</div>\r\n<div class=\\"clearboth\\"></div>\r\n<div class=\\"proList\\">\r\n  <div class=\\"container\\">\r\n    <div class=\\"row\\">\r\n      <div class=\\" proListL  col-xs-12 col-lg-2-0 \\">\r\n        [!--temp.infoarea--]\r\n\r\n\r\n      </div>\r\n      <div class=\\"proListR  col-xs-12  col-lg-8-0 \\">\r\n        <div class=\\"newsdetails col-xs-12 col-sm-12 col-md-12 col-lg-12\\">\r\n          <div class=\\"caseCenter\\">\r\n            <div class=\\"caseCmenu\\">\r\n              <h3>[!--pagetitle--]</h3>\r\n              <span class=\\"casemfx\\"> 所属分类：[!--class.name--] &nbsp;&nbsp;\r\n              \r\n              \r\n              \r\n              发布时间：\r\n              [!--newstime--]\r\n              &nbsp;&nbsp;\r\n              \r\n              \r\n              \r\n              作者：[!--writer--]\r\n\r\n            <div class=\\"caseContainer\\">\r\n              [!--newstext--]</div>\r\n            <div class=\\"caseTab\\">\r\n              <ul>\r\n                <li class=\\"col-xs-6 col-sm-6 col-md-6\\">[!--info.pre--] </li>\r\n                <li class=\\"col-xs-6 col-sm-6 col-md-6\\"> [!--info.next--] </li>\r\n              </ul>\r\n            </div>\r\n          </div>\r\n        </div>\r\n      </div>\r\n    </div>\r\n  </div>\r\n</div>\r\n<script src=\\"/style/js/jquery.min.js\\"></script>\r\n<script src=\\"/style/js/bootstrap.min.js\\"></script>\r\n<script src=\\"/style/js/swiper-3.4.2.min.js\\"></script>\r\n<script src=\\"/style/js/rem.min.js\\"></script>\r\n<script src=\\"/style/js/qrcode.js\\"></script>\r\n[!--temp.footer--]\r\n\r\n<!--全局使用js，请放于footer-->\r\n<script src=\\"/style/js/nav.js\\"></script>\r\n\r\n \r\n<script src=\\"/style/js/base.js\\" type=\\"text/javascript\\" charset=\\"utf-8\\"></script>\r\n\r\n<script src=\\"/style/js/common.js\\"></script>\r\n<script src=\\"/style/js/color.js\\"></script>\r\n</body>\r\n</html>\r\n', 'Y-m-d', 1, 0),
(3, '公司简介模板', 0, '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name=\\"Keywords\\" content=\\"[!--pagekey--]\\" />\r\n<meta name=\\"description\\" content=\\"[!--pagedes--]\\" />\r\n<link href=\\"[!--news.url--]skin/default/css/style.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<script type=\\"text/javascript\\" src=\\"[!--news.url--]skin/default/js/tabs.js\\"></script>\r\n</head>\r\n<body class=\\"showpage\\">\r\n[!--temp.header--]\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\">\r\n	<tr valign=\\"top\\">\r\n		<td class=\\"main\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"position\\">\r\n				<tr>\r\n					<td>您当前的位置：[!--newsnav--]</td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n				<tr>\r\n					<td>\r\n						<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"4\\" cellspacing=\\"1\\" bgcolor=\\"#FFFFFF\\">\r\n							<tr>\r\n								<td bgcolor=\\"#E1EFFB\\">&nbsp;&nbsp;<strong>[!--title--]</strong></td>\r\n							</tr>\r\n							<tr>\r\n								<td><table width=\\"0\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"0\\" cellspacing=\\"0\\">\r\n										<tr>\r\n											<td width=\\"25\\"><img src=\\"[!--news.url--]e/data/images/mod/center_1.gif\\" width=\\"25\\" height=\\"24\\" /></td>\r\n											<td background=\\"[!--news.url--]e/data/images/mod/box_1.gif\\">&nbsp;</td>\r\n											<td width=\\"25\\"><img src=\\"[!--news.url--]e/data/images/mod/center_2.gif\\" width=\\"25\\" height=\\"24\\" /></td>\r\n										</tr>\r\n										<tr>\r\n											<td background=\\"[!--news.url--]e/data/images/mod/box_4.gif\\">&nbsp;</td>\r\n											<td bgcolor=\\"#F3F3F3\\"><a href=\\"[!--news.url--]e/ViewImg/index.html?url=[!--picurl--]\\" target=\\"_blank\\"><img border=\\"0\\" src=\\"[!--picurl--]\\" class=\\"photoresize\\" /></a></td>\r\n											<td background=\\"[!--news.url--]e/data/images/mod/box_2.gif\\">&nbsp;</td>\r\n										</tr>\r\n										<tr>\r\n											<td><img src=\\"[!--news.url--]e/data/images/mod/center_3.gif\\" width=\\"25\\" height=\\"24\\" /></td>\r\n											<td background=\\"[!--news.url--]e/data/images/mod/box_3.gif\\">&nbsp;</td>\r\n											<td><img src=\\"[!--news.url--]e/data/images/mod/center_4.gif\\" width=\\"25\\" height=\\"24\\" /></td>\r\n										</tr>\r\n								</table></td>\r\n							</tr>\r\n							<tr>\r\n								<td><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"4\\" cellspacing=\\"1\\">\r\n										<tr>\r\n											<td colspan=\\"2\\" bgcolor=\\"#F4F9FD\\">&nbsp;&nbsp;<strong>图片资料</strong></td>\r\n										</tr>\r\n										<tr>\r\n											<td width=\\"80\\">图片名称：</td>\r\n											<td width=\\"462\\"> [!--title--]</td>\r\n										</tr>\r\n										<tr>\r\n											<td bgcolor=\\"#F8F8F8\\">人气：</td>\r\n											<td bgcolor=\\"#F8F8F8\\"> [!--onclick--]</td>\r\n										</tr>\r\n										<tr>\r\n											<td>图片尺寸：</td>\r\n											<td> [!--picsize--]</td>\r\n										</tr>\r\n										<tr>\r\n											<td bgcolor=\\"#F8F8F8\\">图片大小：</td>\r\n											<td bgcolor=\\"#F8F8F8\\"> [!--filesize--]</td>\r\n										</tr>\r\n										<tr>\r\n											<td>编辑：</td>\r\n											<td> [!--username--]</td>\r\n										</tr>\r\n										<tr>\r\n											<td bgcolor=\\"#F8F8F8\\">创建日期：</td>\r\n											<td bgcolor=\\"#F8F8F8\\"> [!--newstime--]</td>\r\n										</tr>\r\n										<tr>\r\n											<td valign=\\"top\\">简介：</td>\r\n											<td valign=\\"top\\">[!--picsay--]</td>\r\n										</tr>\r\n								</table></td>\r\n							</tr>\r\n												</table>						</td>\r\n				</tr>\r\n			</table>\r\n			[!--temp.pl--]</td>\r\n		<td class=\\"sider\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title\\">\r\n				<tr>\r\n					<td><strong>图片推荐</strong></td>\r\n				</tr>\r\n			</table>\r\n				<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"8\\" cellpadding=\\"0\\" class=\\"box\\">\r\n					<tr>\r\n						<td>[phomenewspic]\\''selfinfo\\'',2,4,128,90,1,20,2[/phomenewspic] </td>\r\n					</tr>\r\n				</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n					<tr>\r\n						<td><strong>最后更新</strong></td>\r\n					</tr>\r\n				</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n					<tr>\r\n						<td><ul>\r\n              <script src=\\''[!--news.url--]d/js/class/class[!--self.classid--]_newnews.js\\''></script> </ul></td>\r\n					</tr>\r\n				</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n					<tr>\r\n						<td><strong>热门点击</strong></td>\r\n					</tr>\r\n				</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n					<tr>\r\n						<td><ul>\r\n              <script src=\\''[!--news.url--]d/js/class/class[!--self.classid--]_hotnews.js\\''></script></ul></td>\r\n					</tr>\r\n			</table></td>\r\n	</tr>\r\n</table>\r\n[!--temp.footer--] [!--page.stats--]\r\n</body>\r\n</html>', 'Y-m-d H:i:s', 1, 0),
(4, '联系我们模板', 0, '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name=\\"Keywords\\" content=\\"[!--pagekey--]\\" />\r\n<meta name=\\"description\\" content=\\"[!--pagedes--]\\" />\r\n<link href=\\"[!--news.url--]skin/default/css/style.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<script type=\\"text/javascript\\" src=\\"[!--news.url--]skin/default/js/tabs.js\\"></script>\r\n</head>\r\n<body class=\\"showpage\\">\r\n[!--temp.header--]\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\">\r\n	<tr valign=\\"top\\">\r\n		<td class=\\"main\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"position\\">\r\n				<tr>\r\n					<td>您当前的位置：[!--newsnav--]</td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n				<tr>\r\n					<td><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"4\\" cellspacing=\\"1\\" bgcolor=\\"#FFFFFF\\">\r\n						<tr>\r\n							<td align=\\"center\\" bgcolor=\\"#E1EFFB\\"><strong>[!--title--]</strong></td>\r\n						</tr>\r\n						<tr>\r\n							<td align=\\"center\\">[eshowphoto]11,0,0[/eshowphoto]</td>\r\n						</tr>\r\n						<tr>\r\n							<td>&nbsp;</td>\r\n						</tr>\r\n					</table></td>\r\n				</tr>\r\n			</table>\r\n			[!--temp.pl--]</td>\r\n		<td class=\\"sider\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title\\">\r\n				<tr>\r\n					<td><strong>图片推荐</strong></td>\r\n				</tr>\r\n			</table>\r\n				<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"8\\" cellpadding=\\"0\\" class=\\"box\\">\r\n					<tr>\r\n						<td>[phomenewspic]\\''selfinfo\\'',2,4,128,90,1,20,2[/phomenewspic] </td>\r\n					</tr>\r\n				</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n					<tr>\r\n						<td><strong>最后更新</strong></td>\r\n					</tr>\r\n				</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n					<tr>\r\n						<td><ul>\r\n              <script src=\\''[!--news.url--]d/js/class/class[!--self.classid--]_newnews.js\\''></script> </ul></td>\r\n					</tr>\r\n				</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n					<tr>\r\n						<td><strong>热门点击</strong></td>\r\n					</tr>\r\n				</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n					<tr>\r\n						<td><ul>\r\n              <script src=\\''[!--news.url--]d/js/class/class[!--self.classid--]_hotnews.js\\''></script></ul></td>\r\n					</tr>\r\n			</table></td>\r\n	</tr>\r\n</table>\r\n[!--temp.footer--] [!--page.stats--]\r\n</body>\r\n</html>', 'Y-m-d H:i:s', 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsnewstempclass`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsnewstempclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsnotcj`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsnotcj` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `word` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `dayuqixiu_enewsnotcj`
--

INSERT INTO `dayuqixiu_enewsnotcj` (`id`, `word`) VALUES
(1, '<input type=hidden value=''欢迎使用帝国网站管理系统：www.phome.net''>'),
(2, '<phome 帝国网站管理系统,phome.net>'),
(3, '<!--帝国CMS,phome.net-->'),
(4, '<table style=display:none><tr><td>\r\nEmpire CMS,phome.net\r\n</td></tr></table>'),
(5, '<div style=display:none>\r\n拥有帝国一切，皆有可能。欢迎访问phome.net\r\n</div>');

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsnotice`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsnotice` (
  `mid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(80) NOT NULL DEFAULT '',
  `msgtext` text NOT NULL,
  `haveread` tinyint(1) NOT NULL DEFAULT '0',
  `msgtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `to_username` varchar(30) NOT NULL DEFAULT '',
  `from_userid` int(10) unsigned NOT NULL DEFAULT '0',
  `from_username` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`mid`),
  KEY `to_username` (`to_username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewspage`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewspage` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) NOT NULL DEFAULT '',
  `pagetext` mediumtext NOT NULL,
  `path` varchar(255) NOT NULL DEFAULT '',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `pagetitle` varchar(120) NOT NULL DEFAULT '',
  `pagekeywords` varchar(255) NOT NULL DEFAULT '',
  `pagedescription` varchar(255) NOT NULL DEFAULT '',
  `tempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewspageclass`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewspageclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewspagetemp`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewspagetemp` (
  `tempid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tempname` varchar(30) NOT NULL DEFAULT '',
  `temptext` mediumtext NOT NULL,
  PRIMARY KEY (`tempid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewspayapi`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewspayapi` (
  `payid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `paytype` varchar(20) NOT NULL DEFAULT '',
  `myorder` tinyint(4) NOT NULL DEFAULT '0',
  `payfee` varchar(10) NOT NULL DEFAULT '',
  `payuser` varchar(60) NOT NULL DEFAULT '',
  `partner` varchar(60) NOT NULL DEFAULT '',
  `paykey` varchar(120) NOT NULL DEFAULT '',
  `paylogo` varchar(200) NOT NULL DEFAULT '',
  `paysay` text NOT NULL,
  `payname` varchar(120) NOT NULL DEFAULT '',
  `isclose` tinyint(1) NOT NULL DEFAULT '0',
  `payemail` varchar(120) NOT NULL DEFAULT '',
  `paymethod` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`payid`),
  UNIQUE KEY `paytype` (`paytype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `dayuqixiu_enewspayapi`
--

INSERT INTO `dayuqixiu_enewspayapi` (`payid`, `paytype`, `myorder`, `payfee`, `payuser`, `partner`, `paykey`, `paylogo`, `paysay`, `payname`, `isclose`, `payemail`, `paymethod`) VALUES
(1, 'tenpay', 1, '0', '', '', '', '', '财付通（www.tenpay.com） - 腾讯旗下在线支付平台，通过国家权威安全认证，支持各大银行网上支付。', '财付通', 0, '', 0),
(2, 'chinabank', 2, '0', '', '', '', '', '网银在线与中国工商银行、招商银行、中国建设银行、农业银行、民生银行等数十家金融机构达成协议。全面支持全国19家银行的信用卡及借记卡实现网上支付。（网址：http://www.chinabank.com.cn）', '网银在线', 0, '', 0),
(3, 'alipay', 0, '0', '', '', '', '', '支付宝网站(www.alipay.com) 是国内先进的网上支付平台。', '支付宝接口', 0, '', 1);

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewspayrecord`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewspayrecord` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `orderid` varchar(50) NOT NULL DEFAULT '',
  `money` varchar(20) NOT NULL DEFAULT '',
  `posttime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `paybz` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(12) NOT NULL DEFAULT '',
  `payip` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`,`orderid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewspic`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewspic` (
  `picid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) NOT NULL DEFAULT '',
  `pic_url` varchar(200) NOT NULL DEFAULT '',
  `url` varchar(200) NOT NULL DEFAULT '',
  `pic_width` varchar(20) NOT NULL DEFAULT '',
  `pic_height` varchar(20) NOT NULL DEFAULT '',
  `open_pic` varchar(20) NOT NULL DEFAULT '',
  `border` tinyint(1) NOT NULL DEFAULT '0',
  `pictext` text NOT NULL,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`picid`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewspicclass`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewspicclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `dayuqixiu_enewspicclass`
--

INSERT INTO `dayuqixiu_enewspicclass` (`classid`, `classname`) VALUES
(1, '默认图片信息类别');

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsplayer`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsplayer` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `player` varchar(30) NOT NULL DEFAULT '',
  `filename` varchar(20) NOT NULL DEFAULT '',
  `bz` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `dayuqixiu_enewsplayer`
--

INSERT INTO `dayuqixiu_enewsplayer` (`id`, `player`, `filename`, `bz`) VALUES
(1, 'RealPlayer', 'realplayer.php', 'RealPlayer播放器'),
(2, 'MediaPlayer', 'mediaplayer.php', 'MediaPlayer播放器'),
(3, 'FLASH', 'flasher.php', 'FLASH播放器'),
(4, 'FLV播放器', 'flver.php', 'FLV播放器'),
(5, 'HTML5Video', 'htmlvideo.php', 'HTML5的video播放标签'),
(6, 'JWPlayer', 'jwplayer.php', 'JWPlayer播放器'),
(7, 'HTML5Audio', 'htmlaudio.php', 'HTML5的audio播放标签');

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsplf`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsplf` (
  `fid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `f` varchar(30) NOT NULL DEFAULT '',
  `fname` varchar(30) NOT NULL DEFAULT '',
  `fzs` varchar(255) NOT NULL DEFAULT '',
  `ftype` varchar(30) NOT NULL DEFAULT '',
  `flen` varchar(20) NOT NULL DEFAULT '',
  `ismust` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewspltemp`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewspltemp` (
  `tempid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tempname` varchar(60) NOT NULL DEFAULT '',
  `temptext` mediumtext NOT NULL,
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tempid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `dayuqixiu_enewspltemp`
--

INSERT INTO `dayuqixiu_enewspltemp` (`tempid`, `tempname`, `temptext`, `isdefault`) VALUES
(1, '默认评论列表模板', '<!DOCTYPE HTML PUBLIC \\"-//W3C//DTD HTML 4.01 Transitional//EN\\">\r\n<html>\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\">\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name=\\"keywords\\" content=\\"[!--pagekey--]\\" />\r\n<meta name=\\"description\\" content=\\"[!--pagedes--]\\" />\r\n<style type=\\"text/css\\">\r\n<!--\r\nbody,Table{ color: #222; font-size: 12px; }\r\na { color: #222; text-decoration: none; }\r\na:hover { color: #f00; text-decoration: underline; }\r\nh1 { font-size:32px; font-weight: bold; }\r\nh2 { color: #1e3a9e; font-size: 25px; font-weight: bold;  }\r\n.you { color: #1f3a87; font-size: 14px; }\r\n.text { font-size: 14px; padding-left: 5px; padding-right: 5px; line-height: 20px}\r\n.re a { color: #1f3a87; }\r\n.name { color: #1f3a87; }\r\n.name a { color: #1f3a87; text-decoration: underline;}\r\n.retext { background-color: #f3f3f3; width: 100%; float: left; padding-top: 22px; padding-bottom: 22px; border-top: 1px solid #ccc; }\r\n.retext textarea { width: 535px; height: 130px; float: left; margin-left: 60px; border-top-style: inset; border-top-width: 2px; border-left-style: inset; border-left-width: 2px; }\r\n.hrLine{BORDER-BOTTOM: #807d76 1px dotted;}\r\n\r\n.ecomment {margin:0;padding:0;}\r\n.ecomment {margin-bottom:12px;overflow-x:hidden;overflow-y:hidden;padding-bottom:3px;padding-left:3px;padding-right:3px;padding-top:3px;background:#FFFFEE;padding:3px;border:solid 1px #999;}\r\n.ecommentauthor {float:left; color:#F96; font-weight:bold;}\r\n.ecommenttext {clear:left;margin:0;padding:0;}\r\n-->\r\n</style>\r\n<script src=\\"[!--news.url--]e/data/js/ajax.js\\"></script>\r\n</head>\r\n\r\n<body topmargin=\\"0\\">\r\n<table width=\\"766\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"3\\" cellspacing=\\"1\\">\r\n  <tr>\r\n    <td width=\\"210\\"><a href=\\"[!--news.url--]\\"><img src=\\"[!--news.url--]skin/default/images/logo.gif\\" border=\\"0\\" /></a></td>\r\n    <td><h1>网友评论</h1></td>\r\n    <td><div align=\\"right\\"><a href=\\"#tosaypl\\"><strong><font color=\\"#FF0000\\">我也评两句</font></strong></a></div></td>\r\n  </tr>\r\n</table>\r\n<table width=\\"766\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"3\\" cellspacing=\\"1\\" bgcolor=\\"#222\\">\r\n  <tr>\r\n    <td height=\\"2\\"></td>\r\n  </tr>\r\n</table>\r\n<table width=\\"766\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"3\\" cellspacing=\\"1\\">\r\n  <tr> \r\n    <td height=\\"42\\"> \r\n      <h2>评论：<a href=\\"[!--titleurl--]\\" target=\\"_blank\\"><font color=\\"#1e3a9e\\">[!--title--]</font></a></h2></td>\r\n    <td><div align=\\"right\\"><a href=\\"[!--titleurl--]\\" target=\\"_blank\\">查看原文</a></div></td>\r\n  </tr>\r\n</table>\r\n<hr align=\\"center\\" width=\\"766\\" size=1 class=hrline>\r\n<table width=\\"766\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"3\\" cellspacing=\\"1\\" bgcolor=\\"#384EA3\\">\r\n  <form action=\\"../enews/index.php\\" method=\\"post\\" name=\\"infopfenform\\">\r\n    <input type=\\"hidden\\" name=\\"enews\\" value=\\"AddInfoPfen\\" />\r\n    <input type=\\"hidden\\" name=\\"classid\\" value=\\"[!--classid--]\\" />\r\n    <input type=\\"hidden\\" name=\\"id\\" value=\\"[!--id--]\\" />\r\n    <tr> \r\n      <td width=\\"50%\\" height=\\"27\\" valign=\\"middle\\"><font color=\\"#FFFFFF\\">&nbsp;评分: \r\n        <input type=\\"radio\\" name=\\"fen\\" value=\\"1\\">\r\n        1分 \r\n        <input type=\\"radio\\" name=\\"fen\\" value=\\"2\\">\r\n        2分 \r\n        <input name=\\"fen\\" type=\\"radio\\" value=\\"3\\" checked>\r\n        3分 \r\n        <input type=\\"radio\\" name=\\"fen\\" value=\\"4\\">\r\n        4分 \r\n        <input type=\\"radio\\" name=\\"fen\\" value=\\"5\\">\r\n        5分 \r\n        <input type=\\"submit\\" name=\\"Submit\\" value=\\"提交\\">\r\n        </font></td>\r\n      <td width=\\"50%\\" valign=\\"middle\\"><div align=\\"center\\"><font color=\\"#FFFFFF\\">平均得分: \r\n          <strong><span id=\\"pfendiv\\">[!--pinfopfen--]</span></strong> 分，共有 <strong>[!--infopfennum--]</strong> \r\n          人参与评分</font></div></td>\r\n    </tr>\r\n  </form>\r\n</table>\r\n<table width=\\"766\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"3\\" cellspacing=\\"1\\" bgcolor=\\"#CCCCCC\\">\r\n  <tr> \r\n    <td height=\\"30\\" bgcolor=\\"#FFFFFF\\"> \r\n      <table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n          <td width=\\"17%\\">&nbsp;&nbsp;&nbsp;网友评论</td>\r\n          <td width=\\"83%\\"><div align=\\"right\\">[!--listpage--]&nbsp;&nbsp;&nbsp;</div></td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n  <tr> \r\n    <td bgcolor=\\"#f8fcff\\"> [!--empirenews.listtemp--] \r\n      <table width=\\"96%\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"3\\" cellspacing=\\"1\\" style=\\"word-break:break-all; word-wrap:break-all;\\">\r\n        <tr> \r\n          <td height=\\"30\\"><span class=\\"name\\">本站网友 [!--username--]</span> <font color=\\"#666666\\">ip:[!--plip--]</font></td>\r\n          <td><div align=\\"right\\"><font color=\\"#666666\\">[!--pltime--] 发表</font></div></td>\r\n        </tr>\r\n        <tr valign=\\"top\\"> \r\n          <td height=\\"50\\" colspan=\\"2\\" class=\\"text\\">[!--pltext--]</td>\r\n        </tr>\r\n        <tr> \r\n          <td height=\\"30\\">&nbsp;</td>\r\n          <td><div align=\\"right\\" class=\\"re\\"><a href=\\"#tosaypl\\"[!--includelink--]>回复</a>&nbsp; \r\n              <a href=\\"JavaScript:makeRequest(\\''../pl/doaction.php?enews=DoForPl&plid=[!--plid--]&classid=[!--classid--]&id=[!--id--]&dopl=1&doajax=1&ajaxarea=zcpldiv[!--plid--]\\'',\\''EchoReturnedText\\'',\\''GET\\'',\\''\\'');\\">支持</a>[<span id=\\"zcpldiv[!--plid--]\\">[!--zcnum--]</span>]&nbsp; \r\n              <a href=\\"JavaScript:makeRequest(\\''../pl/doaction.php?enews=DoForPl&plid=[!--plid--]&classid=[!--classid--]&id=[!--id--]&dopl=0&doajax=1&ajaxarea=fdpldiv[!--plid--]\\'',\\''EchoReturnedText\\'',\\''GET\\'',\\''\\'');\\">反对</a>[<span id=\\"fdpldiv[!--plid--]\\">[!--fdnum--]</span>]\r\n            </div></td>\r\n        </tr>\r\n      </table>\r\n      <table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr>\r\n          <td background=\\"[!--news.url--]skin/default/images/plhrbg.gif\\"></td>\r\n        </tr>\r\n      </table>\r\n      [!--empirenews.listtemp--] \r\n      <div align=\\"right\\"><br />\r\n        [!--listpage--]&nbsp;&nbsp;&nbsp;<br />\r\n        <br />\r\n        <font color=\\"#FF0000\\">网友评论仅供网友表达个人看法，并不表明本站同意其观点或证实其描述&nbsp;&nbsp;&nbsp;</font><br><br> </div></td>\r\n  </tr>\r\n  <script>\r\n  function CheckPl(obj)\r\n  {\r\n  	if(obj.saytext.value==\\"\\")\r\n  	{\r\n  		alert(\\"错误，评论不能为空\\");\r\n  		obj.saytext.focus();\r\n  		return false;\r\n  	}\r\n  	return true;\r\n  }\r\n  </script>\r\n  <form action=\\"../pl/doaction.php\\" method=\\"post\\" name=\\"saypl\\" id=\\"saypl\\" onsubmit=\\"return CheckPl(document.saypl)\\">\r\n  <tr id=\\"tosaypl\\"> \r\n    <td bgcolor=\\"#f8fcff\\"> <table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n            <td width=\\"13%\\" height=\\"28\\">&nbsp;&nbsp;&nbsp;<span class=\\"you\\">我也评两句</span></td>\r\n            <td valign=\\"middle\\">用户名： \r\n              <input name=\\"username\\" type=\\"text\\" id=\\"username\\" size=\\"12\\" value=\\"[!--lusername--]\\" />\r\n            密码： \r\n            <input name=\\"password\\" type=\\"password\\" id=\\"password\\" size=\\"12\\" value=\\"[!--lpassword--]\\" />\r\n            验证码： \r\n            <input name=\\"key\\" type=\\"text\\" id=\\"key\\" size=\\"6\\" />\r\n              <img src=\\"[!--key.url--]\\" align=\\"middle\\" name=\\"plKeyImg\\" id=\\"plKeyImg\\" onclick=\\"plKeyImg.src=\\''[!--news.url--]e/ShowKey/?v=pl&t=\\''+Math.random()\\" title=\\"看不清楚,点击刷新\\" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=\\"[!--news.url--]e/member/register/\\" target=\\"_blank\\">还没有注册？</a></td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n  <tr> \r\n    <td bgcolor=\\"#f8fcff\\"> <table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\" class=\\"retext\\">\r\n        <tr> \r\n          <td width=\\"78%\\"><div align=\\"center\\"> \r\n              <textarea name=\\"saytext\\" cols=\\"58\\" rows=\\"6\\" id=\\"saytext\\"></textarea>\r\n            </div></td>\r\n          <td width=\\"22%\\" rowspan=\\"2\\"> <div align=\\"center\\">\r\n              <input name=\\"nomember\\" type=\\"checkbox\\" id=\\"nomember\\" value=\\"1\\" checked=\\"checked\\" />\r\n                匿名发表<br>\r\n                <br />\r\n              <input name=\\"imageField\\" type=\\"submit\\" id=\\"imageField\\" value=\\" 提 交 \\" />\r\n            </div></td>\r\n        </tr>\r\n        <tr> \r\n          <td><div align=\\"center\\"> \r\n              <script src=\\"[!--news.url--]d/js/js/plface.js\\"></script>\r\n            </div></td>\r\n        </tr>\r\n      </table> </td>\r\n  </tr>\r\n  <input name=\\"id\\" type=\\"hidden\\" id=\\"id\\" value=\\"[!--id--]\\" />\r\n  <input name=\\"classid\\" type=\\"hidden\\" id=\\"classid\\" value=\\"[!--classid--]\\" />\r\n  <input name=\\"enews\\" type=\\"hidden\\" id=\\"enews\\" value=\\"AddPl\\" />\r\n  <input name=\\"repid\\" type=\\"hidden\\" id=\\"repid\\" value=\\"0\\" />\r\n  </form>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', 1);

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewspl_1`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewspl_1` (
  `plid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pubid` bigint(16) NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `sayip` varchar(20) NOT NULL DEFAULT '',
  `saytime` int(10) unsigned NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `zcnum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `fdnum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `isgood` tinyint(1) NOT NULL DEFAULT '0',
  `saytext` text NOT NULL,
  `eipport` varchar(6) NOT NULL DEFAULT '',
  PRIMARY KEY (`plid`),
  KEY `id` (`id`),
  KEY `classid` (`classid`),
  KEY `pubid` (`pubid`,`checked`,`plid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewspl_set`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewspl_set` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `pltime` smallint(5) unsigned NOT NULL DEFAULT '0',
  `plsize` smallint(5) unsigned NOT NULL DEFAULT '0',
  `plincludesize` smallint(5) unsigned NOT NULL DEFAULT '0',
  `plkey_ok` tinyint(1) NOT NULL DEFAULT '0',
  `plface` text NOT NULL,
  `plfacenum` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `plgroupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `plclosewords` text NOT NULL,
  `plf` text NOT NULL,
  `plmustf` text NOT NULL,
  `pldatatbs` text NOT NULL,
  `defpltempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `pl_num` smallint(5) unsigned NOT NULL DEFAULT '0',
  `pldeftb` smallint(5) unsigned NOT NULL DEFAULT '0',
  `plurl` varchar(200) NOT NULL DEFAULT '',
  `plmaxfloor` smallint(5) unsigned NOT NULL DEFAULT '0',
  `plquotetemp` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `dayuqixiu_enewspl_set`
--

INSERT INTO `dayuqixiu_enewspl_set` (`id`, `pltime`, `plsize`, `plincludesize`, `plkey_ok`, `plface`, `plfacenum`, `plgroupid`, `plclosewords`, `plf`, `plmustf`, `pldatatbs`, `defpltempid`, `pl_num`, `pldeftb`, `plurl`, `plmaxfloor`, `plquotetemp`) VALUES
(1, 20, 500, 0, 1, '||[~e.jy~]##1.gif||[~e.kq~]##2.gif||[~e.se~]##3.gif||[~e.sq~]##4.gif||[~e.lh~]##5.gif||[~e.ka~]##6.gif||[~e.hh~]##7.gif||[~e.ys~]##8.gif||[~e.ng~]##9.gif||[~e.ot~]##10.gif||', 10, 0, '', '', '', ',1,', 1, 12, 1, '/e/pl/', 0, '<div class=\\"ecomment\\">\r\n<span class=\\"ecommentauthor\\">网友 [!--username--] 的原文：</span>\r\n<p class=\\"ecommenttext\\">[!--pltext--]</p>\r\n</div>');

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewspostdata`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewspostdata` (
  `postid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `rnd` varchar(32) NOT NULL DEFAULT '',
  `postdata` varchar(255) NOT NULL DEFAULT '',
  `ispath` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`postid`),
  KEY `rnd` (`rnd`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewspostserver`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewspostserver` (
  `pid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `pname` varchar(60) NOT NULL DEFAULT '',
  `purl` varchar(255) NOT NULL DEFAULT '',
  `ptype` tinyint(1) NOT NULL DEFAULT '0',
  `ftphost` varchar(255) NOT NULL DEFAULT '',
  `ftpport` varchar(20) NOT NULL DEFAULT '',
  `ftpusername` varchar(120) NOT NULL DEFAULT '',
  `ftppassword` varchar(120) NOT NULL DEFAULT '',
  `ftppath` varchar(255) NOT NULL DEFAULT '',
  `ftpmode` tinyint(1) NOT NULL DEFAULT '0',
  `ftpssl` tinyint(1) NOT NULL DEFAULT '0',
  `ftppasv` tinyint(1) NOT NULL DEFAULT '0',
  `ftpouttime` smallint(5) unsigned NOT NULL DEFAULT '0',
  `lastposttime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pid`),
  KEY `ptype` (`ptype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `dayuqixiu_enewspostserver`
--

INSERT INTO `dayuqixiu_enewspostserver` (`pid`, `pname`, `purl`, `ptype`, `ftphost`, `ftpport`, `ftpusername`, `ftppassword`, `ftppath`, `ftpmode`, `ftpssl`, `ftppasv`, `ftpouttime`, `lastposttime`) VALUES
(1, '附件服务器', '', 1, '', '', '', '', '', 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsprinttemp`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsprinttemp` (
  `tempid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tempname` varchar(60) NOT NULL DEFAULT '',
  `temptext` mediumtext NOT NULL,
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `showdate` varchar(50) NOT NULL DEFAULT '',
  `modid` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tempid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `dayuqixiu_enewsprinttemp`
--

INSERT INTO `dayuqixiu_enewsprinttemp` (`tempid`, `tempname`, `temptext`, `isdefault`, `showdate`, `modid`) VALUES
(1, '默认打印模板', '<html>\r\n<head>\r\n<meta http-equiv=\\"content-type\\" content=\\"text/html; charset=utf-8\\">\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name=\\"keywords\\" content=\\"[!--pagekey--]\\" />\r\n<meta name=\\"description\\" content=\\"[!--pagedes--]\\" />\r\n<style>\r\nbody{font-family:宋体}td,.f12{font-size:12px}.f24 {font-size:24px;}.f14 {font-size:14px;}.title14 {font-size:14px;line-height:130%}.l17 {line-height:170%;}\r\n</style>\r\n</head>\r\n<body bgcolor=\\"#ffffff\\" topmargin=5 leftmargin=5 marginheight=5 marginwidth=5 onLoad=\\''window.print()\\''>\r\n<center>\r\n<table width=650 border=0 cellspacing=0 cellpadding=0>\r\n<tr>\r\n<td height=65 width=180><A href=\\"http://www.phome.net/\\"><IMG src=\\"../../skin/default/images/elogo.jpg\\" alt=\\"帝国软件\\" width=\\"180\\" height=\\"65\\" border=0></A></td> \r\n<td valign=\\"bottom\\">[!--url--]</td>\r\n<td width=\\"83\\" align=\\"right\\" valign=\\"bottom\\"><a href=\\''javascript:history.back()\\''>返回</a>　<a href=\\''javascript:window.print()\\''>打印</a></td>\r\n</tr>\r\n</table>\r\n<table width=650 border=0 cellpadding=0 cellspacing=20 bgcolor=\\"#EDF0F5\\">\r\n<tr>\r\n<td>\r\n<BR>\r\n<TABLE cellSpacing=0 cellPadding=0 width=\\"100%\\" border=0>\r\n<TBODY>\r\n<TR>\r\n<TH class=\\"f24\\"><FONT color=#05006c>[!--title--]</FONT></TH></TR>\r\n<TR>\r\n<TD>\r\n<HR SIZE=1 bgcolor=\\"#d9d9d9\\">\r\n</TD>\r\n</TR>\r\n<TR>\r\n<TD align=\\"middle\\" height=20><div align=\\"center\\">[!--writer--]&nbsp;&nbsp;[!--newstime--]&nbsp;&nbsp;[!--befrom--]</div></TD>\r\n</TR>\r\n<TR>\r\n<TD height=15></TD>\r\n</TR>\r\n<TR>\r\n<TD class=\\"l17\\">\r\n<FONT class=\\"f14\\" id=\\"zoom\\"> \r\n<P>[!--newstext--]<br>\r\n<BR clear=all>\r\n</P>\r\n</FONT>\r\n</TD>\r\n</TR>\r\n<TR height=10>\r\n<TD></TD>\r\n</TR>\r\n</TBODY>\r\n</TABLE>\r\n[!--titlelink--]\r\n</td>\r\n</tr>\r\n</table>\r\n</center>\r\n</body>\r\n</html>', 1, 'Y-m-d H:i:s', 1);

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewspublic`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewspublic` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `newsurl` varchar(120) NOT NULL DEFAULT '',
  `sitename` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `filetype` text NOT NULL,
  `filesize` int(11) NOT NULL DEFAULT '0',
  `hotnum` tinyint(4) NOT NULL DEFAULT '0',
  `newnum` tinyint(4) NOT NULL DEFAULT '0',
  `relistnum` int(11) NOT NULL DEFAULT '0',
  `renewsnum` int(11) NOT NULL DEFAULT '0',
  `min_keyboard` tinyint(4) NOT NULL DEFAULT '0',
  `max_keyboard` tinyint(4) NOT NULL DEFAULT '0',
  `search_num` tinyint(4) NOT NULL DEFAULT '0',
  `search_pagenum` tinyint(4) NOT NULL DEFAULT '0',
  `newslink` tinyint(4) NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `searchtime` int(11) NOT NULL DEFAULT '0',
  `loginnum` smallint(6) NOT NULL DEFAULT '0',
  `logintime` int(11) NOT NULL DEFAULT '0',
  `addnews_ok` tinyint(1) NOT NULL DEFAULT '0',
  `register_ok` tinyint(1) NOT NULL DEFAULT '0',
  `indextype` varchar(10) NOT NULL DEFAULT '',
  `goodlencord` tinyint(4) NOT NULL DEFAULT '0',
  `goodtype` varchar(10) NOT NULL DEFAULT '',
  `goodnum` tinyint(4) NOT NULL DEFAULT '0',
  `searchtype` varchar(10) NOT NULL DEFAULT '',
  `exittime` smallint(6) NOT NULL DEFAULT '0',
  `smalltextlen` smallint(6) NOT NULL DEFAULT '0',
  `defaultgroupid` smallint(6) NOT NULL DEFAULT '0',
  `fileurl` varchar(255) NOT NULL DEFAULT '',
  `phpmode` tinyint(1) NOT NULL DEFAULT '0',
  `ftphost` varchar(255) NOT NULL DEFAULT '',
  `ftpport` varchar(20) NOT NULL DEFAULT '21',
  `ftpusername` varchar(120) NOT NULL DEFAULT '',
  `ftppassword` varchar(120) NOT NULL DEFAULT '',
  `ftppath` varchar(255) NOT NULL DEFAULT '',
  `ftpmode` tinyint(1) NOT NULL DEFAULT '0',
  `install` tinyint(1) NOT NULL DEFAULT '0',
  `hotplnum` tinyint(4) NOT NULL DEFAULT '0',
  `softversion` varchar(30) NOT NULL DEFAULT '0',
  `lctime` int(11) NOT NULL DEFAULT '0',
  `dorepnum` smallint(6) NOT NULL DEFAULT '0',
  `loadtempnum` smallint(6) NOT NULL DEFAULT '0',
  `firstnum` tinyint(4) NOT NULL DEFAULT '0',
  `bakdbpath` varchar(50) NOT NULL DEFAULT '',
  `bakdbzip` varchar(50) NOT NULL DEFAULT '',
  `downpass` varchar(32) NOT NULL DEFAULT '',
  `min_userlen` tinyint(4) NOT NULL DEFAULT '0',
  `max_userlen` tinyint(4) NOT NULL DEFAULT '0',
  `min_passlen` tinyint(4) NOT NULL DEFAULT '0',
  `max_passlen` tinyint(4) NOT NULL DEFAULT '0',
  `filechmod` tinyint(1) NOT NULL DEFAULT '0',
  `tid` smallint(6) NOT NULL DEFAULT '0',
  `tbname` varchar(60) NOT NULL DEFAULT '',
  `loginkey_ok` tinyint(1) NOT NULL DEFAULT '0',
  `limittype` tinyint(1) NOT NULL DEFAULT '0',
  `redodown` smallint(6) NOT NULL DEFAULT '0',
  `candocode` tinyint(1) NOT NULL DEFAULT '0',
  `opennotcj` tinyint(1) NOT NULL DEFAULT '0',
  `reuserpagenum` int(11) NOT NULL DEFAULT '0',
  `revotejsnum` int(11) NOT NULL DEFAULT '0',
  `readjsnum` int(11) NOT NULL DEFAULT '0',
  `qaddtran` tinyint(1) NOT NULL DEFAULT '0',
  `qaddtransize` int(11) NOT NULL DEFAULT '0',
  `ebakthisdb` tinyint(1) NOT NULL DEFAULT '0',
  `delnewsnum` int(11) NOT NULL DEFAULT '0',
  `markpos` tinyint(4) NOT NULL DEFAULT '0',
  `markimg` varchar(80) NOT NULL DEFAULT '',
  `marktext` varchar(80) NOT NULL DEFAULT '',
  `markfontsize` varchar(12) NOT NULL DEFAULT '',
  `markfontcolor` varchar(12) NOT NULL DEFAULT '',
  `markfont` varchar(80) NOT NULL DEFAULT '',
  `adminloginkey` tinyint(1) NOT NULL DEFAULT '0',
  `php_outtime` int(11) NOT NULL DEFAULT '0',
  `listpagefun` varchar(36) NOT NULL DEFAULT '',
  `textpagefun` varchar(36) NOT NULL DEFAULT '',
  `adfile` varchar(30) NOT NULL DEFAULT '',
  `notsaveurl` text NOT NULL,
  `jstempid` smallint(6) NOT NULL DEFAULT '0',
  `rssnum` smallint(6) NOT NULL DEFAULT '0',
  `rsssub` smallint(6) NOT NULL DEFAULT '0',
  `savetxtf` text NOT NULL,
  `dorepdlevelnum` int(11) NOT NULL DEFAULT '0',
  `listpagelistfun` varchar(36) NOT NULL DEFAULT '',
  `listpagelistnum` smallint(6) NOT NULL DEFAULT '0',
  `infolinknum` int(11) NOT NULL DEFAULT '0',
  `searchgroupid` smallint(6) NOT NULL DEFAULT '0',
  `opencopytext` tinyint(1) NOT NULL DEFAULT '0',
  `reuserjsnum` int(11) NOT NULL DEFAULT '0',
  `reuserlistnum` int(11) NOT NULL DEFAULT '0',
  `opentitleurl` tinyint(1) NOT NULL DEFAULT '0',
  `qaddtranimgtype` text NOT NULL,
  `qaddtranfile` tinyint(1) NOT NULL DEFAULT '0',
  `qaddtranfilesize` int(11) NOT NULL DEFAULT '0',
  `qaddtranfiletype` text NOT NULL,
  `sendmailtype` tinyint(1) NOT NULL DEFAULT '0',
  `smtphost` varchar(255) NOT NULL DEFAULT '',
  `fromemail` varchar(120) NOT NULL DEFAULT '',
  `loginemail` tinyint(1) NOT NULL DEFAULT '0',
  `emailusername` varchar(60) NOT NULL DEFAULT '',
  `emailpassword` varchar(60) NOT NULL DEFAULT '',
  `smtpport` varchar(20) NOT NULL DEFAULT '',
  `emailname` varchar(120) NOT NULL DEFAULT '',
  `deftempid` smallint(6) NOT NULL DEFAULT '0',
  `feedbacktfile` tinyint(1) NOT NULL DEFAULT '0',
  `feedbackfilesize` int(11) NOT NULL DEFAULT '0',
  `feedbackfiletype` text NOT NULL,
  `searchtempvar` tinyint(1) NOT NULL DEFAULT '0',
  `showinfolevel` smallint(6) NOT NULL DEFAULT '0',
  `navfh` varchar(20) NOT NULL DEFAULT '',
  `spicwidth` smallint(6) NOT NULL DEFAULT '0',
  `spicheight` smallint(6) NOT NULL DEFAULT '0',
  `spickill` tinyint(1) NOT NULL DEFAULT '0',
  `jpgquality` tinyint(4) NOT NULL DEFAULT '0',
  `markpct` tinyint(4) NOT NULL DEFAULT '0',
  `redoview` smallint(6) NOT NULL DEFAULT '0',
  `reggetfen` smallint(6) NOT NULL DEFAULT '0',
  `regbooktime` smallint(6) NOT NULL DEFAULT '0',
  `revotetime` smallint(6) NOT NULL DEFAULT '0',
  `nreclass` text NOT NULL,
  `nreinfo` text NOT NULL,
  `nrejs` text NOT NULL,
  `fpath` tinyint(1) NOT NULL DEFAULT '0',
  `filepath` varchar(30) NOT NULL DEFAULT '',
  `openmembertranimg` tinyint(1) NOT NULL DEFAULT '0',
  `memberimgsize` int(11) NOT NULL DEFAULT '0',
  `memberimgtype` text NOT NULL,
  `openmembertranfile` tinyint(1) NOT NULL DEFAULT '0',
  `memberfilesize` int(11) NOT NULL DEFAULT '0',
  `memberfiletype` text NOT NULL,
  `nottobq` text NOT NULL,
  `defspacestyleid` smallint(6) NOT NULL DEFAULT '0',
  `canposturl` text NOT NULL,
  `openspace` tinyint(1) NOT NULL DEFAULT '0',
  `defadminstyle` smallint(6) NOT NULL DEFAULT '0',
  `realltime` smallint(6) NOT NULL DEFAULT '0',
  `closeip` text NOT NULL,
  `openip` text NOT NULL,
  `hopenip` text NOT NULL,
  `closewords` text NOT NULL,
  `closewordsf` text NOT NULL,
  `textpagelistnum` smallint(6) NOT NULL DEFAULT '0',
  `memberlistlevel` smallint(6) NOT NULL DEFAULT '0',
  `wapopen` tinyint(1) NOT NULL DEFAULT '0',
  `wapdefstyle` smallint(6) NOT NULL DEFAULT '0',
  `wapshowmid` varchar(255) NOT NULL DEFAULT '',
  `waplistnum` tinyint(4) NOT NULL DEFAULT '0',
  `wapsubtitle` tinyint(4) NOT NULL DEFAULT '0',
  `wapshowdate` varchar(50) NOT NULL DEFAULT '',
  `wapchar` tinyint(1) NOT NULL DEFAULT '0',
  `ebakcanlistdb` tinyint(1) NOT NULL DEFAULT '0',
  `paymoneytofen` int(11) NOT NULL DEFAULT '0',
  `payminmoney` int(11) NOT NULL DEFAULT '0',
  `keytog` tinyint(1) NOT NULL DEFAULT '0',
  `keyrnd` varchar(60) NOT NULL DEFAULT '',
  `keytime` int(11) NOT NULL DEFAULT '0',
  `regkey_ok` tinyint(1) NOT NULL DEFAULT '0',
  `opengetdown` tinyint(1) NOT NULL DEFAULT '0',
  `gbkey_ok` tinyint(1) NOT NULL DEFAULT '0',
  `fbkey_ok` tinyint(1) NOT NULL DEFAULT '0',
  `newaddinfotime` smallint(6) NOT NULL DEFAULT '0',
  `classnavline` smallint(6) NOT NULL DEFAULT '0',
  `classnavfh` varchar(120) NOT NULL DEFAULT '',
  `adminstyle` text NOT NULL,
  `sitekey` varchar(255) NOT NULL DEFAULT '',
  `siteintro` text NOT NULL,
  `docnewsnum` int(11) NOT NULL DEFAULT '0',
  `openschall` tinyint(1) NOT NULL DEFAULT '0',
  `schallfield` tinyint(1) NOT NULL DEFAULT '0',
  `schallminlen` tinyint(4) NOT NULL DEFAULT '0',
  `schallmaxlen` tinyint(4) NOT NULL DEFAULT '0',
  `schallnotcid` text NOT NULL,
  `schallnum` smallint(6) NOT NULL DEFAULT '0',
  `schallpagenum` smallint(6) NOT NULL DEFAULT '0',
  `dtcanbq` tinyint(1) NOT NULL DEFAULT '0',
  `dtcachetime` int(11) NOT NULL DEFAULT '0',
  `regretime` smallint(6) NOT NULL DEFAULT '0',
  `regclosewords` text NOT NULL,
  `regemailonly` tinyint(1) NOT NULL DEFAULT '0',
  `repkeynum` smallint(6) NOT NULL DEFAULT '0',
  `getpasstime` int(11) NOT NULL DEFAULT '0',
  `acttime` int(11) NOT NULL DEFAULT '0',
  `regacttype` tinyint(1) NOT NULL DEFAULT '0',
  `acttext` text NOT NULL,
  `getpasstext` text NOT NULL,
  `acttitle` varchar(120) NOT NULL DEFAULT '',
  `getpasstitle` varchar(120) NOT NULL DEFAULT '',
  `opengetpass` tinyint(1) NOT NULL DEFAULT '0',
  `hlistinfonum` int(11) NOT NULL DEFAULT '0',
  `qlistinfonum` int(11) NOT NULL DEFAULT '0',
  `dtncanbq` tinyint(1) NOT NULL DEFAULT '0',
  `dtncachetime` int(11) NOT NULL DEFAULT '0',
  `readdinfotime` smallint(6) NOT NULL DEFAULT '0',
  `qeditinfotime` int(11) NOT NULL DEFAULT '0',
  `ftpssl` tinyint(1) NOT NULL DEFAULT '0',
  `ftppasv` tinyint(1) NOT NULL DEFAULT '0',
  `ftpouttime` smallint(6) NOT NULL DEFAULT '0',
  `onclicktype` tinyint(1) NOT NULL DEFAULT '0',
  `onclickfilesize` int(11) NOT NULL DEFAULT '0',
  `onclickfiletime` int(11) NOT NULL DEFAULT '0',
  `schalltime` smallint(6) NOT NULL DEFAULT '0',
  `defprinttempid` smallint(6) NOT NULL DEFAULT '0',
  `opentags` tinyint(1) NOT NULL DEFAULT '0',
  `tagstempid` smallint(6) NOT NULL DEFAULT '0',
  `usetags` text NOT NULL,
  `chtags` text NOT NULL,
  `tagslistnum` smallint(6) NOT NULL DEFAULT '0',
  `closeqdt` tinyint(1) NOT NULL DEFAULT '0',
  `settop` tinyint(1) NOT NULL DEFAULT '0',
  `qlistinfomod` tinyint(1) NOT NULL DEFAULT '0',
  `gb_num` tinyint(4) NOT NULL DEFAULT '0',
  `member_num` tinyint(4) NOT NULL DEFAULT '0',
  `space_num` tinyint(4) NOT NULL DEFAULT '0',
  `opendoip` text NOT NULL,
  `closedoip` text NOT NULL,
  `doiptype` varchar(255) NOT NULL DEFAULT '',
  `filelday` int(11) NOT NULL DEFAULT '0',
  `infolday` int(11) NOT NULL DEFAULT '0',
  `baktempnum` tinyint(4) NOT NULL DEFAULT '0',
  `dorepkey` tinyint(1) NOT NULL DEFAULT '0',
  `dorepword` tinyint(1) NOT NULL DEFAULT '0',
  `onclickrnd` varchar(20) NOT NULL DEFAULT '',
  `indexpagedt` tinyint(1) NOT NULL DEFAULT '0',
  `keybgcolor` varchar(8) NOT NULL DEFAULT '',
  `keyfontcolor` varchar(8) NOT NULL DEFAULT '',
  `keydistcolor` varchar(8) NOT NULL DEFAULT '',
  `indexpageid` smallint(6) NOT NULL DEFAULT '0',
  `closeqdtmsg` varchar(255) NOT NULL DEFAULT '',
  `openfileserver` tinyint(1) NOT NULL DEFAULT '0',
  `closemods` varchar(255) NOT NULL DEFAULT '',
  `fieldandtop` tinyint(1) NOT NULL DEFAULT '0',
  `fieldandclosetb` text NOT NULL,
  `filedatatbs` text NOT NULL,
  `filedeftb` smallint(5) unsigned NOT NULL DEFAULT '0',
  `closelisttemp` varchar(255) NOT NULL DEFAULT '',
  `chclasscolor` varchar(8) NOT NULL DEFAULT '',
  `timeclose` varchar(255) NOT NULL DEFAULT '',
  `timeclosedo` varchar(255) NOT NULL DEFAULT '',
  `ipaddinfonum` int(10) unsigned NOT NULL DEFAULT '0',
  `ipaddinfotime` smallint(5) unsigned NOT NULL DEFAULT '0',
  `rewriteinfo` varchar(120) NOT NULL DEFAULT '',
  `rewriteclass` varchar(120) NOT NULL DEFAULT '',
  `rewriteinfotype` varchar(120) NOT NULL DEFAULT '',
  `rewritetags` varchar(120) NOT NULL DEFAULT '',
  `closehmenu` varchar(80) NOT NULL DEFAULT '',
  `indexaddpage` tinyint(1) NOT NULL DEFAULT '0',
  `rewritepl` varchar(150) NOT NULL DEFAULT '',
  `modmemberedittran` tinyint(1) NOT NULL DEFAULT '0',
  `modinfoedittran` tinyint(1) NOT NULL DEFAULT '0',
  `php_adminouttime` int(11) NOT NULL DEFAULT '0',
  `httptype` tinyint(1) NOT NULL DEFAULT '0',
  `qinfoaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `bakescapetype` tinyint(1) NOT NULL DEFAULT '0',
  `hkeytime` int(11) NOT NULL DEFAULT '0',
  `hkeyrnd` varchar(60) NOT NULL DEFAULT '',
  `mhavedatedo` tinyint(1) NOT NULL DEFAULT '0',
  `reportkey` tinyint(1) NOT NULL DEFAULT '0',
  `wapchstyle` tinyint(1) NOT NULL DEFAULT '0',
  `usetotalnum` tinyint(1) NOT NULL DEFAULT '0',
  `spacegids` varchar(255) NOT NULL DEFAULT '',
  `candocodetag` tinyint(1) NOT NULL DEFAULT '0',
  `openern` varchar(255) NOT NULL DEFAULT '',
  `ernurl` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `dayuqixiu_enewspublic`
--

INSERT INTO `dayuqixiu_enewspublic` (`id`, `newsurl`, `sitename`, `email`, `filetype`, `filesize`, `hotnum`, `newnum`, `relistnum`, `renewsnum`, `min_keyboard`, `max_keyboard`, `search_num`, `search_pagenum`, `newslink`, `checked`, `searchtime`, `loginnum`, `logintime`, `addnews_ok`, `register_ok`, `indextype`, `goodlencord`, `goodtype`, `goodnum`, `searchtype`, `exittime`, `smalltextlen`, `defaultgroupid`, `fileurl`, `phpmode`, `ftphost`, `ftpport`, `ftpusername`, `ftppassword`, `ftppath`, `ftpmode`, `install`, `hotplnum`, `softversion`, `lctime`, `dorepnum`, `loadtempnum`, `firstnum`, `bakdbpath`, `bakdbzip`, `downpass`, `min_userlen`, `max_userlen`, `min_passlen`, `max_passlen`, `filechmod`, `tid`, `tbname`, `loginkey_ok`, `limittype`, `redodown`, `candocode`, `opennotcj`, `reuserpagenum`, `revotejsnum`, `readjsnum`, `qaddtran`, `qaddtransize`, `ebakthisdb`, `delnewsnum`, `markpos`, `markimg`, `marktext`, `markfontsize`, `markfontcolor`, `markfont`, `adminloginkey`, `php_outtime`, `listpagefun`, `textpagefun`, `adfile`, `notsaveurl`, `jstempid`, `rssnum`, `rsssub`, `savetxtf`, `dorepdlevelnum`, `listpagelistfun`, `listpagelistnum`, `infolinknum`, `searchgroupid`, `opencopytext`, `reuserjsnum`, `reuserlistnum`, `opentitleurl`, `qaddtranimgtype`, `qaddtranfile`, `qaddtranfilesize`, `qaddtranfiletype`, `sendmailtype`, `smtphost`, `fromemail`, `loginemail`, `emailusername`, `emailpassword`, `smtpport`, `emailname`, `deftempid`, `feedbacktfile`, `feedbackfilesize`, `feedbackfiletype`, `searchtempvar`, `showinfolevel`, `navfh`, `spicwidth`, `spicheight`, `spickill`, `jpgquality`, `markpct`, `redoview`, `reggetfen`, `regbooktime`, `revotetime`, `nreclass`, `nreinfo`, `nrejs`, `fpath`, `filepath`, `openmembertranimg`, `memberimgsize`, `memberimgtype`, `openmembertranfile`, `memberfilesize`, `memberfiletype`, `nottobq`, `defspacestyleid`, `canposturl`, `openspace`, `defadminstyle`, `realltime`, `closeip`, `openip`, `hopenip`, `closewords`, `closewordsf`, `textpagelistnum`, `memberlistlevel`, `wapopen`, `wapdefstyle`, `wapshowmid`, `waplistnum`, `wapsubtitle`, `wapshowdate`, `wapchar`, `ebakcanlistdb`, `paymoneytofen`, `payminmoney`, `keytog`, `keyrnd`, `keytime`, `regkey_ok`, `opengetdown`, `gbkey_ok`, `fbkey_ok`, `newaddinfotime`, `classnavline`, `classnavfh`, `adminstyle`, `sitekey`, `siteintro`, `docnewsnum`, `openschall`, `schallfield`, `schallminlen`, `schallmaxlen`, `schallnotcid`, `schallnum`, `schallpagenum`, `dtcanbq`, `dtcachetime`, `regretime`, `regclosewords`, `regemailonly`, `repkeynum`, `getpasstime`, `acttime`, `regacttype`, `acttext`, `getpasstext`, `acttitle`, `getpasstitle`, `opengetpass`, `hlistinfonum`, `qlistinfonum`, `dtncanbq`, `dtncachetime`, `readdinfotime`, `qeditinfotime`, `ftpssl`, `ftppasv`, `ftpouttime`, `onclicktype`, `onclickfilesize`, `onclickfiletime`, `schalltime`, `defprinttempid`, `opentags`, `tagstempid`, `usetags`, `chtags`, `tagslistnum`, `closeqdt`, `settop`, `qlistinfomod`, `gb_num`, `member_num`, `space_num`, `opendoip`, `closedoip`, `doiptype`, `filelday`, `infolday`, `baktempnum`, `dorepkey`, `dorepword`, `onclickrnd`, `indexpagedt`, `keybgcolor`, `keyfontcolor`, `keydistcolor`, `indexpageid`, `closeqdtmsg`, `openfileserver`, `closemods`, `fieldandtop`, `fieldandclosetb`, `filedatatbs`, `filedeftb`, `closelisttemp`, `chclasscolor`, `timeclose`, `timeclosedo`, `ipaddinfonum`, `ipaddinfotime`, `rewriteinfo`, `rewriteclass`, `rewriteinfotype`, `rewritetags`, `closehmenu`, `indexaddpage`, `rewritepl`, `modmemberedittran`, `modinfoedittran`, `php_adminouttime`, `httptype`, `qinfoaddfen`, `bakescapetype`, `hkeytime`, `hkeyrnd`, `mhavedatedo`, `reportkey`, `wapchstyle`, `usetotalnum`, `spacegids`, `candocodetag`, `openern`, `ernurl`) VALUES
(1, '/', '帝国网站管理系统', 'admin@phome.net', '|.gif|.jpg|.swf|.rar|.zip|.mp3|.wmv|.txt|.doc|.png|', 20480, 10, 10, 8, 100, 2, 20, 20, 10, 0, 0, 30, 5, 60, 1, 0, '.html', 0, '', 10, '.html', 40, 160, 1, '/d/file/', 0, '', '21', '', '', '', 0, 0, 10, '7.5,1502985610', 1222406370, 300, 50, 10, 'bdata', 'zip', 'pnfR6xBg915YrqCxRdlu', 3, 20, 6, 20, 1, 1, 'news', 0, 0, 1, 1, 0, 50, 100, 100, 1, 50, 1, 300, 5, '../data/mark/maskdef.gif', '', '5', '', '../data/mark/cour.ttf', 1, 0, 'sys_ShowListPage', 'sys_ShowTextPage', 'thea', '', 1, 50, 300, ',', 300, 'sys_ShowListMorePage', 10, 100, 0, 0, 100, 8, 1, '|.gif|.jpg|', 1, 500, '|.zip|.rar|', 1, 'smtp.163.com', 'ecms@163.com', 1, 'ecms', 'ecms', '25', '帝国CMS', 0, 1, 500, '|.zip|.rar|', 1, 2, '>', 105, 118, 1, 80, 65, 24, 0, 30, 30, ',', ',', ',', 2, '', 1, 50, '|.gif|.jpg|', 1, 500, '|.zip|.rar|', ',', 1, '', 1, 1, 0, '', '', '', '', '', 6, 2, 0, 1, '', 10, 30, 'm-d', 2, 0, 10, 1, 2, 'HZXutGhQbIno39rQ1quF57hGGddwNZdD', 900, 0, 0, 0, 0, 0, 20, '&nbsp;|&nbsp;', ',1,2,', '帝国网站管理系统,EmpireCMS', '　　帝国软件是一家专注于网络软件开发的科技公司，其主营产品“帝国网站管理系统(EmpireCMS)”是目前国内应用超高广泛的CMS程序。通过十多年的不断创新与完善，使系统集安全、稳定、强大、灵活于一身。目前EmpireCMS程序已经广泛应用在国内上百万家网站，覆盖国内数千万上网人群，并经过上千家知名网站的严格检测，被称为国内超高安全、超高稳定的开源CMS系统。', 300, 0, 1, 3, 20, ',,', 20, 10, 1, 43200, 0, '', 1, 0, 72, 720, 0, '[!--username--] ，\r\n这封信是由 [!--sitename--] 发送的。\r\n\r\n您收到这封邮件，是因为在我们网站的新用户注册 Email 使用\r\n了您的地址。如果您并没有访问过我们的网站，或没有进行上述操作，请忽\r\n略这封邮件。您不需要退订或进行其他进一步的操作。\r\n\r\n----------------------------------------------------------------------\r\n帐号激活说明\r\n----------------------------------------------------------------------\r\n\r\n您是我们网站的新用户，注册 Email 时使用了本地址，我们需\r\n要对您的地址有效性进行验证以避免垃圾邮件或地址被滥用。\r\n\r\n您只需点击下面的链接即可激活您的帐号：\r\n\r\n[!--pageurl--]\r\n\r\n(如果上面不是链接形式，请将地址手工粘贴到浏览器地址栏再访问)\r\n\r\n感谢您的访问，祝您使用愉快！\r\n\r\n\r\n\r\n此致\r\n\r\n[!--sitename--] 管理团队.\r\n[!--news.url--]', '[!--username--] ，\r\n这封信是由 [!--sitename--] 发送的。\r\n\r\n您收到这封邮件，是因为在我们的网站上这个邮箱地址被登记为用户邮箱，\r\n且该用户请求使用 Email 密码重置功能所致。\r\n\r\n----------------------------------------------------------------------\r\n重要！\r\n----------------------------------------------------------------------\r\n\r\n如果您没有提交密码重置的请求或不是我们网站的注册用户，请立即忽略\r\n并删除这封邮件。只在您确认需要重置密码的情况下，才继续阅读下面的\r\n内容。\r\n\r\n----------------------------------------------------------------------\r\n密码重置说明\r\n----------------------------------------------------------------------\r\n\r\n您只需在提交请求后的三天之内，通过点击下面的链接重置您的密码：\r\n\r\n[!--pageurl--]\r\n\r\n(如果上面不是链接形式，请将地址手工粘贴到浏览器地址栏再访问)\r\n\r\n上面的页面打开后，输入新的密码后提交，之后您即可使用新的密码登录\r\n网站了。您可以在用户控制面板中随时修改您的密码。\r\n\r\n\r\n\r\n此致\r\n\r\n[!--sitename--] 管理团队.\r\n[!--news.url--]', '[[!--sitename--]] Email 地址验证', '[[!--sitename--]] 取回密码说明', 0, 30, 25, 1, 43200, 60, 0, 0, 0, 0, 0, 10, 60, 0, 1, 1, 1, ',1,2,3,4,5,6,7,8,', '', 25, 0, 0, 0, 20, 20, 25, '', '', '', 0, 0, 3, 0, 0, '', 0, '', '', '', 0, '', 0, ',error,gb,fb,', 0, '', ',1,', 1, '', '99C4E3', '', '', 0, 0, '', '', '', '', '', 0, '', 0, 0, 1000, 0, 0, 1, 30, 'xpEHmKtbhXVLM4Vsj9guCCSZeA0ww3caLtv7', 0, 0, 0, 0, '', 0, '', '');

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewspublicadd`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewspublicadd` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `ctimeopen` tinyint(1) NOT NULL DEFAULT '0',
  `ctimelast` int(10) unsigned NOT NULL DEFAULT '0',
  `ctimeindex` int(11) NOT NULL DEFAULT '0',
  `ctimeclass` int(11) NOT NULL DEFAULT '0',
  `ctimelist` int(11) NOT NULL DEFAULT '0',
  `ctimetext` int(11) NOT NULL DEFAULT '0',
  `ctimett` int(11) NOT NULL DEFAULT '0',
  `ctimetags` int(11) NOT NULL DEFAULT '0',
  `ctimegids` varchar(255) NOT NULL DEFAULT '',
  `ctimecids` varchar(255) NOT NULL DEFAULT '',
  `ctimernd` varchar(60) NOT NULL DEFAULT '',
  `ctimeaddre` tinyint(4) NOT NULL DEFAULT '0',
  `ctimeqaddre` tinyint(4) NOT NULL DEFAULT '0',
  `autodoopen` tinyint(1) NOT NULL DEFAULT '0',
  `autodouser` varchar(30) NOT NULL DEFAULT '',
  `autodopass` varchar(32) NOT NULL DEFAULT '',
  `autodosalt` varchar(20) NOT NULL DEFAULT '',
  `autodoshowkey` tinyint(1) NOT NULL DEFAULT '0',
  `autodotime` int(11) NOT NULL DEFAULT '0',
  `autodoline` int(11) NOT NULL DEFAULT '0',
  `autodovar` varchar(20) NOT NULL DEFAULT '',
  `autodoval` varchar(60) NOT NULL DEFAULT '',
  `autodoshow` tinyint(1) NOT NULL DEFAULT '0',
  `autodofile` tinyint(1) NOT NULL DEFAULT '0',
  `autodopostpass` varchar(120) NOT NULL DEFAULT '',
  `autodoss` tinyint(1) NOT NULL DEFAULT '0',
  `autodoaction` varchar(200) NOT NULL DEFAULT '',
  `autodock` tinyint(1) NOT NULL DEFAULT '0',
  `digglevel` int(11) NOT NULL DEFAULT '0',
  `diggcmids` varchar(255) NOT NULL DEFAULT '',
  `toqjf` text NOT NULL,
  `qtoqjf` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `dayuqixiu_enewspublicadd`
--

INSERT INTO `dayuqixiu_enewspublicadd` (`id`, `ctimeopen`, `ctimelast`, `ctimeindex`, `ctimeclass`, `ctimelist`, `ctimetext`, `ctimett`, `ctimetags`, `ctimegids`, `ctimecids`, `ctimernd`, `ctimeaddre`, `ctimeqaddre`, `autodoopen`, `autodouser`, `autodopass`, `autodosalt`, `autodoshowkey`, `autodotime`, `autodoline`, `autodovar`, `autodoval`, `autodoshow`, `autodofile`, `autodopostpass`, `autodoss`, `autodoaction`, `autodock`, `digglevel`, `diggcmids`, `toqjf`, `qtoqjf`) VALUES
(1, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 'Xi4hL4xODm4Nw04ahX1he9OeRk2aqGWAQNRhel4MUg', 0, 0, 0, '', '', '', 0, 100, 12, '', '', 1, 0, 'El7IV9feUfBxHWV1NbC0ZLQJwYjY6LhILXrgJSHKu77cVRVeLtFY5xs4ZRCI', 0, ',emp,', 0, 0, '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewspublic_fc`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewspublic_fc` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `fclastindex` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `dayuqixiu_enewspublic_fc`
--

INSERT INTO `dayuqixiu_enewspublic_fc` (`id`, `fclastindex`) VALUES
(1, 1615888112);

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewspublic_up`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewspublic_up` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `lasttimeinfo` int(10) unsigned NOT NULL DEFAULT '0',
  `lasttimepl` int(10) unsigned NOT NULL DEFAULT '0',
  `lastnuminfo` int(10) unsigned NOT NULL DEFAULT '0',
  `lastnumpl` int(10) unsigned NOT NULL DEFAULT '0',
  `lastnuminfotb` text NOT NULL,
  `lastnumpltb` text NOT NULL,
  `todaytimeinfo` int(10) unsigned NOT NULL DEFAULT '0',
  `todaytimepl` int(10) unsigned NOT NULL DEFAULT '0',
  `todaynuminfo` int(10) unsigned NOT NULL DEFAULT '0',
  `yesterdaynuminfo` int(10) unsigned NOT NULL DEFAULT '0',
  `todaynumpl` int(10) unsigned NOT NULL DEFAULT '0',
  `yesterdaynumpl` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `dayuqixiu_enewspublic_up`
--

INSERT INTO `dayuqixiu_enewspublic_up` (`id`, `lasttimeinfo`, `lasttimepl`, `lastnuminfo`, `lastnumpl`, `lastnuminfotb`, `lastnumpltb`, `todaytimeinfo`, `todaytimepl`, `todaynuminfo`, `yesterdaynuminfo`, `todaynumpl`, `yesterdaynumpl`) VALUES
(1, 1355124469, 1355124476, 34, 0, '|1,34|', '', 1615875624, 1615875624, 19, 15, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewspubtemp`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewspubtemp` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `indextemp` mediumtext NOT NULL,
  `cptemp` mediumtext NOT NULL,
  `searchtemp` mediumtext NOT NULL,
  `searchjstemp` mediumtext NOT NULL,
  `searchjstemp1` mediumtext NOT NULL,
  `otherlinktemp` mediumtext NOT NULL,
  `downsofttemp` text NOT NULL,
  `onlinemovietemp` text NOT NULL,
  `listpagetemp` text NOT NULL,
  `gbooktemp` mediumtext NOT NULL,
  `loginiframe` mediumtext NOT NULL,
  `otherlinktempsub` tinyint(4) NOT NULL DEFAULT '0',
  `otherlinktempdate` varchar(20) NOT NULL DEFAULT '',
  `loginjstemp` mediumtext NOT NULL,
  `downpagetemp` mediumtext NOT NULL,
  `pljstemp` mediumtext NOT NULL,
  `schalltemp` mediumtext NOT NULL,
  `schallsubnum` smallint(6) NOT NULL DEFAULT '0',
  `schalldate` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `dayuqixiu_enewspubtemp`
--

INSERT INTO `dayuqixiu_enewspubtemp` (`id`, `indextemp`, `cptemp`, `searchtemp`, `searchjstemp`, `searchjstemp1`, `otherlinktemp`, `downsofttemp`, `onlinemovietemp`, `listpagetemp`, `gbooktemp`, `loginiframe`, `otherlinktempsub`, `otherlinktempdate`, `loginjstemp`, `downpagetemp`, `pljstemp`, `schalltemp`, `schallsubnum`, `schalldate`) VALUES
(1, '<!DOCTYPE html>\r\n<html>\r\n\r\n<head>\r\n	<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n	<meta http-equiv=\\"X-UA-Compatible\\" content=\\"IE=edge\\">\r\n	<title>达宇天然气汽车改装厂</title>\r\n	<meta name=\\"keywords\\" content=\\"达州CNG改装,达州油改气,达州CNG汽车改装,达州CNG维修,油改气,CNG改装,达州油改气厂家\\" />\r\n	<meta name=\\"description\\"\r\n		content=\\"达州油改气厂家推荐达宇天然气汽车改装厂主要从事达州CNG汽车改装/达州CNG改装维修和达州油改气等业务,可为您提供不同车型汽车的改装维修以及配件销售等服务以及周到的售后服务,欢迎新老客户来电咨询.\\" />\r\n	<meta name=\\"viewport\\" content=\\"width=device-width, initial-scale=1\\">\r\n	<meta name=\\"Copyright\\" content=\\"All Rights Reserved btoe.cn\\" />\r\n	<link rel=\\"stylesheet\\" type=\\"text/css\\" media=\\"screen\\" href=\\"/style/css/in.css\\" />\r\n	<link rel=\\"stylesheet\\" type=\\"text/css\\" media=\\"screen\\" href=\\"/style/css/css.css\\" />\r\n	<link rel=\\"stylesheet\\" type=\\"text/css\\" media=\\"screen\\" href=\\"/style/css/swiper.min.css\\" />\r\n	<link rel=\\"stylesheet\\" type=\\"text/css\\" media=\\"screen\\" href=\\"/style/css/animate.min.css\\" />\r\n	<script src=\\"/style/js/jquery.min.js\\"></script>\r\n	<script src=\\"/style/js/swiper.min.js\\"></script>\r\n	<script src=\\"/style/js/threebanner.js\\"></script>\r\n	<script src=\\"/style/js/jquery.SuperSlide.2.1.3.js\\"></script>\r\n\r\n\r\n</head>\r\n\r\n<body>\r\n\r\n	<!--请在body内进行编辑代码-->\r\n\r\n	<!-- 顶部 -->\r\n	<div class=\\"topxunpan\\">\r\n		<div class=\\"center\\">\r\n			<p>\r\n				<span>TEL：<i>19983727888</i></span>\r\n				<span>TEL：<i>13458195618（微信同号）</i></span>\r\n				<span>E-MAIL：<i>123456@qq.com</i></span>\r\n			</p>\r\n			<div class=\\"thisxp\\">\r\n				<div class=\\"xp\\" id=\\"xunpanText\\" data-tiptitle=\\"请您登录网站后台查看！\\">\r\n					<img src=\\"/style/images/t_icon_05.png\\" alt=\\"询盘信息\\">\r\n					您暂无未读询盘信息!\r\n					<div id=\\"xunpantip\\"></div>\r\n				</div>\r\n			</div>\r\n			<p><a href=\\"#wjdh-message\\" title=\\"在线留言\\">在线留言</a></p>\r\n		</div>\r\n	</div>\r\n\r\n	[!--temp.header--]\r\n\r\n	<!-- 轮播图 -->\r\n	<div class=\\"pics_wrap\\">\r\n		<div class=\\"html5zoo-1\\">\r\n			<ul class=\\"html5zoo-slides\\">\r\n\r\n				<li><a href=\\"products/\\" title=\\"达州CNG汽车改装\\"><img\r\n							src=\\"/style/images/300523f269ce45df707e494f5f88a636@1920X750.jpg\\" alt=\\"达州CNG汽车改装\\"></a></li>\r\n\r\n				<li><a href=\\"p1/\\" title=\\"达州油改气\\"><img src=\\"/style/images/54782fd3e5e11bdcce8d9a5408cb719c@1920X750.jpg\\"\r\n							alt=\\"达州油改气\\"></a></li>\r\n\r\n				<li><a href=\\"p2/\\" title=\\"达州CNG改装\\"><img src=\\"/style/images/015d1986fda122ed25eb4aef55973605@1920X750.jpg\\"\r\n							alt=\\"达州CNG改装\\"></a></li>\r\n\r\n			</ul>\r\n		</div>\r\n	</div>\r\n\r\n	<!-- 业务中心 -->\r\n	<div class=\\"box_01\\">\r\n		<div class=\\"center\\">\r\n			<div class=\\"h_bt\\">\r\n				<p>business</p>\r\n				<h3><a href=\\"/products/\\" title=\\"业务中心\\">业务中心</a></h3>\r\n			</div>\r\n			<ul class=\\"pro_list\\">\r\n\r\n				<li><a href=\\"/p2/\\" title=\\"CNG汽车改装\\">CNG汽车改装</a></li>\r\n\r\n				<li><a href=\\"/p1/\\" title=\\"油改气服务\\">油改气服务</a></li>\r\n\r\n			</ul>\r\n			<div class=\\"swiper-container pro_center\\">\r\n				<div class=\\"swiper-wrapper\\">\r\n\r\n					<div class=\\"swiper-slide\\">\r\n						<div class=\\"txt\\">\r\n							<i></i>\r\n							<a href=\\"/fwfw/cngqcgz/\\" class=\\"name\\">CNG汽车改装</a>\r\n							<span>CNG car modification</span>\r\n							<p>达宇天然气汽车改装厂可为为您提供达州CNG改装/达州CNG汽车改装维修等相关服务,我们拥有专业的改装技术团队,详细信息欢迎来电咨询.</p>\r\n							<a href=\\"/fwfw/cngqcgz/\\" class=\\"more\\"></a>\r\n						</div>\r\n						<div class=\\"img\\"><img src=\\"/style/images/ad9353002bdda1ee93982e586f73f144@720X450.jpg\\"\r\n								alt=\\"CNG汽车改装\\" /></div>\r\n					</div>\r\n\r\n					<div class=\\"swiper-slide\\">\r\n						<div class=\\"txt\\">\r\n							<i></i>\r\n							<a href=\\"/fwfw/ygqfw/\\" class=\\"name\\">油改气服务</a>\r\n							<span>Changing automobile oil to gas</span>\r\n							<p>汽车油改气（Car oil to\r\n								gas）是对机动车改变燃料种类的一种改装方式。是指把原先使用燃油的通过改装成烧天然气的一个过程。汽车油改气的优点有：经济效益较高，社会效益好...</p>\r\n							<a href=\\"/fwfw/ygqfw/\\" class=\\"more\\"></a>\r\n						</div>\r\n						<div class=\\"img\\"><img src=\\"/style/images/4dfa6eb2417406041693b481ae42835b@720X450.jpg\\"\r\n								alt=\\"油改气服务\\" /></div>\r\n					</div>\r\n\r\n				</div>\r\n				<!-- 按钮 -->\r\n				<div class=\\"arrow\\">\r\n					<div class=\\"swiper-button-next\\"></div>\r\n					<div class=\\"swiper-button-prev\\"></div>\r\n				</div>\r\n			</div>\r\n		</div>\r\n	</div>\r\n\r\n	<!-- 改装案例 -->\r\n	<div class=\\"box_02\\">\r\n		<div class=\\"h_title\\">\r\n			<p>cases</p>\r\n			<h3>改装案例</h3>\r\n		</div>\r\n		<ul class=\\"case_list\\">\r\n			[e:loop={11,6,0,1}]\r\n\r\n			<li>\r\n				<a href=\\"<?=$bqsr[\\''titleurl\\'']?>\\" class=\\"img\\"><img src=\\"<?=$bqr[\\''titlepic\\'']?>\\"\r\n						alt=\\"<?=$bqr[\\''title\\'']?>\\" /></a>\r\n				<div class=\\"txt\\">\r\n					<a href=\\"/case/882834.html\\" class=\\"name\\"><?=$bqr[\\''title\\'']?></a>\r\n					<p>满意度：<span>十分满意</span></p>\r\n				</div>\r\n			</li>\r\n			[/e:loop]\r\n\r\n\r\n\r\n\r\n\r\n		</ul>\r\n		<div class=\\"gd\\"><a class=\\"doudong02\\" href=\\"/case/\\" title=\\"More\\">More cases</a></div>\r\n	</div>\r\n\r\n	<!-- 企业优势 -->\r\n	<div class=\\"box_03\\">\r\n		<div class=\\"h_title\\">\r\n			<p>advantage</p>\r\n			<h3>选择我们的理由</h3>\r\n		</div>\r\n		<ul class=\\"ys\\">\r\n			<li>\r\n				<i></i>\r\n				<h4>企业实力</h4>\r\n				<p>达宇天然气汽车改装厂成立于2007年9月3日，位于四川省达州市高新区斌朗乡木瓜村源金汽车城内。现公司拥有各类技术人员，施工人员二十余人，办公面积近2000平方米，是一家集生产制造、产品设计、销售、安装、售后服务于一体的CNG汽车改装有限公司。\r\n				</p>\r\n				<a href=\\"http://wpa.qq.com/msgrd?v=3&site=qq&menu=yes&uin=123456\\" title=\\"点击咨询\\" target=\\"_blank\\"></a>\r\n			</li>\r\n			<li class=\\"active\\">\r\n				<i></i>\r\n				<h4>经验丰富</h4>\r\n				<p>经过多年实践经验总结，达宇为您提供性能成熟的油改气所需的配套产品，所有产品都经过严格的可靠稳定性测试验证，并通过多年实际市场验证，质量有保证。</p>\r\n				<a href=\\"http://wpa.qq.com/msgrd?v=3&site=qq&menu=yes&uin=123456\\" title=\\"点击咨询\\" target=\\"_blank\\"></a>\r\n			</li>\r\n			<li>\r\n				<i></i>\r\n				<h4>专业团队</h4>\r\n				<p>达宇天然气汽车改装厂专业从事汽车油改气及气瓶检测的综合企业之一，行业经验丰富，由经验丰富的技术工程师组成的改装团队，致力于为车主提供更好的油改气服务。</p>\r\n				<a href=\\"http://wpa.qq.com/msgrd?v=3&site=qq&menu=yes&uin=123456\\" title=\\"点击咨询\\" target=\\"_blank\\"></a>\r\n			</li>\r\n			<li>\r\n				<i></i>\r\n				<h4>售后无忧</h4>\r\n				<p>公司所有服务自合同签订之日起(以实际日期为准)，服务因质量问题，客户可以7日内，您可以选择协商。服务出现问题，请与我们售后客服专员联系，由售后客服人员进行全程跟踪服务。</p>\r\n				<a href=\\"http://wpa.qq.com/msgrd?v=3&site=qq&menu=yes&uin=123456\\" title=\\"点击咨询\\" target=\\"_blank\\"></a>\r\n			</li>\r\n		</ul>\r\n	</div>\r\n\r\n	<!-- 热门资讯 -->\r\n	<div class=\\"box_04\\">\r\n		<div class=\\"h_title\\">\r\n			<p>Hot news</p>\r\n			<h3><a href=\\"/question/\\" title=\\"热门资讯\\">热门资讯</a></h3>\r\n		</div>\r\n		<ul class=\\"top\\">\r\n			[e:loop={9,6,0,0}]\r\n\r\n			<li>\r\n				<div class=\\"date\\">\r\n					<p><?=date(\\''Y\\'')?></p>\r\n					<p><?=date(\\''m-d\\'')?></p>\r\n				</div>\r\n				<div class=\\"txt\\">\r\n					<a href=\\"<?=$bqsr[\\''titleurl\\'']?>\\" title=\\"<?=$bqr[\\''title\\'']?>\\"><?=$bqr[\\''title\\'']?></a>\r\n					<p><?=$bqr[smalltext]?>\r\n					</p>\r\n					<span></span>\r\n				</div>\r\n			</li>\r\n\r\n\r\n			[/e:loop]\r\n\r\n\r\n		</ul>\r\n		<div class=\\"gd\\"><a class=\\"doudong02\\" href=\\"/question/\\" title=\\"More\\">More cases</a></div>\r\n	</div>\r\n\r\n	<!-- 关于我们 -->\r\n	<div class=\\"box_05\\">\r\n		<div class=\\"top\\">\r\n			<div class=\\"left\\">\r\n				<h4>ABOUT</h4>\r\n				<p>达宇</p>\r\n				<h5>多年专注于CNG汽车改装</h5>\r\n				<span>Focus on CNG vehicle modification for many years</span>\r\n			</div>\r\n			<div class=\\"right\\">\r\n				<h4>达宇天然气汽车改装厂</h4>\r\n				<p>达宇天然气汽车改装厂成立于2007年9月3日，位于四川省达州市高新区斌朗乡木瓜村源金汽车城内，注册资金50万人民币。现公司拥有各类技术人员，施工人员二十余人，办公面积近两百平方米，是一家集生产制造、产品设计、销售、安装、售后服务于一体的CNG汽车改装有限公司。公司自成立以来，主要从事汽车油改气、CNG汽车改装、CNG汽车维修，CNG配件销售等汽车改装业务。多年来我司改装CNG汽车几千辆，未发生过CNG汽车改装质量问题。一直坚持…\r\n				</p>\r\n				<a href=\\"/aboutus/\\" title=\\"详情\\"></a>\r\n			</div>\r\n		</div>\r\n		<div class=\\"bottom\\">\r\n			<!--\r\n        	注释：设计说这里调用五张厂区展示的图片！！！\r\n        -->\r\n			<div id=\\"case_01\\" class=\\"swiper-container case_01\\">\r\n				<div class=\\"swiper-wrapper\\">\r\n\r\n					<div class=\\"swiper-slide\\"><a href=\\"/album/882350.html\\" class=\\"img\\"><img\r\n								src=\\"/style/images/0992f313e12c511b8875aa6f519c7d8d.jpg\\" alt=\\"企业相册（一）\\" /></a></div>\r\n\r\n					<div class=\\"swiper-slide\\"><a href=\\"/album/882349.html\\" class=\\"img\\"><img\r\n								src=\\"/style/images/0ddfb5afa1d13b194b58ba6efeb2d979.jpg\\" alt=\\"企业相册（二）\\" /></a></div>\r\n\r\n					<div class=\\"swiper-slide\\"><a href=\\"/album/882348.html\\" class=\\"img\\"><img\r\n								src=\\"/style/images/bf96dbbf15482d96c419375ef7a183fe.jpg\\" alt=\\"企业相册（三）\\" /></a></div>\r\n\r\n					<div class=\\"swiper-slide\\"><a href=\\"/album/882347.html\\" class=\\"img\\"><img\r\n								src=\\"/style/images/ab7fd887c1f5ba8936148e912b1bcee9.jpg\\" alt=\\"企业相册（四）\\" /></a></div>\r\n\r\n				</div>\r\n				<div class=\\"swiper-pagination\\"></div>\r\n			</div>\r\n			<div class=\\"yyzz\\"><img src=\\"/style/images/yyzz.png\\" alt=\\"营业执照\\" /></div><!-- 这个不调用 -->\r\n		</div>\r\n	</div>\r\n\r\n	<!-- 新闻资讯 -->\r\n	<div class=\\"box_06\\">\r\n		<div class=\\"h_title\\">\r\n			<p>News</p>\r\n			<h3><a href=\\"/news/\\" title=\\"新闻资讯\\">新闻资讯</a></h3>\r\n		</div>\r\n		<div class=\\"news_center\\">\r\n			<div class=\\"hd\\">\r\n				<ul>\r\n					<li class=\\"on\\"><a href=\\"/meitibaodao/\\" title=\\"公司新闻\\">公司新闻</a></li>\r\n					<li><a href=\\"/yyxw/\\" title=\\"行业新闻\\">行业新闻</a></li>\r\n				</ul>\r\n			</div>\r\n			<div class=\\"bd\\">\r\n				<!-- 1 -->\r\n				<div class=\\"main\\">\r\n					<div class=\\"left\\">\r\n						[e:loop={8,1,0,1}]\r\n\r\n						<a href=\\"<?=$bqsr[\\''titleurl\\'']?>\\" class=\\"img\\"><img\r\n								src=\\"<?=$bqr[\\''titlepic\\'']?>\\" alt=\\"<?=$bqr[\\''title\\'']?>\\" /></a>\r\n						<div class=\\"date\\"><?=date(\\''Y-m-d\\'',$bqr[newstime])?></div>\r\n						<div class=\\"txt\\">\r\n							<a href=\\"<?=$bqsr[\\''titleurl\\'']?>\\" class=\\"name\\"><?=$bqr[\\''title\\'']?></a>\r\n							<p><?=$bqr[smalltext]?>\r\n							</p>\r\n						</div>\r\n[/e:loop]\r\n\r\n					</div>\r\n					<ul class=\\"right\\">\r\n\r\n						[e:loop={8,3,0,0}]\r\n\r\n						<li>\r\n							<div class=\\"date\\">\r\n								<p><?=date(\\''d\\'',$bqr[newstime])?></p>\r\n								<p><?=date(\\''Y-m\\'',$bqr[newstime])?></p>\r\n							</div>\r\n							<div class=\\"txt\\">\r\n								<a href=\\"<?=$bqsr[\\''titleurl\\'']?>\\" title=\\"<?=$bqr[\\''title\\'']?>\\"><?=$bqr[\\''title\\'']?></a>\r\n								<p><?=$bqr[smalltext]?>\r\n								</p>\r\n							</div>\r\n						</li>\r\n						[/e:loop]\r\n\r\n\r\n\r\n\r\n					</ul>\r\n				</div>\r\n				<!-- 2 -->\r\n				<div class=\\"main\\">\r\n					<div class=\\"left\\">\r\n						[e:loop={9,1,0,1}]\r\n						<a href=\\"<?=$bqsr[\\''titleurl\\'']?>\\" class=\\"img\\"><img\r\n								src=\\"<?=$bqr[\\''titlepic\\'']?>\\" alt=\\"<?=$bqr[\\''title\\'']?>\\" /></a>\r\n						<div class=\\"date\\"><?=date(\\''Y-m-d\\'',$bqr[newstime])?></div>\r\n						<div class=\\"txt\\">\r\n							<a href=\\"<?=$bqsr[\\''titleurl\\'']?>\\" class=\\"name\\"><?=$bqr[\\''title\\'']?></a>\r\n							<p><?=$bqr[smalltext]?>\r\n							</p>\r\n						</div>\r\n						[/e:loop]\r\n\r\n\r\n					</div>\r\n					<ul class=\\"right\\">\r\n						[e:loop={9,3,0,0}]\r\n\r\n						<li>\r\n							<div class=\\"date\\">\r\n								<p><?=date(\\''d\\'',$bqr[newstime])?></p>\r\n								<p><?=date(\\''Y-m\\'',$bqr[newstime])?></p>\r\n							</div>\r\n							<div class=\\"txt\\">\r\n								<a href=\\"<?=$bqsr[\\''titleurl\\'']?>\\" title=\\"<?=$bqr[\\''title\\'']?>\\"><?=$bqr[\\''title\\'']?></a>\r\n								<p><?=$bqr[smalltext]?>\r\n								</p>\r\n							</div>\r\n						</li>\r\n\r\n						[/e:loop]\r\n\r\n\r\n					</ul>\r\n				</div>\r\n			</div>\r\n		</div>\r\n	</div>\r\n\r\n	<!-- 在线留言 -->\r\n	<div class=\\"box_07\\">\r\n		<div class=\\"form\\">\r\n			<p><input id=\\"userName\\" type=\\"\\" name=\\"name\\" class=\\"name\\" value=\\"姓名：\\" onFocus=\\"value=\\''\\''\\"\r\n					onBlur=\\"if(!value)value=defaultValue\\"></p>\r\n			<p><input id=\\"userPhone\\" type=\\"\\" name=\\"tel\\" class=\\"tel\\" value=\\"电话：\\" onFocus=\\"value=\\''\\''\\"\r\n					onBlur=\\"if(!value)value=defaultValue\\"></p>\r\n			<p><input id=\\"e-mails\\" type=\\"\\" name=\\"e-mails\\" class=\\"e-mails\\" value=\\"邮箱：\\" onFocus=\\"value=\\''\\''\\"\r\n					onBlur=\\"if(!value)value=defaultValue\\"></p>\r\n			<p><textarea id=\\"content\\" class=\\"textarea\\"\r\n					onBlur=\\"if(this.innerHTML==\\''\\''){this.innerHTML=\\''留言：\\'';this.style.color=\\''#fff;\\''}\\" style=\\"color:#fff;\\"\r\n					onFocus=\\"if(this.innerHTML==\\''留言：\\''){this.innerHTML=\\''\\'';this.style.color=\\''#fff;\\''}\\">留言：</textarea></p>\r\n			<p>\r\n				<input id=\\"codeText\\" type=\\"txt\\" name=\\"\\" class=\\"codeText\\" value=\\"验证码：\\" onFocus=\\"value=\\''\\''\\"\r\n					onBlur=\\"if(!value)value=defaultValue\\">\r\n				<img src=\\"/api/message.ashx?action=code\\" id=\\"imgCode\\" class=\\"imgCode\\">\r\n			</p>\r\n			<div class=\\"tj\\"><button id=\\"btn\\" class=\\"btn\\">提交</button></div>\r\n		</div>\r\n		<div class=\\"links\\">\r\n\r\n			<a href=\\"http://www.cdleiling.com\\" target=\\"_blank\\" title=\\"达州高层吊装\\">达州高层吊装</a>\r\n\r\n			<a href=\\"http://www.yfcng.com\\" target=\\"_blank\\" title=\\"达州油改气\\">达州油改气</a>\r\n\r\n			<a href=\\"http://www.yfcng.com\\" target=\\"_blank\\" title=\\"达州CNG改装\\">达州CNG改装</a>\r\n\r\n		</div>\r\n	</div>\r\n\r\n	<script src=\\"/style/js/index.js\\"></script>\r\n\r\n	<!-- 底部信息  -->\r\n	<div class=\\"footer\\">\r\n		<div class=\\"center\\">\r\n			<ul class=\\"left\\">\r\n				<li>\r\n					<p>服务范围</p>\r\n\r\n					<a href=\\"/fwfw/cngqcgz/\\" title=\\"CNG汽车改装\\">CNG汽车改装</a>\r\n\r\n					<a href=\\"/fwfw/ygqfw/\\" title=\\"油改气服务\\">油改气服务</a>\r\n\r\n					<a href=\\"/fwfw/cngwx/\\" title=\\"CNG维修\\">CNG维修</a>\r\n\r\n				</li>\r\n				<li>\r\n					<p>新闻中心</p>\r\n\r\n					<a href=\\"/xwzx/gsxw/\\" title=\\"公司新闻\\">公司新闻</a>\r\n\r\n					<a href=\\"/xwzx/hydt/\\" title=\\"行业动态\\">行业动态</a>\r\n					<a href=\\"/xwzx/cjwt/\\" title=\\"常见问题\\">常见问题</a>\r\n\r\n				</li>\r\n				<li>\r\n					<p>公司实力</p>\r\n\r\n					<a href=\\"/gssl/cgal/\\" title=\\"成功案例\\">成功案例</a>\r\n\r\n					<a href=\\"/gssl/ryzz/\\" title=\\"荣誉资质\\">荣誉资质</a>\r\n\r\n					<a href=\\"/gssl/khpj/\\" title=\\"客户评价\\">客户评价</a>\r\n\r\n					<a href=\\"/gssl/gsly/\\" title=\\"公司掠影\\">公司掠影</a>\r\n\r\n				</li>\r\n				<li>\r\n					<p>关于我们</p>\r\n\r\n					<a href=\\"/gywm/gsjj/\\" title=\\"公司简介\\">公司简介</a>\r\n\r\n					<a href=\\"/gywm/qywh/\\" title=\\"企业文化\\">企业文化</a>\r\n\r\n					<a href=\\"/gywm/zzjg/\\" title=\\"组织架构\\">组织架构</a>\r\n					<a href=\\"/gywm/lxwm/\\" title=\\"联系我们\\">联系我们</a>\r\n\r\n				</li>\r\n			</ul>\r\n			<div class=\\"mid\\">\r\n				<h4>联系我们</h4>\r\n				<p>电话：<span>19983727888</span></p>\r\n				<p>座机：<span>123456</span></p>\r\n				<p>邮箱：<span>123456@qq.com</span></p>\r\n				<p>地址：<span>达州市高新区斌朗乡木瓜村源金汽车城内</span></p>\r\n			</div>\r\n			<div class=\\"right\\">\r\n				<h4>二维码</h4>\r\n				<img src=\\"/style/images/8bfaee0be5ecfcfd7c50baba32667e83@260X260.png\\" alt=\\"扫一扫\\" />\r\n			</div>\r\n		</div>\r\n		<div class=\\"copy\\">\r\n			<p>\r\n				<span>Copyright © 达宇天然气汽车改装厂 版权所有</span>\r\n				<span>备案号： 蜀ICP备16023211号-2<a href=\\"http://beian.miit.gov.cn\\" target=\\"_blank\\" title=\\"  \\" rel=\\"nofollow\\">\r\n					</a></span>\r\n			</p>\r\n\r\n			<p>\r\n				<span><a href=\\"/sitemap.html\\" title=\\"网站地图\\">网站地图</a> <a href=\\"/rss.xml\\" title=\\"RSS\\">RSS</a> <a\r\n						href=\\"/sitemap.xml\\" title=\\"XML\\">XML</a></span>\r\n\r\n				<span>技术支持：舜王科技 </span>\r\n\r\n			</p>\r\n		</div>\r\n	</div>\r\n\r\n	<!--全局使用js，请放于footer-->\r\n	<script src=\\"/style/js/nav.js\\"></script>\r\n\r\n\r\n	<script src=\\"/style/js/base.js\\" type=\\"text/javascript\\" charset=\\"utf-8\\"></script>\r\n\r\n</body>\r\n\r\n</html>', '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name=\\"keywords\\" content=\\"[!--pagekey--]\\" />\r\n<meta name=\\"description\\" content=\\"[!--pagedes--]\\" />\r\n<link href=\\"[!--news.url--]skin/default/css/style.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<script type=\\"text/javascript\\" src=\\"[!--news.url--]skin/default/js/tabs.js\\"></script>\r\n</head>\r\n<body class=\\"listpage\\">\r\n[!--temp.dtheader--] \r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\">\r\n<tr valign=\\"top\\">\r\n<td class=\\"list_content\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"position\\">\r\n<tr>\r\n<td>现在的位置：[!--newsnav--]\r\n</td>\r\n</tr>\r\n</table>\r\n      <table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n        <tr> \r\n          <td width=\\"300\\" valign=\\"top\\"> \r\n		  <?php\r\n		  $lguserid=intval(getcvar(\\''mluserid\\''));//登陆用户ID\r\n		  $lgusername=RepPostVar(getcvar(\\''mlusername\\''));//登陆用户\r\n		  $lggroupid=intval(getcvar(\\''mlgroupid\\''));//会员组ID\r\n		  if($lggroupid)	//登陆会员显示菜单\r\n		  {\r\n		  ?>\r\n            <table width=\\"100%\\" border=\\"0\\" cellpadding=\\"3\\" cellspacing=\\"1\\" class=\\"tableborder\\">\r\n              <tr class=\\"header\\"> \r\n                <td height=\\"20\\" bgcolor=\\"#FFFFFF\\"> <div align=\\"center\\"><strong><a href=\\"[!--news.url--]e/member/cp/\\">功能菜单</a></strong></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\"25\\" bgcolor=\\"#FFFFFF\\" onmouseout=\\"this.style.backgroundColor=\\''#ffffff\\''\\" onmouseover=\\"this.style.backgroundColor=\\''#EBF3FC\\''\\"><div align=\\"center\\"><a href=\\"[!--news.url--]e/member/EditInfo/\\">修改资料</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\"25\\" bgcolor=\\"#FFFFFF\\" onmouseout=\\"this.style.backgroundColor=\\''#ffffff\\''\\" onmouseover=\\"this.style.backgroundColor=\\''#EBF3FC\\''\\"><div align=\\"center\\"><a href=\\"[!--news.url--]e/member/my/\\">帐号状态</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\"25\\" bgcolor=\\"#FFFFFF\\" onmouseout=\\"this.style.backgroundColor=\\''#ffffff\\''\\" onmouseover=\\"this.style.backgroundColor=\\''#EBF3FC\\''\\"><div align=\\"center\\"><a href=\\"[!--news.url--]e/member/msg/\\">站内信息</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\"25\\" bgcolor=\\"#FFFFFF\\" onmouseout=\\"this.style.backgroundColor=\\''#ffffff\\''\\" onmouseover=\\"this.style.backgroundColor=\\''#EBF3FC\\''\\"><div align=\\"center\\"><a href=\\"[!--news.url--]e/member/mspace/SetSpace.php\\">空间设置</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\"25\\" bgcolor=\\"#FFFFFF\\" onmouseout=\\"this.style.backgroundColor=\\''#ffffff\\''\\" onmouseover=\\"this.style.backgroundColor=\\''#EBF3FC\\''\\"><div align=\\"center\\"><a href=\\"[!--news.url--]e/DoInfo/\\">管理信息</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\"25\\" bgcolor=\\"#FFFFFF\\" onmouseout=\\"this.style.backgroundColor=\\''#ffffff\\''\\" onmouseover=\\"this.style.backgroundColor=\\''#EBF3FC\\''\\"><div align=\\"center\\"><a href=\\"[!--news.url--]e/member/fava/\\">收藏夹</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\"25\\" bgcolor=\\"#FFFFFF\\" onmouseout=\\"this.style.backgroundColor=\\''#ffffff\\''\\" onmouseover=\\"this.style.backgroundColor=\\''#EBF3FC\\''\\"><div align=\\"center\\"><a href=\\"[!--news.url--]e/payapi/\\">在线支付</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\"25\\" bgcolor=\\"#FFFFFF\\" onmouseout=\\"this.style.backgroundColor=\\''#ffffff\\''\\" onmouseover=\\"this.style.backgroundColor=\\''#EBF3FC\\''\\"><div align=\\"center\\"><a href=\\"[!--news.url--]e/member/friend/\\">我的好友</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\"25\\" bgcolor=\\"#FFFFFF\\" onmouseout=\\"this.style.backgroundColor=\\''#ffffff\\''\\" onmouseover=\\"this.style.backgroundColor=\\''#EBF3FC\\''\\"><div align=\\"center\\"><a href=\\"[!--news.url--]e/member/buybak/\\">消费记录</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\"25\\" bgcolor=\\"#FFFFFF\\" onmouseout=\\"this.style.backgroundColor=\\''#ffffff\\''\\" onmouseover=\\"this.style.backgroundColor=\\''#EBF3FC\\''\\"><div align=\\"center\\"><a href=\\"[!--news.url--]e/member/buygroup/\\">在线充值</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\"25\\" bgcolor=\\"#FFFFFF\\" onmouseout=\\"this.style.backgroundColor=\\''#ffffff\\''\\" onmouseover=\\"this.style.backgroundColor=\\''#EBF3FC\\''\\"><div align=\\"center\\"><a href=\\"[!--news.url--]e/member/card/\\">点卡充值</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\"25\\" bgcolor=\\"#FFFFFF\\" onmouseout=\\"this.style.backgroundColor=\\''#ffffff\\''\\" onmouseover=\\"this.style.backgroundColor=\\''#EBF3FC\\''\\"><div align=\\"center\\"><a href=\\"#ecms\\" onclick=\\"window.open(\\''[!--news.url--]e/ShopSys/buycar/\\'',\\''\\'',\\''width=680,height=500,scrollbars=yes,resizable=yes\\'');\\">我的购物车</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\"25\\" bgcolor=\\"#FFFFFF\\" onmouseout=\\"this.style.backgroundColor=\\''#ffffff\\''\\" onmouseover=\\"this.style.backgroundColor=\\''#EBF3FC\\''\\"><div align=\\"center\\"><a href=\\"[!--news.url--]e/ShopSys/ListDd/\\">我的订单</a></div></td>\r\n              </tr>\r\n			  <tr> \r\n                <td height=\\"25\\" bgcolor=\\"#FFFFFF\\" onmouseout=\\"this.style.backgroundColor=\\''#ffffff\\''\\" onmouseover=\\"this.style.backgroundColor=\\''#EBF3FC\\''\\"><div align=\\"center\\"><a href=\\"[!--news.url--]e/member/login/\\">重新登陆</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\"25\\" bgcolor=\\"#FFFFFF\\" onmouseout=\\"this.style.backgroundColor=\\''#ffffff\\''\\" onmouseover=\\"this.style.backgroundColor=\\''#EBF3FC\\''\\"><div align=\\"center\\"><a href=\\"[!--news.url--]e/member/doaction.php?enews=exit\\" onclick=\\"return confirm(\\''确认要退出?\\'');\\">退出登陆</a></div></td>\r\n              </tr>\r\n            </table>\r\n			<?php\r\n			}\r\n			else	//游客显示菜单\r\n			{\r\n			?>  \r\n            <table width=\\"100%\\" border=\\"0\\" cellpadding=\\"3\\" cellspacing=\\"1\\" class=\\"tableborder\\">\r\n              <tr class=\\"header\\"> \r\n                <td height=\\"20\\" bgcolor=\\"#FFFFFF\\"> <div align=\\"center\\"><strong><a href=\\"[!--news.url--]e/member/cp/\\">功能菜单</a></strong></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\"25\\" bgcolor=\\"#FFFFFF\\" onmouseout=\\"this.style.backgroundColor=\\''#ffffff\\''\\" onmouseover=\\"this.style.backgroundColor=\\''#EBF3FC\\''\\"><div align=\\"center\\"><a href=\\"[!--news.url--]e/member/login/\\">会员登陆</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\"25\\" bgcolor=\\"#FFFFFF\\" onmouseout=\\"this.style.backgroundColor=\\''#ffffff\\''\\" onmouseover=\\"this.style.backgroundColor=\\''#EBF3FC\\''\\"><div align=\\"center\\"><a href=\\"[!--news.url--]e/member/register/\\">注册帐号</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\"25\\" bgcolor=\\"#FFFFFF\\" onmouseout=\\"this.style.backgroundColor=\\''#ffffff\\''\\" onmouseover=\\"this.style.backgroundColor=\\''#EBF3FC\\''\\"><div align=\\"center\\"><a href=\\"[!--news.url--]e/DoInfo/\\">发布投稿</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\"25\\" bgcolor=\\"#FFFFFF\\" onmouseout=\\"this.style.backgroundColor=\\''#ffffff\\''\\" onmouseover=\\"this.style.backgroundColor=\\''#EBF3FC\\''\\"><div align=\\"center\\"><a href=\\"#ecms\\" onclick=\\"window.open(\\''[!--news.url--]e/ShopSys/buycar/\\'',\\''\\'',\\''width=680,height=500,scrollbars=yes,resizable=yes\\'');\\">我的购物车</a></div></td>\r\n              </tr>\r\n            </table>\r\n			<?php\r\n			}\r\n			?>\r\n			</td>\r\n          <td width=\\"85%\\" valign=\\"top\\">[!--empirenews.template--]</td>\r\n        </tr>\r\n      </table></td>\r\n</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<title>高级搜索 - Powered by EmpireCMS</title>\r\n<link href=\\"[!--news.url--]skin/default/css/style.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<script type=\\"text/javascript\\" src=\\"[!--news.url--]skin/default/js/tabs.js\\"></script>\r\n<script src=\\"[!--news.url--]e/data/images/setday.js\\"></script>\r\n</head>\r\n<body class=\\"listpage\\">\r\n[!--temp.dtheader--]\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\">\r\n	<tr valign=\\"top\\">\r\n		<td class=\\"list_content\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"position\\">\r\n				<tr>\r\n					<td>现在的位置：[!--url--]</td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n				<tr>\r\n					<td><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\">\r\n						<tr>\r\n							<td><form action=\\''[!--news.url--]e/search/index.php\\'' method=\\"post\\" name=\\"search_news\\" id=\\"search_news\\">\r\n									<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\">\r\n										<tr>\r\n											<td width=\\"54%\\"><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"6\\" cellspacing=\\"0\\">\r\n													<tr>\r\n														<td bgcolor=\\"#F4F4F4\\"><strong>搜索范围</strong></td>\r\n													</tr>\r\n											</table></td>\r\n											<td width=\\"46%\\"><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"6\\" cellspacing=\\"0\\">\r\n													<tr>\r\n														<td bgcolor=\\"#F4F4F4\\"><strong>搜索栏目</strong></td>\r\n													</tr>\r\n											</table></td>\r\n										</tr>\r\n										<tr>\r\n											<td valign=\\"top\\"><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"6\\" cellspacing=\\"0\\">\r\n													<tr>\r\n														<td><input type=\\"radio\\" name=\\"show\\" value=\\"title\\" checked=\\"checked\\" />\r\n															标题\r\n															<input type=\\"radio\\" name=\\"show\\" value=\\"smalltext\\" />\r\n															简介\r\n															<input type=\\"radio\\" name=\\"show\\" value=\\"newstext\\" />\r\n															内容\r\n															<input type=\\"radio\\" name=\\"show\\" value=\\"writer\\" />\r\n															作者\r\n															<input name=\\"show\\" type=\\"radio\\" value=\\"title,smalltext,newstext,writer\\" />\r\n															不限</td>\r\n													</tr>\r\n												</table>\r\n													<br />\r\n													<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"6\\" cellspacing=\\"0\\">\r\n														<tr bgcolor=\\"#F4F4F4\\">\r\n															<td><strong>时间限制</strong><font color=\\"#666666\\">(0000-00-00为不限制)</font></td>\r\n														</tr>\r\n														<tr>\r\n															<td height=\\"30\\" valign=\\"top\\">从\r\n																<input name=\\"starttime\\" type=\\"text\\" value=\\"0000-00-00\\" size=\\"12\\" onclick=\\"setday(this)\\" />\r\n																到\r\n																<input name=\\"endtime\\" type=\\"text\\" value=\\"0000-00-00\\" size=\\"12\\" onclick=\\"setday(this)\\" />\r\n																之间的数据</td>\r\n														</tr>\r\n														<tr>\r\n															<td bgcolor=\\"#F4F4F4\\"><strong>价格限制</strong><font color=\\"#666666\\">(商城模型中有效,0为不限制)</font></td>\r\n														</tr>\r\n														<tr>\r\n															<td>从\r\n																<input name=\\"startprice\\" type=\\"text\\" id=\\"startprice\\" value=\\"0\\" size=\\"6\\" />\r\n																到\r\n																<input name=\\"endprice\\" type=\\"text\\" id=\\"endprice\\" value=\\"0\\" size=\\"6\\" />\r\n																元之间</td>\r\n														</tr>\r\n												</table></td>\r\n											<td valign=\\"top\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"6\\" cellpadding=\\"0\\">\r\n													<tr>\r\n														<td><select name=\\"classid\\" size=\\"8\\" id=\\"select2\\" style=\\"width: 100%;height:112px\\">\r\n																<option value=\\"0\\" selected=\\"selected\\">所有栏目</option>\r\n															[!--class--]\r\n          \r\n														</select></td>\r\n													</tr>\r\n												</table>\r\n													<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"6\\" cellspacing=\\"0\\">\r\n														<tr>\r\n															<td bgcolor=\\"#F4F4F4\\"><strong>结果显示</strong></td>\r\n														</tr>\r\n														<tr>\r\n															<td height=\\"30\\"><select name=\\"orderby\\" id=\\"select4\\">\r\n																	<option value=\\"\\">按发布日期</option>\r\n																	<option value=\\"id\\">信息ID</option>\r\n																	<option value=\\"plnum\\">评论数</option>\r\n																	<option value=\\"onclick\\">人气</option>\r\n																	<option value=\\"totaldown\\">下载数</option>\r\n																</select>\r\n																	<select name=\\"myorder\\" id=\\"select5\\">\r\n																		<option value=\\"0\\">倒序排列</option>\r\n																		<option value=\\"1\\">顺序排列</option>\r\n																	</select>\r\n															</td>\r\n														</tr>\r\n												</table></td>\r\n										</tr>\r\n									</table>\r\n								<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"4\\" cellspacing=\\"0\\">\r\n										<tr>\r\n											<td>关键字：\r\n												<input name=\\"keyboard\\" type=\\"text\\" id=\\"keyboard2\\" size=\\"60\\" />\r\n													<input type=\\"submit\\" name=\\"Submit22\\" value=\\"搜索\\" />\r\n											</td>\r\n										</tr>\r\n									</table>\r\n							</form></td>\r\n						</tr>\r\n					</table></td>\r\n				</tr>\r\n			</table></td>\r\n	</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', '<table border=0 cellpadding=3 cellspacing=1><form name=search_js1 method=post action=''[!--news.url--]e/search/index.php'' onsubmit=''return search_check(document.search_js1);''><tr><td><div align=center>搜索: <select name=show><option value=title>标题</option><option value=smalltext>简介</option><option value=newstext>内容</option><option value=writer>作者</option><option value=title,smalltext,newstext,writer>搜索全部</option></select><select name=classid><option value=0>所有栏目</option>[!--class--]</select><input name=keyboard type=text size=13><input type=submit name=Submit value=搜索></div></td></tr></form></table>', '<table width=99% border=0 cellpadding=3 cellspacing=1><form name=search_js2 method=post action=''[!--news.url--]e/search/index.php'' onsubmit=''return search_check(document.search_js2);''><tr><td height=25><div align=center>关键字: <input name=keyboard type=text size=13></div></td></tr><tr><td><div align=center>范围: <select name=show><option value=title>标题</option><option value=smalltext>简介</option><option value=newstext>内容</option><option value=writer>作者</option><option value=title,smalltext,newstext,writer>搜索全部</option></select></div></td></tr><tr><td><div align=center>栏目:<select name=classid><option value=0>所有栏目</option>[!--class--]</select></div></td></tr><tr><td><div align=center><input type=submit name=Submit value=搜索></div></td></tr></form></table>', '[!--empirenews.listtemp--]<li><a href="[!--titleurl--]" title="[!--oldtitle--]">[!--title--]</a></li>[!--empirenews.listtemp--]', '[ <a href=\\"#ecms\\" onclick=\\"window.open(\\''[!--down.url--]\\'',\\''\\'',\\''width=300,height=300,resizable=yes\\'');\\">[!--down.name--]</a> ]', '[ <a href=\\"#ecms\\" onclick=\\"window.open(\\''[!--down.url--]\\'',\\''\\'',\\''width=300,height=300,resizable=yes\\'');\\">[!--down.name--]</a> ]', '页次：[!--thispage--]/[!--pagenum--]&nbsp;每页[!--lencord--]&nbsp;总数[!--num--]&nbsp;&nbsp;&nbsp;&nbsp;[!--pagelink--]&nbsp;&nbsp;&nbsp;&nbsp;转到:[!--options--]', '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<title>留言板 - Powered by EmpireCMS</title>\r\n<meta name=\\"keywords\\" content=\\"[!--bname--]\\" />\r\n<meta name=\\"description\\" content=\\"[!--bname--]\\" />\r\n<link href=\\"[!--news.url--]skin/default/css/style.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<script type=\\"text/javascript\\" src=\\"[!--news.url--]skin/default/js/tabs.js\\"></script>\r\n</head>\r\n<body class=\\"listpage\\">\r\n[!--temp.dtheader--]\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\">\r\n<tr valign=\\"top\\">\r\n<td class=\\"list_content\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"position\\">\r\n<tr>\r\n<td>现在的位置：<a href=../../../>首页</a>&nbsp;>&nbsp;[!--bname--]\r\n</td>\r\n</tr>\r\n</table><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n	<tr>\r\n		<td><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"3\\" cellspacing=\\"2\\">\r\n			<tr>\r\n				<td align=\\"center\\" bgcolor=\\"#E1EFFB\\"><strong>[!--bname--]</strong></td>\r\n			</tr>\r\n			<tr>\r\n				<td align=\\"left\\" valign=\\"top\\"><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"4\\" cellspacing=\\"0\\" bgcolor=\\"#FFFFFF\\">\r\n						<tr>\r\n							<td height=\\"100%\\" valign=\\"top\\" bgcolor=\\"#FFFFFF\\"> [!--empirenews.listtemp--]\r\n								<table width=\\"92%\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"4\\" cellspacing=\\"1\\" bgcolor=\\"#F4F9FD\\" class=\\"tableborder\\">\r\n										<tr class=\\"header\\">\r\n											<td width=\\"55%\\" height=\\"23\\">发布者: [!--name--] </td>\r\n											<td width=\\"45%\\">发布时间: [!--lytime--] </td>\r\n										</tr>\r\n										<tr bgcolor=\\"#FFFFFF\\">\r\n											<td height=\\"23\\" colspan=\\"2\\"><table border=\\"0\\" width=\\"100%\\" cellspacing=\\"1\\" cellpadding=\\"8\\" bgcolor=\\''#cccccc\\''>\r\n													<tr>\r\n														<td width=\\''100%\\'' bgcolor=\\''#FFFFFF\\'' style=\\''word-break:break-all\\''> [!--lytext--] </td>\r\n													</tr>\r\n												</table>\r\n												[!--start.regbook--]\r\n												<table width=\\"100%\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"3\\" cellspacing=\\"1\\">\r\n													<tr>\r\n														<td><img src=\\"../../data/images/regb.gif\\" width=\\"18\\" height=\\"18\\" /><strong><font color=\\"#FF0000\\">回复:</font></strong> [!--retext--] </td>\r\n													</tr>\r\n												</table>\r\n												[!--end.regbook--] </td>\r\n										</tr>\r\n									</table>\r\n								<br />\r\n								[!--empirenews.listtemp--]\r\n								<table width=\\"92%\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"4\\" cellspacing=\\"1\\">\r\n									<tr>\r\n										<td>分页: [!--listpage--]</td>\r\n									</tr>\r\n								</table>\r\n								<form action=\\"../../enews/index.php\\" method=\\"post\\" name=\\"form1\\" id=\\"form1\\">\r\n									<table width=\\"92%\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"4\\" cellspacing=\\"1\\"class=\\"tableborder\\">\r\n										<tr class=\\"header\\">\r\n											<td colspan=\\"2\\" bgcolor=\\"#F4F9FD\\"><strong>请您留言:</strong></td>\r\n										</tr>\r\n										<tr bgcolor=\\"#FFFFFF\\">\r\n											<td width=\\"20%\\">姓名:</td>\r\n											<td width=\\"722\\" height=\\"23\\"><input name=\\"name\\" type=\\"text\\" id=\\"name\\" />\r\n												*</td>\r\n										</tr>\r\n										<tr bgcolor=\\"#FFFFFF\\">\r\n											<td>联系邮箱:</td>\r\n											<td height=\\"23\\"><input name=\\"email\\" type=\\"text\\" id=\\"email\\" />\r\n												*</td>\r\n										</tr>\r\n										<tr bgcolor=\\"#FFFFFF\\">\r\n											<td>联系电话:</td>\r\n											<td height=\\"23\\"><input name=\\"mycall\\" type=\\"text\\" id=\\"mycall\\" /></td>\r\n										</tr>\r\n										<tr bgcolor=\\"#FFFFFF\\">\r\n											<td>留言内容(*):</td>\r\n											<td height=\\"23\\"><textarea name=\\"lytext\\" cols=\\"60\\" rows=\\"12\\" id=\\"lytext\\"></textarea></td>\r\n										</tr>\r\n										<tr bgcolor=\\"#FFFFFF\\">\r\n											<td height=\\"23\\">&nbsp;</td>\r\n											<td height=\\"23\\"><input type=\\"submit\\" name=\\"Submit3\\" value=\\"提交\\" />\r\n											<input type=\\"reset\\" name=\\"Submit22\\" value=\\"重置\\" />\r\n											<input name=\\"enews\\" type=\\"hidden\\" id=\\"enews\\" value=\\"AddGbook\\" /></td>\r\n										</tr>\r\n									</table>\r\n								</form></td>\r\n						</tr>\r\n				</table></td>\r\n			</tr>\r\n		</table></td>\r\n	</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', '<html>\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\">\r\n<title>登陆</title>\r\n<LINK href=\\"../../data/images/qcss.css\\" rel=stylesheet>\r\n</head>\r\n<body bgcolor=\\"#ededed\\" topmargin=\\"0\\">\r\n<table border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\" width=\\"100%\\">\r\n  <form name=login method=post action=\\"../../member/doaction.php\\">\r\n    <input type=hidden name=enews value=login>\r\n    <input type=hidden name=prtype value=1>\r\n    <tr> \r\n      <td height=\\"23\\" align=\\"center\\">\r\n      <div align=\\"left\\">\r\n      用户名：<input name=\\"username\\" type=\\"text\\" size=\\"8\\">&nbsp;\r\n      密码：<input name=\\"password\\" type=\\"password\\" size=\\"8\\">\r\n      <select name=\\"lifetime\\" id=\\"lifetime\\">\r\n         <option value=\\"0\\">不保存</option>\r\n         <option value=\\"3600\\">一小时</option>\r\n         <option value=\\"86400\\">一天</option>\r\n         <option value=\\"2592000\\">一个月</option>\r\n         <option value=\\"315360000\\">永久</option>\r\n      </select>&nbsp;\r\n      <input type=\\"submit\\" name=\\"Submit\\" value=\\"登陆\\">&nbsp;\r\n      <input type=\\"button\\" name=\\"Submit2\\" value=\\"注册\\" onclick=\\"window.open(\\''../register/\\'');\\">\r\n      </div>\r\n      </td>\r\n    </tr>\r\n  </form>\r\n</table>\r\n</body>\r\n</html>\r\n[!--empirenews.template--]\r\n<html>\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\">\r\n<title>登陆</title>\r\n<LINK href=\\"../../data/images/qcss.css\\" rel=stylesheet>\r\n</head>\r\n<body bgcolor=\\"#ededed\\" topmargin=\\"0\\">\r\n<table border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\" width=\\"100%\\">\r\n    <tr>\r\n	<td height=\\"23\\" align=\\"center\\">\r\n	<div align=\\"left\\">\r\n		&raquo;&nbsp;<font color=red><b>[!--username--]</b></font>&nbsp;&nbsp;<a href=\\"../my/\\" target=\\"_parent\\">[!--groupname--]</a>&nbsp;[!--havemsg--]&nbsp;<a href=\\"[!--news.url--]e/space/?userid=[!--userid--]\\" target=_blank>我的空间</a>&nbsp;&nbsp;<a href=\\"../msg/\\" target=_blank>短信息</a>&nbsp;&nbsp;<a href=\\"../fava/\\" target=_blank>收藏夹</a>&nbsp;&nbsp;<a href=\\"../cp/\\" target=\\"_parent\\">控制面板</a>&nbsp;&nbsp;<a href=\\"../../member/doaction.php?enews=exit&prtype=9\\" onclick=\\"return confirm(\\''确认要退出?\\'');\\">退出</a> \r\n	</div>\r\n	</td>\r\n    </tr>\r\n</table>\r\n</body>\r\n</html>', 50, 'Y-m-d H:i:s', '<form name=login method=post action=\\"[!--news.url--]e/member/doaction.php\\">\r\n    <input type=hidden name=enews value=login>\r\n    <input type=hidden name=ecmsfrom value=9>\r\n    用户名：<input name=\\"username\\" type=\\"text\\" class=\\"inputText\\" size=\\"16\\" />&nbsp;\r\n    密码：<input name=\\"password\\" type=\\"password\\" class=\\"inputText\\" size=\\"16\\" />&nbsp;\r\n    <input type=\\"submit\\" name=\\"Submit\\" value=\\"登陆\\" class=\\"inputSub\\" />&nbsp;\r\n    <input type=\\"button\\" name=\\"Submit2\\" value=\\"注册\\" class=\\"inputSub\\" onclick=\\"window.open(\\''[!--news.url--]e/member/register/\\'');\\" />\r\n</form>\r\n[!--empirenews.template--]\r\n&raquo;&nbsp;<font color=red><b>[!--username--]</b></font>&nbsp;&nbsp;<a href=\\"[!--news.url--]e/member/my/\\" target=\\"_parent\\">[!--groupname--]</a>&nbsp;[!--havemsg--]&nbsp;<a href=\\"[!--news.url--]e/space/?userid=[!--userid--]\\" target=_blank>我的空间</a>&nbsp;&nbsp;<a href=\\"[!--news.url--]e/member/msg/\\" target=_blank>短信息</a>&nbsp;&nbsp;<a href=\\"[!--news.url--]e/member/fava/\\" target=_blank>收藏夹</a>&nbsp;&nbsp;<a href=\\"[!--news.url--]e/member/cp/\\" target=\\"_parent\\">控制面板</a>&nbsp;&nbsp;<a href=\\"[!--news.url--]e/member/doaction.php?enews=exit&ecmsfrom=9\\" onclick=\\"return confirm(\\''确认要退出?\\'');\\">退出</a>', '<html>\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\">\r\n<title>[!--pagetitle--]</title>\r\n<meta name=\\"keywords\\" content=\\"[!--pagekey--]\\">\r\n<meta name=\\"description\\" content=\\"[!--pagedes--]\\">\r\n<link href=\\"../../data/images/qcss.css\\" rel=\\"stylesheet\\" type=\\"text/css\\">\r\n</head>\r\n<body>\r\n<br>\r\n<br>\r\n<br>\r\n<br>\r\n<table align=\\"center\\" width=\\"100%\\">\r\n  <tr> \r\n    <td height=\\"32\\" align=center>\r\n	<a href=\\"[!--down.url--]\\" title=\\"[!--title--] －[!--down.name--]\\">\r\n	<img src=\\"../../data/images/download.jpg\\" border=0>\r\n	</a>\r\n	</td>\r\n  </tr>\r\n  <tr> \r\n    <td align=center>(点击下载)</td>\r\n  </tr>\r\n</table>\r\n<br>\r\n</body>\r\n</html>', '[!--empirenews.listtemp--] \r\n      <table width=\\"100%\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"3\\" cellspacing=\\"1\\" style=\\"word-break:break-all; word-wrap:break-all;\\">\r\n        <tr> \r\n          <td height=\\"30\\"><span class=\\"name\\">本站网友 [!--username--]</span> <font color=\\"#666666\\">ip:[!--plip--]</font></td>\r\n          <td><div align=\\"right\\"><font color=\\"#666666\\">[!--pltime--] 发表</font></div></td>\r\n        </tr>\r\n        <tr valign=\\"top\\"> \r\n          <td height=\\"50\\" colspan=\\"2\\" class=\\"text\\">[!--pltext--]</td>\r\n        </tr>\r\n        <tr> \r\n          <td height=\\"30\\">&nbsp;</td>\r\n          <td><div align=\\"right\\" class=\\"re\\"> \r\n              <a href=\\"JavaScript:makeRequest(\\''[!--news.url--]e/pl/doaction.php?enews=DoForPl&plid=[!--plid--]&classid=[!--classid--]&id=[!--id--]&dopl=1&doajax=1&ajaxarea=zcpldiv[!--plid--]\\'',\\''EchoReturnedText\\'',\\''GET\\'',\\''\\'');\\">支持</a>[<span id=\\"zcpldiv[!--plid--]\\">[!--zcnum--]</span>]&nbsp; \r\n              <a href=\\"JavaScript:makeRequest(\\''[!--news.url--]e/pl/doaction.php?enews=DoForPl&plid=[!--plid--]&classid=[!--classid--]&id=[!--id--]&dopl=0&doajax=1&ajaxarea=fdpldiv[!--plid--]\\'',\\''EchoReturnedText\\'',\\''GET\\'',\\''\\'');\\">反对</a>[<span id=\\"fdpldiv[!--plid--]\\">[!--fdnum--]</span>]\r\n            </div></td>\r\n        </tr>\r\n      </table>\r\n      <table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr>\r\n          <td background=\\"[!--news.url--]skin/default/images/plhrbg.gif\\"></td>\r\n        </tr>\r\n      </table>\r\n[!--empirenews.listtemp--]', '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<title>搜索 - Powered by EmpireCMS</title>\r\n<link href=\\"[!--news.url--]skin/default/css/style.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<script type=\\"text/javascript\\" src=\\"[!--news.url--]skin/default/js/tabs.js\\"></script>\r\n<style type=\\"text/css\\">\r\n<!--\r\n.r {\r\ndisplay:inline;\r\nfont-weight:normal;\r\nmargin:0;\r\nfont-size:16px;\r\nmargin-top:10px;\r\n}\r\n.a{color:green}\r\n.fl{color:#77c}\r\n-->\r\n</style>\r\n</head>\r\n<body class=\\"listpage\\">\r\n[!--temp.dtheader--]\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\">\r\n	<tr valign=\\"top\\">\r\n		<td class=\\"list_content\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"position\\">\r\n				<tr>\r\n					<td>现在的位置：<a href=\\"[!--news.url--]\\">首页</a>&nbsp;>&nbsp;搜索</td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n				<tr>\r\n					<td><form action=\\''index.php\\'' method=\\"GET\\" name=\\"search_news\\" id=\\"search_news\\">\r\n							<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"6\\" cellpadding=\\"0\\">\r\n								<tr>\r\n									<td height=\\"32\\">关键字：\r\n										<input name=\\"keyboard\\" type=\\"text\\" id=\\"keyboard\\" value=\\"[!--keyboard--]\\" size=\\"42\\" />\r\n                    <select name=\\"field\\" id=\\"field\\">\r\n                      <option value=\\"1\\">全文</option>\r\n                      <option value=\\"2\\">标题</option>\r\n                      <option value=\\"3\\">内容</option>\r\n                    </select> \r\n                    <input type=\\"submit\\" name=\\"Submit22\\" value=\\"搜索\\" />\r\n                    <font color=\\"#666666\\">(多个关键字请用&quot;空格&quot;隔开)</font> </td>\r\n								</tr>\r\n							</table>\r\n						</form>\r\n						<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"6\\">\r\n							<tr>\r\n								<td>系统搜索到约有<strong>[!--num--]</strong>项符合<strong>[!--keyboard--]</strong>的查询结果</td>\r\n							</tr>\r\n						</table>\r\n						[!--empirenews.listtemp--]\r\n						<h2 class=\\"r\\"><span>[!--no.num--].</span> <a class=\\"l\\" href=\\"[!--titleurl--]\\" target=\\"_blank\\">[!--title--]</a></h2>\r\n						<table width=\\"80%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\">\r\n							<tbody>\r\n							<tr>\r\n								<td>[!--smalltext--]</td>\r\n							</tr>\r\n							<tr>\r\n								<td><span class=\\"a\\">[!--titleurl--] - [!--newstime--]</span></td>\r\n							</tr>\r\n							<tr>\r\n								<td>&nbsp;</td>\r\n							</tr>\r\n							</tbody>\r\n						</table>\r\n						[!--empirenews.listtemp--]\r\n						<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"list_page\\">\r\n							<tr>\r\n								<td>[!--listpage--]</td>\r\n							</tr>\r\n						</table></td>\r\n				</tr>\r\n			</table></td>\r\n	</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', 120, 'Y-m-d H:i:s');

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewspubvar`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewspubvar` (
  `varid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `myvar` varchar(60) NOT NULL DEFAULT '',
  `varname` varchar(20) NOT NULL DEFAULT '',
  `varvalue` text NOT NULL,
  `varsay` varchar(255) NOT NULL DEFAULT '',
  `myorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tocache` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`varid`),
  UNIQUE KEY `varname` (`varname`),
  KEY `classid` (`classid`),
  KEY `tocache` (`tocache`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewspubvarclass`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewspubvarclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  `classsay` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsqmsg`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsqmsg` (
  `mid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(80) NOT NULL DEFAULT '',
  `msgtext` text NOT NULL,
  `haveread` tinyint(1) NOT NULL DEFAULT '0',
  `msgtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `to_username` varchar(30) NOT NULL DEFAULT '',
  `from_userid` int(10) unsigned NOT NULL DEFAULT '0',
  `from_username` varchar(30) NOT NULL DEFAULT '',
  `isadmin` tinyint(1) NOT NULL DEFAULT '0',
  `issys` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`mid`),
  KEY `to_username` (`to_username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewssearch`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewssearch` (
  `searchid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `keyboard` varchar(255) NOT NULL DEFAULT '',
  `searchtime` int(10) unsigned NOT NULL DEFAULT '0',
  `searchclass` varchar(255) NOT NULL DEFAULT '',
  `result_num` int(10) unsigned NOT NULL DEFAULT '0',
  `searchip` varchar(20) NOT NULL DEFAULT '',
  `classid` varchar(255) NOT NULL DEFAULT '',
  `onclick` int(10) unsigned NOT NULL DEFAULT '0',
  `orderby` varchar(30) NOT NULL DEFAULT '0',
  `myorder` tinyint(1) NOT NULL DEFAULT '0',
  `checkpass` varchar(32) NOT NULL DEFAULT '',
  `tbname` varchar(60) NOT NULL DEFAULT '',
  `tempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `iskey` tinyint(1) NOT NULL DEFAULT '0',
  `andsql` text NOT NULL,
  `trueclassid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`searchid`),
  KEY `checkpass` (`checkpass`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewssearchall`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewssearchall` (
  `sid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` text NOT NULL,
  `infotime` int(10) unsigned NOT NULL DEFAULT '0',
  `infotext` mediumtext NOT NULL,
  PRIMARY KEY (`sid`),
  KEY `id` (`id`,`classid`,`infotime`),
  FULLTEXT KEY `title` (`title`,`infotext`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewssearchall_load`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewssearchall_load` (
  `lid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tbname` varchar(60) NOT NULL DEFAULT '',
  `titlefield` varchar(30) NOT NULL DEFAULT '',
  `infotextfield` varchar(30) NOT NULL DEFAULT '',
  `smalltextfield` varchar(30) NOT NULL DEFAULT '',
  `loadnum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `lasttime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewssearchtemp`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewssearchtemp` (
  `tempid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tempname` varchar(60) NOT NULL DEFAULT '',
  `temptext` mediumtext NOT NULL,
  `subnews` smallint(6) NOT NULL DEFAULT '0',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `listvar` text NOT NULL,
  `rownum` smallint(6) NOT NULL DEFAULT '0',
  `modid` smallint(6) NOT NULL DEFAULT '0',
  `showdate` varchar(50) NOT NULL DEFAULT '',
  `subtitle` smallint(6) NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `docode` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tempid`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `dayuqixiu_enewssearchtemp`
--

INSERT INTO `dayuqixiu_enewssearchtemp` (`tempid`, `tempname`, `temptext`, `subnews`, `isdefault`, `listvar`, `rownum`, `modid`, `showdate`, `subtitle`, `classid`, `docode`) VALUES
(1, '默认搜索模板', '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<title>[!--keyboard--] 搜索结果 - Powered by EmpireCMS</title>\r\n<link href=\\"[!--news.url--]skin/default/css/style.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<script type=\\"text/javascript\\" src=\\"[!--news.url--]skin/default/js/tabs.js\\"></script>\r\n<style type=\\"text/css\\">\r\n<!--\r\n.r {\r\ndisplay:inline;\r\nfont-weight:normal;\r\nmargin:0;\r\nfont-size:16px;\r\nmargin-top:10px;\r\n}\r\n.a{color:green}\r\n.fl{color:#77c}\r\n-->\r\n</style>\r\n</head>\r\n<body class=\\"listpage\\">\r\n[!--temp.dtheader--]\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\">\r\n	<tr valign=\\"top\\">\r\n		<td class=\\"list_content\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"position\\">\r\n				<tr>\r\n					<td>现在的位置：<a href=\\"[!--news.url--]\\" class=\\"classlinkclass\\">首页</a>&nbsp;>&nbsp;<a href=\\"[!--news.url--]search/\\" class=\\"classlinkclass\\">高级搜索</a>&nbsp;>&nbsp;搜索结果</td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n				<tr>\r\n					<td><form action=\\''../../search/index.php\\'' method=\\"post\\" name=\\"search_news\\" id=\\"search_news\\">\r\n							<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"6\\" cellpadding=\\"0\\">\r\n								<input type=\\"hidden\\" name=\\"show\\" value=\\"title\\" />\r\n								<tr>\r\n									<td height=\\"32\\">关键字：\r\n										<input name=\\"keyboard\\" type=\\"text\\" id=\\"keyboard\\" value=\\"[!--keyboard--]\\" size=\\"42\\" />\r\n										<input type=\\"submit\\" name=\\"Submit22\\" value=\\"搜索\\" />\r\n										&nbsp;\r\n										<input type=\\"button\\" name=\\"Submit\\" value=\\"高级搜索\\" onclick=\\"self.location.href=\\''../../../search/\\''\\" />\r\n										(多个关键字请用&quot;空格&quot;隔开) </td>\r\n								</tr>\r\n							</table>\r\n						</form>\r\n						<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"6\\">\r\n							<tr>\r\n								<td>系统搜索到约有<strong>[!--ecms.num--]</strong>项符合<strong>[!--keyboard--]</strong>的查询结果</td>\r\n							</tr>\r\n						</table>\r\n						[!--empirenews.listtemp--]\r\n						<!--list.var1-->\r\n						[!--empirenews.listtemp--]\r\n						<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"list_page\\">\r\n							<tr>\r\n								<td>[!--show.page--]</td>\r\n							</tr>\r\n						</table></td>\r\n				</tr>\r\n			</table></td>\r\n	</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', 180, 1, '<h2 class=\\"r\\"><span>[!--no.num--].</span> <a class=\\"l\\" href=\\"[!--titleurl--]\\" target=\\"_blank\\">[!--title--]</a></h2>\r\n<table width=\\"80%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\">\r\n	<tbody>\r\n		<tr>\r\n			<td>[!--smalltext--]</td>\r\n		</tr>\r\n		<tr>\r\n			<td><span class=\\"a\\">[!--titleurl--] - [!--newstime--]</span> - <a class=\\"fl\\" href=\\"[!--this.classlink--]\\" target=\\"_blank\\">[!--this.classname--]</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 1, 1, 'Y-m-d', 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewssearchtempclass`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewssearchtempclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsshopdd`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsshopdd` (
  `ddid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ddno` varchar(30) NOT NULL DEFAULT '',
  `ddtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `outproduct` tinyint(1) NOT NULL DEFAULT '0',
  `haveprice` tinyint(1) NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `truename` varchar(20) NOT NULL DEFAULT '',
  `oicq` varchar(25) NOT NULL DEFAULT '',
  `msn` varchar(120) NOT NULL DEFAULT '',
  `email` varchar(120) NOT NULL DEFAULT '',
  `mycall` varchar(30) NOT NULL DEFAULT '',
  `phone` varchar(30) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `zip` varchar(8) NOT NULL DEFAULT '',
  `psid` smallint(6) NOT NULL DEFAULT '0',
  `psname` varchar(60) NOT NULL DEFAULT '',
  `pstotal` float(11,2) NOT NULL DEFAULT '0.00',
  `alltotal` float(11,2) NOT NULL DEFAULT '0.00',
  `payfsid` smallint(6) NOT NULL DEFAULT '0',
  `payfsname` varchar(60) NOT NULL DEFAULT '',
  `payby` tinyint(4) NOT NULL DEFAULT '0',
  `alltotalfen` float(11,2) NOT NULL DEFAULT '0.00',
  `fp` tinyint(1) NOT NULL DEFAULT '0',
  `fptt` varchar(255) NOT NULL DEFAULT '',
  `fptotal` float(11,2) NOT NULL DEFAULT '0.00',
  `fpname` varchar(50) NOT NULL DEFAULT '',
  `userip` varchar(20) NOT NULL DEFAULT '',
  `signbuild` varchar(100) NOT NULL DEFAULT '',
  `besttime` varchar(120) NOT NULL DEFAULT '',
  `pretotal` float(11,2) NOT NULL DEFAULT '0.00',
  `ddtruetime` int(10) unsigned NOT NULL DEFAULT '0',
  `havecutnum` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ddid`),
  KEY `ddno` (`ddno`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsshopdd_add`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsshopdd_add` (
  `ddid` int(10) unsigned NOT NULL DEFAULT '0',
  `buycar` mediumtext NOT NULL,
  `bz` text NOT NULL,
  `retext` text NOT NULL,
  PRIMARY KEY (`ddid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsshoppayfs`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsshoppayfs` (
  `payid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `payname` varchar(60) NOT NULL DEFAULT '',
  `payurl` varchar(255) NOT NULL DEFAULT '',
  `paysay` text NOT NULL,
  `userpay` tinyint(1) NOT NULL DEFAULT '0',
  `userfen` tinyint(1) NOT NULL DEFAULT '0',
  `isclose` tinyint(1) NOT NULL DEFAULT '0',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`payid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `dayuqixiu_enewsshoppayfs`
--

INSERT INTO `dayuqixiu_enewsshoppayfs` (`payid`, `payname`, `payurl`, `paysay`, `userpay`, `userfen`, `isclose`, `isdefault`) VALUES
(1, '邮政汇款', '', '邮政汇款地址:******', 0, 0, 0, 0),
(2, '银行转帐', '', '银行转帐帐号:******', 0, 0, 0, 0),
(3, '网银支付', '/e/payapi/ShopPay.php?paytype=alipay', '<p>网银支付</p>', 0, 0, 0, 1),
(4, '预付款支付', '', '预付款支付', 1, 0, 0, 0),
(5, '货到付款(或上门收款)', '', '货到付款(或上门收款)说明', 0, 0, 0, 0),
(6, '点数购买', '', '点数购买', 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsshopps`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsshopps` (
  `pid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `pname` varchar(60) NOT NULL DEFAULT '',
  `price` float(11,2) NOT NULL DEFAULT '0.00',
  `otherprice` text NOT NULL,
  `psay` text NOT NULL,
  `isclose` tinyint(1) NOT NULL DEFAULT '0',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `dayuqixiu_enewsshopps`
--

INSERT INTO `dayuqixiu_enewsshopps` (`pid`, `pname`, `price`, `otherprice`, `psay`, `isclose`, `isdefault`) VALUES
(1, '送货上门', 10.00, '', '送货上门', 0, 0),
(2, '特快专递（EMS）', 25.00, '', '特快专递（EMS）', 0, 0),
(3, '普通邮递', 5.00, '', '普通邮递', 0, 1),
(4, '邮局快邮', 12.00, '', '邮局快邮', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsshop_address`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsshop_address` (
  `addressid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `addressname` char(50) NOT NULL DEFAULT '',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `truename` char(20) NOT NULL DEFAULT '',
  `oicq` char(20) NOT NULL DEFAULT '',
  `msn` char(60) NOT NULL DEFAULT '',
  `email` char(60) NOT NULL DEFAULT '',
  `address` char(255) NOT NULL DEFAULT '',
  `zip` char(8) NOT NULL DEFAULT '',
  `mycall` char(30) NOT NULL DEFAULT '',
  `phone` char(30) NOT NULL DEFAULT '',
  `signbuild` char(100) NOT NULL DEFAULT '',
  `besttime` char(120) NOT NULL DEFAULT '',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`addressid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsshop_ddlog`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsshop_ddlog` (
  `logid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ddid` int(10) unsigned NOT NULL DEFAULT '0',
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `ecms` varchar(30) NOT NULL DEFAULT '',
  `bz` varchar(255) NOT NULL DEFAULT '',
  `addbz` varchar(255) NOT NULL DEFAULT '',
  `logtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`logid`),
  KEY `ddid` (`ddid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsshop_precode`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsshop_precode` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `prename` varchar(30) NOT NULL DEFAULT '',
  `precode` varchar(36) NOT NULL DEFAULT '',
  `premoney` int(10) unsigned NOT NULL DEFAULT '0',
  `pretype` tinyint(1) NOT NULL DEFAULT '0',
  `reuse` tinyint(1) NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `groupid` varchar(255) NOT NULL DEFAULT '',
  `classid` text NOT NULL,
  `musttotal` int(10) unsigned NOT NULL DEFAULT '0',
  `usenum` int(11) NOT NULL DEFAULT '0',
  `haveusenum` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `precode` (`precode`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsshop_set`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsshop_set` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `shopddgroupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `buycarnum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `havefp` tinyint(1) NOT NULL DEFAULT '0',
  `fpnum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `fpname` text NOT NULL,
  `ddmust` text NOT NULL,
  `haveatt` tinyint(1) NOT NULL DEFAULT '0',
  `shoptbs` varchar(255) NOT NULL DEFAULT '',
  `buystep` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `shoppsmust` tinyint(1) NOT NULL DEFAULT '0',
  `shoppayfsmust` tinyint(1) NOT NULL DEFAULT '0',
  `dddeltime` smallint(5) unsigned NOT NULL DEFAULT '0',
  `cutnumtype` tinyint(1) NOT NULL DEFAULT '0',
  `cutnumtime` int(10) unsigned NOT NULL DEFAULT '0',
  `freepstotal` int(10) unsigned NOT NULL DEFAULT '0',
  `singlenum` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `dayuqixiu_enewsshop_set`
--

INSERT INTO `dayuqixiu_enewsshop_set` (`id`, `shopddgroupid`, `buycarnum`, `havefp`, `fpnum`, `fpname`, `ddmust`, `haveatt`, `shoptbs`, `buystep`, `shoppsmust`, `shoppayfsmust`, `dddeltime`, `cutnumtype`, `cutnumtime`, `freepstotal`, `singlenum`) VALUES
(1, 0, 0, 0, 10, '商品名称\r\n办公用品\r\n日用品', ',truename,mycall,address,', 0, ',shop,', 0, 1, 1, 0, 0, 120, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewssp`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewssp` (
  `spid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `spname` varchar(30) NOT NULL DEFAULT '',
  `varname` varchar(30) NOT NULL DEFAULT '',
  `sppic` varchar(255) NOT NULL DEFAULT '',
  `spsay` varchar(255) NOT NULL DEFAULT '',
  `sptype` tinyint(1) NOT NULL DEFAULT '0',
  `cid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `maxnum` int(11) NOT NULL DEFAULT '0',
  `sptime` int(10) unsigned NOT NULL DEFAULT '0',
  `groupid` text NOT NULL,
  `userclass` text NOT NULL,
  `username` text NOT NULL,
  `isclose` tinyint(1) NOT NULL DEFAULT '0',
  `cladd` tinyint(1) NOT NULL DEFAULT '0',
  `refile` tinyint(1) NOT NULL DEFAULT '0',
  `spfile` varchar(255) NOT NULL DEFAULT '',
  `spfileline` smallint(6) NOT NULL DEFAULT '0',
  `spfilesub` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`spid`),
  UNIQUE KEY `varname` (`varname`),
  KEY `refile` (`refile`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsspacestyle`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsspacestyle` (
  `styleid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `stylename` varchar(30) NOT NULL DEFAULT '',
  `stylepic` varchar(255) NOT NULL DEFAULT '',
  `stylesay` varchar(255) NOT NULL DEFAULT '',
  `stylepath` varchar(30) NOT NULL DEFAULT '0',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `membergroup` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`styleid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `dayuqixiu_enewsspacestyle`
--

INSERT INTO `dayuqixiu_enewsspacestyle` (`styleid`, `stylename`, `stylepic`, `stylesay`, `stylepath`, `isdefault`, `membergroup`) VALUES
(1, '默认个人空间模板', '', '默认个人空间模板', 'default', 1, ',1,2,'),
(2, '默认企业空间模板', '', '默认企业空间模板', 'comdefault', 0, ',3,4,');

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsspclass`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsspclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  `classsay` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewssp_1`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewssp_1` (
  `sid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `spid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(200) NOT NULL DEFAULT '',
  `titlepic` varchar(200) NOT NULL DEFAULT '',
  `bigpic` varchar(200) NOT NULL DEFAULT '',
  `titleurl` varchar(200) NOT NULL DEFAULT '',
  `smalltext` varchar(255) NOT NULL DEFAULT '',
  `titlefont` varchar(20) NOT NULL DEFAULT '',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `titlepre` varchar(30) NOT NULL DEFAULT '',
  `titlenext` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`sid`),
  KEY `spid` (`spid`),
  KEY `newstime` (`newstime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewssp_2`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewssp_2` (
  `sid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `spid` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`sid`),
  KEY `spid` (`spid`),
  KEY `newstime` (`newstime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewssp_3`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewssp_3` (
  `sid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `spid` int(10) unsigned NOT NULL DEFAULT '0',
  `sptext` mediumtext NOT NULL,
  PRIMARY KEY (`sid`),
  UNIQUE KEY `spid` (`spid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewssp_3_bak`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewssp_3_bak` (
  `bid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `spid` int(10) unsigned NOT NULL DEFAULT '0',
  `sptext` mediumtext NOT NULL,
  `lastuser` varchar(30) NOT NULL DEFAULT '',
  `lasttime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bid`),
  KEY `sid` (`sid`),
  KEY `spid` (`spid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewssql`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewssql` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `sqlname` varchar(60) NOT NULL DEFAULT '',
  `sqltext` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewstable`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewstable` (
  `tid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tbname` varchar(60) NOT NULL DEFAULT '',
  `tname` varchar(60) NOT NULL DEFAULT '',
  `tsay` text NOT NULL,
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `datatbs` text NOT NULL,
  `deftb` varchar(6) NOT NULL DEFAULT '',
  `yhid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `mid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `intb` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `dayuqixiu_enewstable`
--

INSERT INTO `dayuqixiu_enewstable` (`tid`, `tbname`, `tname`, `tsay`, `isdefault`, `datatbs`, `deftb`, `yhid`, `mid`, `intb`) VALUES
(1, 'news', '新闻系统数据表', '新闻系统数据表', 1, ',1,', '1', 0, 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewstags`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewstags` (
  `tagid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tagname` char(20) NOT NULL DEFAULT '',
  `num` int(10) unsigned NOT NULL DEFAULT '0',
  `isgood` tinyint(1) NOT NULL DEFAULT '0',
  `cid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tagtitle` char(60) NOT NULL DEFAULT '',
  `tagkey` char(100) NOT NULL DEFAULT '',
  `tagdes` char(255) NOT NULL DEFAULT '',
  `fclast` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`tagid`),
  UNIQUE KEY `tagname` (`tagname`),
  KEY `isgood` (`isgood`),
  KEY `cid` (`cid`),
  KEY `num` (`num`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewstagsclass`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewstagsclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewstagsdata`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewstagsdata` (
  `tid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tagid` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `mid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`tid`),
  KEY `tagid` (`tagid`),
  KEY `classid` (`classid`),
  KEY `id` (`id`),
  KEY `newstime` (`newstime`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewstask`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewstask` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `taskname` varchar(60) NOT NULL DEFAULT '',
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `isopen` tinyint(1) NOT NULL DEFAULT '0',
  `filename` varchar(60) NOT NULL DEFAULT '',
  `lastdo` int(10) unsigned NOT NULL DEFAULT '0',
  `doweek` char(1) NOT NULL DEFAULT '0',
  `doday` char(2) NOT NULL DEFAULT '0',
  `dohour` char(2) NOT NULL DEFAULT '0',
  `dominute` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewstempbak`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewstempbak` (
  `bid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tempname` varchar(60) NOT NULL DEFAULT '',
  `temptext` mediumtext NOT NULL,
  `subnews` smallint(6) NOT NULL DEFAULT '0',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `listvar` text NOT NULL,
  `rownum` smallint(6) NOT NULL DEFAULT '0',
  `modid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `showdate` varchar(50) NOT NULL DEFAULT '',
  `subtitle` smallint(6) NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `docode` tinyint(1) NOT NULL DEFAULT '0',
  `baktime` int(10) unsigned NOT NULL DEFAULT '0',
  `temptype` varchar(30) NOT NULL DEFAULT '',
  `gid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `lastuser` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`bid`),
  KEY `tempid` (`tempid`),
  KEY `temptype` (`temptype`),
  KEY `gid` (`gid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=39 ;

--
-- 转存表中的数据 `dayuqixiu_enewstempbak`
--

INSERT INTO `dayuqixiu_enewstempbak` (`bid`, `tempid`, `tempname`, `temptext`, `subnews`, `isdefault`, `listvar`, `rownum`, `modid`, `showdate`, `subtitle`, `classid`, `docode`, `baktime`, `temptype`, `gid`, `lastuser`) VALUES
(17, 1, 'header', '<!-- 导航 -->\r\n<div class=\\"nav_xiala_xx\\" id=\\"fixedNav\\">\r\n	<div class=\\"w1200\\">\r\n    	<h1><a href=\\"/\\"><img src=\\"/style/images/1a30b08e9700543c8038b9067eccb79c@248X54.png\\" alt=\\"达宇天然气汽车改装厂\\" class=\\"logo\\" /></a></h1>\r\n        <div class=\\"search\\">\r\n        	<input class=\\"input\\" type=\\"text\\" value=\\"输入搜索内容...\\" onFocus=\\"value=\\''\\''\\" onBlur=\\"if(!value)value=defaultValue\\" id=\\"keywords\\" name=\\"keywords\\">\r\n        	<button class=\\"button\\" onClick=\\"wjdh.methods.search(\\''#keywords\\'');\\"></button>\r\n        </div>\r\n		<ul class=\\"nav_yiji\\">\r\n			\r\n			<li class=\\"active\\">\r\n			  \r\n			  <a href=\\"/\\" class=\\"one\\" title=\\"网站首页\\">达宇首页</a></li>\r\n			\r\n			<li>\r\n			  \r\n			  <a href=\\"/fwfw/cngqcgz/\\"  title=\\"CNG汽车改装\\"  class=\\"one\\" >CNG汽车改装</a>\r\n			  \r\n			</li>\r\n			\r\n			<li>\r\n			  \r\n			  <a href=\\"/fwfw/\\"  title=\\"业务中心\\"  class=\\"one\\" >服务范围</a>\r\n			  \r\n			  <div class=\\"nav_erji\\">\r\n				<div class=\\"jz\\">\r\n				  <div class=\\"hd\\">\r\n					<ul>\r\n					  <!-- 注意：这里的li数量和下面class=\\''main\\''的数量要一样 -->\r\n					  \r\n					  <li class=\\"on\\"><a href=\\"/fwfw/cngqcgz/\\" title=\\"CNG汽车改装\\">CNG汽车改装</a></li>\r\n					  \r\n					  <li><a href=\\"/fwfw/qgyfw/\\" title=\\"油改气服务\\">油改气服务</a></li>\r\n					  \r\n					  <li><a href=\\"/fwfw/cngwx/\\" title=\\"CNG维修\\">CNG维修</a></li>\r\n					  \r\n					</ul>\r\n				  </div>\r\n				  <div class=\\"bd\\">\r\n					\r\n					<div class=\\"main\\">\r\n					  <ul>\r\n						 [e:loop={5,5,0,1}]\r\n						<li> <a href=\\"<?=$bqsr[\\''titleurl\\'']?>\\" class=\\"img\\"><img src=\\"<?=$bqr[\\''titlepic\\'']?>\\" alt=\\"<?=$bqr[\\''title\\'']?>\\" /></a> <a href=\\"<?=$bqsr[\\''titleurl\\'']?>\\" class=\\"name\\"><?=$bqr[\\''title\\'']?></a> </li>\r\n						\r\n                       \r\n\r\n[/e:loop]\r\n					  </ul>\r\n					</div>\r\n					\r\n					<div class=\\"main\\">\r\n					  <ul>\r\n						[e:loop={6,5,0,1}]\r\n						\r\n						<li> <a href=\\"<?=$bqsr[\\''titleurl\\'']?>\\" class=\\"img\\"><img src=\\"<?=$bqr[\\''titlepic\\'']?>\\" alt=\\"<?=$bqr[\\''title\\'']?>\\" /></a> <a href=\\"<?=$bqsr[\\''titleurl\\'']?>\\" class=\\"name\\"><?=$bqr[\\''title\\'']?></a> </li>\r\n[/e:loop]\r\n\r\n						\r\n					  </ul>\r\n					</div>\r\n					\r\n					<div class=\\"main\\">\r\n					  <ul>\r\n						[e:loop={7,1,0,1}]\r\n						<li> <a href=\\"<?=$bqsr[\\''titleurl\\'']?>\\" class=\\"img\\"><img src=\\"<?=$bqr[\\''titlepic\\'']?>\\" alt=\\"<?=$bqr[\\''title\\'']?>\\" /></a> <a href=\\"/fwfw/cngwx/\\" class=\\"name\\"><?=$bqr[\\''title\\'']?></a> </li>\r\n						\r\n\r\n[/e:loop]\r\n					  </ul>\r\n					</div>\r\n					\r\n				  </div>\r\n				</div>\r\n			  </div>\r\n			  \r\n			</li>\r\n			\r\n			<li>\r\n			  \r\n			  <a href=\\"/gssl/cgal/\\"  title=\\"改装案例\\"  class=\\"one\\" >改装案例</a>\r\n			  \r\n			</li>\r\n			\r\n			<li>\r\n			  \r\n			  <a href=\\"/gywm/gsjj/\\"  title=\\"公司简介\\"  class=\\"one\\" >公司简介</a>\r\n			  \r\n			</li>\r\n			\r\n			<li>\r\n			  \r\n			  <a href=\\"/xwzx/\\"  title=\\"新闻资讯\\"  class=\\"one\\" >新闻资讯</a>\r\n			  \r\n			  <div class=\\"nav_erji\\">\r\n				<div class=\\"jz\\">\r\n				  <div class=\\"hd\\">\r\n					<ul>\r\n					  <!-- 注意：这里的li数量和下面class=\\''main\\''的数量要一样 -->\r\n					  \r\n					  <li class=\\"on\\"><a href=\\"/xwzx/gsxw/\\" title=\\"公司新闻\\">公司新闻</a></li>\r\n					  \r\n					  <li><a href=\\"/xwzx/hyxw/\\" title=\\"行业新闻\\">行业新闻</a></li>\r\n					  \r\n					</ul>\r\n				  </div>\r\n				  <div class=\\"bd\\">\r\n					\r\n					<div class=\\"main\\">\r\n                    			[e:loop={9,6,0,0}]\r\n\r\n\r\n					  <a href=\\"<?=$bqsr[\\''titleurl\\'']?>\\" class=\\"xw\\"> <span class=\\"title\\"><?=$bqr[\\''title\\'']?></span> <span class=\\"desc\\"><?=$bqr[smalltext]?></span> </a>\r\n\r\n			[/e:loop]\r\n					  \r\n\r\n					  \r\n\r\n					  \r\n					</div>\r\n					\r\n					<div class=\\"main\\">\r\n					  \r\n					  <a href=\\"/fwfw/ygqfw/\\" class=\\"xw\\"> <span class=\\"title\\">达州油改气有何优点，来看看吧</span> <span class=\\"desc\\">今年来的油价上涨的让人猝不及防，对于刚买新车或者资金不是很宽裕的车主，面对不断上涨的油价，苦不堪言，因此，达州油改气，变成了许多车主的不二选择。（1）达州油改气有较高的经济效益。在相同的当量热值下，世界各国一般将lm天然气的价格控制为1L，在发动机热效率相同的条件下，单用天然气作为燃料的汽车的燃料费用大约是汽油车或柴油...</span> </a>\r\n					  \r\n					  <a href=\\"/fwfw/ygqfw/\\" class=\\"xw\\"> <span class=\\"title\\">亲们你们有没有注意，探索逐步放开“达州油改气”限制啦！</span> <span class=\\"desc\\">达州市 燃气协会会长：“主张政府部门赶快取消对车辆的约束性‘达州油改气’方针，取消CNG车辆改装目标约束，简化改装车辆手续，调整改装车辆年限规则，实在提高CNG在车用燃料中所占份额”市经信委 相关负责...</span> </a>\r\n					  \r\n					  <a href=\\"/fwfw/cngqcgz/\\" class=\\"xw\\"> <span class=\\"title\\">浅析达州CNG改装汽车5大重点</span> <span class=\\"desc\\">达宇小编深度浅析达州CNG改装汽车5大重点之一排放功能：天然气作为一种气体燃料，与空气混合更均匀，焚烧愈加充沛，排放的CO 、HC等有害物质更少；其他一些没有受排放法规控制的有害成分（如对区域环境影响...</span> </a>\r\n					  \r\n					  <a href=\\"/fwfw/qcgz/\\" class=\\"xw\\"> <span class=\\"title\\">浅析汽车天然气改装的市场现状和发展前景</span> <span class=\\"desc\\">我司致力于汽车天然气改装和维修，今天给大家分享汽车天然气改装的市场现状和未来发展方向，感兴趣的小伙伴一起来了解下吧。天然气改装因其环保经济的优点，受到大众的广泛关注，并且很多类似的企业也突然发展起来。...</span> </a>\r\n					  \r\n					  <a href=\\"/fwfw/qcby/\\" class=\\"xw\\"> <span class=\\"title\\">注意啦！汽车油改气后对发动机的保养可不能忽略</span> <span class=\\"desc\\">汽车油改气后我们应该注意哪些事项，小编告诉你，对于发动机的保养是重中之重，不能忽略，下面跟对小编一起来了解下保养发动机的要点吧！汽车油改气后基本以使用天然气为主，所以发动机都是偏向天然气的使用特点进行...</span> </a>\r\n					  \r\n					  <a href=\\"/fwfw/qcwx/\\" class=\\"xw\\"> <span class=\\"title\\">知道吗？定期清洁改装天然气汽车节气门很重要</span> <span class=\\"desc\\">改装天然气汽车后我们应做好定期清洁汽车节气门，这是为什么呢？清洁有什么作用？我们先要了解什么是节气门？节气门也就是调节发动机进气量的阀门，调节它的机构就在你的右脚下——油门。油门踩下去越深节气门开启度...</span> </a>\r\n					  \r\n					</div>\r\n					\r\n				  </div>\r\n				</div>\r\n\r\n			  </div>\r\n			  \r\n			</li>\r\n			\r\n			<li>\r\n			  \r\n			  <a href=\\"/gywm/lxwm/\\"  title=\\"联系我们\\"  class=\\"one\\" >联系我们</a>\r\n			  \r\n			</li>\r\n			\r\n		</ul>\r\n	</div>\r\n</div>', 1, 0, '页面头部', 0, 0, '', 0, 0, 0, 1615886799, 'tempvar', 1, 'admin'),
(20, 1, '', '<!DOCTYPE html>\r\n<html>\r\n\r\n<head>\r\n	<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n	<meta http-equiv=\\"X-UA-Compatible\\" content=\\"IE=edge\\">\r\n	<title>达宇天然气汽车改装厂</title>\r\n	<meta name=\\"keywords\\" content=\\"达州CNG改装,达州油改气,达州CNG汽车改装,达州CNG维修,油改气,CNG改装,达州油改气厂家\\" />\r\n	<meta name=\\"description\\"\r\n		content=\\"达州油改气厂家推荐达宇天然气汽车改装厂主要从事达州CNG汽车改装/达州CNG改装维修和达州油改气等业务,可为您提供不同车型汽车的改装维修以及配件销售等服务以及周到的售后服务,欢迎新老客户来电咨询.\\" />\r\n	<meta name=\\"viewport\\" content=\\"width=device-width, initial-scale=1\\">\r\n	<meta name=\\"Copyright\\" content=\\"All Rights Reserved btoe.cn\\" />\r\n	<link rel=\\"stylesheet\\" type=\\"text/css\\" media=\\"screen\\" href=\\"/style/css/in.css\\" />\r\n	<link rel=\\"stylesheet\\" type=\\"text/css\\" media=\\"screen\\" href=\\"/style/css/css.css\\" />\r\n	<link rel=\\"stylesheet\\" type=\\"text/css\\" media=\\"screen\\" href=\\"/style/css/swiper.min.css\\" />\r\n	<link rel=\\"stylesheet\\" type=\\"text/css\\" media=\\"screen\\" href=\\"/style/css/animate.min.css\\" />\r\n	<script src=\\"/style/js/jquery.min.js\\"></script>\r\n	<script src=\\"/style/js/swiper.min.js\\"></script>\r\n	<script src=\\"/style/js/threebanner.js\\"></script>\r\n	<script src=\\"/style/js/jquery.SuperSlide.2.1.3.js\\"></script>\r\n\r\n\r\n</head>\r\n\r\n<body>\r\n\r\n	<!--请在body内进行编辑代码-->\r\n\r\n	<!-- 顶部 -->\r\n	<div class=\\"topxunpan\\">\r\n		<div class=\\"center\\">\r\n			<p>\r\n				<span>TEL：<i>19983727888</i></span>\r\n				<span>TEL：<i>13458195618（微信同号）</i></span>\r\n				<span>E-MAIL：<i>123456@qq.com</i></span>\r\n			</p>\r\n			<div class=\\"thisxp\\">\r\n				<div class=\\"xp\\" id=\\"xunpanText\\" data-tiptitle=\\"请您登录网站后台查看！\\">\r\n					<img src=\\"/style/images/t_icon_05.png\\" alt=\\"询盘信息\\">\r\n					您暂无未读询盘信息!\r\n					<div id=\\"xunpantip\\"></div>\r\n				</div>\r\n			</div>\r\n			<p><a href=\\"#wjdh-message\\" title=\\"在线留言\\">在线留言</a></p>\r\n		</div>\r\n	</div>\r\n\r\n	[!--temp.header--]\r\n\r\n	<!-- 轮播图 -->\r\n	<div class=\\"pics_wrap\\">\r\n		<div class=\\"html5zoo-1\\">\r\n			<ul class=\\"html5zoo-slides\\">\r\n\r\n				<li><a href=\\"products/\\" title=\\"达州CNG汽车改装\\"><img\r\n							src=\\"/style/images/300523f269ce45df707e494f5f88a636@1920X750.jpg\\" alt=\\"达州CNG汽车改装\\"></a></li>\r\n\r\n				<li><a href=\\"p1/\\" title=\\"达州油改气\\"><img src=\\"/style/images/54782fd3e5e11bdcce8d9a5408cb719c@1920X750.jpg\\"\r\n							alt=\\"达州油改气\\"></a></li>\r\n\r\n				<li><a href=\\"p2/\\" title=\\"达州CNG改装\\"><img src=\\"/style/images/015d1986fda122ed25eb4aef55973605@1920X750.jpg\\"\r\n							alt=\\"达州CNG改装\\"></a></li>\r\n\r\n			</ul>\r\n		</div>\r\n	</div>\r\n\r\n	<!-- 业务中心 -->\r\n	<div class=\\"box_01\\">\r\n		<div class=\\"center\\">\r\n			<div class=\\"h_bt\\">\r\n				<p>business</p>\r\n				<h3><a href=\\"/products/\\" title=\\"业务中心\\">业务中心</a></h3>\r\n			</div>\r\n			<ul class=\\"pro_list\\">\r\n\r\n				<li><a href=\\"/p2/\\" title=\\"CNG汽车改装\\">CNG汽车改装</a></li>\r\n\r\n				<li><a href=\\"/p1/\\" title=\\"油改气服务\\">油改气服务</a></li>\r\n\r\n			</ul>\r\n			<div class=\\"swiper-container pro_center\\">\r\n				<div class=\\"swiper-wrapper\\">\r\n\r\n					<div class=\\"swiper-slide\\">\r\n						<div class=\\"txt\\">\r\n							<i></i>\r\n							<a href=\\"/fwfw/cngqcgz/\\" class=\\"name\\">CNG汽车改装</a>\r\n							<span>CNG car modification</span>\r\n							<p>达宇天然气汽车改装厂可为为您提供达州CNG改装/达州CNG汽车改装维修等相关服务,我们拥有专业的改装技术团队,详细信息欢迎来电咨询.</p>\r\n							<a href=\\"/fwfw/cngqcgz/\\" class=\\"more\\"></a>\r\n						</div>\r\n						<div class=\\"img\\"><img src=\\"/style/images/ad9353002bdda1ee93982e586f73f144@720X450.jpg\\"\r\n								alt=\\"CNG汽车改装\\" /></div>\r\n					</div>\r\n\r\n					<div class=\\"swiper-slide\\">\r\n						<div class=\\"txt\\">\r\n							<i></i>\r\n							<a href=\\"/fwfw/ygqfw/\\" class=\\"name\\">油改气服务</a>\r\n							<span>Changing automobile oil to gas</span>\r\n							<p>汽车油改气（Car oil to\r\n								gas）是对机动车改变燃料种类的一种改装方式。是指把原先使用燃油的通过改装成烧天然气的一个过程。汽车油改气的优点有：经济效益较高，社会效益好...</p>\r\n							<a href=\\"/fwfw/ygqfw/\\" class=\\"more\\"></a>\r\n						</div>\r\n						<div class=\\"img\\"><img src=\\"/style/images/4dfa6eb2417406041693b481ae42835b@720X450.jpg\\"\r\n								alt=\\"油改气服务\\" /></div>\r\n					</div>\r\n\r\n				</div>\r\n				<!-- 按钮 -->\r\n				<div class=\\"arrow\\">\r\n					<div class=\\"swiper-button-next\\"></div>\r\n					<div class=\\"swiper-button-prev\\"></div>\r\n				</div>\r\n			</div>\r\n		</div>\r\n	</div>\r\n\r\n	<!-- 改装案例 -->\r\n	<div class=\\"box_02\\">\r\n		<div class=\\"h_title\\">\r\n			<p>cases</p>\r\n			<h3>改装案例</h3>\r\n		</div>\r\n		<ul class=\\"case_list\\">\r\n			[e:loop={11,6,0,1}]\r\n\r\n			<li>\r\n				<a href=\\"<?=$bqsr[\\''titleurl\\'']?>\\" class=\\"img\\"><img src=\\"<?=$bqr[\\''titlepic\\'']?>\\"\r\n						alt=\\"<?=$bqr[\\''title\\'']?>\\" /></a>\r\n				<div class=\\"txt\\">\r\n					<a href=\\"/case/882834.html\\" class=\\"name\\"><?=$bqr[\\''title\\'']?></a>\r\n					<p>满意度：<span>十分满意</span></p>\r\n				</div>\r\n			</li>\r\n			[/e:loop]\r\n\r\n\r\n\r\n\r\n\r\n		</ul>\r\n		<div class=\\"gd\\"><a class=\\"doudong02\\" href=\\"/case/\\" title=\\"More\\">More cases</a></div>\r\n	</div>\r\n\r\n	<!-- 企业优势 -->\r\n	<div class=\\"box_03\\">\r\n		<div class=\\"h_title\\">\r\n			<p>advantage</p>\r\n			<h3>选择我们的理由</h3>\r\n		</div>\r\n		<ul class=\\"ys\\">\r\n			<li>\r\n				<i></i>\r\n				<h4>企业实力</h4>\r\n				<p>达宇天然气汽车改装厂成立于2007年9月3日，位于四川省达州市高新区斌朗乡木瓜村源金汽车城内。现公司拥有各类技术人员，施工人员二十余人，办公面积近2000平方米，是一家集生产制造、产品设计、销售、安装、售后服务于一体的CNG汽车改装有限公司。\r\n				</p>\r\n				<a href=\\"http://wpa.qq.com/msgrd?v=3&site=qq&menu=yes&uin=123456\\" title=\\"点击咨询\\" target=\\"_blank\\"></a>\r\n			</li>\r\n			<li class=\\"active\\">\r\n				<i></i>\r\n				<h4>经验丰富</h4>\r\n				<p>经过多年实践经验总结，达宇为您提供性能成熟的油改气所需的配套产品，所有产品都经过严格的可靠稳定性测试验证，并通过多年实际市场验证，质量有保证。</p>\r\n				<a href=\\"http://wpa.qq.com/msgrd?v=3&site=qq&menu=yes&uin=123456\\" title=\\"点击咨询\\" target=\\"_blank\\"></a>\r\n			</li>\r\n			<li>\r\n				<i></i>\r\n				<h4>专业团队</h4>\r\n				<p>达宇天然气汽车改装厂专业从事汽车油改气及气瓶检测的综合企业之一，行业经验丰富，由经验丰富的技术工程师组成的改装团队，致力于为车主提供更好的油改气服务。</p>\r\n				<a href=\\"http://wpa.qq.com/msgrd?v=3&site=qq&menu=yes&uin=123456\\" title=\\"点击咨询\\" target=\\"_blank\\"></a>\r\n			</li>\r\n			<li>\r\n				<i></i>\r\n				<h4>售后无忧</h4>\r\n				<p>公司所有服务自合同签订之日起(以实际日期为准)，服务因质量问题，客户可以7日内，您可以选择协商。服务出现问题，请与我们售后客服专员联系，由售后客服人员进行全程跟踪服务。</p>\r\n				<a href=\\"http://wpa.qq.com/msgrd?v=3&site=qq&menu=yes&uin=123456\\" title=\\"点击咨询\\" target=\\"_blank\\"></a>\r\n			</li>\r\n		</ul>\r\n	</div>\r\n\r\n	<!-- 热门资讯 -->\r\n	<div class=\\"box_04\\">\r\n		<div class=\\"h_title\\">\r\n			<p>Hot news</p>\r\n			<h3><a href=\\"/question/\\" title=\\"热门资讯\\">热门资讯</a></h3>\r\n		</div>\r\n		<ul class=\\"top\\">\r\n			[e:loop={9,6,0,0}]\r\n\r\n			<li>\r\n				<div class=\\"date\\">\r\n					<p><?=date(\\''Y\\'')?></p>\r\n					<p><?=date(\\''m-d\\'')?></p>\r\n				</div>\r\n				<div class=\\"txt\\">\r\n					<a href=\\"<?=$bqsr[\\''titleurl\\'']?>\\" title=\\"<?=$bqr[\\''title\\'']?>\\"><?=$bqr[\\''title\\'']?></a>\r\n					<p><?=$bqr[smalltext]?>\r\n					</p>\r\n					<span></span>\r\n				</div>\r\n			</li>\r\n\r\n\r\n			[/e:loop]\r\n\r\n\r\n		</ul>\r\n		<div class=\\"gd\\"><a class=\\"doudong02\\" href=\\"/question/\\" title=\\"More\\">More cases</a></div>\r\n	</div>\r\n\r\n	<!-- 关于我们 -->\r\n	<div class=\\"box_05\\">\r\n		<div class=\\"top\\">\r\n			<div class=\\"left\\">\r\n				<h4>ABOUT</h4>\r\n				<p>达宇</p>\r\n				<h5>多年专注于CNG汽车改装</h5>\r\n				<span>Focus on CNG vehicle modification for many years</span>\r\n			</div>\r\n			<div class=\\"right\\">\r\n				<h4>达宇天然气汽车改装厂</h4>\r\n				<p>达宇天然气汽车改装厂成立于2007年9月3日，位于四川省达州市高新区斌朗乡木瓜村源金汽车城内，注册资金50万人民币。现公司拥有各类技术人员，施工人员二十余人，办公面积近两百平方米，是一家集生产制造、产品设计、销售、安装、售后服务于一体的CNG汽车改装有限公司。公司自成立以来，主要从事汽车油改气、CNG汽车改装、CNG汽车维修，CNG配件销售等汽车改装业务。多年来我司改装CNG汽车几千辆，未发生过CNG汽车改装质量问题。一直坚持…\r\n				</p>\r\n				<a href=\\"/aboutus/\\" title=\\"详情\\"></a>\r\n			</div>\r\n		</div>\r\n		<div class=\\"bottom\\">\r\n			<!--\r\n        	注释：设计说这里调用五张厂区展示的图片！！！\r\n        -->\r\n			<div id=\\"case_01\\" class=\\"swiper-container case_01\\">\r\n				<div class=\\"swiper-wrapper\\">\r\n\r\n					<div class=\\"swiper-slide\\"><a href=\\"/album/882350.html\\" class=\\"img\\"><img\r\n								src=\\"/style/images/0992f313e12c511b8875aa6f519c7d8d.jpg\\" alt=\\"企业相册（一）\\" /></a></div>\r\n\r\n					<div class=\\"swiper-slide\\"><a href=\\"/album/882349.html\\" class=\\"img\\"><img\r\n								src=\\"/style/images/0ddfb5afa1d13b194b58ba6efeb2d979.jpg\\" alt=\\"企业相册（二）\\" /></a></div>\r\n\r\n					<div class=\\"swiper-slide\\"><a href=\\"/album/882348.html\\" class=\\"img\\"><img\r\n								src=\\"/style/images/bf96dbbf15482d96c419375ef7a183fe.jpg\\" alt=\\"企业相册（三）\\" /></a></div>\r\n\r\n					<div class=\\"swiper-slide\\"><a href=\\"/album/882347.html\\" class=\\"img\\"><img\r\n								src=\\"/style/images/ab7fd887c1f5ba8936148e912b1bcee9.jpg\\" alt=\\"企业相册（四）\\" /></a></div>\r\n\r\n				</div>\r\n				<div class=\\"swiper-pagination\\"></div>\r\n			</div>\r\n			<div class=\\"yyzz\\"><img src=\\"/style/images/yyzz.png\\" alt=\\"营业执照\\" /></div><!-- 这个不调用 -->\r\n		</div>\r\n	</div>\r\n\r\n	<!-- 新闻资讯 -->\r\n	<div class=\\"box_06\\">\r\n		<div class=\\"h_title\\">\r\n			<p>News</p>\r\n			<h3><a href=\\"/news/\\" title=\\"新闻资讯\\">新闻资讯</a></h3>\r\n		</div>\r\n		<div class=\\"news_center\\">\r\n			<div class=\\"hd\\">\r\n				<ul>\r\n					<li class=\\"on\\"><a href=\\"/meitibaodao/\\" title=\\"公司新闻\\">公司新闻</a></li>\r\n					<li><a href=\\"/yyxw/\\" title=\\"行业新闻\\">行业新闻</a></li>\r\n				</ul>\r\n			</div>\r\n			<div class=\\"bd\\">\r\n				<!-- 1 -->\r\n				<div class=\\"main\\">\r\n					<div class=\\"left\\">\r\n						[e:loop={8,1,0,1}]\r\n\r\n						<a href=\\"<?=$bqsr[\\''titleurl\\'']?>\\" class=\\"img\\"><img\r\n								src=\\"<?=$bqr[\\''titlepic\\'']?>\\" alt=\\"<?=$bqr[\\''title\\'']?>\\" /></a>\r\n						<div class=\\"date\\"><?=date(\\''Y-m-d\\'',$bqr[newstime])?></div>\r\n						<div class=\\"txt\\">\r\n							<a href=\\"<?=$bqsr[\\''titleurl\\'']?>\\" class=\\"name\\"><?=$bqr[\\''title\\'']?></a>\r\n							<p><?=$bqr[smalltext]?>\r\n							</p>\r\n						</div>\r\n[/e:loop]\r\n\r\n					</div>\r\n					<ul class=\\"right\\">\r\n\r\n						[e:loop={8,3,0,0}]\r\n\r\n						<li>\r\n							<div class=\\"date\\">\r\n								<p><?=date(\\''d\\'',$bqr[newstime])?></p>\r\n								<p><?=date(\\''Y-m\\'',$bqr[newstime])?></p>\r\n							</div>\r\n							<div class=\\"txt\\">\r\n								<a href=\\"<?=$bqsr[\\''titleurl\\'']?>\\" title=\\"<?=$bqr[\\''title\\'']?>\\"><?=$bqr[\\''title\\'']?></a>\r\n								<p><?=$bqr[smalltext]?>\r\n								</p>\r\n							</div>\r\n						</li>\r\n						[/e:loop]\r\n\r\n\r\n\r\n\r\n					</ul>\r\n				</div>\r\n				<!-- 2 -->\r\n				<div class=\\"main\\">\r\n					<div class=\\"left\\">\r\n						[e:loop={9,1,0,1}]\r\n						<a href=\\"<?=$bqsr[\\''titleurl\\'']?>\\" class=\\"img\\"><img\r\n								src=\\"<?=$bqr[\\''titlepic\\'']?>\\" alt=\\"<?=$bqr[\\''title\\'']?>\\" /></a>\r\n						<div class=\\"date\\"><?=date(\\''Y-m-d\\'',$bqr[newstime])?></div>\r\n						<div class=\\"txt\\">\r\n							<a href=\\"<?=$bqsr[\\''titleurl\\'']?>\\" class=\\"name\\"><?=$bqr[\\''title\\'']?></a>\r\n							<p><?=$bqr[smalltext]?>\r\n							</p>\r\n						</div>\r\n						[/e:loop]\r\n\r\n\r\n					</div>\r\n					<ul class=\\"right\\">\r\n						[e:loop={9,1,0,1}]\r\n\r\n						<li>\r\n							<div class=\\"date\\">\r\n								<p><?=date(\\''d\\'',$bqr[newstime])?></p>\r\n								<p><?=date(\\''Y-m\\'',$bqr[newstime])?></p>\r\n							</div>\r\n							<div class=\\"txt\\">\r\n								<a href=\\"<?=$bqsr[\\''titleurl\\'']?>\\" title=\\"<?=$bqr[\\''title\\'']?>\\"><?=$bqr[\\''title\\'']?></a>\r\n								<p><?=$bqr[smalltext]?>\r\n								</p>\r\n							</div>\r\n						</li>\r\n\r\n						[/e:loop]\r\n\r\n\r\n					</ul>\r\n				</div>\r\n			</div>\r\n		</div>\r\n	</div>\r\n\r\n	<!-- 在线留言 -->\r\n	<div class=\\"box_07\\">\r\n		<div class=\\"form\\">\r\n			<p><input id=\\"userName\\" type=\\"\\" name=\\"name\\" class=\\"name\\" value=\\"姓名：\\" onFocus=\\"value=\\''\\''\\"\r\n					onBlur=\\"if(!value)value=defaultValue\\"></p>\r\n			<p><input id=\\"userPhone\\" type=\\"\\" name=\\"tel\\" class=\\"tel\\" value=\\"电话：\\" onFocus=\\"value=\\''\\''\\"\r\n					onBlur=\\"if(!value)value=defaultValue\\"></p>\r\n			<p><input id=\\"e-mails\\" type=\\"\\" name=\\"e-mails\\" class=\\"e-mails\\" value=\\"邮箱：\\" onFocus=\\"value=\\''\\''\\"\r\n					onBlur=\\"if(!value)value=defaultValue\\"></p>\r\n			<p><textarea id=\\"content\\" class=\\"textarea\\"\r\n					onBlur=\\"if(this.innerHTML==\\''\\''){this.innerHTML=\\''留言：\\'';this.style.color=\\''#fff;\\''}\\" style=\\"color:#fff;\\"\r\n					onFocus=\\"if(this.innerHTML==\\''留言：\\''){this.innerHTML=\\''\\'';this.style.color=\\''#fff;\\''}\\">留言：</textarea></p>\r\n			<p>\r\n				<input id=\\"codeText\\" type=\\"txt\\" name=\\"\\" class=\\"codeText\\" value=\\"验证码：\\" onFocus=\\"value=\\''\\''\\"\r\n					onBlur=\\"if(!value)value=defaultValue\\">\r\n				<img src=\\"/api/message.ashx?action=code\\" id=\\"imgCode\\" class=\\"imgCode\\">\r\n			</p>\r\n			<div class=\\"tj\\"><button id=\\"btn\\" class=\\"btn\\">提交</button></div>\r\n		</div>\r\n		<div class=\\"links\\">\r\n\r\n			<a href=\\"http://www.cdleiling.com\\" target=\\"_blank\\" title=\\"达州高层吊装\\">达州高层吊装</a>\r\n\r\n			<a href=\\"http://www.yfcng.com\\" target=\\"_blank\\" title=\\"达州油改气\\">达州油改气</a>\r\n\r\n			<a href=\\"http://www.yfcng.com\\" target=\\"_blank\\" title=\\"达州CNG改装\\">达州CNG改装</a>\r\n\r\n		</div>\r\n	</div>\r\n\r\n	<script src=\\"/style/js/index.js\\"></script>\r\n\r\n	<!-- 底部信息  -->\r\n	<div class=\\"footer\\">\r\n		<div class=\\"center\\">\r\n			<ul class=\\"left\\">\r\n				<li>\r\n					<p>服务范围</p>\r\n\r\n					<a href=\\"/fwfw/cngqcgz/\\" title=\\"CNG汽车改装\\">CNG汽车改装</a>\r\n\r\n					<a href=\\"/fwfw/ygqfw/\\" title=\\"油改气服务\\">油改气服务</a>\r\n\r\n					<a href=\\"/fwfw/cngwx/\\" title=\\"CNG维修\\">CNG维修</a>\r\n\r\n				</li>\r\n				<li>\r\n					<p>新闻中心</p>\r\n\r\n					<a href=\\"/xwzx/gsxw/\\" title=\\"公司新闻\\">公司新闻</a>\r\n\r\n					<a href=\\"/xwzx/hydt/\\" title=\\"行业动态\\">行业动态</a>\r\n					<a href=\\"/xwzx/cjwt/\\" title=\\"常见问题\\">常见问题</a>\r\n\r\n				</li>\r\n				<li>\r\n					<p>公司实力</p>\r\n\r\n					<a href=\\"/gssl/cgal/\\" title=\\"成功案例\\">成功案例</a>\r\n\r\n					<a href=\\"/gssl/ryzz/\\" title=\\"荣誉资质\\">荣誉资质</a>\r\n\r\n					<a href=\\"/gssl/khpj/\\" title=\\"客户评价\\">客户评价</a>\r\n\r\n					<a href=\\"/gssl/gsly/\\" title=\\"公司掠影\\">公司掠影</a>\r\n\r\n				</li>\r\n				<li>\r\n					<p>关于我们</p>\r\n\r\n					<a href=\\"/gywm/gsjj/\\" title=\\"公司简介\\">公司简介</a>\r\n\r\n					<a href=\\"/gywm/qywh/\\" title=\\"企业文化\\">企业文化</a>\r\n\r\n					<a href=\\"/gywm/zzjg/\\" title=\\"组织架构\\">组织架构</a>\r\n					<a href=\\"/gywm/lxwm/\\" title=\\"联系我们\\">联系我们</a>\r\n\r\n				</li>\r\n			</ul>\r\n			<div class=\\"mid\\">\r\n				<h4>联系我们</h4>\r\n				<p>电话：<span>19983727888</span></p>\r\n				<p>座机：<span>123456</span></p>\r\n				<p>邮箱：<span>123456@qq.com</span></p>\r\n				<p>地址：<span>达州市高新区斌朗乡木瓜村源金汽车城内</span></p>\r\n			</div>\r\n			<div class=\\"right\\">\r\n				<h4>二维码</h4>\r\n				<img src=\\"/style/images/8bfaee0be5ecfcfd7c50baba32667e83@260X260.png\\" alt=\\"扫一扫\\" />\r\n			</div>\r\n		</div>\r\n		<div class=\\"copy\\">\r\n			<p>\r\n				<span>Copyright © 达宇天然气汽车改装厂 版权所有</span>\r\n				<span>备案号： 蜀ICP备16023211号-2<a href=\\"http://beian.miit.gov.cn\\" target=\\"_blank\\" title=\\"  \\" rel=\\"nofollow\\">\r\n					</a></span>\r\n			</p>\r\n\r\n			<p>\r\n				<span><a href=\\"/sitemap.html\\" title=\\"网站地图\\">网站地图</a> <a href=\\"/rss.xml\\" title=\\"RSS\\">RSS</a> <a\r\n						href=\\"/sitemap.xml\\" title=\\"XML\\">XML</a></span>\r\n\r\n				<span>技术支持：舜王科技 </span>\r\n\r\n			</p>\r\n		</div>\r\n	</div>\r\n\r\n	<!--全局使用js，请放于footer-->\r\n	<script src=\\"/style/js/nav.js\\"></script>\r\n\r\n\r\n	<script src=\\"/style/js/base.js\\" type=\\"text/javascript\\" charset=\\"utf-8\\"></script>\r\n\r\n</body>\r\n\r\n</html>', 0, 0, '', 0, 0, '', 0, 0, 0, 1615888068, 'pubindextemp', 1, 'admin'),
(21, 1, '', '<!DOCTYPE html>\r\n<html>\r\n\r\n<head>\r\n	<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n	<meta http-equiv=\\"X-UA-Compatible\\" content=\\"IE=edge\\">\r\n	<title>达宇天然气汽车改装厂</title>\r\n	<meta name=\\"keywords\\" content=\\"达州CNG改装,达州油改气,达州CNG汽车改装,达州CNG维修,油改气,CNG改装,达州油改气厂家\\" />\r\n	<meta name=\\"description\\"\r\n		content=\\"达州油改气厂家推荐达宇天然气汽车改装厂主要从事达州CNG汽车改装/达州CNG改装维修和达州油改气等业务,可为您提供不同车型汽车的改装维修以及配件销售等服务以及周到的售后服务,欢迎新老客户来电咨询.\\" />\r\n	<meta name=\\"viewport\\" content=\\"width=device-width, initial-scale=1\\">\r\n	<meta name=\\"Copyright\\" content=\\"All Rights Reserved btoe.cn\\" />\r\n	<link rel=\\"stylesheet\\" type=\\"text/css\\" media=\\"screen\\" href=\\"/style/css/in.css\\" />\r\n	<link rel=\\"stylesheet\\" type=\\"text/css\\" media=\\"screen\\" href=\\"/style/css/css.css\\" />\r\n	<link rel=\\"stylesheet\\" type=\\"text/css\\" media=\\"screen\\" href=\\"/style/css/swiper.min.css\\" />\r\n	<link rel=\\"stylesheet\\" type=\\"text/css\\" media=\\"screen\\" href=\\"/style/css/animate.min.css\\" />\r\n	<script src=\\"/style/js/jquery.min.js\\"></script>\r\n	<script src=\\"/style/js/swiper.min.js\\"></script>\r\n	<script src=\\"/style/js/threebanner.js\\"></script>\r\n	<script src=\\"/style/js/jquery.SuperSlide.2.1.3.js\\"></script>\r\n\r\n\r\n</head>\r\n\r\n<body>\r\n\r\n	<!--请在body内进行编辑代码-->\r\n\r\n	<!-- 顶部 -->\r\n	<div class=\\"topxunpan\\">\r\n		<div class=\\"center\\">\r\n			<p>\r\n				<span>TEL：<i>19983727888</i></span>\r\n				<span>TEL：<i>13458195618（微信同号）</i></span>\r\n				<span>E-MAIL：<i>123456@qq.com</i></span>\r\n			</p>\r\n			<div class=\\"thisxp\\">\r\n				<div class=\\"xp\\" id=\\"xunpanText\\" data-tiptitle=\\"请您登录网站后台查看！\\">\r\n					<img src=\\"/style/images/t_icon_05.png\\" alt=\\"询盘信息\\">\r\n					您暂无未读询盘信息!\r\n					<div id=\\"xunpantip\\"></div>\r\n				</div>\r\n			</div>\r\n			<p><a href=\\"#wjdh-message\\" title=\\"在线留言\\">在线留言</a></p>\r\n		</div>\r\n	</div>\r\n\r\n	[!--temp.header--]\r\n\r\n	<!-- 轮播图 -->\r\n	<div class=\\"pics_wrap\\">\r\n		<div class=\\"html5zoo-1\\">\r\n			<ul class=\\"html5zoo-slides\\">\r\n\r\n				<li><a href=\\"products/\\" title=\\"达州CNG汽车改装\\"><img\r\n							src=\\"/style/images/300523f269ce45df707e494f5f88a636@1920X750.jpg\\" alt=\\"达州CNG汽车改装\\"></a></li>\r\n\r\n				<li><a href=\\"p1/\\" title=\\"达州油改气\\"><img src=\\"/style/images/54782fd3e5e11bdcce8d9a5408cb719c@1920X750.jpg\\"\r\n							alt=\\"达州油改气\\"></a></li>\r\n\r\n				<li><a href=\\"p2/\\" title=\\"达州CNG改装\\"><img src=\\"/style/images/015d1986fda122ed25eb4aef55973605@1920X750.jpg\\"\r\n							alt=\\"达州CNG改装\\"></a></li>\r\n\r\n			</ul>\r\n		</div>\r\n	</div>\r\n\r\n	<!-- 业务中心 -->\r\n	<div class=\\"box_01\\">\r\n		<div class=\\"center\\">\r\n			<div class=\\"h_bt\\">\r\n				<p>business</p>\r\n				<h3><a href=\\"/products/\\" title=\\"业务中心\\">业务中心</a></h3>\r\n			</div>\r\n			<ul class=\\"pro_list\\">\r\n\r\n				<li><a href=\\"/p2/\\" title=\\"CNG汽车改装\\">CNG汽车改装</a></li>\r\n\r\n				<li><a href=\\"/p1/\\" title=\\"油改气服务\\">油改气服务</a></li>\r\n\r\n			</ul>\r\n			<div class=\\"swiper-container pro_center\\">\r\n				<div class=\\"swiper-wrapper\\">\r\n\r\n					<div class=\\"swiper-slide\\">\r\n						<div class=\\"txt\\">\r\n							<i></i>\r\n							<a href=\\"/fwfw/cngqcgz/\\" class=\\"name\\">CNG汽车改装</a>\r\n							<span>CNG car modification</span>\r\n							<p>达宇天然气汽车改装厂可为为您提供达州CNG改装/达州CNG汽车改装维修等相关服务,我们拥有专业的改装技术团队,详细信息欢迎来电咨询.</p>\r\n							<a href=\\"/fwfw/cngqcgz/\\" class=\\"more\\"></a>\r\n						</div>\r\n						<div class=\\"img\\"><img src=\\"/style/images/ad9353002bdda1ee93982e586f73f144@720X450.jpg\\"\r\n								alt=\\"CNG汽车改装\\" /></div>\r\n					</div>\r\n\r\n					<div class=\\"swiper-slide\\">\r\n						<div class=\\"txt\\">\r\n							<i></i>\r\n							<a href=\\"/fwfw/ygqfw/\\" class=\\"name\\">油改气服务</a>\r\n							<span>Changing automobile oil to gas</span>\r\n							<p>汽车油改气（Car oil to\r\n								gas）是对机动车改变燃料种类的一种改装方式。是指把原先使用燃油的通过改装成烧天然气的一个过程。汽车油改气的优点有：经济效益较高，社会效益好...</p>\r\n							<a href=\\"/fwfw/ygqfw/\\" class=\\"more\\"></a>\r\n						</div>\r\n						<div class=\\"img\\"><img src=\\"/style/images/4dfa6eb2417406041693b481ae42835b@720X450.jpg\\"\r\n								alt=\\"油改气服务\\" /></div>\r\n					</div>\r\n\r\n				</div>\r\n				<!-- 按钮 -->\r\n				<div class=\\"arrow\\">\r\n					<div class=\\"swiper-button-next\\"></div>\r\n					<div class=\\"swiper-button-prev\\"></div>\r\n				</div>\r\n			</div>\r\n		</div>\r\n	</div>\r\n\r\n	<!-- 改装案例 -->\r\n	<div class=\\"box_02\\">\r\n		<div class=\\"h_title\\">\r\n			<p>cases</p>\r\n			<h3>改装案例</h3>\r\n		</div>\r\n		<ul class=\\"case_list\\">\r\n			[e:loop={11,6,0,1}]\r\n\r\n			<li>\r\n				<a href=\\"<?=$bqsr[\\''titleurl\\'']?>\\" class=\\"img\\"><img src=\\"<?=$bqr[\\''titlepic\\'']?>\\"\r\n						alt=\\"<?=$bqr[\\''title\\'']?>\\" /></a>\r\n				<div class=\\"txt\\">\r\n					<a href=\\"/case/882834.html\\" class=\\"name\\"><?=$bqr[\\''title\\'']?></a>\r\n					<p>满意度：<span>十分满意</span></p>\r\n				</div>\r\n			</li>\r\n			[/e:loop]\r\n\r\n\r\n\r\n\r\n\r\n		</ul>\r\n		<div class=\\"gd\\"><a class=\\"doudong02\\" href=\\"/case/\\" title=\\"More\\">More cases</a></div>\r\n	</div>\r\n\r\n	<!-- 企业优势 -->\r\n	<div class=\\"box_03\\">\r\n		<div class=\\"h_title\\">\r\n			<p>advantage</p>\r\n			<h3>选择我们的理由</h3>\r\n		</div>\r\n		<ul class=\\"ys\\">\r\n			<li>\r\n				<i></i>\r\n				<h4>企业实力</h4>\r\n				<p>达宇天然气汽车改装厂成立于2007年9月3日，位于四川省达州市高新区斌朗乡木瓜村源金汽车城内。现公司拥有各类技术人员，施工人员二十余人，办公面积近2000平方米，是一家集生产制造、产品设计、销售、安装、售后服务于一体的CNG汽车改装有限公司。\r\n				</p>\r\n				<a href=\\"http://wpa.qq.com/msgrd?v=3&site=qq&menu=yes&uin=123456\\" title=\\"点击咨询\\" target=\\"_blank\\"></a>\r\n			</li>\r\n			<li class=\\"active\\">\r\n				<i></i>\r\n				<h4>经验丰富</h4>\r\n				<p>经过多年实践经验总结，达宇为您提供性能成熟的油改气所需的配套产品，所有产品都经过严格的可靠稳定性测试验证，并通过多年实际市场验证，质量有保证。</p>\r\n				<a href=\\"http://wpa.qq.com/msgrd?v=3&site=qq&menu=yes&uin=123456\\" title=\\"点击咨询\\" target=\\"_blank\\"></a>\r\n			</li>\r\n			<li>\r\n				<i></i>\r\n				<h4>专业团队</h4>\r\n				<p>达宇天然气汽车改装厂专业从事汽车油改气及气瓶检测的综合企业之一，行业经验丰富，由经验丰富的技术工程师组成的改装团队，致力于为车主提供更好的油改气服务。</p>\r\n				<a href=\\"http://wpa.qq.com/msgrd?v=3&site=qq&menu=yes&uin=123456\\" title=\\"点击咨询\\" target=\\"_blank\\"></a>\r\n			</li>\r\n			<li>\r\n				<i></i>\r\n				<h4>售后无忧</h4>\r\n				<p>公司所有服务自合同签订之日起(以实际日期为准)，服务因质量问题，客户可以7日内，您可以选择协商。服务出现问题，请与我们售后客服专员联系，由售后客服人员进行全程跟踪服务。</p>\r\n				<a href=\\"http://wpa.qq.com/msgrd?v=3&site=qq&menu=yes&uin=123456\\" title=\\"点击咨询\\" target=\\"_blank\\"></a>\r\n			</li>\r\n		</ul>\r\n	</div>\r\n\r\n	<!-- 热门资讯 -->\r\n	<div class=\\"box_04\\">\r\n		<div class=\\"h_title\\">\r\n			<p>Hot news</p>\r\n			<h3><a href=\\"/question/\\" title=\\"热门资讯\\">热门资讯</a></h3>\r\n		</div>\r\n		<ul class=\\"top\\">\r\n			[e:loop={9,6,0,0}]\r\n\r\n			<li>\r\n				<div class=\\"date\\">\r\n					<p><?=date(\\''Y\\'')?></p>\r\n					<p><?=date(\\''m-d\\'')?></p>\r\n				</div>\r\n				<div class=\\"txt\\">\r\n					<a href=\\"<?=$bqsr[\\''titleurl\\'']?>\\" title=\\"<?=$bqr[\\''title\\'']?>\\"><?=$bqr[\\''title\\'']?></a>\r\n					<p><?=$bqr[smalltext]?>\r\n					</p>\r\n					<span></span>\r\n				</div>\r\n			</li>\r\n\r\n\r\n			[/e:loop]\r\n\r\n\r\n		</ul>\r\n		<div class=\\"gd\\"><a class=\\"doudong02\\" href=\\"/question/\\" title=\\"More\\">More cases</a></div>\r\n	</div>\r\n\r\n	<!-- 关于我们 -->\r\n	<div class=\\"box_05\\">\r\n		<div class=\\"top\\">\r\n			<div class=\\"left\\">\r\n				<h4>ABOUT</h4>\r\n				<p>达宇</p>\r\n				<h5>多年专注于CNG汽车改装</h5>\r\n				<span>Focus on CNG vehicle modification for many years</span>\r\n			</div>\r\n			<div class=\\"right\\">\r\n				<h4>达宇天然气汽车改装厂</h4>\r\n				<p>达宇天然气汽车改装厂成立于2007年9月3日，位于四川省达州市高新区斌朗乡木瓜村源金汽车城内，注册资金50万人民币。现公司拥有各类技术人员，施工人员二十余人，办公面积近两百平方米，是一家集生产制造、产品设计、销售、安装、售后服务于一体的CNG汽车改装有限公司。公司自成立以来，主要从事汽车油改气、CNG汽车改装、CNG汽车维修，CNG配件销售等汽车改装业务。多年来我司改装CNG汽车几千辆，未发生过CNG汽车改装质量问题。一直坚持…\r\n				</p>\r\n				<a href=\\"/aboutus/\\" title=\\"详情\\"></a>\r\n			</div>\r\n		</div>\r\n		<div class=\\"bottom\\">\r\n			<!--\r\n        	注释：设计说这里调用五张厂区展示的图片！！！\r\n        -->\r\n			<div id=\\"case_01\\" class=\\"swiper-container case_01\\">\r\n				<div class=\\"swiper-wrapper\\">\r\n\r\n					<div class=\\"swiper-slide\\"><a href=\\"/album/882350.html\\" class=\\"img\\"><img\r\n								src=\\"/style/images/0992f313e12c511b8875aa6f519c7d8d.jpg\\" alt=\\"企业相册（一）\\" /></a></div>\r\n\r\n					<div class=\\"swiper-slide\\"><a href=\\"/album/882349.html\\" class=\\"img\\"><img\r\n								src=\\"/style/images/0ddfb5afa1d13b194b58ba6efeb2d979.jpg\\" alt=\\"企业相册（二）\\" /></a></div>\r\n\r\n					<div class=\\"swiper-slide\\"><a href=\\"/album/882348.html\\" class=\\"img\\"><img\r\n								src=\\"/style/images/bf96dbbf15482d96c419375ef7a183fe.jpg\\" alt=\\"企业相册（三）\\" /></a></div>\r\n\r\n					<div class=\\"swiper-slide\\"><a href=\\"/album/882347.html\\" class=\\"img\\"><img\r\n								src=\\"/style/images/ab7fd887c1f5ba8936148e912b1bcee9.jpg\\" alt=\\"企业相册（四）\\" /></a></div>\r\n\r\n				</div>\r\n				<div class=\\"swiper-pagination\\"></div>\r\n			</div>\r\n			<div class=\\"yyzz\\"><img src=\\"/style/images/yyzz.png\\" alt=\\"营业执照\\" /></div><!-- 这个不调用 -->\r\n		</div>\r\n	</div>\r\n\r\n	<!-- 新闻资讯 -->\r\n	<div class=\\"box_06\\">\r\n		<div class=\\"h_title\\">\r\n			<p>News</p>\r\n			<h3><a href=\\"/news/\\" title=\\"新闻资讯\\">新闻资讯</a></h3>\r\n		</div>\r\n		<div class=\\"news_center\\">\r\n			<div class=\\"hd\\">\r\n				<ul>\r\n					<li class=\\"on\\"><a href=\\"/meitibaodao/\\" title=\\"公司新闻\\">公司新闻</a></li>\r\n					<li><a href=\\"/yyxw/\\" title=\\"行业新闻\\">行业新闻</a></li>\r\n				</ul>\r\n			</div>\r\n			<div class=\\"bd\\">\r\n				<!-- 1 -->\r\n				<div class=\\"main\\">\r\n					<div class=\\"left\\">\r\n						[e:loop={8,1,0,1}]\r\n\r\n						<a href=\\"<?=$bqsr[\\''titleurl\\'']?>\\" class=\\"img\\"><img\r\n								src=\\"<?=$bqr[\\''titlepic\\'']?>\\" alt=\\"<?=$bqr[\\''title\\'']?>\\" /></a>\r\n						<div class=\\"date\\"><?=date(\\''Y-m-d\\'',$bqr[newstime])?></div>\r\n						<div class=\\"txt\\">\r\n							<a href=\\"<?=$bqsr[\\''titleurl\\'']?>\\" class=\\"name\\"><?=$bqr[\\''title\\'']?></a>\r\n							<p><?=$bqr[smalltext]?>\r\n							</p>\r\n						</div>\r\n[/e:loop]\r\n\r\n					</div>\r\n					<ul class=\\"right\\">\r\n\r\n						[e:loop={8,3,0,0}]\r\n\r\n						<li>\r\n							<div class=\\"date\\">\r\n								<p><?=date(\\''d\\'',$bqr[newstime])?></p>\r\n								<p><?=date(\\''Y-m\\'',$bqr[newstime])?></p>\r\n							</div>\r\n							<div class=\\"txt\\">\r\n								<a href=\\"<?=$bqsr[\\''titleurl\\'']?>\\" title=\\"<?=$bqr[\\''title\\'']?>\\"><?=$bqr[\\''title\\'']?></a>\r\n								<p><?=$bqr[smalltext]?>\r\n								</p>\r\n							</div>\r\n						</li>\r\n						[/e:loop]\r\n\r\n\r\n\r\n\r\n					</ul>\r\n				</div>\r\n				<!-- 2 -->\r\n				<div class=\\"main\\">\r\n					<div class=\\"left\\">\r\n						[e:loop={9,1,0,1}]\r\n						<a href=\\"<?=$bqsr[\\''titleurl\\'']?>\\" class=\\"img\\"><img\r\n								src=\\"<?=$bqr[\\''titlepic\\'']?>\\" alt=\\"<?=$bqr[\\''title\\'']?>\\" /></a>\r\n						<div class=\\"date\\"><?=date(\\''Y-m-d\\'',$bqr[newstime])?></div>\r\n						<div class=\\"txt\\">\r\n							<a href=\\"<?=$bqsr[\\''titleurl\\'']?>\\" class=\\"name\\"><?=$bqr[\\''title\\'']?></a>\r\n							<p><?=$bqr[smalltext]?>\r\n							</p>\r\n						</div>\r\n						[/e:loop]\r\n\r\n\r\n					</div>\r\n					<ul class=\\"right\\">\r\n						[e:loop={9,3,0,0}]\r\n\r\n						<li>\r\n							<div class=\\"date\\">\r\n								<p><?=date(\\''d\\'',$bqr[newstime])?></p>\r\n								<p><?=date(\\''Y-m\\'',$bqr[newstime])?></p>\r\n							</div>\r\n							<div class=\\"txt\\">\r\n								<a href=\\"<?=$bqsr[\\''titleurl\\'']?>\\" title=\\"<?=$bqr[\\''title\\'']?>\\"><?=$bqr[\\''title\\'']?></a>\r\n								<p><?=$bqr[smalltext]?>\r\n								</p>\r\n							</div>\r\n						</li>\r\n\r\n						[/e:loop]\r\n\r\n\r\n					</ul>\r\n				</div>\r\n			</div>\r\n		</div>\r\n	</div>\r\n\r\n	<!-- 在线留言 -->\r\n	<div class=\\"box_07\\">\r\n		<div class=\\"form\\">\r\n			<p><input id=\\"userName\\" type=\\"\\" name=\\"name\\" class=\\"name\\" value=\\"姓名：\\" onFocus=\\"value=\\''\\''\\"\r\n					onBlur=\\"if(!value)value=defaultValue\\"></p>\r\n			<p><input id=\\"userPhone\\" type=\\"\\" name=\\"tel\\" class=\\"tel\\" value=\\"电话：\\" onFocus=\\"value=\\''\\''\\"\r\n					onBlur=\\"if(!value)value=defaultValue\\"></p>\r\n			<p><input id=\\"e-mails\\" type=\\"\\" name=\\"e-mails\\" class=\\"e-mails\\" value=\\"邮箱：\\" onFocus=\\"value=\\''\\''\\"\r\n					onBlur=\\"if(!value)value=defaultValue\\"></p>\r\n			<p><textarea id=\\"content\\" class=\\"textarea\\"\r\n					onBlur=\\"if(this.innerHTML==\\''\\''){this.innerHTML=\\''留言：\\'';this.style.color=\\''#fff;\\''}\\" style=\\"color:#fff;\\"\r\n					onFocus=\\"if(this.innerHTML==\\''留言：\\''){this.innerHTML=\\''\\'';this.style.color=\\''#fff;\\''}\\">留言：</textarea></p>\r\n			<p>\r\n				<input id=\\"codeText\\" type=\\"txt\\" name=\\"\\" class=\\"codeText\\" value=\\"验证码：\\" onFocus=\\"value=\\''\\''\\"\r\n					onBlur=\\"if(!value)value=defaultValue\\">\r\n				<img src=\\"/api/message.ashx?action=code\\" id=\\"imgCode\\" class=\\"imgCode\\">\r\n			</p>\r\n			<div class=\\"tj\\"><button id=\\"btn\\" class=\\"btn\\">提交</button></div>\r\n		</div>\r\n		<div class=\\"links\\">\r\n\r\n			<a href=\\"http://www.cdleiling.com\\" target=\\"_blank\\" title=\\"达州高层吊装\\">达州高层吊装</a>\r\n\r\n			<a href=\\"http://www.yfcng.com\\" target=\\"_blank\\" title=\\"达州油改气\\">达州油改气</a>\r\n\r\n			<a href=\\"http://www.yfcng.com\\" target=\\"_blank\\" title=\\"达州CNG改装\\">达州CNG改装</a>\r\n\r\n		</div>\r\n	</div>\r\n\r\n	<script src=\\"/style/js/index.js\\"></script>\r\n\r\n	<!-- 底部信息  -->\r\n	<div class=\\"footer\\">\r\n		<div class=\\"center\\">\r\n			<ul class=\\"left\\">\r\n				<li>\r\n					<p>服务范围</p>\r\n\r\n					<a href=\\"/fwfw/cngqcgz/\\" title=\\"CNG汽车改装\\">CNG汽车改装</a>\r\n\r\n					<a href=\\"/fwfw/ygqfw/\\" title=\\"油改气服务\\">油改气服务</a>\r\n\r\n					<a href=\\"/fwfw/cngwx/\\" title=\\"CNG维修\\">CNG维修</a>\r\n\r\n				</li>\r\n				<li>\r\n					<p>新闻中心</p>\r\n\r\n					<a href=\\"/xwzx/gsxw/\\" title=\\"公司新闻\\">公司新闻</a>\r\n\r\n					<a href=\\"/xwzx/hydt/\\" title=\\"行业动态\\">行业动态</a>\r\n					<a href=\\"/xwzx/cjwt/\\" title=\\"常见问题\\">常见问题</a>\r\n\r\n				</li>\r\n				<li>\r\n					<p>公司实力</p>\r\n\r\n					<a href=\\"/gssl/cgal/\\" title=\\"成功案例\\">成功案例</a>\r\n\r\n					<a href=\\"/gssl/ryzz/\\" title=\\"荣誉资质\\">荣誉资质</a>\r\n\r\n					<a href=\\"/gssl/khpj/\\" title=\\"客户评价\\">客户评价</a>\r\n\r\n					<a href=\\"/gssl/gsly/\\" title=\\"公司掠影\\">公司掠影</a>\r\n\r\n				</li>\r\n				<li>\r\n					<p>关于我们</p>\r\n\r\n					<a href=\\"/gywm/gsjj/\\" title=\\"公司简介\\">公司简介</a>\r\n\r\n					<a href=\\"/gywm/qywh/\\" title=\\"企业文化\\">企业文化</a>\r\n\r\n					<a href=\\"/gywm/zzjg/\\" title=\\"组织架构\\">组织架构</a>\r\n					<a href=\\"/gywm/lxwm/\\" title=\\"联系我们\\">联系我们</a>\r\n\r\n				</li>\r\n			</ul>\r\n			<div class=\\"mid\\">\r\n				<h4>联系我们</h4>\r\n				<p>电话：<span>19983727888</span></p>\r\n				<p>座机：<span>123456</span></p>\r\n				<p>邮箱：<span>123456@qq.com</span></p>\r\n				<p>地址：<span>达州市高新区斌朗乡木瓜村源金汽车城内</span></p>\r\n			</div>\r\n			<div class=\\"right\\">\r\n				<h4>二维码</h4>\r\n				<img src=\\"/style/images/8bfaee0be5ecfcfd7c50baba32667e83@260X260.png\\" alt=\\"扫一扫\\" />\r\n			</div>\r\n		</div>\r\n		<div class=\\"copy\\">\r\n			<p>\r\n				<span>Copyright © 达宇天然气汽车改装厂 版权所有</span>\r\n				<span>备案号： 蜀ICP备16023211号-2<a href=\\"http://beian.miit.gov.cn\\" target=\\"_blank\\" title=\\"  \\" rel=\\"nofollow\\">\r\n					</a></span>\r\n			</p>\r\n\r\n			<p>\r\n				<span><a href=\\"/sitemap.html\\" title=\\"网站地图\\">网站地图</a> <a href=\\"/rss.xml\\" title=\\"RSS\\">RSS</a> <a\r\n						href=\\"/sitemap.xml\\" title=\\"XML\\">XML</a></span>\r\n\r\n				<span>技术支持：舜王科技 </span>\r\n\r\n			</p>\r\n		</div>\r\n	</div>\r\n\r\n	<!--全局使用js，请放于footer-->\r\n	<script src=\\"/style/js/nav.js\\"></script>\r\n\r\n\r\n	<script src=\\"/style/js/base.js\\" type=\\"text/javascript\\" charset=\\"utf-8\\"></script>\r\n\r\n</body>\r\n\r\n</html>', 0, 0, '', 0, 0, '', 0, 0, 0, 1615888112, 'pubindextemp', 1, 'admin'),
(22, 2, 'footer', '	<!-- 底部信息  -->\r\n	<div class=\\"footer\\">\r\n		<div class=\\"center\\">\r\n			<ul class=\\"left\\">\r\n				<li>\r\n					<p>服务范围</p>\r\n\r\n					<a href=\\"/fwfw/cngqcgz/\\" title=\\"CNG汽车改装\\">CNG汽车改装</a>\r\n\r\n					<a href=\\"/fwfw/ygqfw/\\" title=\\"油改气服务\\">油改气服务</a>\r\n\r\n					<a href=\\"/fwfw/cngwx/\\" title=\\"CNG维修\\">CNG维修</a>\r\n\r\n				</li>\r\n				<li>\r\n					<p>新闻中心</p>\r\n\r\n					<a href=\\"/xwzx/gsxw/\\" title=\\"公司新闻\\">公司新闻</a>\r\n\r\n					<a href=\\"/xwzx/hydt/\\" title=\\"行业动态\\">行业动态</a>\r\n					<a href=\\"/xwzx/cjwt/\\" title=\\"常见问题\\">常见问题</a>\r\n\r\n				</li>\r\n				<li>\r\n					<p>公司实力</p>\r\n\r\n					<a href=\\"/gssl/cgal/\\" title=\\"成功案例\\">成功案例</a>\r\n\r\n					<a href=\\"/gssl/ryzz/\\" title=\\"荣誉资质\\">荣誉资质</a>\r\n\r\n					<a href=\\"/gssl/khpj/\\" title=\\"客户评价\\">客户评价</a>\r\n\r\n					<a href=\\"/gssl/gsly/\\" title=\\"公司掠影\\">公司掠影</a>\r\n\r\n				</li>\r\n				<li>\r\n					<p>关于我们</p>\r\n\r\n					<a href=\\"/gywm/gsjj/\\" title=\\"公司简介\\">公司简介</a>\r\n\r\n					<a href=\\"/gywm/qywh/\\" title=\\"企业文化\\">企业文化</a>\r\n\r\n					<a href=\\"/gywm/zzjg/\\" title=\\"组织架构\\">组织架构</a>\r\n					<a href=\\"/gywm/lxwm/\\" title=\\"联系我们\\">联系我们</a>\r\n\r\n				</li>\r\n			</ul>\r\n			<div class=\\"mid\\">\r\n				<h4>联系我们</h4>\r\n				<p>电话：<span>19983727888</span></p>\r\n				<p>座机：<span>123456</span></p>\r\n				<p>邮箱：<span>123456@qq.com</span></p>\r\n				<p>地址：<span>达州市高新区斌朗乡木瓜村源金汽车城内</span></p>\r\n			</div>\r\n			<div class=\\"right\\">\r\n				<h4>二维码</h4>\r\n				<img src=\\"/style/images/8bfaee0be5ecfcfd7c50baba32667e83@260X260.png\\" alt=\\"扫一扫\\" />\r\n			</div>\r\n		</div>\r\n		<div class=\\"copy\\">\r\n			<p>\r\n				<span>Copyright © 达宇天然气汽车改装厂 版权所有</span>\r\n				<span>备案号： 蜀ICP备16023211号-2<a href=\\"http://beian.miit.gov.cn\\" target=\\"_blank\\" title=\\"  \\" rel=\\"nofollow\\">\r\n					</a></span>\r\n			</p>\r\n\r\n			<p>\r\n				<span><a href=\\"/sitemap.html\\" title=\\"网站地图\\">网站地图</a> <a href=\\"/rss.xml\\" title=\\"RSS\\">RSS</a> <a\r\n						href=\\"/sitemap.xml\\" title=\\"XML\\">XML</a></span>\r\n\r\n				<span>技术支持：舜王科技 </span>\r\n\r\n			</p>\r\n		</div>\r\n	</div>', 0, 0, '页面尾部', 0, 0, '', 0, 0, 0, 1615888168, 'tempvar', 1, 'admin');
INSERT INTO `dayuqixiu_enewstempbak` (`bid`, `tempid`, `tempname`, `temptext`, `subnews`, `isdefault`, `listvar`, `rownum`, `modid`, `showdate`, `subtitle`, `classid`, `docode`, `baktime`, `temptype`, `gid`, `lastuser`) VALUES
(23, 1, '默认新闻列表模板', '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<meta name=\\"Copyright\\" content=\\"All Rights Reserved btoe.cn\\" />\r\n<meta http-equiv=\\"X-UA-Compatible\\" content=\\"IE=edge,chrome=1\\" />\r\n<meta name=\\"viewport\\" content=\\"width=device-width, initial-scale=1\\">\r\n<title>[!--pagetitle--]-达宇天然气汽车改装厂</title>\r\n<meta name=\\"keywords\\" content=\\"[!--pagekey--]\\" />\r\n<meta name=\\"description\\" content=\\"[!--pagedes--]\\" />\r\n<link href=\\"/style/css/css.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<link rel=\\"stylesheet\\" type=\\"text/css\\" media=\\"screen\\" href=\\"/style/css/bootstrap.min.css\\" />\r\n<link rel=\\"stylesheet\\" type=\\"text/css\\" media=\\"screen\\" href=\\"/style/css/swiper-3.4.2.min.css\\" />\r\n<link rel=\\"stylesheet\\" type=\\"text/css\\" media=\\"screen\\" href=\\"/style/css/common.css\\" />\r\n \r\n \r\n</head>\r\n<body>\r\n<!-- mbanner -->\r\n<div class=\\"topxunpan\\">\r\n	<div class=\\"center\\">\r\n		<p>\r\n        	<span>TEL：<i>19983727888</i></span>\r\n        	<span>TEL：<i>13458195618（微信同号）</i></span>\r\n            <span>E-MAIL：<i>123456@qq.com</i></span>\r\n        </p>\r\n        <div class=\\"thisxp\\">\r\n            <div class=\\"xp\\" id=\\"xunpanText\\" data-tiptitle=\\"请您登录网站后台查看！\\">\r\n                <img src=\\"/style/images/t_icon_05.png\\" alt=\\"询盘信息\\">\r\n                您暂无未读询盘信息!\r\n                <div id=\\"xunpantip\\"></div>\r\n            </div>\r\n        </div>\r\n        <p><a href=\\"#wjdh-message\\" title=\\"在线留言\\">在线留言</a></p>\r\n	</div>\r\n</div>\r\n\r\n[!--temp.header--]\r\n<!-- mbanner -->\r\n\r\n<div class=\\"mbanner col-lg-12 col-md-12\\">\r\n  <div class=\\"row\\">\r\n    \r\n    <img src=\\"/style/images/54514911fe75bd364a68d55841ff803c@1920X320.jpg\\" alt=\\"改装案例\\">\r\n    \r\n  </div>\r\n</div>\r\n<div class=\\"clearboth\\"></div>\r\n\r\n<!-- caseMenu -->\r\n<div class=\\"caseMenu\\">\r\n  <div class=\\"caseMenuTop\\">\r\n    <div class=\\"container\\">\r\n      <div class=\\"row\\">\r\n        <div class=\\"caseMenuL  col-xs-9 col-sm-9  col-md-9 col-lg-9 \\"> <i><img src=\\"/style/images/locationIco.png\\" alt=\\"当前位置\\"></i>\r\n          当前位置：[!--newsnav--]\r\n        </div>\r\n        <div class=\\"caseMenuR col-xs-3 col-sm-3 col-md-3 col-lg-3\\"> <i class=\\"text-right\\"><a href=\\"javascript:;\\" onClick=\\"javascript :history.back(-1);\\">返回<img src=\\"/style/images/ca1.png\\" alt=\\"返回\\"></a></i> </div>\r\n        <div class=\\"clearboth\\"></div>\r\n      </div>\r\n    </div>\r\n  </div>\r\n  <div class=\\"caseMenuBottom\\">\r\n    <div class=\\"container\\">\r\n      <div class=\\"row\\">\r\n        <!-- 此处调用案例分类 -->\r\n        <div class=\\"caseTitleL col-xs-12 col-sm-12 col-md-12  col-lg-2\\">\r\n          \r\n          <i><img src=\\"/style/images/caseIco2.png\\" alt=\\"[!--class.name--]\\"></i> [!--class.name--]\r\n          \r\n        </div>\r\n        <div class=\\"caseTitleR col-xs-12 col-sm-12 col-md-12  col-lg-10\\">\r\n          <ul>\r\n            \r\n          </ul>\r\n        </div>\r\n      </div>\r\n    </div>\r\n  </div>\r\n</div>\r\n<div class=\\"clearboth\\"></div>\r\n<div class=\\"caseList\\">\r\n  <div class=\\"container\\">\r\n    <div class=\\"row\\">\r\n      <ul>\r\n        \r\n\r\n        [!--empirenews.listtemp--]\r\n<!--list.var1-->\r\n[!--empirenews.listtemp--]\r\n\r\n        \r\n      </ul>\r\n      <div class=\\"clearboth\\"></div>\r\n      <div class=\\"text-center\\">\r\n        <div class=\\"pageBox\\">[!--show.listpage--]</div> \r\n        <style type=\\"text/css\\">\r\n        .pageBox {text-align: center; width:750px; margin-bottom:25px; margin-top:25px; }\r\n        .pageBox a {border:1px solid #ddd;display:inline-block;margin-right:6px;color: #707070;width:34px;height:34px;font:bold 14px/34px arial;}\r\n        .pageBox a:hover,.pageBox a:active{background:#3aa9f2;color: #FFFFFF;text-decoration: none;}\r\n        .pageBox .cur { background: #3aa9f2;border: 1px solid #3aa9f2;text-decoration: none;}\r\n        .pageBox a.cur {color: #fff;}\r\n        .pageBox .disabled {width: 79px;}\r\n        </style>\r\n      </div>\r\n    </div>\r\n  </div>\r\n</div>\r\n<script src=\\"/style/js/jquery.min.js\\"></script>\r\n<script src=\\"/style/js/bootstrap.min.js\\"></script>\r\n<script src=\\"/style/js/swiper-3.4.2.min.js\\"></script>\r\n<script src=\\"/style/js/rem.min.js\\"></script>\r\n<script src=\\"/style/js/color.js\\"></script>\r\n[!--temp.footer--]\r\n\r\n<!--全局使用js，请放于footer-->\r\n<script src=\\"/style/js/nav.js\\"></script>\r\n\r\n \r\n<script src=\\"/style/js/base.js\\" type=\\"text/javascript\\" charset=\\"utf-8\\"></script>\r\n\r\n<script src=\\"/style/js/common.js\\"></script>\r\n</body>\r\n</html>\r\n', 0, 0, '        <li class=\\"col-xs-6 col-sm-6 col-md-4 col-lg-4 \\">\r\n          <div class=\\"caseLdd\\"> <i><a href=\\"[!--titleurl--]\\" class=\\"caseListdd\\" ><img src=\\"[!--titlepic--]\\" alt=\\"[!--title--]\\" class=\\"caseImgList1\\"></a>\r\n            <div class=\\"caseListhide\\"></div>\r\n            <a href=\\"[!--titleurl--]\\" class=\\"caseListBg\\"></a> </i>\r\n            <div class=\\"caseText\\"> <a href=\\"[!--titleurl--]\\" class=\\"caseListTitle\\">[!--title--]</a>\r\n              <div class=\\"caseLine\\"></div>\r\n              <p>[!--smalltext--]</p>\r\n              <a href=\\"[!--titleurl--]\\" class=\\"caseMore\\"><img src=\\"/style/images/caseIco1.png\\" alt=\\"详情\\"></a> <span class=\\"button_text_container\\"></span> </div>\r\n          </div>\r\n        </li>', 1, 1, 'Y-m-d', 0, 0, 0, 1615890165, 'listtemp', 1, 'admin'),
(13, 1, 'header', '<!-- 导航 -->\r\n<div class=\\"nav_xiala_xx\\" id=\\"fixedNav\\">\r\n	<div class=\\"w1200\\">\r\n    	<h1><a href=\\"/\\"><img src=\\"/style/images/1a30b08e9700543c8038b9067eccb79c@248X54.png\\" alt=\\"达宇天然气汽车改装厂\\" class=\\"logo\\" /></a></h1>\r\n        <div class=\\"search\\">\r\n        	<input class=\\"input\\" type=\\"text\\" value=\\"输入搜索内容...\\" onFocus=\\"value=\\''\\''\\" onBlur=\\"if(!value)value=defaultValue\\" id=\\"keywords\\" name=\\"keywords\\">\r\n        	<button class=\\"button\\" onClick=\\"wjdh.methods.search(\\''#keywords\\'');\\"></button>\r\n        </div>\r\n		<ul class=\\"nav_yiji\\">\r\n			\r\n			<li class=\\"active\\">\r\n			  \r\n			  <a href=\\"/\\" class=\\"one\\" title=\\"网站首页\\">达宇首页</a></li>\r\n			\r\n			<li>\r\n			  \r\n			  <a href=\\"/fwfw/cngqcgz/\\"  title=\\"CNG汽车改装\\"  class=\\"one\\" >CNG汽车改装</a>\r\n			  \r\n			</li>\r\n			\r\n			<li>\r\n			  \r\n			  <a href=\\"/fwfw/\\"  title=\\"业务中心\\"  class=\\"one\\" >服务范围</a>\r\n			  \r\n			  <div class=\\"nav_erji\\">\r\n				<div class=\\"jz\\">\r\n				  <div class=\\"hd\\">\r\n					<ul>\r\n					  <!-- 注意：这里的li数量和下面class=\\''main\\''的数量要一样 -->\r\n					  \r\n					  <li class=\\"on\\"><a href=\\"/fwfw/cngqcgz/\\" title=\\"CNG汽车改装\\">CNG汽车改装</a></li>\r\n					  \r\n					  <li><a href=\\"/fwfw/qgyfw/\\" title=\\"油改气服务\\">油改气服务</a></li>\r\n					  \r\n					  <li><a href=\\"/fwfw/cngwx/\\" title=\\"CNG维修\\">CNG维修</a></li>\r\n					  \r\n					</ul>\r\n				  </div>\r\n				  <div class=\\"bd\\">\r\n					\r\n					<div class=\\"main\\">\r\n					  <ul>\r\n						\r\n						<li> <a href=\\"/fwfw/dzcnggz/\\" class=\\"img\\"><img src=\\"/style/images/f0e0c14f48c458f3d0201144ca040bda.jpg\\" alt=\\"达州CNG改装\\" /></a> <a href=\\"/fwfw/dzcnggz/\\" class=\\"name\\">达州CNG改装</a> </li>\r\n						\r\n						<li> <a href=\\"/fwfw/dzcnggz/\\" class=\\"img\\"><img src=\\"/style/images/7bb0f17fd46bf027ee202cb6fed1d593.jpg\\" alt=\\"达州CNG汽车改装\\" /></a> <a href=\\"/fwfw/dzcnggz/\\" class=\\"name\\">达州CNG汽车改装</a> </li>\r\n						\r\n						<li> <a href=\\"/fwfw/dzcnggz/\\" class=\\"img\\"><img src=\\"/style/images/14bd23081df5bfd33c062db1d555dd29.jpg\\" alt=\\"达州CNG改装厂家\\" /></a> <a href=\\"/fwfw/dzcnggz/\\" class=\\"name\\">达州CNG改装厂家</a> </li>\r\n						\r\n						<li> <a href=\\"/fwfw/dzcnggz/\\" class=\\"img\\"><img src=\\"/style/images/370d2da0d99af28cb3d5e1b5311cafe9.jpg\\" alt=\\"达州CNG改装维护\\" /></a> <a href=\\"/fwfw/dzcnggz/\\" class=\\"name\\">达州CNG改装维护</a> </li>\r\n						\r\n						<li> <a href=\\"/fwfw/dzcnggz/\\" class=\\"img\\"><img src=\\"/style/images/55cfa301baf1cdbac6253f6a4f63a846.jpg\\" alt=\\"达州CNG改装公司\\" /></a> <a href=\\"/fwfw/dzcnggz/\\" class=\\"name\\">达州CNG改装公司</a> </li>\r\n						\r\n					  </ul>\r\n					</div>\r\n					\r\n					<div class=\\"main\\">\r\n					  <ul>\r\n						[e:loop={6,5,0,1}]\r\n						\r\n						<li> <a href=\\"<?=$bqsr[\\''titleurl\\'']?>\\" class=\\"img\\"><img src=\\"<?=$bqr[\\''titlepic\\'']?>\\" alt=\\"<?=$bqr[\\''title\\'']?>\\" /></a> <a href=\\"<?=$bqsr[\\''titleurl\\'']?>\\" class=\\"name\\"><?=$bqr[\\''title\\'']?></a> </li>\r\n[/e:loop]\r\n\r\n						\r\n					  </ul>\r\n					</div>\r\n					\r\n					<div class=\\"main\\">\r\n					  <ul>\r\n						\r\n						<li> <a href=\\"/fwfw/cngwx/\\" class=\\"img\\"><img src=\\"/style/images/4aa6b2e96e5268c7f77ca3cad0d21010.jpg\\" alt=\\"达州CNG汽车维修\\" /></a> <a href=\\"/fwfw/cngwx/\\" class=\\"name\\">达州CNG汽车维修</a> </li>\r\n						\r\n					  </ul>\r\n					</div>\r\n					\r\n				  </div>\r\n				</div>\r\n			  </div>\r\n			  \r\n			</li>\r\n			\r\n			<li>\r\n			  \r\n			  <a href=\\"/gssl/cgal/\\"  title=\\"改装案例\\"  class=\\"one\\" >改装案例</a>\r\n			  \r\n			</li>\r\n			\r\n			<li>\r\n			  \r\n			  <a href=\\"/gywm/gsjj/\\"  title=\\"公司简介\\"  class=\\"one\\" >公司简介</a>\r\n			  \r\n			</li>\r\n			\r\n			<li>\r\n			  \r\n			  <a href=\\"/xwzx/\\"  title=\\"新闻资讯\\"  class=\\"one\\" >新闻资讯</a>\r\n			  \r\n			  <div class=\\"nav_erji\\">\r\n				<div class=\\"jz\\">\r\n				  <div class=\\"hd\\">\r\n					<ul>\r\n					  <!-- 注意：这里的li数量和下面class=\\''main\\''的数量要一样 -->\r\n					  \r\n					  <li class=\\"on\\"><a href=\\"/xwzx/gsxw/\\" title=\\"公司新闻\\">公司新闻</a></li>\r\n					  \r\n					  <li><a href=\\"/xwzx/hyxw/\\" title=\\"行业新闻\\">行业新闻</a></li>\r\n					  \r\n					</ul>\r\n				  </div>\r\n				  <div class=\\"bd\\">\r\n					\r\n					<div class=\\"main\\">\r\n					  \r\n					  <a href=\\"/fwfw/qcwx/\\" class=\\"xw\\"> <span class=\\"title\\">CNG发动机的维护保养注意事项</span> <span class=\\"desc\\">发动机使用注意事项：1、新车使用前应进行燃气管路、供气装置、电气部分检查，看是否有燃气密封不严，线路接触不可靠等，应及时排除。应特别注意电路部分连接是否有“松脱”现象，尤其是电磁阀的插片处；点火高压线...</span> </a>\r\n					  \r\n					  <a href=\\"/fwfw/ygqfw/\\" class=\\"xw\\"> <span class=\\"title\\">油改气对汽车的影响大吗？有什么利弊？</span> <span class=\\"desc\\">油改气算是动力类型的改装，还涉及到排放环保问题，私下自己改是不行的，那是非法改装，需要到正规的油改气机构去改，这些机构都要有相关部门的改装许可证的，而且要报备上去，否则不能上路。如果当地政策不允许油改气，就不要硬着改。油改气有一定的市场需求，主要是油价贵，用气便宜，如果颠倒过来，就不会有人折腾这个了，油改气好处在油价比...</span> </a>\r\n					  \r\n					  <a href=\\"/fwfw/qcwx/\\" class=\\"xw\\"> <span class=\\"title\\">CNG汽车保养知识：燃气喷轨多久维护保养</span> <span class=\\"desc\\">燃气喷轨工作原理：1、燃气被储藏在导轨中通过喷嘴喷向发动机进气管。2、电脑控制喷嘴喷射。导轨上安装3或4个喷嘴以适应不同车型。3、进入导轨的气体的温度和压力可以被监控，较大运行压力为300Kpa，高频电磁阀，每分中动作7500次。4、喷轨电磁线圈通电时产生吸力，针阀被吸起，打开喷孔，燃气经针阀头部的轴针与喷孔之间的环形...</span> </a>\r\n					  \r\n					  <a href=\\"/fwfw/qcwx/\\" class=\\"xw\\"> <span class=\\"title\\">cng汽车保养知识：减压器维护保养</span> <span class=\\"desc\\">cng汽车保养知识：减压器维护保养，一起来看看吧：减压器维护保养：1、经常保持CNG系统及空滤器芯子的清洁、完整。2、半年全面检修减压阀及供气系统一次，损坏件应及时更换。3、每月检查一次高压管线滤芯、...</span> </a>\r\n					  \r\n					  <a href=\\"/fwfw/qcgz/\\" class=\\"xw\\"> <span class=\\"title\\">达宇小编深度浅析达州cng汽车改装的相关内容</span> <span class=\\"desc\\">达宇小编深度浅析达州cng汽车改装过程，大家不清楚，记得观看哦！说这款车是由于这款车是今年这里改的.多的，下面正文这款车1.5L的排量 由于是2018款新车，刚开始开的1.8的孔，后边试车发现有点供气...</span> </a>\r\n					  \r\n					  <a href=\\"/fwfw/ygqfw/\\" class=\\"xw\\"> <span class=\\"title\\">什么车型-什么品牌.适合油改气</span> <span class=\\"desc\\">现在有很多车主都为了能够削减日常的养车费用，而挑选进行轿车油改气，但并不是一切的车型都合适油改气的，那么.合适油改气的车型是什么呢？什么品牌.合适改气？下面就让达宇小编带大家来看看吧。一般来说，能进行...</span> </a>\r\n					  \r\n					</div>\r\n					\r\n					<div class=\\"main\\">\r\n					  \r\n					  <a href=\\"/fwfw/ygqfw/\\" class=\\"xw\\"> <span class=\\"title\\">达州油改气有何优点，来看看吧</span> <span class=\\"desc\\">今年来的油价上涨的让人猝不及防，对于刚买新车或者资金不是很宽裕的车主，面对不断上涨的油价，苦不堪言，因此，达州油改气，变成了许多车主的不二选择。（1）达州油改气有较高的经济效益。在相同的当量热值下，世界各国一般将lm天然气的价格控制为1L，在发动机热效率相同的条件下，单用天然气作为燃料的汽车的燃料费用大约是汽油车或柴油...</span> </a>\r\n					  \r\n					  <a href=\\"/fwfw/ygqfw/\\" class=\\"xw\\"> <span class=\\"title\\">亲们你们有没有注意，探索逐步放开“达州油改气”限制啦！</span> <span class=\\"desc\\">达州市 燃气协会会长：“主张政府部门赶快取消对车辆的约束性‘达州油改气’方针，取消CNG车辆改装目标约束，简化改装车辆手续，调整改装车辆年限规则，实在提高CNG在车用燃料中所占份额”市经信委 相关负责...</span> </a>\r\n					  \r\n					  <a href=\\"/fwfw/cngqcgz/\\" class=\\"xw\\"> <span class=\\"title\\">浅析达州CNG改装汽车5大重点</span> <span class=\\"desc\\">达宇小编深度浅析达州CNG改装汽车5大重点之一排放功能：天然气作为一种气体燃料，与空气混合更均匀，焚烧愈加充沛，排放的CO 、HC等有害物质更少；其他一些没有受排放法规控制的有害成分（如对区域环境影响...</span> </a>\r\n					  \r\n					  <a href=\\"/fwfw/qcgz/\\" class=\\"xw\\"> <span class=\\"title\\">浅析汽车天然气改装的市场现状和发展前景</span> <span class=\\"desc\\">我司致力于汽车天然气改装和维修，今天给大家分享汽车天然气改装的市场现状和未来发展方向，感兴趣的小伙伴一起来了解下吧。天然气改装因其环保经济的优点，受到大众的广泛关注，并且很多类似的企业也突然发展起来。...</span> </a>\r\n					  \r\n					  <a href=\\"/fwfw/qcby/\\" class=\\"xw\\"> <span class=\\"title\\">注意啦！汽车油改气后对发动机的保养可不能忽略</span> <span class=\\"desc\\">汽车油改气后我们应该注意哪些事项，小编告诉你，对于发动机的保养是重中之重，不能忽略，下面跟对小编一起来了解下保养发动机的要点吧！汽车油改气后基本以使用天然气为主，所以发动机都是偏向天然气的使用特点进行...</span> </a>\r\n					  \r\n					  <a href=\\"/fwfw/qcwx/\\" class=\\"xw\\"> <span class=\\"title\\">知道吗？定期清洁改装天然气汽车节气门很重要</span> <span class=\\"desc\\">改装天然气汽车后我们应做好定期清洁汽车节气门，这是为什么呢？清洁有什么作用？我们先要了解什么是节气门？节气门也就是调节发动机进气量的阀门，调节它的机构就在你的右脚下——油门。油门踩下去越深节气门开启度...</span> </a>\r\n					  \r\n					</div>\r\n					\r\n				  </div>\r\n				</div>\r\n\r\n			  </div>\r\n			  \r\n			</li>\r\n			\r\n			<li>\r\n			  \r\n			  <a href=\\"/gywm/lxwm/\\"  title=\\"联系我们\\"  class=\\"one\\" >联系我们</a>\r\n			  \r\n			</li>\r\n			\r\n		</ul>\r\n	</div>\r\n</div>', 1, 0, '页面头部', 0, 0, '', 0, 0, 0, 1615885681, 'tempvar', 1, 'admin'),
(19, 1, '', '<!DOCTYPE html>\r\n<html>\r\n\r\n<head>\r\n	<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n	<meta http-equiv=\\"X-UA-Compatible\\" content=\\"IE=edge\\">\r\n	<title>达宇天然气汽车改装厂</title>\r\n	<meta name=\\"keywords\\" content=\\"达州CNG改装,达州油改气,达州CNG汽车改装,达州CNG维修,油改气,CNG改装,达州油改气厂家\\" />\r\n	<meta name=\\"description\\"\r\n		content=\\"达州油改气厂家推荐达宇天然气汽车改装厂主要从事达州CNG汽车改装/达州CNG改装维修和达州油改气等业务,可为您提供不同车型汽车的改装维修以及配件销售等服务以及周到的售后服务,欢迎新老客户来电咨询.\\" />\r\n	<meta name=\\"viewport\\" content=\\"width=device-width, initial-scale=1\\">\r\n	<meta name=\\"Copyright\\" content=\\"All Rights Reserved btoe.cn\\" />\r\n	<link rel=\\"stylesheet\\" type=\\"text/css\\" media=\\"screen\\" href=\\"/style/css/in.css\\" />\r\n	<link rel=\\"stylesheet\\" type=\\"text/css\\" media=\\"screen\\" href=\\"/style/css/css.css\\" />\r\n	<link rel=\\"stylesheet\\" type=\\"text/css\\" media=\\"screen\\" href=\\"/style/css/swiper.min.css\\" />\r\n	<link rel=\\"stylesheet\\" type=\\"text/css\\" media=\\"screen\\" href=\\"/style/css/animate.min.css\\" />\r\n	<script src=\\"/style/js/jquery.min.js\\"></script>\r\n	<script src=\\"/style/js/swiper.min.js\\"></script>\r\n	<script src=\\"/style/js/threebanner.js\\"></script>\r\n	<script src=\\"/style/js/jquery.SuperSlide.2.1.3.js\\"></script>\r\n\r\n\r\n</head>\r\n\r\n<body>\r\n\r\n	<!--请在body内进行编辑代码-->\r\n\r\n	<!-- 顶部 -->\r\n	<div class=\\"topxunpan\\">\r\n		<div class=\\"center\\">\r\n			<p>\r\n				<span>TEL：<i>19983727888</i></span>\r\n				<span>TEL：<i>13458195618（微信同号）</i></span>\r\n				<span>E-MAIL：<i>123456@qq.com</i></span>\r\n			</p>\r\n			<div class=\\"thisxp\\">\r\n				<div class=\\"xp\\" id=\\"xunpanText\\" data-tiptitle=\\"请您登录网站后台查看！\\">\r\n					<img src=\\"/style/images/t_icon_05.png\\" alt=\\"询盘信息\\">\r\n					您暂无未读询盘信息!\r\n					<div id=\\"xunpantip\\"></div>\r\n				</div>\r\n			</div>\r\n			<p><a href=\\"#wjdh-message\\" title=\\"在线留言\\">在线留言</a></p>\r\n		</div>\r\n	</div>\r\n\r\n	[!--temp.header--]\r\n\r\n	<!-- 轮播图 -->\r\n	<div class=\\"pics_wrap\\">\r\n		<div class=\\"html5zoo-1\\">\r\n			<ul class=\\"html5zoo-slides\\">\r\n\r\n				<li><a href=\\"products/\\" title=\\"达州CNG汽车改装\\"><img\r\n							src=\\"/style/images/300523f269ce45df707e494f5f88a636@1920X750.jpg\\" alt=\\"达州CNG汽车改装\\"></a></li>\r\n\r\n				<li><a href=\\"p1/\\" title=\\"达州油改气\\"><img src=\\"/style/images/54782fd3e5e11bdcce8d9a5408cb719c@1920X750.jpg\\"\r\n							alt=\\"达州油改气\\"></a></li>\r\n\r\n				<li><a href=\\"p2/\\" title=\\"达州CNG改装\\"><img src=\\"/style/images/015d1986fda122ed25eb4aef55973605@1920X750.jpg\\"\r\n							alt=\\"达州CNG改装\\"></a></li>\r\n\r\n			</ul>\r\n		</div>\r\n	</div>\r\n\r\n	<!-- 业务中心 -->\r\n	<div class=\\"box_01\\">\r\n		<div class=\\"center\\">\r\n			<div class=\\"h_bt\\">\r\n				<p>business</p>\r\n				<h3><a href=\\"/products/\\" title=\\"业务中心\\">业务中心</a></h3>\r\n			</div>\r\n			<ul class=\\"pro_list\\">\r\n\r\n				<li><a href=\\"/p2/\\" title=\\"CNG汽车改装\\">CNG汽车改装</a></li>\r\n\r\n				<li><a href=\\"/p1/\\" title=\\"油改气服务\\">油改气服务</a></li>\r\n\r\n			</ul>\r\n			<div class=\\"swiper-container pro_center\\">\r\n				<div class=\\"swiper-wrapper\\">\r\n\r\n					<div class=\\"swiper-slide\\">\r\n						<div class=\\"txt\\">\r\n							<i></i>\r\n							<a href=\\"/fwfw/cngqcgz/\\" class=\\"name\\">CNG汽车改装</a>\r\n							<span>CNG car modification</span>\r\n							<p>达宇天然气汽车改装厂可为为您提供达州CNG改装/达州CNG汽车改装维修等相关服务,我们拥有专业的改装技术团队,详细信息欢迎来电咨询.</p>\r\n							<a href=\\"/fwfw/cngqcgz/\\" class=\\"more\\"></a>\r\n						</div>\r\n						<div class=\\"img\\"><img src=\\"/style/images/ad9353002bdda1ee93982e586f73f144@720X450.jpg\\"\r\n								alt=\\"CNG汽车改装\\" /></div>\r\n					</div>\r\n\r\n					<div class=\\"swiper-slide\\">\r\n						<div class=\\"txt\\">\r\n							<i></i>\r\n							<a href=\\"/fwfw/ygqfw/\\" class=\\"name\\">油改气服务</a>\r\n							<span>Changing automobile oil to gas</span>\r\n							<p>汽车油改气（Car oil to\r\n								gas）是对机动车改变燃料种类的一种改装方式。是指把原先使用燃油的通过改装成烧天然气的一个过程。汽车油改气的优点有：经济效益较高，社会效益好...</p>\r\n							<a href=\\"/fwfw/ygqfw/\\" class=\\"more\\"></a>\r\n						</div>\r\n						<div class=\\"img\\"><img src=\\"/style/images/4dfa6eb2417406041693b481ae42835b@720X450.jpg\\"\r\n								alt=\\"油改气服务\\" /></div>\r\n					</div>\r\n\r\n				</div>\r\n				<!-- 按钮 -->\r\n				<div class=\\"arrow\\">\r\n					<div class=\\"swiper-button-next\\"></div>\r\n					<div class=\\"swiper-button-prev\\"></div>\r\n				</div>\r\n			</div>\r\n		</div>\r\n	</div>\r\n\r\n	<!-- 改装案例 -->\r\n	<div class=\\"box_02\\">\r\n		<div class=\\"h_title\\">\r\n			<p>cases</p>\r\n			<h3>改装案例</h3>\r\n		</div>\r\n		<ul class=\\"case_list\\">\r\n			[e:loop={11,6,0,1}]\r\n\r\n			<li>\r\n				<a href=\\"<?=$bqsr[\\''titleurl\\'']?>\\" class=\\"img\\"><img src=\\"<?=$bqr[\\''titlepic\\'']?>\\"\r\n						alt=\\"<?=$bqr[\\''title\\'']?>\\" /></a>\r\n				<div class=\\"txt\\">\r\n					<a href=\\"/case/882834.html\\" class=\\"name\\"><?=$bqr[\\''title\\'']?></a>\r\n					<p>满意度：<span>十分满意</span></p>\r\n				</div>\r\n			</li>\r\n			[/e:loop]\r\n\r\n\r\n\r\n\r\n\r\n		</ul>\r\n		<div class=\\"gd\\"><a class=\\"doudong02\\" href=\\"/case/\\" title=\\"More\\">More cases</a></div>\r\n	</div>\r\n\r\n	<!-- 企业优势 -->\r\n	<div class=\\"box_03\\">\r\n		<div class=\\"h_title\\">\r\n			<p>advantage</p>\r\n			<h3>选择我们的理由</h3>\r\n		</div>\r\n		<ul class=\\"ys\\">\r\n			<li>\r\n				<i></i>\r\n				<h4>企业实力</h4>\r\n				<p>达宇天然气汽车改装厂成立于2007年9月3日，位于四川省达州市高新区斌朗乡木瓜村源金汽车城内。现公司拥有各类技术人员，施工人员二十余人，办公面积近2000平方米，是一家集生产制造、产品设计、销售、安装、售后服务于一体的CNG汽车改装有限公司。\r\n				</p>\r\n				<a href=\\"http://wpa.qq.com/msgrd?v=3&site=qq&menu=yes&uin=123456\\" title=\\"点击咨询\\" target=\\"_blank\\"></a>\r\n			</li>\r\n			<li class=\\"active\\">\r\n				<i></i>\r\n				<h4>经验丰富</h4>\r\n				<p>经过多年实践经验总结，达宇为您提供性能成熟的油改气所需的配套产品，所有产品都经过严格的可靠稳定性测试验证，并通过多年实际市场验证，质量有保证。</p>\r\n				<a href=\\"http://wpa.qq.com/msgrd?v=3&site=qq&menu=yes&uin=123456\\" title=\\"点击咨询\\" target=\\"_blank\\"></a>\r\n			</li>\r\n			<li>\r\n				<i></i>\r\n				<h4>专业团队</h4>\r\n				<p>达宇天然气汽车改装厂专业从事汽车油改气及气瓶检测的综合企业之一，行业经验丰富，由经验丰富的技术工程师组成的改装团队，致力于为车主提供更好的油改气服务。</p>\r\n				<a href=\\"http://wpa.qq.com/msgrd?v=3&site=qq&menu=yes&uin=123456\\" title=\\"点击咨询\\" target=\\"_blank\\"></a>\r\n			</li>\r\n			<li>\r\n				<i></i>\r\n				<h4>售后无忧</h4>\r\n				<p>公司所有服务自合同签订之日起(以实际日期为准)，服务因质量问题，客户可以7日内，您可以选择协商。服务出现问题，请与我们售后客服专员联系，由售后客服人员进行全程跟踪服务。</p>\r\n				<a href=\\"http://wpa.qq.com/msgrd?v=3&site=qq&menu=yes&uin=123456\\" title=\\"点击咨询\\" target=\\"_blank\\"></a>\r\n			</li>\r\n		</ul>\r\n	</div>\r\n\r\n	<!-- 热门资讯 -->\r\n	<div class=\\"box_04\\">\r\n		<div class=\\"h_title\\">\r\n			<p>Hot news</p>\r\n			<h3><a href=\\"/question/\\" title=\\"热门资讯\\">热门资讯</a></h3>\r\n		</div>\r\n		<ul class=\\"top\\">\r\n			[e:loop={9,6,0,0}]\r\n\r\n			<li>\r\n				<div class=\\"date\\">\r\n					<p><?=date(\\''Y\\'')?></p>\r\n					<p><?=date(\\''m-d\\'')?></p>\r\n				</div>\r\n				<div class=\\"txt\\">\r\n					<a href=\\"<?=$bqsr[\\''titleurl\\'']?>\\" title=\\"<?=$bqr[\\''title\\'']?>\\"><?=$bqr[\\''title\\'']?></a>\r\n					<p><?=$bqr[smalltext]?>\r\n					</p>\r\n					<span></span>\r\n				</div>\r\n			</li>\r\n\r\n\r\n			[/e:loop]\r\n\r\n\r\n		</ul>\r\n		<div class=\\"gd\\"><a class=\\"doudong02\\" href=\\"/question/\\" title=\\"More\\">More cases</a></div>\r\n	</div>\r\n\r\n	<!-- 关于我们 -->\r\n	<div class=\\"box_05\\">\r\n		<div class=\\"top\\">\r\n			<div class=\\"left\\">\r\n				<h4>ABOUT</h4>\r\n				<p>达宇</p>\r\n				<h5>多年专注于CNG汽车改装</h5>\r\n				<span>Focus on CNG vehicle modification for many years</span>\r\n			</div>\r\n			<div class=\\"right\\">\r\n				<h4>达宇天然气汽车改装厂</h4>\r\n				<p>达宇天然气汽车改装厂成立于2007年9月3日，位于四川省达州市高新区斌朗乡木瓜村源金汽车城内，注册资金50万人民币。现公司拥有各类技术人员，施工人员二十余人，办公面积近两百平方米，是一家集生产制造、产品设计、销售、安装、售后服务于一体的CNG汽车改装有限公司。公司自成立以来，主要从事汽车油改气、CNG汽车改装、CNG汽车维修，CNG配件销售等汽车改装业务。多年来我司改装CNG汽车几千辆，未发生过CNG汽车改装质量问题。一直坚持…\r\n				</p>\r\n				<a href=\\"/aboutus/\\" title=\\"详情\\"></a>\r\n			</div>\r\n		</div>\r\n		<div class=\\"bottom\\">\r\n			<!--\r\n        	注释：设计说这里调用五张厂区展示的图片！！！\r\n        -->\r\n			<div id=\\"case_01\\" class=\\"swiper-container case_01\\">\r\n				<div class=\\"swiper-wrapper\\">\r\n\r\n					<div class=\\"swiper-slide\\"><a href=\\"/album/882350.html\\" class=\\"img\\"><img\r\n								src=\\"/style/images/0992f313e12c511b8875aa6f519c7d8d.jpg\\" alt=\\"企业相册（一）\\" /></a></div>\r\n\r\n					<div class=\\"swiper-slide\\"><a href=\\"/album/882349.html\\" class=\\"img\\"><img\r\n								src=\\"/style/images/0ddfb5afa1d13b194b58ba6efeb2d979.jpg\\" alt=\\"企业相册（二）\\" /></a></div>\r\n\r\n					<div class=\\"swiper-slide\\"><a href=\\"/album/882348.html\\" class=\\"img\\"><img\r\n								src=\\"/style/images/bf96dbbf15482d96c419375ef7a183fe.jpg\\" alt=\\"企业相册（三）\\" /></a></div>\r\n\r\n					<div class=\\"swiper-slide\\"><a href=\\"/album/882347.html\\" class=\\"img\\"><img\r\n								src=\\"/style/images/ab7fd887c1f5ba8936148e912b1bcee9.jpg\\" alt=\\"企业相册（四）\\" /></a></div>\r\n\r\n				</div>\r\n				<div class=\\"swiper-pagination\\"></div>\r\n			</div>\r\n			<div class=\\"yyzz\\"><img src=\\"/style/images/yyzz.png\\" alt=\\"营业执照\\" /></div><!-- 这个不调用 -->\r\n		</div>\r\n	</div>\r\n\r\n	<!-- 新闻资讯 -->\r\n	<div class=\\"box_06\\">\r\n		<div class=\\"h_title\\">\r\n			<p>News</p>\r\n			<h3><a href=\\"/news/\\" title=\\"新闻资讯\\">新闻资讯</a></h3>\r\n		</div>\r\n		<div class=\\"news_center\\">\r\n			<div class=\\"hd\\">\r\n				<ul>\r\n					<li class=\\"on\\"><a href=\\"/meitibaodao/\\" title=\\"公司新闻\\">公司新闻</a></li>\r\n					<li><a href=\\"/yyxw/\\" title=\\"行业新闻\\">行业新闻</a></li>\r\n				</ul>\r\n			</div>\r\n			<div class=\\"bd\\">\r\n				<!-- 1 -->\r\n				<div class=\\"main\\">\r\n					<div class=\\"left\\">\r\n						[e:loop={8,1,0,1}]\r\n\r\n						<a href=\\"<?=$bqsr[\\''titleurl\\'']?>\\" class=\\"img\\"><img\r\n								src=\\"<?=$bqr[\\''titlepic\\'']?>\\" alt=\\"<?=$bqr[\\''title\\'']?>\\" /></a>\r\n						<div class=\\"date\\">2021-02-18</div>\r\n						<div class=\\"txt\\">\r\n							<a href=\\"<?=$bqsr[\\''titleurl\\'']?>\\" class=\\"name\\"><?=$bqr[\\''title\\'']?></a>\r\n							<p><?=$bqr[smalltext]?>\r\n							</p>\r\n						</div>\r\n[/e:loop]\r\n\r\n					</div>\r\n					<ul class=\\"right\\">\r\n\r\n						[e:loop={8,3,0,0}]\r\n\r\n						<li>\r\n							<div class=\\"date\\">\r\n								<p><?=date(\\''d\\'',$bqr[newstime])?></p>\r\n								<p><?=date(\\''Y-m\\'',$bqr[newstime])?></p>\r\n							</div>\r\n							<div class=\\"txt\\">\r\n								<a href=\\"<?=$bqsr[\\''titleurl\\'']?>\\" title=\\"<?=$bqr[\\''title\\'']?>\\"><?=$bqr[\\''title\\'']?></a>\r\n								<p><?=$bqr[smalltext]?>\r\n								</p>\r\n							</div>\r\n						</li>\r\n						[/e:loop]\r\n\r\n\r\n\r\n\r\n					</ul>\r\n				</div>\r\n				<!-- 2 -->\r\n				<div class=\\"main\\">\r\n					<div class=\\"left\\">\r\n\r\n						<a href=\\"/yyxw/1226932.html\\" class=\\"img\\"><img\r\n								src=\\"/style/images/de6bf63c4da2b4e6d1312933f0e2dfed.jpg\\" alt=\\"达州油改气有何优点，来看看吧\\" /></a>\r\n						<div class=\\"date\\">2021-03-09</div>\r\n						<div class=\\"txt\\">\r\n							<a href=\\"/yyxw/1226932.html\\" class=\\"name\\">达州油改气有何优点，来看看吧</a>\r\n							<p>今年来的油价上涨的让人猝不及防，对于刚买新车或者资金不是很宽裕的车主，面对不断上涨的油价，苦不堪言，因此，达州油改气，变成了许多车主的不二选择。（1）达州油改气有较高的经济效益。在相同的当量热值下，世界各国一般将lm天然气的价格控制为1L，在发动机热效率相同的条件下，单用天然气作为燃料的汽车的燃料费用大约是汽油车或柴油...\r\n							</p>\r\n						</div>\r\n\r\n					</div>\r\n					<ul class=\\"right\\">\r\n\r\n						<li>\r\n							<div class=\\"date\\">\r\n								<p>17</p>\r\n								<p>2020-11</p>\r\n							</div>\r\n							<div class=\\"txt\\">\r\n								<a href=\\"/yyxw/1043210.html\\"\r\n									title=\\"亲们你们有没有注意，探索逐步放开“达州油改气”限制啦！\\">亲们你们有没有注意，探索逐步放开“达州油改气”限制啦！</a>\r\n								<p>达州市\r\n									燃气协会会长：“主张政府部门赶快取消对车辆的约束性‘达州油改气’方针，取消CNG车辆改装目标约束，简化改装车辆手续，调整改装车辆年限规则，实在提高CNG在车用燃料中所占份额”市经信委\r\n									相关负责...</p>\r\n							</div>\r\n						</li>\r\n\r\n						<li>\r\n							<div class=\\"date\\">\r\n								<p>25</p>\r\n								<p>2020-09</p>\r\n							</div>\r\n							<div class=\\"txt\\">\r\n								<a href=\\"/yyxw/944677.html\\" title=\\"浅析达州CNG改装汽车5大重点\\">浅析达州CNG改装汽车5大重点</a>\r\n								<p>达宇小编深度浅析达州CNG改装汽车5大重点之一排放功能：天然气作为一种气体燃料，与空气混合更均匀，焚烧愈加充沛，排放的CO\r\n									、HC等有害物质更少；其他一些没有受排放法规控制的有害成分（如对区域环境影响...</p>\r\n							</div>\r\n						</li>\r\n\r\n						<li>\r\n							<div class=\\"date\\">\r\n								<p>05</p>\r\n								<p>2020-09</p>\r\n							</div>\r\n							<div class=\\"txt\\">\r\n								<a href=\\"/yyxw/882824.html\\" title=\\"浅析汽车天然气改装的市场现状和发展前景\\">浅析汽车天然气改装的市场现状和发展前景</a>\r\n								<p>我司致力于汽车天然气改装和维修，今天给大家分享汽车天然气改装的市场现状和未来发展方向，感兴趣的小伙伴一起来了解下吧。天然气改装因其环保经济的优点，受到大众的广泛关注，并且很多类似的企业也突然发展起来。...\r\n								</p>\r\n							</div>\r\n						</li>\r\n\r\n					</ul>\r\n				</div>\r\n			</div>\r\n		</div>\r\n	</div>\r\n\r\n	<!-- 在线留言 -->\r\n	<div class=\\"box_07\\">\r\n		<div class=\\"form\\">\r\n			<p><input id=\\"userName\\" type=\\"\\" name=\\"name\\" class=\\"name\\" value=\\"姓名：\\" onFocus=\\"value=\\''\\''\\"\r\n					onBlur=\\"if(!value)value=defaultValue\\"></p>\r\n			<p><input id=\\"userPhone\\" type=\\"\\" name=\\"tel\\" class=\\"tel\\" value=\\"电话：\\" onFocus=\\"value=\\''\\''\\"\r\n					onBlur=\\"if(!value)value=defaultValue\\"></p>\r\n			<p><input id=\\"e-mails\\" type=\\"\\" name=\\"e-mails\\" class=\\"e-mails\\" value=\\"邮箱：\\" onFocus=\\"value=\\''\\''\\"\r\n					onBlur=\\"if(!value)value=defaultValue\\"></p>\r\n			<p><textarea id=\\"content\\" class=\\"textarea\\"\r\n					onBlur=\\"if(this.innerHTML==\\''\\''){this.innerHTML=\\''留言：\\'';this.style.color=\\''#fff;\\''}\\" style=\\"color:#fff;\\"\r\n					onFocus=\\"if(this.innerHTML==\\''留言：\\''){this.innerHTML=\\''\\'';this.style.color=\\''#fff;\\''}\\">留言：</textarea></p>\r\n			<p>\r\n				<input id=\\"codeText\\" type=\\"txt\\" name=\\"\\" class=\\"codeText\\" value=\\"验证码：\\" onFocus=\\"value=\\''\\''\\"\r\n					onBlur=\\"if(!value)value=defaultValue\\">\r\n				<img src=\\"/api/message.ashx?action=code\\" id=\\"imgCode\\" class=\\"imgCode\\">\r\n			</p>\r\n			<div class=\\"tj\\"><button id=\\"btn\\" class=\\"btn\\">提交</button></div>\r\n		</div>\r\n		<div class=\\"links\\">\r\n\r\n			<a href=\\"http://www.cdleiling.com\\" target=\\"_blank\\" title=\\"达州高层吊装\\">达州高层吊装</a>\r\n\r\n			<a href=\\"http://www.yfcng.com\\" target=\\"_blank\\" title=\\"达州油改气\\">达州油改气</a>\r\n\r\n			<a href=\\"http://www.yfcng.com\\" target=\\"_blank\\" title=\\"达州CNG改装\\">达州CNG改装</a>\r\n\r\n		</div>\r\n	</div>\r\n\r\n	<script src=\\"/style/js/index.js\\"></script>\r\n\r\n	<!-- 底部信息  -->\r\n	<div class=\\"footer\\">\r\n		<div class=\\"center\\">\r\n			<ul class=\\"left\\">\r\n				<li>\r\n					<p>服务范围</p>\r\n\r\n					<a href=\\"/fwfw/cngqcgz/\\" title=\\"CNG汽车改装\\">CNG汽车改装</a>\r\n\r\n					<a href=\\"/fwfw/ygqfw/\\" title=\\"油改气服务\\">油改气服务</a>\r\n\r\n					<a href=\\"/fwfw/cngwx/\\" title=\\"CNG维修\\">CNG维修</a>\r\n\r\n				</li>\r\n				<li>\r\n					<p>新闻中心</p>\r\n\r\n					<a href=\\"/xwzx/gsxw/\\" title=\\"公司新闻\\">公司新闻</a>\r\n\r\n					<a href=\\"/xwzx/hydt/\\" title=\\"行业动态\\">行业动态</a>\r\n					<a href=\\"/xwzx/cjwt/\\" title=\\"常见问题\\">常见问题</a>\r\n\r\n				</li>\r\n				<li>\r\n					<p>公司实力</p>\r\n\r\n					<a href=\\"/gssl/cgal/\\" title=\\"成功案例\\">成功案例</a>\r\n\r\n					<a href=\\"/gssl/ryzz/\\" title=\\"荣誉资质\\">荣誉资质</a>\r\n\r\n					<a href=\\"/gssl/khpj/\\" title=\\"客户评价\\">客户评价</a>\r\n\r\n					<a href=\\"/gssl/gsly/\\" title=\\"公司掠影\\">公司掠影</a>\r\n\r\n				</li>\r\n				<li>\r\n					<p>关于我们</p>\r\n\r\n					<a href=\\"/gywm/gsjj/\\" title=\\"公司简介\\">公司简介</a>\r\n\r\n					<a href=\\"/gywm/qywh/\\" title=\\"企业文化\\">企业文化</a>\r\n\r\n					<a href=\\"/gywm/zzjg/\\" title=\\"组织架构\\">组织架构</a>\r\n					<a href=\\"/gywm/lxwm/\\" title=\\"联系我们\\">联系我们</a>\r\n\r\n				</li>\r\n			</ul>\r\n			<div class=\\"mid\\">\r\n				<h4>联系我们</h4>\r\n				<p>电话：<span>19983727888</span></p>\r\n				<p>座机：<span>123456</span></p>\r\n				<p>邮箱：<span>123456@qq.com</span></p>\r\n				<p>地址：<span>达州市高新区斌朗乡木瓜村源金汽车城内</span></p>\r\n			</div>\r\n			<div class=\\"right\\">\r\n				<h4>二维码</h4>\r\n				<img src=\\"/style/images/8bfaee0be5ecfcfd7c50baba32667e83@260X260.png\\" alt=\\"扫一扫\\" />\r\n			</div>\r\n		</div>\r\n		<div class=\\"copy\\">\r\n			<p>\r\n				<span>Copyright © 达宇天然气汽车改装厂 版权所有</span>\r\n				<span>备案号： 蜀ICP备16023211号-2<a href=\\"http://beian.miit.gov.cn\\" target=\\"_blank\\" title=\\"  \\" rel=\\"nofollow\\">\r\n					</a></span>\r\n			</p>\r\n\r\n			<p>\r\n				<span><a href=\\"/sitemap.html\\" title=\\"网站地图\\">网站地图</a> <a href=\\"/rss.xml\\" title=\\"RSS\\">RSS</a> <a\r\n						href=\\"/sitemap.xml\\" title=\\"XML\\">XML</a></span>\r\n\r\n				<span>技术支持：舜王科技 </span>\r\n\r\n			</p>\r\n		</div>\r\n	</div>\r\n\r\n	<!--全局使用js，请放于footer-->\r\n	<script src=\\"/style/js/nav.js\\"></script>\r\n\r\n\r\n	<script src=\\"/style/js/base.js\\" type=\\"text/javascript\\" charset=\\"utf-8\\"></script>\r\n\r\n</body>\r\n\r\n</html>', 0, 0, '', 0, 0, '', 0, 0, 0, 1615887739, 'pubindextemp', 1, 'admin'),
(15, 1, 'header', '<!-- 导航 -->\r\n<div class=\\"nav_xiala_xx\\" id=\\"fixedNav\\">\r\n	<div class=\\"w1200\\">\r\n    	<h1><a href=\\"/\\"><img src=\\"/style/images/1a30b08e9700543c8038b9067eccb79c@248X54.png\\" alt=\\"达宇天然气汽车改装厂\\" class=\\"logo\\" /></a></h1>\r\n        <div class=\\"search\\">\r\n        	<input class=\\"input\\" type=\\"text\\" value=\\"输入搜索内容...\\" onFocus=\\"value=\\''\\''\\" onBlur=\\"if(!value)value=defaultValue\\" id=\\"keywords\\" name=\\"keywords\\">\r\n        	<button class=\\"button\\" onClick=\\"wjdh.methods.search(\\''#keywords\\'');\\"></button>\r\n        </div>\r\n		<ul class=\\"nav_yiji\\">\r\n			\r\n			<li class=\\"active\\">\r\n			  \r\n			  <a href=\\"/\\" class=\\"one\\" title=\\"网站首页\\">达宇首页</a></li>\r\n			\r\n			<li>\r\n			  \r\n			  <a href=\\"/fwfw/cngqcgz/\\"  title=\\"CNG汽车改装\\"  class=\\"one\\" >CNG汽车改装</a>\r\n			  \r\n			</li>\r\n			\r\n			<li>\r\n			  \r\n			  <a href=\\"/fwfw/\\"  title=\\"业务中心\\"  class=\\"one\\" >服务范围</a>\r\n			  \r\n			  <div class=\\"nav_erji\\">\r\n				<div class=\\"jz\\">\r\n				  <div class=\\"hd\\">\r\n					<ul>\r\n					  <!-- 注意：这里的li数量和下面class=\\''main\\''的数量要一样 -->\r\n					  \r\n					  <li class=\\"on\\"><a href=\\"/fwfw/cngqcgz/\\" title=\\"CNG汽车改装\\">CNG汽车改装</a></li>\r\n					  \r\n					  <li><a href=\\"/fwfw/qgyfw/\\" title=\\"油改气服务\\">油改气服务</a></li>\r\n					  \r\n					  <li><a href=\\"/fwfw/cngwx/\\" title=\\"CNG维修\\">CNG维修</a></li>\r\n					  \r\n					</ul>\r\n				  </div>\r\n				  <div class=\\"bd\\">\r\n					\r\n					<div class=\\"main\\">\r\n					  <ul>\r\n						 [e:loop={5,5,0,1}]\r\n						<li> <a href=\\"<?=$bqsr[\\''titleurl\\'']?>\\" class=\\"img\\"><img src=\\"<?=$bqr[\\''titlepic\\'']?>\\" alt=\\"<?=$bqr[\\''title\\'']?>\\" /></a> <a href=\\"<?=$bqsr[\\''titleurl\\'']?>\\" class=\\"name\\"><?=$bqr[\\''title\\'']?></a> </li>\r\n						\r\n                       \r\n\r\n[/e:loop]\r\n					  </ul>\r\n					</div>\r\n					\r\n					<div class=\\"main\\">\r\n					  <ul>\r\n						[e:loop={6,5,0,1}]\r\n						\r\n						<li> <a href=\\"<?=$bqsr[\\''titleurl\\'']?>\\" class=\\"img\\"><img src=\\"<?=$bqr[\\''titlepic\\'']?>\\" alt=\\"<?=$bqr[\\''title\\'']?>\\" /></a> <a href=\\"<?=$bqsr[\\''titleurl\\'']?>\\" class=\\"name\\"><?=$bqr[\\''title\\'']?></a> </li>\r\n[/e:loop]\r\n\r\n						\r\n					  </ul>\r\n					</div>\r\n					\r\n					<div class=\\"main\\">\r\n					  <ul>\r\n						\r\n						<li> <a href=\\"/fwfw/cngwx/\\" class=\\"img\\"><img src=\\"/style/images/4aa6b2e96e5268c7f77ca3cad0d21010.jpg\\" alt=\\"达州CNG汽车维修\\" /></a> <a href=\\"/fwfw/cngwx/\\" class=\\"name\\">达州CNG汽车维修</a> </li>\r\n						\r\n					  </ul>\r\n					</div>\r\n					\r\n				  </div>\r\n				</div>\r\n			  </div>\r\n			  \r\n			</li>\r\n			\r\n			<li>\r\n			  \r\n			  <a href=\\"/gssl/cgal/\\"  title=\\"改装案例\\"  class=\\"one\\" >改装案例</a>\r\n			  \r\n			</li>\r\n			\r\n			<li>\r\n			  \r\n			  <a href=\\"/gywm/gsjj/\\"  title=\\"公司简介\\"  class=\\"one\\" >公司简介</a>\r\n			  \r\n			</li>\r\n			\r\n			<li>\r\n			  \r\n			  <a href=\\"/xwzx/\\"  title=\\"新闻资讯\\"  class=\\"one\\" >新闻资讯</a>\r\n			  \r\n			  <div class=\\"nav_erji\\">\r\n				<div class=\\"jz\\">\r\n				  <div class=\\"hd\\">\r\n					<ul>\r\n					  <!-- 注意：这里的li数量和下面class=\\''main\\''的数量要一样 -->\r\n					  \r\n					  <li class=\\"on\\"><a href=\\"/xwzx/gsxw/\\" title=\\"公司新闻\\">公司新闻</a></li>\r\n					  \r\n					  <li><a href=\\"/xwzx/hyxw/\\" title=\\"行业新闻\\">行业新闻</a></li>\r\n					  \r\n					</ul>\r\n				  </div>\r\n				  <div class=\\"bd\\">\r\n					\r\n					<div class=\\"main\\">\r\n					  \r\n					  <a href=\\"/fwfw/qcwx/\\" class=\\"xw\\"> <span class=\\"title\\">CNG发动机的维护保养注意事项</span> <span class=\\"desc\\">发动机使用注意事项：1、新车使用前应进行燃气管路、供气装置、电气部分检查，看是否有燃气密封不严，线路接触不可靠等，应及时排除。应特别注意电路部分连接是否有“松脱”现象，尤其是电磁阀的插片处；点火高压线...</span> </a>\r\n					  \r\n					  <a href=\\"/fwfw/ygqfw/\\" class=\\"xw\\"> <span class=\\"title\\">油改气对汽车的影响大吗？有什么利弊？</span> <span class=\\"desc\\">油改气算是动力类型的改装，还涉及到排放环保问题，私下自己改是不行的，那是非法改装，需要到正规的油改气机构去改，这些机构都要有相关部门的改装许可证的，而且要报备上去，否则不能上路。如果当地政策不允许油改气，就不要硬着改。油改气有一定的市场需求，主要是油价贵，用气便宜，如果颠倒过来，就不会有人折腾这个了，油改气好处在油价比...</span> </a>\r\n					  \r\n					  <a href=\\"/fwfw/qcwx/\\" class=\\"xw\\"> <span class=\\"title\\">CNG汽车保养知识：燃气喷轨多久维护保养</span> <span class=\\"desc\\">燃气喷轨工作原理：1、燃气被储藏在导轨中通过喷嘴喷向发动机进气管。2、电脑控制喷嘴喷射。导轨上安装3或4个喷嘴以适应不同车型。3、进入导轨的气体的温度和压力可以被监控，较大运行压力为300Kpa，高频电磁阀，每分中动作7500次。4、喷轨电磁线圈通电时产生吸力，针阀被吸起，打开喷孔，燃气经针阀头部的轴针与喷孔之间的环形...</span> </a>\r\n					  \r\n					  <a href=\\"/fwfw/qcwx/\\" class=\\"xw\\"> <span class=\\"title\\">cng汽车保养知识：减压器维护保养</span> <span class=\\"desc\\">cng汽车保养知识：减压器维护保养，一起来看看吧：减压器维护保养：1、经常保持CNG系统及空滤器芯子的清洁、完整。2、半年全面检修减压阀及供气系统一次，损坏件应及时更换。3、每月检查一次高压管线滤芯、...</span> </a>\r\n					  \r\n					  <a href=\\"/fwfw/qcgz/\\" class=\\"xw\\"> <span class=\\"title\\">达宇小编深度浅析达州cng汽车改装的相关内容</span> <span class=\\"desc\\">达宇小编深度浅析达州cng汽车改装过程，大家不清楚，记得观看哦！说这款车是由于这款车是今年这里改的.多的，下面正文这款车1.5L的排量 由于是2018款新车，刚开始开的1.8的孔，后边试车发现有点供气...</span> </a>\r\n					  \r\n					  <a href=\\"/fwfw/ygqfw/\\" class=\\"xw\\"> <span class=\\"title\\">什么车型-什么品牌.适合油改气</span> <span class=\\"desc\\">现在有很多车主都为了能够削减日常的养车费用，而挑选进行轿车油改气，但并不是一切的车型都合适油改气的，那么.合适油改气的车型是什么呢？什么品牌.合适改气？下面就让达宇小编带大家来看看吧。一般来说，能进行...</span> </a>\r\n					  \r\n					</div>\r\n					\r\n					<div class=\\"main\\">\r\n					  \r\n					  <a href=\\"/fwfw/ygqfw/\\" class=\\"xw\\"> <span class=\\"title\\">达州油改气有何优点，来看看吧</span> <span class=\\"desc\\">今年来的油价上涨的让人猝不及防，对于刚买新车或者资金不是很宽裕的车主，面对不断上涨的油价，苦不堪言，因此，达州油改气，变成了许多车主的不二选择。（1）达州油改气有较高的经济效益。在相同的当量热值下，世界各国一般将lm天然气的价格控制为1L，在发动机热效率相同的条件下，单用天然气作为燃料的汽车的燃料费用大约是汽油车或柴油...</span> </a>\r\n					  \r\n					  <a href=\\"/fwfw/ygqfw/\\" class=\\"xw\\"> <span class=\\"title\\">亲们你们有没有注意，探索逐步放开“达州油改气”限制啦！</span> <span class=\\"desc\\">达州市 燃气协会会长：“主张政府部门赶快取消对车辆的约束性‘达州油改气’方针，取消CNG车辆改装目标约束，简化改装车辆手续，调整改装车辆年限规则，实在提高CNG在车用燃料中所占份额”市经信委 相关负责...</span> </a>\r\n					  \r\n					  <a href=\\"/fwfw/cngqcgz/\\" class=\\"xw\\"> <span class=\\"title\\">浅析达州CNG改装汽车5大重点</span> <span class=\\"desc\\">达宇小编深度浅析达州CNG改装汽车5大重点之一排放功能：天然气作为一种气体燃料，与空气混合更均匀，焚烧愈加充沛，排放的CO 、HC等有害物质更少；其他一些没有受排放法规控制的有害成分（如对区域环境影响...</span> </a>\r\n					  \r\n					  <a href=\\"/fwfw/qcgz/\\" class=\\"xw\\"> <span class=\\"title\\">浅析汽车天然气改装的市场现状和发展前景</span> <span class=\\"desc\\">我司致力于汽车天然气改装和维修，今天给大家分享汽车天然气改装的市场现状和未来发展方向，感兴趣的小伙伴一起来了解下吧。天然气改装因其环保经济的优点，受到大众的广泛关注，并且很多类似的企业也突然发展起来。...</span> </a>\r\n					  \r\n					  <a href=\\"/fwfw/qcby/\\" class=\\"xw\\"> <span class=\\"title\\">注意啦！汽车油改气后对发动机的保养可不能忽略</span> <span class=\\"desc\\">汽车油改气后我们应该注意哪些事项，小编告诉你，对于发动机的保养是重中之重，不能忽略，下面跟对小编一起来了解下保养发动机的要点吧！汽车油改气后基本以使用天然气为主，所以发动机都是偏向天然气的使用特点进行...</span> </a>\r\n					  \r\n					  <a href=\\"/fwfw/qcwx/\\" class=\\"xw\\"> <span class=\\"title\\">知道吗？定期清洁改装天然气汽车节气门很重要</span> <span class=\\"desc\\">改装天然气汽车后我们应做好定期清洁汽车节气门，这是为什么呢？清洁有什么作用？我们先要了解什么是节气门？节气门也就是调节发动机进气量的阀门，调节它的机构就在你的右脚下——油门。油门踩下去越深节气门开启度...</span> </a>\r\n					  \r\n					</div>\r\n					\r\n				  </div>\r\n				</div>\r\n\r\n			  </div>\r\n			  \r\n			</li>\r\n			\r\n			<li>\r\n			  \r\n			  <a href=\\"/gywm/lxwm/\\"  title=\\"联系我们\\"  class=\\"one\\" >联系我们</a>\r\n			  \r\n			</li>\r\n			\r\n		</ul>\r\n	</div>\r\n</div>', 1, 0, '页面头部', 0, 0, '', 0, 0, 0, 1615886217, 'tempvar', 1, 'admin');
INSERT INTO `dayuqixiu_enewstempbak` (`bid`, `tempid`, `tempname`, `temptext`, `subnews`, `isdefault`, `listvar`, `rownum`, `modid`, `showdate`, `subtitle`, `classid`, `docode`, `baktime`, `temptype`, `gid`, `lastuser`) VALUES
(38, 1, '服务内容模板', '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<meta name=\\"Copyright\\" content=\\"All Rights Reserved btoe.cn\\" />\r\n<meta http-equiv=\\"X-UA-Compatible\\" content=\\"IE=edge,chrome=1\\" />\r\n<title>[!--pagetitle--]-达宇天然气汽车改装厂</title>\r\n<meta name=\\"keywords\\" content=\\"[!--pagekey--]\\" />\r\n<meta name=\\"description\\" content=\\"[!--pagedes--]\\" />\r\n<meta name=\\"viewport\\" content=\\"width=device-width, initial-scale=1\\">\r\n<link href=\\"/style/css/css.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<link rel=\\"stylesheet\\" type=\\"text/css\\" media=\\"screen\\" href=\\"/style/css/bootstrap.min.css\\" />\r\n<link rel=\\"stylesheet\\" type=\\"text/css\\" media=\\"screen\\" href=\\"/style/css/swiper-3.4.2.min.css\\" />\r\n<link rel=\\"stylesheet\\" type=\\"text/css\\" media=\\"screen\\" href=\\"/style/css/common.css\\" />\r\n \r\n \r\n</head>\r\n<body>\r\n<div class=\\"topxunpan\\">\r\n	<div class=\\"center\\">\r\n		<p>\r\n        	<span>TEL：<i>19983727888</i></span>\r\n        	<span>TEL：<i>13458195618（微信同号）</i></span>\r\n            <span>E-MAIL：<i>123456@qq.com</i></span>\r\n        </p>\r\n        <div class=\\"thisxp\\">\r\n            <div class=\\"xp\\" id=\\"xunpanText\\" data-tiptitle=\\"请您登录网站后台查看！\\">\r\n                <img src=\\"/style/images/t_icon_05.png\\" alt=\\"询盘信息\\">\r\n                您暂无未读询盘信息!\r\n                <div id=\\"xunpantip\\"></div>\r\n            </div>\r\n        </div>\r\n        <p><a href=\\"#wjdh-message\\" title=\\"在线留言\\">在线留言</a></p>\r\n	</div>\r\n</div>\r\n\r\n[!--temp.header--]\r\n<!-- mbanner -->\r\n\r\n<div class=\\"mbanner col-lg-12 col-md-12\\">\r\n  <div class=\\"row\\">\r\n    \r\n    <img src=\\"/style/images/a2c27610b7f029e2f04a936955bc1552@1920X320.jpg\\" alt=\\"业务中心\\">\r\n    \r\n  </div>\r\n</div>\r\n<div class=\\"clearboth\\"></div>\r\n\r\n<!-- caseMenu -->\r\n<div class=\\"caseMenuTop caseMenuTop1\\">\r\n  <div class=\\"container\\">\r\n    <div class=\\"row\\">\r\n      <div class=\\"caseMenuL col-lg-9 col-md-9 col-sm-9 col-xs-9\\"> <i><img src=\\"/style/images/locationIco.png\\" alt=\\"当前位置\\"></i>\r\n        当前位置：[!--newsnav--]\r\n      </div>\r\n      <div class=\\"caseMenuR col-xs-3 col-sm-3 col-md-3 col-lg-3\\"> <i class=\\"text-right\\"><a href=\\"javascript:;\\" onClick=\\"javascript :history.back(-1);\\">返回<img src=\\"/style/images/ca1.png\\" alt=\\"返回\\"></a></i> </div>\r\n      <div class=\\"clearboth\\"></div>\r\n    </div>\r\n  </div>\r\n</div>\r\n\r\n<div class=\\"clearboth\\"></div>\r\n<div class=\\"proList\\">\r\n  <div class=\\"container\\">\r\n    <div class=\\"row\\">\r\n      <div class=\\" col-lg-2-0 proListL  col-xs-12\\">\r\n        [!--temp.infoarea--]\r\n\r\n\r\n      </div>\r\n      <div class=\\" col-lg-8-0 proListR  col-xs-12\\">\r\n\r\n\r\n\r\n        <div class=\\"clearboth\\"></div>\r\n        <div class=\\"productsCenter col-xs-12 col-sm-12 col-md-12 col-lg-12\\">\r\n          <div class=\\"row\\">\r\n            <div class=\\"productsTTOP\\">\r\n              <div class=\\"productCenTop\\">\r\n                <div class=\\"productsCC\\">\r\n                  <div class=\\"productsCtl wjdhBg col-xs-12 col-sm-12 col-md-2 col-lg-2\\">[!--pagetitle--]</div>\r\n                  <div class=\\"details col-xs-12 col-sm-12 col-md-7 col-lg-7\\"> content details </div>\r\n                  \r\n                </div>\r\n                <div class=\\"page-content\\"> \r\n                  [!--newstext--]\r\n                </div>\r\n              </div>\r\n            </div>\r\n          </div>\r\n        </div>\r\n        <div class=\\"clearboth\\" id=\\"prodoc\\">\r\n          \r\n        </div>\r\n\r\n\r\n      </div>\r\n    </div>\r\n  </div>\r\n</div>\r\n</div>\r\n<script src=\\"/style/js/jquery.min.js\\"></script>\r\n<script src=\\"/style/js/bootstrap.min.js\\"></script>\r\n<script src=\\"/style/js/swiper-3.4.2.min.js\\"></script>\r\n<script src=\\"/style/js/color.js\\"></script>\r\n<script src=\\"/style/js/addpage.js\\"></script>\r\n<script src=\\"/style/js/rem.min.js\\"></script>\r\n<script src=\\"/style/js/qrcode.js\\"></script>\r\n[!--temp.footer--]\r\n\r\n<!--全局使用js，请放于footer-->\r\n<script src=\\"/style/js/nav.js\\"></script>\r\n\r\n \r\n<script src=\\"/style/js/base.js\\" type=\\"text/javascript\\" charset=\\"utf-8\\"></script>\r\n\r\n<script src=\\"/style/js/common.js\\"></script>\r\n</body>\r\n</html>\r\n', 0, 0, '', 0, 1, 'Y-m-d H:i:s', 0, 0, 0, 1615893457, 'newstemp', 1, 'admin'),
(25, 1, '默认新闻内容模板', '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<meta name=\\"Copyright\\" content=\\"All Rights Reserved btoe.cn\\" />\r\n<meta http-equiv=\\"X-UA-Compatible\\" content=\\"IE=edge,chrome=1\\" />\r\n<title>[!--pagetitle--]-达宇天然气汽车改装厂</title>\r\n<meta name=\\"keywords\\" content=\\"[!--pagekey--]\\" />\r\n<meta name=\\"description\\" content=\\"[!--pagedes--]\\" />\r\n<meta name=\\"viewport\\" content=\\"width=device-width, initial-scale=1\\">\r\n<link href=\\"/style/css/css.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<link rel=\\"stylesheet\\" type=\\"text/css\\" media=\\"screen\\" href=\\"/style/css/bootstrap.min.css\\" />\r\n<link rel=\\"stylesheet\\" type=\\"text/css\\" media=\\"screen\\" href=\\"/style/css/swiper-3.4.2.min.css\\" />\r\n<link rel=\\"stylesheet\\" type=\\"text/css\\" media=\\"screen\\" href=\\"/style/css/common.css\\" />\r\n \r\n \r\n</head>\r\n<body>\r\n<div class=\\"topxunpan\\">\r\n	<div class=\\"center\\">\r\n		<p>\r\n        	<span>TEL：<i>19983727888</i></span>\r\n        	<span>TEL：<i>13458195618（微信同号）</i></span>\r\n            <span>E-MAIL：<i>123456@qq.com</i></span>\r\n        </p>\r\n        <div class=\\"thisxp\\">\r\n            <div class=\\"xp\\" id=\\"xunpanText\\" data-tiptitle=\\"请您登录网站后台查看！\\">\r\n                <img src=\\"/style/images/t_icon_05.png\\" alt=\\"询盘信息\\">\r\n                您暂无未读询盘信息!\r\n                <div id=\\"xunpantip\\"></div>\r\n            </div>\r\n        </div>\r\n        <p><a href=\\"#wjdh-message\\" title=\\"在线留言\\">在线留言</a></p>\r\n	</div>\r\n</div>\r\n\r\n[!--temp.header--]\r\n<!-- mbanner -->\r\n\r\n<div class=\\"mbanner col-lg-12 col-md-12\\">\r\n  <div class=\\"row\\">\r\n    \r\n    <img src=\\"/style/images/a2c27610b7f029e2f04a936955bc1552@1920X320.jpg\\" alt=\\"业务中心\\">\r\n    \r\n  </div>\r\n</div>\r\n<div class=\\"clearboth\\"></div>\r\n\r\n<!-- caseMenu -->\r\n<div class=\\"caseMenuTop caseMenuTop1\\">\r\n  <div class=\\"container\\">\r\n    <div class=\\"row\\">\r\n      <div class=\\"caseMenuL col-lg-9 col-md-9 col-sm-9 col-xs-9\\"> <i><img src=\\"/style/images/locationIco.png\\" alt=\\"当前位置\\"></i>\r\n        当前位置：[!--newsnav--]\r\n      </div>\r\n      <div class=\\"caseMenuR col-xs-3 col-sm-3 col-md-3 col-lg-3\\"> <i class=\\"text-right\\"><a href=\\"javascript:;\\" onClick=\\"javascript :history.back(-1);\\">返回<img src=\\"/style/images/ca1.png\\" alt=\\"返回\\"></a></i> </div>\r\n      <div class=\\"clearboth\\"></div>\r\n    </div>\r\n  </div>\r\n</div>\r\n<div class=\\"clearboth\\"></div>\r\n<div class=\\"proList\\">\r\n  <div class=\\"container\\">\r\n    <div class=\\"row\\">\r\n      <div class=\\" col-lg-2-0 proListL  col-xs-12\\">\r\n        <div class=\\"proListTop\\">\r\n          \r\n          <img src=\\"/style/images/proL.png\\" alt=\\"业务中心\\" class=\\"proBg\\">\r\n          <div class=\\"prouctsTitle\\"> <img src=\\"/style/images/products.png\\" alt=\\"业务中心\\" class=\\"pro-ico\\">\r\n            <h3>业务中心</h3>\r\n            <p>Product</p>\r\n          </div>\r\n          \r\n        </div>\r\n        <div class=\\"row\\">\r\n          <div class=\\"proList_classify\\">\r\n  \r\n  <div class=\\"sidepromenu col-xs-6 col-sm-6 col-md-12 col-lg-12\\">\r\n    <div class=\\"proListclass1\\"><i></i> <a href=\\"/p2/\\" title=\\"CNG汽车改装\\" class=\\"proListclass2\\">CNG汽车改装</a><b></b></div>\r\n    <ul>\r\n      <li>\r\n        <p>\r\n          \r\n          <a href=\\"/p2/883207.html\\" title=\\"达州CNG改装\\"  class=\\"cur\\"><b></b><span>达州CNG改装</span></a>\r\n          \r\n          <a href=\\"/p2/883203.html\\" title=\\"达州CNG汽车改装\\"><b></b><span>达州CNG汽车改装</span></a>\r\n          \r\n          <a href=\\"/p2/883205.html\\" title=\\"达州CNG改装厂家\\"><b></b><span>达州CNG改装厂家</span></a>\r\n          \r\n          <a href=\\"/p2/883204.html\\" title=\\"达州CNG改装维护\\"><b></b><span>达州CNG改装维护</span></a>\r\n          \r\n        </p>\r\n      </li>\r\n    </ul>\r\n  </div>\r\n  \r\n  <div class=\\"sidepromenu col-xs-6 col-sm-6 col-md-12 col-lg-12\\">\r\n    <div class=\\"proListclass1\\"><i></i> <a href=\\"/p1/\\" title=\\"油改气服务\\" class=\\"proListclass2\\">油改气服务</a><b></b></div>\r\n    <ul>\r\n      <li>\r\n        <p>\r\n          \r\n          <a href=\\"/p1/883199.html\\" title=\\"达州油改气\\"><b></b><span>达州油改气</span></a>\r\n          \r\n          <a href=\\"/p1/883198.html\\" title=\\"达州油改气厂家\\"><b></b><span>达州油改气厂家</span></a>\r\n          \r\n          <a href=\\"/p1/883197.html\\" title=\\"达州油改气公司\\"><b></b><span>达州油改气公司</span></a>\r\n          \r\n          <a href=\\"/p1/883196.html\\" title=\\"达州汽车油改气\\"><b></b><span>达州汽车油改气</span></a>\r\n          \r\n        </p>\r\n      </li>\r\n    </ul>\r\n  </div>\r\n  \r\n  <div class=\\"sidepromenu col-xs-6 col-sm-6 col-md-12 col-lg-12\\">\r\n    <div class=\\"proListclass1\\"><i></i> <a href=\\"/cngwx/\\" title=\\"CNG维修\\" class=\\"proListclass2\\">CNG维修</a><b></b></div>\r\n    <ul>\r\n      <li>\r\n        <p>\r\n          \r\n          <a href=\\"/cngwx/883210.html\\" title=\\"达州CNG汽车维修\\"><b></b><span>达州CNG汽车维修</span></a>\r\n          \r\n        </p>\r\n      </li>\r\n    </ul>\r\n  </div>\r\n  \r\n</div>\r\n\r\n        </div>\r\n        <div class=\\"row\\">\r\n          <div class=\\"proHot\\"> <i><img src=\\"/style/images/proHotIco.png\\" alt=\\"热门推荐\\">热门推荐</i>\r\n            <div class=\\"proList_sort\\">\r\n              <div class=\\"swiper-container proList_sortGd \\">\r\n                <ul class=\\"swiper-wrapper\\">\r\n                  \r\n                  <li class=\\"swiper-slide col-xs-12 col-sm-12 col-md-12 col-lg-12\\"> <a href=\\"/cngwx/883210.html\\" class=\\"proHotimg\\"><img src=\\"/style/images/4aa6b2e96e5268c7f77ca3cad0d21010.jpg\\" alt=\\"达州CNG汽车维修\\"></a> <a href=\\"/cngwx/883210.html\\" class=\\"proHot_txt\\">达州CNG汽车维修</a> </li>\r\n                  \r\n                  <li class=\\"swiper-slide col-xs-12 col-sm-12 col-md-12 col-lg-12\\"> <a href=\\"/p2/883206.html\\" class=\\"proHotimg\\"><img src=\\"/style/images/55cfa301baf1cdbac6253f6a4f63a846.jpg\\" alt=\\"达州CNG改装公司\\"></a> <a href=\\"/p2/883206.html\\" class=\\"proHot_txt\\">达州CNG改装公司</a> </li>\r\n                  \r\n                  <li class=\\"swiper-slide col-xs-12 col-sm-12 col-md-12 col-lg-12\\"> <a href=\\"/p2/883202.html\\" class=\\"proHotimg\\"><img src=\\"/style/images/9a981c16c6031cbe428b389b06a691a5.jpg\\" alt=\\"达州CNG汽车改装厂家\\"></a> <a href=\\"/p2/883202.html\\" class=\\"proHot_txt\\">达州CNG汽车改装厂家</a> </li>\r\n                  \r\n                  <li class=\\"swiper-slide col-xs-12 col-sm-12 col-md-12 col-lg-12\\"> <a href=\\"/p1/883195.html\\" class=\\"proHotimg\\"><img src=\\"/style/images/0d05cc02a55543db9c684a0a81dc51f1.jpg\\" alt=\\"达州私家车油改气\\"></a> <a href=\\"/p1/883195.html\\" class=\\"proHot_txt\\">达州私家车油改气</a> </li>\r\n                  \r\n                </ul>\r\n                <!-- Add Arrows -->\r\n                <div class=\\"pro-next col-xs-6 col-sm-6 col-md-6 col-lg-6\\"><img src=\\"/style/images/proLL.png\\" alt=\\"左\\"></div>\r\n                <div class=\\"pro-prev col-xs-6 col-sm-6 col-md-6 col-lg-6\\"><img src=\\"/style/images/proLr.png\\" alt=\\"右\\"></div>\r\n              </div>\r\n            </div>\r\n          </div>\r\n        </div>\r\n        <div class=\\"row\\">\r\n          <div class=\\"newsHot\\"> <i class=\\"col-xs-12 col-sm-12 col-md-12 col-lg-12\\"><img src=\\"/style/images/newsIco.png\\" alt=\\"推荐新闻\\">推荐新闻</i>\r\n            <div class=\\"newshotLine col-xs-12 col-sm-12 col-md-12 col-lg-12\\"></div>\r\n            <ul>\r\n              \r\n              <li class=\\"col-xs-12 col-sm-12 col-md-12 col-lg-12\\"> <a href=\\"/yyxw/1226932.html\\"> <i>\r\n                03-09\r\n                </i> <span>达州油改气有何优点，来看看吧</span> </a> </li>\r\n              \r\n              <li class=\\"col-xs-12 col-sm-12 col-md-12 col-lg-12\\"> <a href=\\"/meitibaodao/1198048.html\\"> <i>\r\n                02-18\r\n                </i> <span>CNG发动机的维护保养注意事项</span> </a> </li>\r\n              \r\n              <li class=\\"col-xs-12 col-sm-12 col-md-12 col-lg-12\\"> <a href=\\"/meitibaodao/1143150.html\\"> <i>\r\n                01-09\r\n                </i> <span>油改气对汽车的影响大吗？有什么利弊？</span> </a> </li>\r\n              \r\n              <li class=\\"col-xs-12 col-sm-12 col-md-12 col-lg-12\\"> <a href=\\"/meitibaodao/1123141.html\\"> <i>\r\n                12-29\r\n                </i> <span>CNG汽车保养知识：燃气喷轨多久维护保养</span> </a> </li>\r\n              \r\n              <li class=\\"col-xs-12 col-sm-12 col-md-12 col-lg-12\\"> <a href=\\"/meitibaodao/1110895.html\\"> <i>\r\n                12-24\r\n                </i> <span>cng汽车保养知识：减压器维护保养</span> </a> </li>\r\n              \r\n              <li class=\\"col-xs-12 col-sm-12 col-md-12 col-lg-12\\"> <a href=\\"/yyxw/1043210.html\\"> <i>\r\n                11-17\r\n                </i> <span>亲们你们有没有注意，探索逐步放开“达州油改气”限制啦！</span> </a> </li>\r\n              \r\n            </ul>\r\n          </div>\r\n        </div>\r\n      </div>\r\n      <div class=\\" col-lg-8-0 proListR  col-xs-12\\">\r\n\r\n\r\n\r\n        <div class=\\"clearboth\\"></div>\r\n        <div class=\\"productsCenter col-xs-12 col-sm-12 col-md-12 col-lg-12\\">\r\n          <div class=\\"row\\">\r\n            <div class=\\"productsTTOP\\">\r\n              <div class=\\"productCenTop\\">\r\n                <div class=\\"productsCC\\">\r\n                  <div class=\\"productsCtl wjdhBg col-xs-12 col-sm-12 col-md-2 col-lg-2\\"><h1>[!--pagetitle--]</h1></div>\r\n                  <div class=\\"details col-xs-12 col-sm-12 col-md-7 col-lg-7\\"> content details </div>\r\n                  \r\n                </div>\r\n                <div class=\\"page-content\\"> \r\n                  [!--newstext--]\r\n                </div>\r\n              </div>\r\n            </div>\r\n          </div>\r\n        </div>\r\n        <div class=\\"clearboth\\" id=\\"prodoc\\">\r\n          \r\n        </div>\r\n\r\n\r\n      </div>\r\n    </div>\r\n  </div>\r\n</div>\r\n</div>\r\n<script src=\\"/style/js/jquery.min.js\\"></script>\r\n<script src=\\"/style/js/bootstrap.min.js\\"></script>\r\n<script src=\\"/style/js/swiper-3.4.2.min.js\\"></script>\r\n<script src=\\"/style/js/color.js\\"></script>\r\n<script src=\\"/style/js/addpage.js\\"></script>\r\n<script src=\\"/style/js/rem.min.js\\"></script>\r\n<script src=\\"/style/js/qrcode.js\\"></script>\r\n[!--temp.footer--]\r\n\r\n<!--全局使用js，请放于footer-->\r\n<script src=\\"/style/js/nav.js\\"></script>\r\n\r\n \r\n<script src=\\"/style/js/base.js\\" type=\\"text/javascript\\" charset=\\"utf-8\\"></script>\r\n\r\n<script src=\\"/style/js/common.js\\"></script>\r\n</body>\r\n</html>\r\n', 0, 0, '', 0, 1, 'Y-m-d H:i:s', 0, 0, 0, 1615891077, 'newstemp', 1, 'admin'),
(26, 1, '默认新闻内容模板', '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<meta name=\\"Copyright\\" content=\\"All Rights Reserved btoe.cn\\" />\r\n<meta http-equiv=\\"X-UA-Compatible\\" content=\\"IE=edge,chrome=1\\" />\r\n<title>[!--pagetitle--]-达宇天然气汽车改装厂</title>\r\n<meta name=\\"keywords\\" content=\\"[!--pagekey--]\\" />\r\n<meta name=\\"description\\" content=\\"[!--pagedes--]\\" />\r\n<meta name=\\"viewport\\" content=\\"width=device-width, initial-scale=1\\">\r\n<link href=\\"/style/css/css.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<link rel=\\"stylesheet\\" type=\\"text/css\\" media=\\"screen\\" href=\\"/style/css/bootstrap.min.css\\" />\r\n<link rel=\\"stylesheet\\" type=\\"text/css\\" media=\\"screen\\" href=\\"/style/css/swiper-3.4.2.min.css\\" />\r\n<link rel=\\"stylesheet\\" type=\\"text/css\\" media=\\"screen\\" href=\\"/style/css/common.css\\" />\r\n \r\n \r\n</head>\r\n<body>\r\n<div class=\\"topxunpan\\">\r\n	<div class=\\"center\\">\r\n		<p>\r\n        	<span>TEL：<i>19983727888</i></span>\r\n        	<span>TEL：<i>13458195618（微信同号）</i></span>\r\n            <span>E-MAIL：<i>123456@qq.com</i></span>\r\n        </p>\r\n        <div class=\\"thisxp\\">\r\n            <div class=\\"xp\\" id=\\"xunpanText\\" data-tiptitle=\\"请您登录网站后台查看！\\">\r\n                <img src=\\"/style/images/t_icon_05.png\\" alt=\\"询盘信息\\">\r\n                您暂无未读询盘信息!\r\n                <div id=\\"xunpantip\\"></div>\r\n            </div>\r\n        </div>\r\n        <p><a href=\\"#wjdh-message\\" title=\\"在线留言\\">在线留言</a></p>\r\n	</div>\r\n</div>\r\n\r\n[!--temp.header--]\r\n<!-- mbanner -->\r\n\r\n<div class=\\"mbanner col-lg-12 col-md-12\\">\r\n  <div class=\\"row\\">\r\n    \r\n    <img src=\\"/style/images/a2c27610b7f029e2f04a936955bc1552@1920X320.jpg\\" alt=\\"业务中心\\">\r\n    \r\n  </div>\r\n</div>\r\n<div class=\\"clearboth\\"></div>\r\n\r\n<!-- caseMenu -->\r\n<div class=\\"caseMenuTop caseMenuTop1\\">\r\n  <div class=\\"container\\">\r\n    <div class=\\"row\\">\r\n      <div class=\\"caseMenuL col-lg-9 col-md-9 col-sm-9 col-xs-9\\"> <i><img src=\\"/style/images/locationIco.png\\" alt=\\"当前位置\\"></i>\r\n        当前位置：[!--newsnav--]\r\n      </div>\r\n      <div class=\\"caseMenuR col-xs-3 col-sm-3 col-md-3 col-lg-3\\"> <i class=\\"text-right\\"><a href=\\"javascript:;\\" onClick=\\"javascript :history.back(-1);\\">返回<img src=\\"/style/images/ca1.png\\" alt=\\"返回\\"></a></i> </div>\r\n      <div class=\\"clearboth\\"></div>\r\n    </div>\r\n  </div>\r\n</div>\r\n<div class=\\"clearboth\\"></div>\r\n<div class=\\"proList\\">\r\n  <div class=\\"container\\">\r\n    <div class=\\"row\\">\r\n      <div class=\\" col-lg-2-0 proListL  col-xs-12\\">\r\n        <div class=\\"proListTop\\">\r\n          \r\n          <img src=\\"/style/images/proL.png\\" alt=\\"业务中心\\" class=\\"proBg\\">\r\n          <div class=\\"prouctsTitle\\"> <img src=\\"/style/images/products.png\\" alt=\\"业务中心\\" class=\\"pro-ico\\">\r\n            <h3>业务中心</h3>\r\n            <p>Product</p>\r\n          </div>\r\n          \r\n        </div>\r\n        <div class=\\"row\\">\r\n          <div class=\\"proList_classify\\">\r\n  \r\n  <div class=\\"sidepromenu col-xs-6 col-sm-6 col-md-12 col-lg-12\\">\r\n    <div class=\\"proListclass1\\"><i></i> <a href=\\"/p2/\\" title=\\"CNG汽车改装\\" class=\\"proListclass2\\">CNG汽车改装</a><b></b></div>\r\n    <ul>\r\n      <li>\r\n        <p>\r\n          \r\n          <a href=\\"/p2/883207.html\\" title=\\"达州CNG改装\\"  class=\\"cur\\"><b></b><span>达州CNG改装</span></a>\r\n          \r\n          <a href=\\"/p2/883203.html\\" title=\\"达州CNG汽车改装\\"><b></b><span>达州CNG汽车改装</span></a>\r\n          \r\n          <a href=\\"/p2/883205.html\\" title=\\"达州CNG改装厂家\\"><b></b><span>达州CNG改装厂家</span></a>\r\n          \r\n          <a href=\\"/p2/883204.html\\" title=\\"达州CNG改装维护\\"><b></b><span>达州CNG改装维护</span></a>\r\n          \r\n        </p>\r\n      </li>\r\n    </ul>\r\n  </div>\r\n  \r\n  <div class=\\"sidepromenu col-xs-6 col-sm-6 col-md-12 col-lg-12\\">\r\n    <div class=\\"proListclass1\\"><i></i> <a href=\\"/p1/\\" title=\\"油改气服务\\" class=\\"proListclass2\\">油改气服务</a><b></b></div>\r\n    <ul>\r\n      <li>\r\n        <p>\r\n          \r\n          <a href=\\"/p1/883199.html\\" title=\\"达州油改气\\"><b></b><span>达州油改气</span></a>\r\n          \r\n          <a href=\\"/p1/883198.html\\" title=\\"达州油改气厂家\\"><b></b><span>达州油改气厂家</span></a>\r\n          \r\n          <a href=\\"/p1/883197.html\\" title=\\"达州油改气公司\\"><b></b><span>达州油改气公司</span></a>\r\n          \r\n          <a href=\\"/p1/883196.html\\" title=\\"达州汽车油改气\\"><b></b><span>达州汽车油改气</span></a>\r\n          \r\n        </p>\r\n      </li>\r\n    </ul>\r\n  </div>\r\n  \r\n  <div class=\\"sidepromenu col-xs-6 col-sm-6 col-md-12 col-lg-12\\">\r\n    <div class=\\"proListclass1\\"><i></i> <a href=\\"/cngwx/\\" title=\\"CNG维修\\" class=\\"proListclass2\\">CNG维修</a><b></b></div>\r\n    <ul>\r\n      <li>\r\n        <p>\r\n          \r\n          <a href=\\"/cngwx/883210.html\\" title=\\"达州CNG汽车维修\\"><b></b><span>达州CNG汽车维修</span></a>\r\n          \r\n        </p>\r\n      </li>\r\n    </ul>\r\n  </div>\r\n  \r\n</div>\r\n\r\n        </div>\r\n        <div class=\\"row\\">\r\n          <div class=\\"proHot\\"> <i><img src=\\"/style/images/proHotIco.png\\" alt=\\"热门推荐\\">热门推荐</i>\r\n            <div class=\\"proList_sort\\">\r\n              <div class=\\"swiper-container proList_sortGd \\">\r\n                <ul class=\\"swiper-wrapper\\">\r\n                  \r\n                  <li class=\\"swiper-slide col-xs-12 col-sm-12 col-md-12 col-lg-12\\"> <a href=\\"/cngwx/883210.html\\" class=\\"proHotimg\\"><img src=\\"/style/images/4aa6b2e96e5268c7f77ca3cad0d21010.jpg\\" alt=\\"达州CNG汽车维修\\"></a> <a href=\\"/cngwx/883210.html\\" class=\\"proHot_txt\\">达州CNG汽车维修</a> </li>\r\n                  \r\n                  <li class=\\"swiper-slide col-xs-12 col-sm-12 col-md-12 col-lg-12\\"> <a href=\\"/p2/883206.html\\" class=\\"proHotimg\\"><img src=\\"/style/images/55cfa301baf1cdbac6253f6a4f63a846.jpg\\" alt=\\"达州CNG改装公司\\"></a> <a href=\\"/p2/883206.html\\" class=\\"proHot_txt\\">达州CNG改装公司</a> </li>\r\n                  \r\n                  <li class=\\"swiper-slide col-xs-12 col-sm-12 col-md-12 col-lg-12\\"> <a href=\\"/p2/883202.html\\" class=\\"proHotimg\\"><img src=\\"/style/images/9a981c16c6031cbe428b389b06a691a5.jpg\\" alt=\\"达州CNG汽车改装厂家\\"></a> <a href=\\"/p2/883202.html\\" class=\\"proHot_txt\\">达州CNG汽车改装厂家</a> </li>\r\n                  \r\n                  <li class=\\"swiper-slide col-xs-12 col-sm-12 col-md-12 col-lg-12\\"> <a href=\\"/p1/883195.html\\" class=\\"proHotimg\\"><img src=\\"/style/images/0d05cc02a55543db9c684a0a81dc51f1.jpg\\" alt=\\"达州私家车油改气\\"></a> <a href=\\"/p1/883195.html\\" class=\\"proHot_txt\\">达州私家车油改气</a> </li>\r\n                  \r\n                </ul>\r\n                <!-- Add Arrows -->\r\n                <div class=\\"pro-next col-xs-6 col-sm-6 col-md-6 col-lg-6\\"><img src=\\"/style/images/proLL.png\\" alt=\\"左\\"></div>\r\n                <div class=\\"pro-prev col-xs-6 col-sm-6 col-md-6 col-lg-6\\"><img src=\\"/style/images/proLr.png\\" alt=\\"右\\"></div>\r\n              </div>\r\n            </div>\r\n          </div>\r\n        </div>\r\n        <div class=\\"row\\">\r\n          <div class=\\"newsHot\\"> <i class=\\"col-xs-12 col-sm-12 col-md-12 col-lg-12\\"><img src=\\"/style/images/newsIco.png\\" alt=\\"推荐新闻\\">推荐新闻</i>\r\n            <div class=\\"newshotLine col-xs-12 col-sm-12 col-md-12 col-lg-12\\"></div>\r\n            <ul>\r\n              \r\n              <li class=\\"col-xs-12 col-sm-12 col-md-12 col-lg-12\\"> <a href=\\"/yyxw/1226932.html\\"> <i>\r\n                03-09\r\n                </i> <span>达州油改气有何优点，来看看吧</span> </a> </li>\r\n              \r\n              <li class=\\"col-xs-12 col-sm-12 col-md-12 col-lg-12\\"> <a href=\\"/meitibaodao/1198048.html\\"> <i>\r\n                02-18\r\n                </i> <span>CNG发动机的维护保养注意事项</span> </a> </li>\r\n              \r\n              <li class=\\"col-xs-12 col-sm-12 col-md-12 col-lg-12\\"> <a href=\\"/meitibaodao/1143150.html\\"> <i>\r\n                01-09\r\n                </i> <span>油改气对汽车的影响大吗？有什么利弊？</span> </a> </li>\r\n              \r\n              <li class=\\"col-xs-12 col-sm-12 col-md-12 col-lg-12\\"> <a href=\\"/meitibaodao/1123141.html\\"> <i>\r\n                12-29\r\n                </i> <span>CNG汽车保养知识：燃气喷轨多久维护保养</span> </a> </li>\r\n              \r\n              <li class=\\"col-xs-12 col-sm-12 col-md-12 col-lg-12\\"> <a href=\\"/meitibaodao/1110895.html\\"> <i>\r\n                12-24\r\n                </i> <span>cng汽车保养知识：减压器维护保养</span> </a> </li>\r\n              \r\n              <li class=\\"col-xs-12 col-sm-12 col-md-12 col-lg-12\\"> <a href=\\"/yyxw/1043210.html\\"> <i>\r\n                11-17\r\n                </i> <span>亲们你们有没有注意，探索逐步放开“达州油改气”限制啦！</span> </a> </li>\r\n              \r\n            </ul>\r\n          </div>\r\n        </div>\r\n      </div>\r\n      <div class=\\" col-lg-8-0 proListR  col-xs-12\\">\r\n\r\n\r\n\r\n        <div class=\\"clearboth\\"></div>\r\n        <div class=\\"productsCenter col-xs-12 col-sm-12 col-md-12 col-lg-12\\">\r\n          <div class=\\"row\\">\r\n            <div class=\\"productsTTOP\\">\r\n              <div class=\\"productCenTop\\">\r\n                <div class=\\"productsCC\\">\r\n                  <div class=\\"productsCtl wjdhBg col-xs-12 col-sm-12 col-md-2 col-lg-2\\">[!--pagetitle--]</div>\r\n                  <div class=\\"details col-xs-12 col-sm-12 col-md-7 col-lg-7\\"> content details </div>\r\n                  \r\n                </div>\r\n                <div class=\\"page-content\\"> \r\n                  [!--newstext--]\r\n                </div>\r\n              </div>\r\n            </div>\r\n          </div>\r\n        </div>\r\n        <div class=\\"clearboth\\" id=\\"prodoc\\">\r\n          \r\n        </div>\r\n\r\n\r\n      </div>\r\n    </div>\r\n  </div>\r\n</div>\r\n</div>\r\n<script src=\\"/style/js/jquery.min.js\\"></script>\r\n<script src=\\"/style/js/bootstrap.min.js\\"></script>\r\n<script src=\\"/style/js/swiper-3.4.2.min.js\\"></script>\r\n<script src=\\"/style/js/color.js\\"></script>\r\n<script src=\\"/style/js/addpage.js\\"></script>\r\n<script src=\\"/style/js/rem.min.js\\"></script>\r\n<script src=\\"/style/js/qrcode.js\\"></script>\r\n[!--temp.footer--]\r\n\r\n<!--全局使用js，请放于footer-->\r\n<script src=\\"/style/js/nav.js\\"></script>\r\n\r\n \r\n<script src=\\"/style/js/base.js\\" type=\\"text/javascript\\" charset=\\"utf-8\\"></script>\r\n\r\n<script src=\\"/style/js/common.js\\"></script>\r\n</body>\r\n</html>\r\n', 0, 0, '', 0, 1, 'Y-m-d H:i:s', 0, 0, 0, 1615891149, 'newstemp', 1, 'admin'),
(29, 2, '新闻内容模板', '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<meta name=\\"Copyright\\" content=\\"All Rights Reserved btoe.cn\\" />\r\n<meta http-equiv=\\"X-UA-Compatible\\" content=\\"IE=edge,chrome=1\\" />\r\n<title>[!--pagetitle--]-达宇天然气汽车改装厂</title>\r\n<meta name=\\"keywords\\" content=\\"[!--pagekey--]\\" />\r\n<meta name=\\"description\\" content=\\"[!--pagedes--]\\" />\r\n<meta name=\\"viewport\\" content=\\"width=device-width, initial-scale=1\\">\r\n<link href=\\"/style/css/css.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<link rel=\\"stylesheet\\" type=\\"text/css\\" media=\\"screen\\" href=\\"/style/css/bootstrap.min.css\\" />\r\n<link rel=\\"stylesheet\\" type=\\"text/css\\" media=\\"screen\\" href=\\"/style/css/swiper-3.4.2.min.css\\" />\r\n<link rel=\\"stylesheet\\" type=\\"text/css\\" media=\\"screen\\" href=\\"/style/css/common.css\\" />\r\n \r\n \r\n<body>\r\n<div class=\\"topxunpan\\">\r\n	<div class=\\"center\\">\r\n		<p>\r\n        	<span>TEL：<i>19983727888</i></span>\r\n        	<span>TEL：<i>13458195618（微信同号）</i></span>\r\n            <span>E-MAIL：<i>123456@qq.com</i></span>\r\n        </p>\r\n        <div class=\\"thisxp\\">\r\n            <div class=\\"xp\\" id=\\"xunpanText\\" data-tiptitle=\\"请您登录网站后台查看！\\">\r\n                <img src=\\"/style/images/t_icon_05.png\\" alt=\\"询盘信息\\">\r\n                您暂无未读询盘信息!\r\n                <div id=\\"xunpantip\\"></div>\r\n            </div>\r\n        </div>\r\n        <p><a href=\\"#wjdh-message\\" title=\\"在线留言\\">在线留言</a></p>\r\n	</div>\r\n</div>\r\n	\r\n	[!--temp.header--]\r\n\r\n\r\n<!-- mbanner --><div class=\\"mbanner col-lg-12 col-md-12\\">\r\n	<div class=\\"row\\">\r\n	  \r\n    <img src=\\"/style/images/6d048635137b7d977f837756274324ab@1920X320.jpg\\" alt=\\"新闻资讯\\">\r\n    \r\n  </div>\r\n</div>\r\n<div class=\\"clearboth\\"></div>\r\n\r\n<!-- caseMenu -->\r\n<div class=\\"caseMenuTop\\">\r\n  <div class=\\"container\\">\r\n    <div class=\\"row\\">\r\n      <div class=\\"caseMenuL col-lg-9 col-md-9 col-sm-9 col-xs-9\\"> <i><img src=\\"/style/images/locationIco.png\\" alt=\\"当前位置\\"></i>\r\n        当前位置：[!--newsnav--]\r\n      </div>\r\n      <div class=\\"caseMenuR col-xs-3 col-sm-3 col-md-3 col-lg-3\\"> <i class=\\"text-right\\"><a href=\\"javascript:;\\" onClick=\\"javascript :history.back(-1);\\">返回<img src=\\"/style/images/ca1.png\\" alt=\\"返回\\"></a></i> </div>\r\n      <div class=\\"clearboth\\"></div>\r\n    </div>\r\n  </div>\r\n</div>\r\n<div class=\\"clearboth\\"></div>\r\n<div class=\\"proList\\">\r\n  <div class=\\"container\\">\r\n    <div class=\\"row\\">\r\n      <div class=\\" proListL  col-xs-12 col-lg-2-0 \\">\r\n        <div class=\\"proListTop\\">\r\n          \r\n          <img src=\\"/style/images/proL.png\\" alt=\\"[!--class.name--]\\" class=\\"proBg\\">\r\n          <div class=\\"prouctsTitle\\"> <img src=\\"/style/images/news2Ico.png\\" alt=\\"[!--class.name--]\\" class=\\"pro-ico\\">\r\n            <h3>[!--class.name--]</h3>\r\n            <p>News</p>\r\n          </div>\r\n          \r\n        </div>\r\n        <div class=\\"row\\">\r\n          <div class=\\"news_classify\\">\r\n            <ul>\r\n              \r\n              <li class=\\" col-xs-6 col-sm-6 col-md-12 col-lg-12\\"> <a href=\\"/meitibaodao/\\" class=\\"newsclass1 gaoliang\\" title=\\"公司新闻\\"><i></i><b></b> <span>公司新闻 </span></a> </li>\r\n              \r\n              <li class=\\" col-xs-6 col-sm-6 col-md-12 col-lg-12\\"> <a href=\\"/yyxw/\\" class=\\"newsclass1\\" title=\\"行业新闻\\"><i></i><b></b> <span>行业新闻 </span></a> </li>\r\n              \r\n              <li class=\\" col-xs-6 col-sm-6 col-md-12 col-lg-12\\"> <a href=\\"/question/\\" class=\\"newsclass1\\" title=\\"热门资讯\\"><i></i><b></b> <span>热门资讯 </span></a> </li>\r\n              \r\n              <li class=\\" col-xs-6 col-sm-6 col-md-12 col-lg-12\\"> <a href=\\"/aktuelle/\\" class=\\"newsclass1\\" title=\\"时事聚焦\\"><i></i><b></b> <span>时事聚焦 </span></a> </li>\r\n              \r\n            </ul>\r\n          </div>\r\n        </div>\r\n        <div class=\\"row\\">\r\n          <div class=\\"proHot\\"> <i><img src=\\"/style/images/proHotIco.png\\" alt=\\"热门推荐\\">热门推荐</i>\r\n            <div class=\\"proList_sort\\">\r\n              <div class=\\"swiper-container proList_sort1\\">\r\n                <ul class=\\"swiper-wrapper\\">\r\n                  \r\n                  <li class=\\"swiper-slide col-xs-12 col-sm-12 col-md-12 col-lg-12\\"> <a href=\\"/cngwx/883210.html\\" class=\\"proHotimg\\"><img src=\\"/style/images/4aa6b2e96e5268c7f77ca3cad0d21010.jpg\\" alt=\\"达州CNG汽车维修\\"></a> <a href=\\"/cngwx/883210.html\\" class=\\"proHot_txt\\">达州CNG汽车维修</a> </li>\r\n                  \r\n                  <li class=\\"swiper-slide col-xs-12 col-sm-12 col-md-12 col-lg-12\\"> <a href=\\"/p2/883206.html\\" class=\\"proHotimg\\"><img src=\\"/style/images/55cfa301baf1cdbac6253f6a4f63a846.jpg\\" alt=\\"达州CNG改装公司\\"></a> <a href=\\"/p2/883206.html\\" class=\\"proHot_txt\\">达州CNG改装公司</a> </li>\r\n                  \r\n                  <li class=\\"swiper-slide col-xs-12 col-sm-12 col-md-12 col-lg-12\\"> <a href=\\"/p2/883202.html\\" class=\\"proHotimg\\"><img src=\\"/style/images/9a981c16c6031cbe428b389b06a691a5.jpg\\" alt=\\"达州CNG汽车改装厂家\\"></a> <a href=\\"/p2/883202.html\\" class=\\"proHot_txt\\">达州CNG汽车改装厂家</a> </li>\r\n                  \r\n                  <li class=\\"swiper-slide col-xs-12 col-sm-12 col-md-12 col-lg-12\\"> <a href=\\"/p1/883195.html\\" class=\\"proHotimg\\"><img src=\\"/style/images/0d05cc02a55543db9c684a0a81dc51f1.jpg\\" alt=\\"达州私家车油改气\\"></a> <a href=\\"/p1/883195.html\\" class=\\"proHot_txt\\">达州私家车油改气</a> </li>\r\n                  \r\n                </ul>\r\n                <!-- Add Arrows -->\r\n                <div class=\\"pro-next col-xs-6 col-sm-6 col-md-6 col-lg-6\\"><img src=\\"/style/images/proLL.png\\" alt=\\"左\\"></div>\r\n                <div class=\\"pro-prev col-xs-6 col-sm-6 col-md-6 col-lg-6\\"><img src=\\"/style/images/proLr.png\\" alt=\\"右\\"></div>\r\n              </div>\r\n            </div>\r\n          </div>\r\n        </div>\r\n      </div>\r\n      <div class=\\"proListR  col-xs-12  col-lg-8-0 \\">\r\n        <div class=\\"newsdetails col-xs-12 col-sm-12 col-md-12 col-lg-12\\">\r\n          <div class=\\"caseCenter\\">\r\n            <div class=\\"caseCmenu\\">\r\n              <h3>[!--pagetitle--]</h3>\r\n              <span class=\\"casemfx\\"> 所属分类：[!--class.name--] &nbsp;&nbsp;\r\n              \r\n              \r\n              \r\n              发布时间：\r\n              [!--newstime--]\r\n              &nbsp;&nbsp;\r\n              \r\n              \r\n              \r\n              作者：[!--writer--]\r\n\r\n            <div class=\\"caseContainer\\">\r\n              [!--newstext--]</div>\r\n            <div class=\\"caseTab\\">\r\n              <ul>\r\n                <li class=\\"col-xs-6 col-sm-6 col-md-6\\">[!--info.pre--] </li>\r\n                <li class=\\"col-xs-6 col-sm-6 col-md-6\\"> [!--info.next--] </li>\r\n              </ul>\r\n            </div>\r\n          </div>\r\n        </div>\r\n      </div>\r\n    </div>\r\n  </div>\r\n</div>\r\n<script src=\\"/style/js/jquery.min.js\\"></script>\r\n<script src=\\"/style/js/bootstrap.min.js\\"></script>\r\n<script src=\\"/style/js/swiper-3.4.2.min.js\\"></script>\r\n<script src=\\"/style/js/rem.min.js\\"></script>\r\n<script src=\\"/style/js/qrcode.js\\"></script>\r\n[!--temp.footer--]\r\n\r\n<!--全局使用js，请放于footer-->\r\n<script src=\\"/style/js/nav.js\\"></script>\r\n\r\n \r\n<script src=\\"/style/js/base.js\\" type=\\"text/javascript\\" charset=\\"utf-8\\"></script>\r\n\r\n<script src=\\"/style/js/common.js\\"></script>\r\n<script src=\\"/style/js/color.js\\"></script>\r\n</body>\r\n</html>\r\n', 0, 0, '', 0, 1, 'Y-m-d', 0, 0, 0, 1615891714, 'newstemp', 1, 'admin'),
(30, 3, '公司简介模板', '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name=\\"Keywords\\" content=\\"[!--pagekey--]\\" />\r\n<meta name=\\"description\\" content=\\"[!--pagedes--]\\" />\r\n<link href=\\"[!--news.url--]skin/default/css/style.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<script type=\\"text/javascript\\" src=\\"[!--news.url--]skin/default/js/tabs.js\\"></script>\r\n</head>\r\n<body class=\\"showpage\\">\r\n[!--temp.header--]\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\">\r\n	<tr valign=\\"top\\">\r\n		<td class=\\"main\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"position\\">\r\n				<tr>\r\n					<td>您当前的位置：[!--newsnav--]</td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n				<tr>\r\n					<td>\r\n						<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"4\\" cellspacing=\\"1\\" bgcolor=\\"#FFFFFF\\">\r\n							<tr>\r\n								<td bgcolor=\\"#E1EFFB\\">&nbsp;&nbsp;<strong>[!--title--]</strong></td>\r\n							</tr>\r\n							<tr>\r\n								<td><table width=\\"0\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"0\\" cellspacing=\\"0\\">\r\n										<tr>\r\n											<td width=\\"25\\"><img src=\\"[!--news.url--]e/data/images/mod/center_1.gif\\" width=\\"25\\" height=\\"24\\" /></td>\r\n											<td background=\\"[!--news.url--]e/data/images/mod/box_1.gif\\">&nbsp;</td>\r\n											<td width=\\"25\\"><img src=\\"[!--news.url--]e/data/images/mod/center_2.gif\\" width=\\"25\\" height=\\"24\\" /></td>\r\n										</tr>\r\n										<tr>\r\n											<td background=\\"[!--news.url--]e/data/images/mod/box_4.gif\\">&nbsp;</td>\r\n											<td bgcolor=\\"#F3F3F3\\"><a href=\\"[!--news.url--]e/ViewImg/index.html?url=[!--picurl--]\\" target=\\"_blank\\"><img border=\\"0\\" src=\\"[!--picurl--]\\" class=\\"photoresize\\" /></a></td>\r\n											<td background=\\"[!--news.url--]e/data/images/mod/box_2.gif\\">&nbsp;</td>\r\n										</tr>\r\n										<tr>\r\n											<td><img src=\\"[!--news.url--]e/data/images/mod/center_3.gif\\" width=\\"25\\" height=\\"24\\" /></td>\r\n											<td background=\\"[!--news.url--]e/data/images/mod/box_3.gif\\">&nbsp;</td>\r\n											<td><img src=\\"[!--news.url--]e/data/images/mod/center_4.gif\\" width=\\"25\\" height=\\"24\\" /></td>\r\n										</tr>\r\n								</table></td>\r\n							</tr>\r\n							<tr>\r\n								<td><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"4\\" cellspacing=\\"1\\">\r\n										<tr>\r\n											<td colspan=\\"2\\" bgcolor=\\"#F4F9FD\\">&nbsp;&nbsp;<strong>图片资料</strong></td>\r\n										</tr>\r\n										<tr>\r\n											<td width=\\"80\\">图片名称：</td>\r\n											<td width=\\"462\\"> [!--title--]</td>\r\n										</tr>\r\n										<tr>\r\n											<td bgcolor=\\"#F8F8F8\\">人气：</td>\r\n											<td bgcolor=\\"#F8F8F8\\"> [!--onclick--]</td>\r\n										</tr>\r\n										<tr>\r\n											<td>图片尺寸：</td>\r\n											<td> [!--picsize--]</td>\r\n										</tr>\r\n										<tr>\r\n											<td bgcolor=\\"#F8F8F8\\">图片大小：</td>\r\n											<td bgcolor=\\"#F8F8F8\\"> [!--filesize--]</td>\r\n										</tr>\r\n										<tr>\r\n											<td>编辑：</td>\r\n											<td> [!--username--]</td>\r\n										</tr>\r\n										<tr>\r\n											<td bgcolor=\\"#F8F8F8\\">创建日期：</td>\r\n											<td bgcolor=\\"#F8F8F8\\"> [!--newstime--]</td>\r\n										</tr>\r\n										<tr>\r\n											<td valign=\\"top\\">简介：</td>\r\n											<td valign=\\"top\\">[!--picsay--]</td>\r\n										</tr>\r\n								</table></td>\r\n							</tr>\r\n												</table>						</td>\r\n				</tr>\r\n			</table>\r\n			[!--temp.pl--]</td>\r\n		<td class=\\"sider\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title\\">\r\n				<tr>\r\n					<td><strong>图片推荐</strong></td>\r\n				</tr>\r\n			</table>\r\n				<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"8\\" cellpadding=\\"0\\" class=\\"box\\">\r\n					<tr>\r\n						<td>[phomenewspic]\\''selfinfo\\'',2,4,128,90,1,20,2[/phomenewspic] </td>\r\n					</tr>\r\n				</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n					<tr>\r\n						<td><strong>最后更新</strong></td>\r\n					</tr>\r\n				</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n					<tr>\r\n						<td><ul>\r\n              <script src=\\''[!--news.url--]d/js/class/class[!--self.classid--]_newnews.js\\''></script> </ul></td>\r\n					</tr>\r\n				</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n					<tr>\r\n						<td><strong>热门点击</strong></td>\r\n					</tr>\r\n				</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n					<tr>\r\n						<td><ul>\r\n              <script src=\\''[!--news.url--]d/js/class/class[!--self.classid--]_hotnews.js\\''></script></ul></td>\r\n					</tr>\r\n			</table></td>\r\n	</tr>\r\n</table>\r\n[!--temp.footer--] [!--page.stats--]\r\n</body>\r\n</html>', 0, 0, '', 0, 1, 'Y-m-d H:i:s', 0, 0, 0, 1615891898, 'newstemp', 1, 'admin'),
(31, 4, '联系我们模板', '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name=\\"Keywords\\" content=\\"[!--pagekey--]\\" />\r\n<meta name=\\"description\\" content=\\"[!--pagedes--]\\" />\r\n<link href=\\"[!--news.url--]skin/default/css/style.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<script type=\\"text/javascript\\" src=\\"[!--news.url--]skin/default/js/tabs.js\\"></script>\r\n</head>\r\n<body class=\\"showpage\\">\r\n[!--temp.header--]\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\">\r\n	<tr valign=\\"top\\">\r\n		<td class=\\"main\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"position\\">\r\n				<tr>\r\n					<td>您当前的位置：[!--newsnav--]</td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n				<tr>\r\n					<td><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"4\\" cellspacing=\\"1\\" bgcolor=\\"#FFFFFF\\">\r\n						<tr>\r\n							<td align=\\"center\\" bgcolor=\\"#E1EFFB\\"><strong>[!--title--]</strong></td>\r\n						</tr>\r\n						<tr>\r\n							<td align=\\"center\\">[eshowphoto]11,0,0[/eshowphoto]</td>\r\n						</tr>\r\n						<tr>\r\n							<td>&nbsp;</td>\r\n						</tr>\r\n					</table></td>\r\n				</tr>\r\n			</table>\r\n			[!--temp.pl--]</td>\r\n		<td class=\\"sider\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title\\">\r\n				<tr>\r\n					<td><strong>图片推荐</strong></td>\r\n				</tr>\r\n			</table>\r\n				<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"8\\" cellpadding=\\"0\\" class=\\"box\\">\r\n					<tr>\r\n						<td>[phomenewspic]\\''selfinfo\\'',2,4,128,90,1,20,2[/phomenewspic] </td>\r\n					</tr>\r\n				</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n					<tr>\r\n						<td><strong>最后更新</strong></td>\r\n					</tr>\r\n				</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n					<tr>\r\n						<td><ul>\r\n              <script src=\\''[!--news.url--]d/js/class/class[!--self.classid--]_newnews.js\\''></script> </ul></td>\r\n					</tr>\r\n				</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n					<tr>\r\n						<td><strong>热门点击</strong></td>\r\n					</tr>\r\n				</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n					<tr>\r\n						<td><ul>\r\n              <script src=\\''[!--news.url--]d/js/class/class[!--self.classid--]_hotnews.js\\''></script></ul></td>\r\n					</tr>\r\n			</table></td>\r\n	</tr>\r\n</table>\r\n[!--temp.footer--] [!--page.stats--]\r\n</body>\r\n</html>', 0, 0, '', 0, 1, 'Y-m-d H:i:s', 0, 0, 0, 1615891933, 'newstemp', 1, 'admin'),
(32, 4, 'infoarea', '<div class=\\"proListTop\\">\r\n          \r\n          <img src=\\"/style/images/proL.png\\" alt=\\"业务中心\\" class=\\"proBg\\">\r\n          <div class=\\"prouctsTitle\\"> <img src=\\"/style/images/products.png\\" alt=\\"业务中心\\" class=\\"pro-ico\\">\r\n            <h3>业务中心</h3>\r\n            <p>Product</p>\r\n          </div>\r\n          \r\n        </div>\r\n        <div class=\\"row\\">\r\n          <div class=\\"proList_classify\\">\r\n  \r\n  <div class=\\"sidepromenu col-xs-6 col-sm-6 col-md-12 col-lg-12\\">\r\n    <div class=\\"proListclass1\\"><i></i> <a href=\\"/fwfw/\\" title=\\"服务范围\\" class=\\"proListclass2\\">服务范围</a><b></b></div>\r\n    <ul>\r\n      <li>\r\n        <p>\r\n          \r\n          <a href=\\"/fwfw/cngqcgz/\\" title=\\"CNG汽车改装\\"  class=\\"cur\\"><b></b><span> CNG汽车改装</span></a>\r\n          \r\n          <a href=\\"/fwfw/ygqfw/\\" title=\\"油改气服务\\"><b></b><span>油改气服务</span></a>\r\n          \r\n          <a href=\\"/fwfw/cngwx/\\" title=\\"CNG维修\\"><b></b><span>CNG维修</span></a>\r\n          \r\n          \r\n        </p>\r\n      </li>\r\n    </ul>\r\n  </div>\r\n  \r\n  <div class=\\"sidepromenu col-xs-6 col-sm-6 col-md-12 col-lg-12\\">\r\n    <div class=\\"proListclass1\\"><i></i> <a href=\\"/xwzx/\\" title=\\"新闻中心\\" class=\\"proListclass2\\">新闻中心</a><b></b></div>\r\n    <ul>\r\n      <li>\r\n        <p>\r\n          \r\n          <a href=\\"/xwzx/gsxw/\\" title=\\"公司新闻\\"><b></b><span>公司新闻</span></a>\r\n          \r\n          <a href=\\"/xwzx/hydt/\\" title=\\"行业动态\\"><b></b><span>行业动态</span></a>\r\n          \r\n          <a href=\\"/xwzx/cjwt/\\" title=\\"常见问题\\"><b></b><span>常见问题</span></a>\r\n          \r\n          \r\n        </p>\r\n      </li>\r\n    </ul>\r\n  </div>\r\n  \r\n  <div class=\\"sidepromenu col-xs-6 col-sm-6 col-md-12 col-lg-12\\">\r\n    <div class=\\"proListclass1\\"><i></i> <a href=\\"/gssl/\\" title=\\"公司实力\\" class=\\"proListclass2\\">公司实力</a><b></b></div>\r\n    <ul>\r\n      <li>\r\n        <p>\r\n          \r\n          <a href=\\"/gssl/cgal/\\" title=\\"成功案例\\"><b></b><span>成功案例</span></a>\r\n          <a href=\\"/gssl/ryzz/\\" title=\\"荣誉资质\\"><b></b><span>荣誉资质</span></a>\r\n          <a href=\\"/gssl/khpj/\\" title=\\"客户评价\\"><b></b><span>客户评价</span></a>\r\n          <a href=\\"/gssl/gsly/\\" title=\\"公司掠影\\"><b></b><span>公司掠影</span></a>\r\n          \r\n        </p>\r\n      </li>\r\n    </ul>\r\n  </div>\r\n  <div class=\\"sidepromenu col-xs-6 col-sm-6 col-md-12 col-lg-12\\">\r\n    <div class=\\"proListclass1\\"><i></i> <a href=\\"/gywm/\\" title=\\"关于我们\\" class=\\"proListclass2\\">关于我们</a><b></b></div>\r\n    <ul>\r\n      <li>\r\n        <p>\r\n          \r\n          <a href=\\"/gywm/gsjj/\\" title=\\"公司简介\\"><b></b><span>公司简介</span></a>\r\n          <a href=\\"/gywm/qywh/\\" title=\\"企业文化\\"><b></b><span>企业文化</span></a>\r\n          <a href=\\"/gywm/zzjg/\\" title=\\"组织架构\\"><b></b><span>组织架构</span></a>\r\n          <a href=\\"/gywm/lxwm/\\" title=\\"联系我们\\"><b></b><span>联系我们</span></a>\r\n\r\n          \r\n        </p>\r\n      </li>\r\n    </ul>\r\n  </div>\r\n</div>\r\n\r\n        </div>', 0, 0, '分类信息区域导航', 0, 0, '', 0, 0, 0, 1615892998, 'tempvar', 1, 'admin');
INSERT INTO `dayuqixiu_enewstempbak` (`bid`, `tempid`, `tempname`, `temptext`, `subnews`, `isdefault`, `listvar`, `rownum`, `modid`, `showdate`, `subtitle`, `classid`, `docode`, `baktime`, `temptype`, `gid`, `lastuser`) VALUES
(33, 2, '新闻内容模板', '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<meta name=\\"Copyright\\" content=\\"All Rights Reserved btoe.cn\\" />\r\n<meta http-equiv=\\"X-UA-Compatible\\" content=\\"IE=edge,chrome=1\\" />\r\n<title>[!--pagetitle--]-达宇天然气汽车改装厂</title>\r\n<meta name=\\"keywords\\" content=\\"[!--pagekey--]\\" />\r\n<meta name=\\"description\\" content=\\"[!--pagedes--]\\" />\r\n<meta name=\\"viewport\\" content=\\"width=device-width, initial-scale=1\\">\r\n<link href=\\"/style/css/css.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<link rel=\\"stylesheet\\" type=\\"text/css\\" media=\\"screen\\" href=\\"/style/css/bootstrap.min.css\\" />\r\n<link rel=\\"stylesheet\\" type=\\"text/css\\" media=\\"screen\\" href=\\"/style/css/swiper-3.4.2.min.css\\" />\r\n<link rel=\\"stylesheet\\" type=\\"text/css\\" media=\\"screen\\" href=\\"/style/css/common.css\\" />\r\n \r\n \r\n<body>\r\n<div class=\\"topxunpan\\">\r\n	<div class=\\"center\\">\r\n		<p>\r\n        	<span>TEL：<i>19983727888</i></span>\r\n        	<span>TEL：<i>13458195618（微信同号）</i></span>\r\n            <span>E-MAIL：<i>123456@qq.com</i></span>\r\n        </p>\r\n        <div class=\\"thisxp\\">\r\n            <div class=\\"xp\\" id=\\"xunpanText\\" data-tiptitle=\\"请您登录网站后台查看！\\">\r\n                <img src=\\"/style/images/t_icon_05.png\\" alt=\\"询盘信息\\">\r\n                您暂无未读询盘信息!\r\n                <div id=\\"xunpantip\\"></div>\r\n            </div>\r\n        </div>\r\n        <p><a href=\\"#wjdh-message\\" title=\\"在线留言\\">在线留言</a></p>\r\n	</div>\r\n</div>\r\n	\r\n	[!--temp.header--]\r\n\r\n\r\n<!-- mbanner --><div class=\\"mbanner col-lg-12 col-md-12\\">\r\n	<div class=\\"row\\">\r\n	  \r\n    <img src=\\"/style/images/6d048635137b7d977f837756274324ab@1920X320.jpg\\" alt=\\"新闻资讯\\">\r\n    \r\n  </div>\r\n</div>\r\n<div class=\\"clearboth\\"></div>\r\n\r\n<!-- caseMenu -->\r\n<div class=\\"caseMenuTop\\">\r\n  <div class=\\"container\\">\r\n    <div class=\\"row\\">\r\n      <div class=\\"caseMenuL col-lg-9 col-md-9 col-sm-9 col-xs-9\\"> <i><img src=\\"/style/images/locationIco.png\\" alt=\\"当前位置\\"></i>\r\n        当前位置：[!--newsnav--]\r\n      </div>\r\n      <div class=\\"caseMenuR col-xs-3 col-sm-3 col-md-3 col-lg-3\\"> <i class=\\"text-right\\"><a href=\\"javascript:;\\" onClick=\\"javascript :history.back(-1);\\">返回<img src=\\"/style/images/ca1.png\\" alt=\\"返回\\"></a></i> </div>\r\n      <div class=\\"clearboth\\"></div>\r\n    </div>\r\n  </div>\r\n</div>\r\n<div class=\\"clearboth\\"></div>\r\n<div class=\\"proList\\">\r\n  <div class=\\"container\\">\r\n    <div class=\\"row\\">\r\n      <div class=\\" proListL  col-xs-12 col-lg-2-0 \\">\r\n        [!--temp.infoarea--]\r\n\r\n        <div class=\\"row\\">\r\n          <div class=\\"proHot\\"> <i><img src=\\"/style/images/proHotIco.png\\" alt=\\"热门推荐\\">热门推荐</i>\r\n            <div class=\\"proList_sort\\">\r\n              <div class=\\"swiper-container proList_sort1\\">\r\n                <ul class=\\"swiper-wrapper\\">\r\n                  \r\n                  <li class=\\"swiper-slide col-xs-12 col-sm-12 col-md-12 col-lg-12\\"> <a href=\\"/cngwx/883210.html\\" class=\\"proHotimg\\"><img src=\\"/style/images/4aa6b2e96e5268c7f77ca3cad0d21010.jpg\\" alt=\\"达州CNG汽车维修\\"></a> <a href=\\"/cngwx/883210.html\\" class=\\"proHot_txt\\">达州CNG汽车维修</a> </li>\r\n                  \r\n                  <li class=\\"swiper-slide col-xs-12 col-sm-12 col-md-12 col-lg-12\\"> <a href=\\"/p2/883206.html\\" class=\\"proHotimg\\"><img src=\\"/style/images/55cfa301baf1cdbac6253f6a4f63a846.jpg\\" alt=\\"达州CNG改装公司\\"></a> <a href=\\"/p2/883206.html\\" class=\\"proHot_txt\\">达州CNG改装公司</a> </li>\r\n                  \r\n                  <li class=\\"swiper-slide col-xs-12 col-sm-12 col-md-12 col-lg-12\\"> <a href=\\"/p2/883202.html\\" class=\\"proHotimg\\"><img src=\\"/style/images/9a981c16c6031cbe428b389b06a691a5.jpg\\" alt=\\"达州CNG汽车改装厂家\\"></a> <a href=\\"/p2/883202.html\\" class=\\"proHot_txt\\">达州CNG汽车改装厂家</a> </li>\r\n                  \r\n                  <li class=\\"swiper-slide col-xs-12 col-sm-12 col-md-12 col-lg-12\\"> <a href=\\"/p1/883195.html\\" class=\\"proHotimg\\"><img src=\\"/style/images/0d05cc02a55543db9c684a0a81dc51f1.jpg\\" alt=\\"达州私家车油改气\\"></a> <a href=\\"/p1/883195.html\\" class=\\"proHot_txt\\">达州私家车油改气</a> </li>\r\n                  \r\n                </ul>\r\n                <!-- Add Arrows -->\r\n                <div class=\\"pro-next col-xs-6 col-sm-6 col-md-6 col-lg-6\\"><img src=\\"/style/images/proLL.png\\" alt=\\"左\\"></div>\r\n                <div class=\\"pro-prev col-xs-6 col-sm-6 col-md-6 col-lg-6\\"><img src=\\"/style/images/proLr.png\\" alt=\\"右\\"></div>\r\n              </div>\r\n            </div>\r\n          </div>\r\n        </div>\r\n      </div>\r\n      <div class=\\"proListR  col-xs-12  col-lg-8-0 \\">\r\n        <div class=\\"newsdetails col-xs-12 col-sm-12 col-md-12 col-lg-12\\">\r\n          <div class=\\"caseCenter\\">\r\n            <div class=\\"caseCmenu\\">\r\n              <h3>[!--pagetitle--]</h3>\r\n              <span class=\\"casemfx\\"> 所属分类：[!--class.name--] &nbsp;&nbsp;\r\n              \r\n              \r\n              \r\n              发布时间：\r\n              [!--newstime--]\r\n              &nbsp;&nbsp;\r\n              \r\n              \r\n              \r\n              作者：[!--writer--]\r\n\r\n            <div class=\\"caseContainer\\">\r\n              [!--newstext--]</div>\r\n            <div class=\\"caseTab\\">\r\n              <ul>\r\n                <li class=\\"col-xs-6 col-sm-6 col-md-6\\">[!--info.pre--] </li>\r\n                <li class=\\"col-xs-6 col-sm-6 col-md-6\\"> [!--info.next--] </li>\r\n              </ul>\r\n            </div>\r\n          </div>\r\n        </div>\r\n      </div>\r\n    </div>\r\n  </div>\r\n</div>\r\n<script src=\\"/style/js/jquery.min.js\\"></script>\r\n<script src=\\"/style/js/bootstrap.min.js\\"></script>\r\n<script src=\\"/style/js/swiper-3.4.2.min.js\\"></script>\r\n<script src=\\"/style/js/rem.min.js\\"></script>\r\n<script src=\\"/style/js/qrcode.js\\"></script>\r\n[!--temp.footer--]\r\n\r\n<!--全局使用js，请放于footer-->\r\n<script src=\\"/style/js/nav.js\\"></script>\r\n\r\n \r\n<script src=\\"/style/js/base.js\\" type=\\"text/javascript\\" charset=\\"utf-8\\"></script>\r\n\r\n<script src=\\"/style/js/common.js\\"></script>\r\n<script src=\\"/style/js/color.js\\"></script>\r\n</body>\r\n</html>\r\n', 0, 0, '', 0, 1, 'Y-m-d', 0, 0, 0, 1615893155, 'newstemp', 1, 'admin'),
(35, 2, '新闻内容模板', '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<meta name=\\"Copyright\\" content=\\"All Rights Reserved btoe.cn\\" />\r\n<meta http-equiv=\\"X-UA-Compatible\\" content=\\"IE=edge,chrome=1\\" />\r\n<title>[!--pagetitle--]-达宇天然气汽车改装厂</title>\r\n<meta name=\\"keywords\\" content=\\"[!--pagekey--]\\" />\r\n<meta name=\\"description\\" content=\\"[!--pagedes--]\\" />\r\n<meta name=\\"viewport\\" content=\\"width=device-width, initial-scale=1\\">\r\n<link href=\\"/style/css/css.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<link rel=\\"stylesheet\\" type=\\"text/css\\" media=\\"screen\\" href=\\"/style/css/bootstrap.min.css\\" />\r\n<link rel=\\"stylesheet\\" type=\\"text/css\\" media=\\"screen\\" href=\\"/style/css/swiper-3.4.2.min.css\\" />\r\n<link rel=\\"stylesheet\\" type=\\"text/css\\" media=\\"screen\\" href=\\"/style/css/common.css\\" />\r\n \r\n \r\n<body>\r\n<div class=\\"topxunpan\\">\r\n	<div class=\\"center\\">\r\n		<p>\r\n        	<span>TEL：<i>19983727888</i></span>\r\n        	<span>TEL：<i>13458195618（微信同号）</i></span>\r\n            <span>E-MAIL：<i>123456@qq.com</i></span>\r\n        </p>\r\n        <div class=\\"thisxp\\">\r\n            <div class=\\"xp\\" id=\\"xunpanText\\" data-tiptitle=\\"请您登录网站后台查看！\\">\r\n                <img src=\\"/style/images/t_icon_05.png\\" alt=\\"询盘信息\\">\r\n                您暂无未读询盘信息!\r\n                <div id=\\"xunpantip\\"></div>\r\n            </div>\r\n        </div>\r\n        <p><a href=\\"#wjdh-message\\" title=\\"在线留言\\">在线留言</a></p>\r\n	</div>\r\n</div>\r\n	\r\n	[!--temp.header--]\r\n\r\n\r\n<!-- mbanner --><div class=\\"mbanner col-lg-12 col-md-12\\">\r\n	<div class=\\"row\\">\r\n	  \r\n    <img src=\\"/style/images/6d048635137b7d977f837756274324ab@1920X320.jpg\\" alt=\\"新闻资讯\\">\r\n    \r\n  </div>\r\n</div>\r\n<div class=\\"clearboth\\"></div>\r\n\r\n<!-- caseMenu -->\r\n<div class=\\"caseMenuTop\\">\r\n  <div class=\\"container\\">\r\n    <div class=\\"row\\">\r\n      <div class=\\"caseMenuL col-lg-9 col-md-9 col-sm-9 col-xs-9\\"> <i><img src=\\"/style/images/locationIco.png\\" alt=\\"当前位置\\"></i>\r\n        当前位置：[!--newsnav--]\r\n      </div>\r\n      <div class=\\"caseMenuR col-xs-3 col-sm-3 col-md-3 col-lg-3\\"> <i class=\\"text-right\\"><a href=\\"javascript:;\\" onClick=\\"javascript :history.back(-1);\\">返回<img src=\\"/style/images/ca1.png\\" alt=\\"返回\\"></a></i> </div>\r\n      <div class=\\"clearboth\\"></div>\r\n    </div>\r\n  </div>\r\n</div>\r\n<div class=\\"clearboth\\"></div>\r\n<div class=\\"proList\\">\r\n  <div class=\\"container\\">\r\n    <div class=\\"row\\">\r\n      <div class=\\" proListL  col-xs-12 col-lg-2-0 \\">\r\n        [!--temp.infoarea--]\r\n\r\n\r\n      </div>\r\n      <div class=\\"proListR  col-xs-12  col-lg-8-0 \\">\r\n        <div class=\\"newsdetails col-xs-12 col-sm-12 col-md-12 col-lg-12\\">\r\n          <div class=\\"caseCenter\\">\r\n            <div class=\\"caseCmenu\\">\r\n              <h3>[!--pagetitle--]</h3>\r\n              <span class=\\"casemfx\\"> 所属分类：[!--class.name--] &nbsp;&nbsp;\r\n              \r\n              \r\n              \r\n              发布时间：\r\n              [!--newstime--]\r\n              &nbsp;&nbsp;\r\n              \r\n              \r\n              \r\n              作者：[!--writer--]\r\n\r\n            <div class=\\"caseContainer\\">\r\n              [!--newstext--]</div>\r\n            <div class=\\"caseTab\\">\r\n              <ul>\r\n                <li class=\\"col-xs-6 col-sm-6 col-md-6\\">[!--info.pre--] </li>\r\n                <li class=\\"col-xs-6 col-sm-6 col-md-6\\"> [!--info.next--] </li>\r\n              </ul>\r\n            </div>\r\n          </div>\r\n        </div>\r\n      </div>\r\n    </div>\r\n  </div>\r\n</div>\r\n<script src=\\"/style/js/jquery.min.js\\"></script>\r\n<script src=\\"/style/js/bootstrap.min.js\\"></script>\r\n<script src=\\"/style/js/swiper-3.4.2.min.js\\"></script>\r\n<script src=\\"/style/js/rem.min.js\\"></script>\r\n<script src=\\"/style/js/qrcode.js\\"></script>\r\n[!--temp.footer--]\r\n\r\n<!--全局使用js，请放于footer-->\r\n<script src=\\"/style/js/nav.js\\"></script>\r\n\r\n \r\n<script src=\\"/style/js/base.js\\" type=\\"text/javascript\\" charset=\\"utf-8\\"></script>\r\n\r\n<script src=\\"/style/js/common.js\\"></script>\r\n<script src=\\"/style/js/color.js\\"></script>\r\n</body>\r\n</html>\r\n', 0, 0, '', 0, 1, 'Y-m-d', 0, 0, 0, 1615893280, 'newstemp', 1, 'admin');

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewstempdt`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewstempdt` (
  `tempid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tempvar` char(30) NOT NULL DEFAULT '',
  `tempname` char(30) NOT NULL DEFAULT '',
  `tempsay` char(255) NOT NULL DEFAULT '',
  `tempfile` char(200) NOT NULL DEFAULT '',
  `myorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `temptype` char(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`tempid`),
  UNIQUE KEY `tempvar` (`tempvar`),
  KEY `temptype` (`temptype`),
  KEY `myorder` (`myorder`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=58 ;

--
-- 转存表中的数据 `dayuqixiu_enewstempdt`
--

INSERT INTO `dayuqixiu_enewstempdt` (`tempid`, `tempvar`, `tempname`, `tempsay`, `tempfile`, `myorder`, `temptype`) VALUES
(1, 'header', '主界面头部', '主界面头部', 'e/template/incfile/header.php', 0, 'incfile'),
(2, 'footer', '主界面尾部', '主界面尾部', 'e/template/incfile/footer.php', 0, 'incfile'),
(3, 'qDoInfo', '管理投稿首页', '管理投稿首页', 'e/template/DoInfo/DoInfo.php', 0, 'doinfo'),
(4, 'qChangeClass', '投稿选择栏目页', '投稿选择栏目页', 'e/template/DoInfo/ChangeClass.php', 0, 'doinfo'),
(5, 'qDoInfoTran', '发布投稿上传附件页面', '发布投稿上传附件页面', 'e/template/DoInfo/tran.php', 0, 'doinfo'),
(6, 'qAddInfo', '发布投稿页', '发布投稿页', 'e/template/DoInfo/AddInfo.php', 0, 'doinfo'),
(7, 'qListInfo', '默认管理投稿列表页', '默认管理投稿列表页', 'e/data/html/list/qlistinfo.php', 0, 'doinfo'),
(8, 'report', '提交错误报告页面', '提交错误报告页面', 'e/template/public/report.php', 0, 'pubtemp'),
(9, 'payapi', '在线支付页面', '在线支付页面', 'e/template/payapi/payapi.php', 0, 'pubtemp'),
(10, 'infovote', '信息投票页面', '信息投票页面', 'e/template/public/vote.php', 0, 'pubtemp'),
(11, 'vote', '投票插件页面', '投票插件页面', 'e/template/tool/vote.php', 0, 'pubtemp'),
(12, 'ShopBurcar', '购物车页面', '购物车页面', 'e/template/ShopSys/buycar.php', 0, 'shopsys'),
(13, 'ShopOrder', '提交订单页面', '提交订单页面', 'e/template/ShopSys/order.php', 0, 'shopsys'),
(14, 'ShopSubmitOrder', '确认提交订单页面', '确认提交订单页面', 'e/template/ShopSys/SubmitOrder.php', 0, 'shopsys'),
(15, 'ShopListDd', '订单列表页面', '订单列表页面', 'e/template/ShopSys/ListDd.php', 0, 'shopsys'),
(16, 'ShopShowDd', '订单详细页面', '订单详细页面', 'e/template/ShopSys/ShowDd.php', 0, 'shopsys'),
(17, 'ShopBurcarForm', '购物车-加入表单模板', '购物车-加入表单模板', 'e/template/ShopSys/buycar/buycar_form.php', 0, 'shopsys'),
(18, 'ShopBurcarOrder', '购物车-确认订单模板', '购物车-确认订单模板', 'e/template/ShopSys/buycar/buycar_order.php', 0, 'shopsys'),
(19, 'ShopBurcarShowdd', '购物车-显示订单模板', '购物车-显示订单模板', 'e/template/ShopSys/buycar/buycar_showdd.php', 0, 'shopsys'),
(20, 'ShopAddAddress', '增加配送地址页面', '增加配送地址页面', 'e/template/ShopSys/AddAddress.php', 0, 'shopsys'),
(21, 'ShopListAddress', '管理配送地址页面', '管理配送地址页面', 'e/template/ShopSys/ListAddress.php', 0, 'shopsys'),
(22, 'MemberReg', '会员注册页面', '会员注册页面', 'e/template/member/register.php', 0, 'member'),
(23, 'MemberChangeReg', '选择注册类型页面', '选择注册类型页面', 'e/template/member/ChangeRegister.php', 0, 'member'),
(24, 'MemberRegsend', '重发注册激活邮件页面', '重发注册激活邮件页面', 'e/template/member/regsend.php', 0, 'member'),
(25, 'MemberLogin', '会员登录页面', '会员登录页面', 'e/template/member/login.php', 0, 'member'),
(26, 'MemberLoginopen', '会员登录弹出页面', '会员登录弹出页面', 'e/template/member/loginopen.php', 0, 'member'),
(27, 'MemberEditinfo', '修改会员信息页面', '修改会员信息页面', 'e/template/member/EditInfo.php', 0, 'member'),
(28, 'MemberEditsafeinfo', '修改会员安全信息页面', '修改会员安全信息页面', 'e/template/member/EditSafeInfo.php', 0, 'member'),
(29, 'MemberGetPassword', '取回密码页面', '取回密码页面', 'e/template/member/GetPassword.php', 0, 'member'),
(30, 'MemberGetResetPass', '取回密码重置页面', '取回密码重置页面', 'e/template/member/getpass.php', 0, 'member'),
(31, 'MemberCp', '会员中心首页', '会员中心首页', 'e/template/member/cp.php', 0, 'member'),
(32, 'MemberMy', '会员状态页面', '会员状态页面', 'e/template/member/my.php', 0, 'member'),
(33, 'MemberShowInfo', '查看会员信息页面', '查看会员信息页面', 'e/template/member/ShowInfo.php', 0, 'member'),
(34, 'MemberList1', '默认会员列表页面', '默认会员列表页面', 'e/template/member/memberlist/1.php', 0, 'member'),
(35, 'MemberAddMsg', '发送站内消息页面', '发送站内消息页面', 'e/template/member/AddMsg.php', 0, 'membermsg'),
(36, 'MemberMsg', '站内消息列表页面', '站内消息列表页面', 'e/template/member/msg.php', 0, 'membermsg'),
(37, 'MemberViewMsg', '查看站内消息页面', '查看站内消息页面', 'e/template/member/ViewMsg.php', 0, 'membermsg'),
(38, 'MemberAddFriend', '增加好友页面', '增加好友页面', 'e/template/member/AddFriend.php', 0, 'memberfriend'),
(39, 'MemberFriend', '好友列表页面', '好友列表页面', 'e/template/member/friend.php', 0, 'memberfriend'),
(40, 'MemberFriendClass', '好友分类页面', '好友分类页面', 'e/template/member/FriendClass.php', 0, 'memberfriend'),
(41, 'MemberChangeFriend', '选择好友页面', '选择好友页面', 'e/template/member/ChangeFriend.php', 0, 'memberfriend'),
(42, 'MemberAddFava', '增加收藏信息页面', '增加收藏信息页面', 'e/template/member/AddFava.php', 0, 'memberfav'),
(43, 'MemberFava', '管理收藏页面', '管理收藏页面', 'e/template/member/fava.php', 0, 'memberfav'),
(44, 'MemberFavaClass', '管理收藏分类页面', '管理收藏分类页面', 'e/template/member/FavaClass.php', 0, 'memberfav'),
(45, 'MemberBuybak', '充值记录页面', '充值记录页面', 'e/template/member/buybak.php', 0, 'memberother'),
(46, 'MemberDownbak', '下载记录页面', '下载记录页面', 'e/template/member/downbak.php', 0, 'memberother'),
(47, 'MemberBuygroup', '购买会员类型页面', '购买会员类型页面', 'e/template/member/buygroup.php', 0, 'memberother'),
(48, 'MemberCard', '点卡充值页面', '点卡充值页面', 'e/template/member/card.php', 0, 'memberother'),
(49, 'MemberChangeStyle', '选择会员空间风格页面', '选择会员空间风格页面', 'e/template/member/mspace/ChangeStyle.php', 0, 'memberspace'),
(50, 'MemberSetSpace', '设置会员空间页面', '设置会员空间页面', 'e/template/member/mspace/SetSpace.php', 0, 'memberspace'),
(51, 'MemberFeedback', '管理会员空间反馈页面', '管理会员空间反馈页面', 'e/template/member/mspace/feedback.php', 0, 'memberspace'),
(52, 'MemberShowFeedback', '查看会员空间反馈页面', '查看会员空间反馈页面', 'e/template/member/mspace/ShowFeedback.php', 0, 'memberspace'),
(53, 'MemberGbook', '管理会员空间留言页面', '管理会员空间留言页面', 'e/template/member/mspace/gbook.php', 0, 'memberspace'),
(54, 'MemberReGbook', '回复会员空间留言页面', '回复会员空间留言页面', 'e/template/member/mspace/ReGbook.php', 0, 'memberspace'),
(55, 'MemberConnectListBind', '登录绑定管理页面', '登录绑定管理页面', 'e/template/memberconnect/ListBind.php', 0, 'memberconnect'),
(56, 'MemberConnectTobind', '绑定登录帐号页面', '绑定登录帐号页面', 'e/template/memberconnect/tobind.php', 0, 'memberconnect'),
(57, 'InfoViewLevel', '信息权限提示页面', '查看信息权限提示页面', 'e/template/public/checklevel/info1.php', 0, 'pubtemp');

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewstempgroup`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewstempgroup` (
  `gid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `gname` varchar(60) NOT NULL DEFAULT '',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`gid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `dayuqixiu_enewstempgroup`
--

INSERT INTO `dayuqixiu_enewstempgroup` (`gid`, `gname`, `isdefault`) VALUES
(1, '默认模板组', 1);

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewstempvar`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewstempvar` (
  `varid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `myvar` varchar(60) NOT NULL DEFAULT '',
  `varname` varchar(60) NOT NULL DEFAULT '',
  `varvalue` mediumtext NOT NULL,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `isclose` tinyint(1) NOT NULL DEFAULT '0',
  `myorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`varid`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `dayuqixiu_enewstempvar`
--

INSERT INTO `dayuqixiu_enewstempvar` (`varid`, `myvar`, `varname`, `varvalue`, `classid`, `isclose`, `myorder`) VALUES
(1, 'header', '页面头部', '<!-- 导航 -->\r\n<div class=\\"nav_xiala_xx\\" id=\\"fixedNav\\">\r\n	<div class=\\"w1200\\">\r\n    	<h1><a href=\\"/\\"><img src=\\"/style/images/1a30b08e9700543c8038b9067eccb79c@248X54.png\\" alt=\\"达宇天然气汽车改装厂\\" class=\\"logo\\" /></a></h1>\r\n        <div class=\\"search\\">\r\n        	<input class=\\"input\\" type=\\"text\\" value=\\"输入搜索内容...\\" onFocus=\\"value=\\''\\''\\" onBlur=\\"if(!value)value=defaultValue\\" id=\\"keywords\\" name=\\"keywords\\">\r\n        	<button class=\\"button\\" onClick=\\"wjdh.methods.search(\\''#keywords\\'');\\"></button>\r\n        </div>\r\n		<ul class=\\"nav_yiji\\">\r\n			\r\n			<li class=\\"active\\">\r\n			  \r\n			  <a href=\\"/\\" class=\\"one\\" title=\\"网站首页\\">达宇首页</a></li>\r\n			\r\n			<li>\r\n			  \r\n			  <a href=\\"/fwfw/cngqcgz/\\"  title=\\"CNG汽车改装\\"  class=\\"one\\" >CNG汽车改装</a>\r\n			  \r\n			</li>\r\n			\r\n			<li>\r\n			  \r\n			  <a href=\\"/fwfw/\\"  title=\\"业务中心\\"  class=\\"one\\" >服务范围</a>\r\n			  \r\n			  <div class=\\"nav_erji\\">\r\n				<div class=\\"jz\\">\r\n				  <div class=\\"hd\\">\r\n					<ul>\r\n					  <!-- 注意：这里的li数量和下面class=\\''main\\''的数量要一样 -->\r\n					  \r\n					  <li class=\\"on\\"><a href=\\"/fwfw/cngqcgz/\\" title=\\"CNG汽车改装\\">CNG汽车改装</a></li>\r\n					  \r\n					  <li><a href=\\"/fwfw/qgyfw/\\" title=\\"油改气服务\\">油改气服务</a></li>\r\n					  \r\n					  <li><a href=\\"/fwfw/cngwx/\\" title=\\"CNG维修\\">CNG维修</a></li>\r\n					  \r\n					</ul>\r\n				  </div>\r\n				  <div class=\\"bd\\">\r\n					\r\n					<div class=\\"main\\">\r\n					  <ul>\r\n						 [e:loop={5,5,0,1}]\r\n						<li> <a href=\\"<?=$bqsr[\\''titleurl\\'']?>\\" class=\\"img\\"><img src=\\"<?=$bqr[\\''titlepic\\'']?>\\" alt=\\"<?=$bqr[\\''title\\'']?>\\" /></a> <a href=\\"<?=$bqsr[\\''titleurl\\'']?>\\" class=\\"name\\"><?=$bqr[\\''title\\'']?></a> </li>\r\n						\r\n                       \r\n\r\n[/e:loop]\r\n					  </ul>\r\n					</div>\r\n					\r\n					<div class=\\"main\\">\r\n					  <ul>\r\n						[e:loop={6,5,0,1}]\r\n						\r\n						<li> <a href=\\"<?=$bqsr[\\''titleurl\\'']?>\\" class=\\"img\\"><img src=\\"<?=$bqr[\\''titlepic\\'']?>\\" alt=\\"<?=$bqr[\\''title\\'']?>\\" /></a> <a href=\\"<?=$bqsr[\\''titleurl\\'']?>\\" class=\\"name\\"><?=$bqr[\\''title\\'']?></a> </li>\r\n[/e:loop]\r\n\r\n						\r\n					  </ul>\r\n					</div>\r\n					\r\n					<div class=\\"main\\">\r\n					  <ul>\r\n						[e:loop={7,1,0,1}]\r\n						<li> <a href=\\"<?=$bqsr[\\''titleurl\\'']?>\\" class=\\"img\\"><img src=\\"<?=$bqr[\\''titlepic\\'']?>\\" alt=\\"<?=$bqr[\\''title\\'']?>\\" /></a> <a href=\\"/fwfw/cngwx/\\" class=\\"name\\"><?=$bqr[\\''title\\'']?></a> </li>\r\n						\r\n\r\n[/e:loop]\r\n					  </ul>\r\n					</div>\r\n					\r\n				  </div>\r\n				</div>\r\n			  </div>\r\n			  \r\n			</li>\r\n			\r\n			<li>\r\n			  \r\n			  <a href=\\"/gssl/cgal/\\"  title=\\"改装案例\\"  class=\\"one\\" >改装案例</a>\r\n			  \r\n			</li>\r\n			\r\n			<li>\r\n			  \r\n			  <a href=\\"/gywm/gsjj/\\"  title=\\"公司简介\\"  class=\\"one\\" >公司简介</a>\r\n			  \r\n			</li>\r\n			\r\n			<li>\r\n			  \r\n			  <a href=\\"/xwzx/\\"  title=\\"新闻资讯\\"  class=\\"one\\" >新闻资讯</a>\r\n			  \r\n			  <div class=\\"nav_erji\\">\r\n				<div class=\\"jz\\">\r\n				  <div class=\\"hd\\">\r\n					<ul>\r\n					  <!-- 注意：这里的li数量和下面class=\\''main\\''的数量要一样 -->\r\n					  \r\n					  <li class=\\"on\\"><a href=\\"/xwzx/gsxw/\\" title=\\"公司新闻\\">公司新闻</a></li>\r\n					  \r\n					  <li><a href=\\"/xwzx/hyxw/\\" title=\\"行业新闻\\">行业新闻</a></li>\r\n					  \r\n					</ul>\r\n				  </div>\r\n				  <div class=\\"bd\\">\r\n					\r\n					<div class=\\"main\\">\r\n                    			[e:loop={9,6,0,0}]\r\n\r\n\r\n					  <a href=\\"<?=$bqsr[\\''titleurl\\'']?>\\" class=\\"xw\\"> <span class=\\"title\\"><?=$bqr[\\''title\\'']?></span> <span class=\\"desc\\"><?=$bqr[smalltext]?></span> </a>\r\n\r\n			[/e:loop]\r\n					  \r\n\r\n					  \r\n\r\n					  \r\n					</div>\r\n					\r\n					<div class=\\"main\\">\r\n					  \r\n					  <a href=\\"/fwfw/ygqfw/\\" class=\\"xw\\"> <span class=\\"title\\">达州油改气有何优点，来看看吧</span> <span class=\\"desc\\">今年来的油价上涨的让人猝不及防，对于刚买新车或者资金不是很宽裕的车主，面对不断上涨的油价，苦不堪言，因此，达州油改气，变成了许多车主的不二选择。（1）达州油改气有较高的经济效益。在相同的当量热值下，世界各国一般将lm天然气的价格控制为1L，在发动机热效率相同的条件下，单用天然气作为燃料的汽车的燃料费用大约是汽油车或柴油...</span> </a>\r\n					  \r\n					  <a href=\\"/fwfw/ygqfw/\\" class=\\"xw\\"> <span class=\\"title\\">亲们你们有没有注意，探索逐步放开“达州油改气”限制啦！</span> <span class=\\"desc\\">达州市 燃气协会会长：“主张政府部门赶快取消对车辆的约束性‘达州油改气’方针，取消CNG车辆改装目标约束，简化改装车辆手续，调整改装车辆年限规则，实在提高CNG在车用燃料中所占份额”市经信委 相关负责...</span> </a>\r\n					  \r\n					  <a href=\\"/fwfw/cngqcgz/\\" class=\\"xw\\"> <span class=\\"title\\">浅析达州CNG改装汽车5大重点</span> <span class=\\"desc\\">达宇小编深度浅析达州CNG改装汽车5大重点之一排放功能：天然气作为一种气体燃料，与空气混合更均匀，焚烧愈加充沛，排放的CO 、HC等有害物质更少；其他一些没有受排放法规控制的有害成分（如对区域环境影响...</span> </a>\r\n					  \r\n					  <a href=\\"/fwfw/qcgz/\\" class=\\"xw\\"> <span class=\\"title\\">浅析汽车天然气改装的市场现状和发展前景</span> <span class=\\"desc\\">我司致力于汽车天然气改装和维修，今天给大家分享汽车天然气改装的市场现状和未来发展方向，感兴趣的小伙伴一起来了解下吧。天然气改装因其环保经济的优点，受到大众的广泛关注，并且很多类似的企业也突然发展起来。...</span> </a>\r\n					  \r\n					  <a href=\\"/fwfw/qcby/\\" class=\\"xw\\"> <span class=\\"title\\">注意啦！汽车油改气后对发动机的保养可不能忽略</span> <span class=\\"desc\\">汽车油改气后我们应该注意哪些事项，小编告诉你，对于发动机的保养是重中之重，不能忽略，下面跟对小编一起来了解下保养发动机的要点吧！汽车油改气后基本以使用天然气为主，所以发动机都是偏向天然气的使用特点进行...</span> </a>\r\n					  \r\n					  <a href=\\"/fwfw/qcwx/\\" class=\\"xw\\"> <span class=\\"title\\">知道吗？定期清洁改装天然气汽车节气门很重要</span> <span class=\\"desc\\">改装天然气汽车后我们应做好定期清洁汽车节气门，这是为什么呢？清洁有什么作用？我们先要了解什么是节气门？节气门也就是调节发动机进气量的阀门，调节它的机构就在你的右脚下——油门。油门踩下去越深节气门开启度...</span> </a>\r\n					  \r\n					</div>\r\n					\r\n				  </div>\r\n				</div>\r\n\r\n			  </div>\r\n			  \r\n			</li>\r\n			\r\n			<li>\r\n			  \r\n			  <a href=\\"/gywm/lxwm/\\"  title=\\"联系我们\\"  class=\\"one\\" >联系我们</a>\r\n			  \r\n			</li>\r\n			\r\n		</ul>\r\n	</div>\r\n</div>', 0, 0, 1),
(2, 'footer', '页面尾部', '	<!-- 底部信息  -->\r\n	<div class=\\"footer\\">\r\n		<div class=\\"center\\">\r\n			<ul class=\\"left\\">\r\n				<li>\r\n					<p>服务范围</p>\r\n\r\n					<a href=\\"/fwfw/cngqcgz/\\" title=\\"CNG汽车改装\\">CNG汽车改装</a>\r\n\r\n					<a href=\\"/fwfw/ygqfw/\\" title=\\"油改气服务\\">油改气服务</a>\r\n\r\n					<a href=\\"/fwfw/cngwx/\\" title=\\"CNG维修\\">CNG维修</a>\r\n\r\n				</li>\r\n				<li>\r\n					<p>新闻中心</p>\r\n\r\n					<a href=\\"/xwzx/gsxw/\\" title=\\"公司新闻\\">公司新闻</a>\r\n\r\n					<a href=\\"/xwzx/hydt/\\" title=\\"行业动态\\">行业动态</a>\r\n					<a href=\\"/xwzx/cjwt/\\" title=\\"常见问题\\">常见问题</a>\r\n\r\n				</li>\r\n				<li>\r\n					<p>公司实力</p>\r\n\r\n					<a href=\\"/gssl/cgal/\\" title=\\"成功案例\\">成功案例</a>\r\n\r\n					<a href=\\"/gssl/ryzz/\\" title=\\"荣誉资质\\">荣誉资质</a>\r\n\r\n					<a href=\\"/gssl/khpj/\\" title=\\"客户评价\\">客户评价</a>\r\n\r\n					<a href=\\"/gssl/gsly/\\" title=\\"公司掠影\\">公司掠影</a>\r\n\r\n				</li>\r\n				<li>\r\n					<p>关于我们</p>\r\n\r\n					<a href=\\"/gywm/gsjj/\\" title=\\"公司简介\\">公司简介</a>\r\n\r\n					<a href=\\"/gywm/qywh/\\" title=\\"企业文化\\">企业文化</a>\r\n\r\n					<a href=\\"/gywm/zzjg/\\" title=\\"组织架构\\">组织架构</a>\r\n					<a href=\\"/gywm/lxwm/\\" title=\\"联系我们\\">联系我们</a>\r\n\r\n				</li>\r\n			</ul>\r\n			<div class=\\"mid\\">\r\n				<h4>联系我们</h4>\r\n				<p>电话：<span>19983727888</span></p>\r\n				<p>座机：<span>123456</span></p>\r\n				<p>邮箱：<span>123456@qq.com</span></p>\r\n				<p>地址：<span>达州市高新区斌朗乡木瓜村源金汽车城内</span></p>\r\n			</div>\r\n			<div class=\\"right\\">\r\n				<h4>二维码</h4>\r\n				<img src=\\"/style/images/8bfaee0be5ecfcfd7c50baba32667e83@260X260.png\\" alt=\\"扫一扫\\" />\r\n			</div>\r\n		</div>\r\n		<div class=\\"copy\\">\r\n			<p>\r\n				<span>Copyright © 达宇天然气汽车改装厂 版权所有</span>\r\n				<span>备案号： 蜀ICP备16023211号-2<a href=\\"http://beian.miit.gov.cn\\" target=\\"_blank\\" title=\\"  \\" rel=\\"nofollow\\">\r\n					</a></span>\r\n			</p>\r\n\r\n			<p>\r\n				<span><a href=\\"/sitemap.html\\" title=\\"网站地图\\">网站地图</a> <a href=\\"/rss.xml\\" title=\\"RSS\\">RSS</a> <a\r\n						href=\\"/sitemap.xml\\" title=\\"XML\\">XML</a></span>\r\n\r\n				<span>技术支持：舜王科技 </span>\r\n\r\n			</p>\r\n		</div>\r\n	</div>', 0, 0, 0),
(3, 'dtheader', '动态页面头部', '<!-- 页头 -->\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"top\\">\r\n<tr>\r\n<td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\">\r\n<tr>\r\n<td width=\\"63%\\">\r\n<!-- 登录 -->\r\n<script>\r\ndocument.write(\\''<script src=\\"[!--news.url--]e/member/login/loginjs.php?t=\\''+Math.random()+\\''\\"><\\''+\\''/script>\\'');\r\n</script>\r\n</td>\r\n<td align=\\"right\\">\r\n<a onclick=\\"window.external.addFavorite(location.href,document.title)\\" href=\\"#ecms\\">加入收藏</a> | <a onclick=\\"this.style.behavior=\\''url(#default#homepage)\\'';this.setHomePage(\\''[!--news.url--]\\'')\\" href=\\"#ecms\\">设为首页</a> | <a href=\\"[!--news.url--]e/member/cp/\\">会员中心</a> | <a href=\\"[!--news.url--]e/DoInfo/\\">我要投稿</a> | <a href=\\"[!--news.url--]e/web/?type=rss2\\" target=\\"_blank\\">RSS<img src=\\"[!--news.url--]skin/default/images/rss.gif\\" border=\\"0\\" hspace=\\"2\\" /></a>\r\n</td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"10\\">\r\n<tr valign=\\"middle\\">\r\n<td width=\\"240\\" align=\\"center\\"><a href=\\"[!--news.url--]\\"><img src=\\"[!--news.url--]skin/default/images/logo.gif\\" width=\\"200\\" height=\\"65\\" border=\\"0\\" /></a></td>\r\n<td align=\\"center\\"><a href=\\"http://www.phome.net/OpenSource/\\" target=\\"_blank\\"><img src=\\"[!--news.url--]skin/default/images/opensource.gif\\" width=\\"100%\\" height=\\"70\\" border=\\"0\\" /></a></td>\r\n</tr>\r\n</table>\r\n<!-- 导航tab选项卡 -->\r\n<table width=\\"920\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"0\\" cellspacing=\\"0\\" class=\\"nav\\">\r\n  <tr> \r\n    <td class=\\"nav_global\\"><ul>\r\n        <li class=\\"curr\\" id=\\"tabnav_btn_0\\" onmouseover=\\"tabit(this)\\"><a href=\\"[!--news.url--]\\">首页</a></li>\r\n        <li id=\\"tabnav_btn_1\\" onmouseover=\\"tabit(this)\\"><a href=\\"[!--news.url--]news/\\">新闻中心</a></li>\r\n        <li id=\\"tabnav_btn_2\\" onmouseover=\\"tabit(this)\\"><a href=\\"[!--news.url--]download/\\">下载中心</a></li>\r\n        <li id=\\"tabnav_btn_3\\" onmouseover=\\"tabit(this)\\"><a href=\\"[!--news.url--]movie/\\">影视频道</a></li>\r\n        <li id=\\"tabnav_btn_4\\" onmouseover=\\"tabit(this)\\"><a href=\\"[!--news.url--]shop/\\">网上商城</a></li>\r\n        <li id=\\"tabnav_btn_5\\" onmouseover=\\"tabit(this)\\"><a href=\\"[!--news.url--]flash/\\">FLASH频道</a></li>\r\n        <li id=\\"tabnav_btn_6\\" onmouseover=\\"tabit(this)\\"><a href=\\"[!--news.url--]photo/\\">图片频道</a></li>\r\n        <li id=\\"tabnav_btn_7\\" onmouseover=\\"tabit(this)\\"><a href=\\"[!--news.url--]article/\\">文章中心</a></li>\r\n        <li id=\\"tabnav_btn_8\\" onmouseover=\\"tabit(this)\\"><a href=\\"[!--news.url--]info/\\">分类信息</a></li>\r\n      </ul></td>\r\n  </tr>\r\n</table>', 0, 0, 0),
(4, 'infoarea', '分类信息区域导航', '<div class=\\"proListTop\\">\r\n          \r\n          <img src=\\"/style/images/proL.png\\" alt=\\"业务中心\\" class=\\"proBg\\">\r\n          <div class=\\"prouctsTitle\\"> <img src=\\"/style/images/products.png\\" alt=\\"业务中心\\" class=\\"pro-ico\\">\r\n            <h3>业务中心</h3>\r\n            <p>Product</p>\r\n          </div>\r\n          \r\n        </div>\r\n        <div class=\\"row\\">\r\n          <div class=\\"proList_classify\\">\r\n  \r\n  <div class=\\"sidepromenu col-xs-6 col-sm-6 col-md-12 col-lg-12\\">\r\n    <div class=\\"proListclass1\\"><i></i> <a href=\\"/fwfw/\\" title=\\"服务范围\\" class=\\"proListclass2\\">服务范围</a><b></b></div>\r\n    <ul>\r\n      <li>\r\n        <p>\r\n          \r\n          <a href=\\"/fwfw/cngqcgz/\\" title=\\"CNG汽车改装\\"  class=\\"cur\\"><b></b><span> CNG汽车改装</span></a>\r\n          \r\n          <a href=\\"/fwfw/ygqfw/\\" title=\\"油改气服务\\"><b></b><span>油改气服务</span></a>\r\n          \r\n          <a href=\\"/fwfw/cngwx/\\" title=\\"CNG维修\\"><b></b><span>CNG维修</span></a>\r\n          \r\n          \r\n        </p>\r\n      </li>\r\n    </ul>\r\n  </div>\r\n  \r\n  <div class=\\"sidepromenu col-xs-6 col-sm-6 col-md-12 col-lg-12\\">\r\n    <div class=\\"proListclass1\\"><i></i> <a href=\\"/xwzx/\\" title=\\"新闻中心\\" class=\\"proListclass2\\">新闻中心</a><b></b></div>\r\n    <ul>\r\n      <li>\r\n        <p>\r\n          \r\n          <a href=\\"/xwzx/gsxw/\\" title=\\"公司新闻\\"><b></b><span>公司新闻</span></a>\r\n          \r\n          <a href=\\"/xwzx/hydt/\\" title=\\"行业动态\\"><b></b><span>行业动态</span></a>\r\n          \r\n          <a href=\\"/xwzx/cjwt/\\" title=\\"常见问题\\"><b></b><span>常见问题</span></a>\r\n          \r\n          \r\n        </p>\r\n      </li>\r\n    </ul>\r\n  </div>\r\n  \r\n  <div class=\\"sidepromenu col-xs-6 col-sm-6 col-md-12 col-lg-12\\">\r\n    <div class=\\"proListclass1\\"><i></i> <a href=\\"/gssl/\\" title=\\"公司实力\\" class=\\"proListclass2\\">公司实力</a><b></b></div>\r\n    <ul>\r\n      <li>\r\n        <p>\r\n          \r\n          <a href=\\"/gssl/cgal/\\" title=\\"成功案例\\"><b></b><span>成功案例</span></a>\r\n          <a href=\\"/gssl/ryzz/\\" title=\\"荣誉资质\\"><b></b><span>荣誉资质</span></a>\r\n          <a href=\\"/gssl/khpj/\\" title=\\"客户评价\\"><b></b><span>客户评价</span></a>\r\n          <a href=\\"/gssl/gsly/\\" title=\\"公司掠影\\"><b></b><span>公司掠影</span></a>\r\n          \r\n        </p>\r\n      </li>\r\n    </ul>\r\n  </div>\r\n  <div class=\\"sidepromenu col-xs-6 col-sm-6 col-md-12 col-lg-12\\">\r\n    <div class=\\"proListclass1\\"><i></i> <a href=\\"/gywm/\\" title=\\"关于我们\\" class=\\"proListclass2\\">关于我们</a><b></b></div>\r\n    <ul>\r\n      <li>\r\n        <p>\r\n          \r\n          <a href=\\"/gywm/gsjj/\\" title=\\"公司简介\\"><b></b><span>公司简介</span></a>\r\n          <a href=\\"/gywm/qywh/\\" title=\\"企业文化\\"><b></b><span>企业文化</span></a>\r\n          <a href=\\"/gywm/zzjg/\\" title=\\"组织架构\\"><b></b><span>组织架构</span></a>\r\n          <a href=\\"/gywm/lxwm/\\" title=\\"联系我们\\"><b></b><span>联系我们</span></a>\r\n\r\n          \r\n        </p>\r\n      </li>\r\n    </ul>\r\n  </div>\r\n</div>\r\n\r\n        </div>', 0, 0, 0),
(5, 'infoclassnav', '分类信息分类导航', '<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"4\\" cellspacing=\\"0\\">\r\n  <tr>\r\n    <td bgcolor=\\"#EEF1F4\\">&nbsp;<img src=\\"[!--news.url--]e/data/images/msgnav.gif\\" width=\\"5\\" height=\\"5\\" />&nbsp;<a href=\\"[!--news.url--]e/action/ListInfo/?classid=10\\"><strong>房屋信息</strong></a></td>\r\n  </tr> \r\n</table>\r\n<table width=\\"96%\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"0\\" cellspacing=\\"4\\">\r\n  <tr>\r\n    <td width=\\"33%\\"><a href=\\"[!--news.url--]e/action/ListInfo/?classid=11\\">房屋求租</a></td>\r\n    <td width=\\"33%\\"><a href=\\"[!--news.url--]e/action/ListInfo/?classid=12\\">房屋出租</a></td>\r\n  		<td width=\\"33%\\"><a href=\\"[!--news.url--]e/action/ListInfo/?classid=15\\">办公用房</a></td>\r\n  </tr>\r\n  <tr>\r\n    <td><a href=\\"[!--news.url--]e/action/ListInfo/?classid=13\\">房屋求购</a></td>\r\n    <td><a href=\\"[!--news.url--]e/action/ListInfo/?classid=14\\">房屋出售</a></td>\r\n  		<td><a href=\\"[!--news.url--]e/action/ListInfo/?classid=16\\">旺铺门面</a></td>\r\n  </tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"4\\" bgcolor=\\"#EEF1F4\\">\r\n  <tr>\r\n    <td>&nbsp;<img src=\\"[!--news.url--]e/data/images/msgnav.gif\\" width=\\"5\\" height=\\"5\\" />&nbsp;<a href=\\"[!--news.url--]e/action/ListInfo/?classid=17\\"><strong>跳蚤市场</strong></a></td>\r\n  </tr>\r\n</table>\r\n<table width=\\"96%\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"0\\" cellspacing=\\"4\\">\r\n  <tr>\r\n    <td width=\\"33%\\"><a href=\\"[!--news.url--]e/action/ListInfo/?classid=18\\">电脑配件</a></td>\r\n    <td width=\\"33%\\"><a href=\\"[!--news.url--]e/action/ListInfo/?classid=19\\">电器数码</a></td>\r\n  		<td width=\\"33%\\"><a href=\\"[!--news.url--]e/action/ListInfo/?classid=21\\">居家用品</a></td>\r\n  </tr>\r\n  <tr>\r\n    <td><a href=\\"[!--news.url--]e/action/ListInfo/?classid=20\\">通讯产品</a></td>\r\n    <td><a href=\\"[!--news.url--]e/action/ListInfo/?classid=21\\"></a></td>\r\n  		<td>&nbsp;</td>\r\n  </tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"4\\" cellspacing=\\"0\\" bgcolor=\\"#EEF1F4\\">\r\n  <tr>\r\n    <td>&nbsp;<img src=\\"[!--news.url--]e/data/images/msgnav.gif\\" width=\\"5\\" height=\\"5\\" />&nbsp;<a href=\\"[!--news.url--]e/action/ListInfo/?classid=22\\"><strong>同城生活</strong></a></td>\r\n  </tr>\r\n</table>\r\n<table width=\\"96%\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"0\\" cellspacing=\\"4\\">\r\n  <tr>\r\n    <td width=\\"33%\\"><a href=\\"[!--news.url--]e/action/ListInfo/?classid=23\\">本地新闻</a></td>\r\n    <td width=\\"33%\\"><a href=\\"[!--news.url--]e/action/ListInfo/?classid=24\\">购物打折</a></td>\r\n  		<td width=\\"33%\\"><a href=\\"[!--news.url--]e/action/ListInfo/?classid=26\\">便民告示</a></td>\r\n  </tr>\r\n  <tr>\r\n    <td><a href=\\"[!--news.url--]e/action/ListInfo/?classid=25\\">旅游活动</a></td>\r\n    <td>&nbsp;</td>\r\n  		<td>&nbsp;</td>\r\n  </tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"4\\" cellspacing=\\"0\\" bgcolor=\\"#EEF1F4\\">\r\n  <tr>\r\n    <td>&nbsp;<img src=\\"[!--news.url--]e/data/images/msgnav.gif\\" width=\\"5\\" height=\\"5\\" />&nbsp;<a href=\\"[!--news.url--]e/action/ListInfo/?classid=27\\"><strong>求职招聘</strong></a></td>\r\n  </tr>\r\n</table>\r\n<table width=\\"96%\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"0\\" cellspacing=\\"4\\">\r\n  <tr>\r\n    <td width=\\"33%\\"><a href=\\"[!--news.url--]e/action/ListInfo/?classid=28\\">工程技术</a></td>\r\n    <td width=\\"33%\\"><a href=\\"[!--news.url--]e/action/ListInfo/?classid=29\\">财务会计</a></td>\r\n  		<td width=\\"33%\\"><a href=\\"[!--news.url--]e/action/ListInfo/?classid=31\\">经营管理</a></td>\r\n  </tr>\r\n  <tr>\r\n    <td><a href=\\"[!--news.url--]e/action/ListInfo/?classid=30\\">餐饮行业</a></td>\r\n    <td><a href=\\"[!--news.url--]e/action/ListInfo/?classid=31\\"></a></td>\r\n  		<td>&nbsp;</td>\r\n  </tr>\r\n</table>', 0, 0, 0),
(7, 'pl', '评论表单', '<script>\r\n		  function CheckPl(obj)\r\n		  {\r\n		  if(obj.saytext.value==\\"\\")\r\n		  {\r\n		  alert(\\"您没什么话要说吗？\\");\r\n		  obj.saytext.focus();\r\n		  return false;\r\n		  }\r\n		  return true;\r\n		  }\r\n		  </script><form action=\\"[!--news.url--]e/pl/doaction.php\\" method=\\"post\\" name=\\"saypl\\" id=\\"saypl\\" onsubmit=\\"return CheckPl(document.saypl)\\">\r\n<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\" id=\\"plpost\\">\r\n\r\n<tr>\r\n<td><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\" class=\\"title\\">\r\n<tr>\r\n<td><strong>发表评论</strong></td>\r\n<td align=\\"right\\"><a href=\\"[!--news.url--]e/pl/?classid=[!--classid--]&amp;id=[!--id--]\\">共有<span><script type=\\"text/javascript\\" src=\\"[!--news.url--]e/public/ViewClick/?classid=[!--classid--]&id=[!--id--]&down=2\\"></script></span>条评论</a></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\">\r\n<tr>\r\n<td><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"2\\">\r\n<tr>\r\n<td width=\\"56%\\" align=\\"left\\">用户名:\r\n<input name=\\"username\\" type=\\"text\\" class=\\"inputText\\" id=\\"username\\" value=\\"\\" size=\\"16\\" /></td>\r\n<td width=\\"44%\\" align=\\"left\\">密码:\r\n<input name=\\"password\\" type=\\"password\\" class=\\"inputText\\" id=\\"password\\" value=\\"\\" size=\\"16\\" /></td>\r\n</tr>\r\n<tr>\r\n<td align=\\"left\\">验证码:\r\n<input name=\\"key\\" type=\\"text\\" class=\\"inputText\\" size=\\"10\\" />\r\n<img src=\\"[!--news.url--]e/ShowKey/?v=pl\\" align=\\"absmiddle\\" name=\\"plKeyImg\\" id=\\"plKeyImg\\" onclick=\\"plKeyImg.src=\\''[!--news.url--]e/ShowKey/?v=pl&t=\\''+Math.random()\\" title=\\"看不清楚,点击刷新\\" /> </td>\r\n<td align=\\"left\\"><input name=\\"nomember\\" type=\\"checkbox\\" id=\\"nomember\\" value=\\"1\\" checked=\\"checked\\" />\r\n匿名发表</td>\r\n</tr>\r\n</table>\r\n<textarea name=\\"saytext\\" rows=\\"6\\" id=\\"saytext\\"></textarea><input name=\\"imageField\\" type=\\"image\\" src=\\"[!--news.url--]e/data/images/postpl.gif\\"/>\r\n<input name=\\"id\\" type=\\"hidden\\" id=\\"id\\" value=\\"[!--id--]\\" />\r\n<input name=\\"classid\\" type=\\"hidden\\" id=\\"classid\\" value=\\"[!--classid--]\\" />\r\n<input name=\\"enews\\" type=\\"hidden\\" id=\\"enews\\" value=\\"AddPl\\" />\r\n<input name=\\"repid\\" type=\\"hidden\\" id=\\"repid\\" value=\\"0\\" />\r\n<input type=\\"hidden\\" name=\\"ecmsfrom\\" value=\\"[!--titleurl--]\\"></td>\r\n</tr>\r\n</table>\r\n</td>\r\n</tr>\r\n</table></form>', 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewstempvarclass`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewstempvarclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewstogzts`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewstogzts` (
  `togid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `keyboard` varchar(255) NOT NULL DEFAULT '',
  `searchf` varchar(255) NOT NULL DEFAULT '',
  `query` text NOT NULL,
  `specialsearch` varchar(255) NOT NULL DEFAULT '',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `retype` tinyint(1) NOT NULL DEFAULT '0',
  `startday` varchar(20) NOT NULL DEFAULT '',
  `endday` varchar(20) NOT NULL DEFAULT '',
  `startid` int(10) unsigned NOT NULL DEFAULT '0',
  `endid` int(10) unsigned NOT NULL DEFAULT '0',
  `pline` int(11) NOT NULL DEFAULT '0',
  `doecmszt` tinyint(1) NOT NULL DEFAULT '0',
  `togztname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`togid`),
  KEY `togztname` (`togztname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsuser`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsuser` (
  `userid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `rnd` varchar(20) NOT NULL DEFAULT '',
  `adminclass` mediumtext NOT NULL,
  `groupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `styleid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `filelevel` tinyint(1) NOT NULL DEFAULT '0',
  `salt` varchar(8) NOT NULL DEFAULT '',
  `loginnum` int(10) unsigned NOT NULL DEFAULT '0',
  `lasttime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(20) NOT NULL DEFAULT '',
  `truename` varchar(20) NOT NULL DEFAULT '',
  `email` varchar(120) NOT NULL DEFAULT '',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `pretime` int(10) unsigned NOT NULL DEFAULT '0',
  `preip` varchar(20) NOT NULL DEFAULT '',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `addip` varchar(20) NOT NULL DEFAULT '',
  `userprikey` varchar(50) NOT NULL DEFAULT '',
  `salt2` varchar(20) NOT NULL DEFAULT '',
  `lastipport` varchar(6) NOT NULL DEFAULT '',
  `preipport` varchar(6) NOT NULL DEFAULT '',
  `addipport` varchar(6) NOT NULL DEFAULT '',
  `uprnd` varchar(32) NOT NULL DEFAULT '',
  `wname` varchar(60) NOT NULL DEFAULT '',
  `tel` varchar(20) NOT NULL DEFAULT '',
  `wxno` varchar(80) NOT NULL DEFAULT '',
  `qq` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`userid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `dayuqixiu_enewsuser`
--

INSERT INTO `dayuqixiu_enewsuser` (`userid`, `username`, `password`, `rnd`, `adminclass`, `groupid`, `checked`, `styleid`, `filelevel`, `salt`, `loginnum`, `lasttime`, `lastip`, `truename`, `email`, `classid`, `pretime`, `preip`, `addtime`, `addip`, `userprikey`, `salt2`, `lastipport`, `preipport`, `addipport`, `uprnd`, `wname`, `tel`, `wxno`, `qq`) VALUES
(1, 'admin', '38237a6235a4a3325a97c0a6dd2100d7', 'MSzf5qQpIUwX3iiEtMH7', '', 1, 0, 1, 0, 'kkXuRRxP', 5, 1615889291, '127.0.0.1', '', '', 0, 1615883445, '127.0.0.1', 1615813240, '127.0.0.1', 'ZSJuR1cIVyXcc2RLmsylWY8m3LpzyP8ycB5CnAEZKr4l4Ouv', 'UJWogmGhm2oSBmi0fRfi', '55861', '53563', '57657', '', '', '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsuseradd`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsuseradd` (
  `userid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `equestion` tinyint(4) NOT NULL DEFAULT '0',
  `eanswer` varchar(32) NOT NULL DEFAULT '',
  `openip` text NOT NULL,
  `certkey` varchar(60) NOT NULL DEFAULT '',
  `certtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `dayuqixiu_enewsuseradd`
--

INSERT INTO `dayuqixiu_enewsuseradd` (`userid`, `equestion`, `eanswer`, `openip`, `certkey`, `certtime`) VALUES
(1, 0, '', '', '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsuserclass`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsuserclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsuserjs`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsuserjs` (
  `jsid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `jsname` varchar(60) NOT NULL DEFAULT '',
  `jssql` text NOT NULL,
  `jstempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `jsfilename` varchar(120) NOT NULL DEFAULT '',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`jsid`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsuserjsclass`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsuserjsclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsuserlist`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsuserlist` (
  `listid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `listname` varchar(60) NOT NULL DEFAULT '',
  `pagetitle` varchar(120) NOT NULL DEFAULT '',
  `filepath` varchar(120) NOT NULL DEFAULT '',
  `filetype` varchar(12) NOT NULL DEFAULT '',
  `totalsql` text NOT NULL,
  `listsql` text NOT NULL,
  `maxnum` int(11) NOT NULL DEFAULT '0',
  `lencord` int(11) NOT NULL DEFAULT '0',
  `listtempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `pagekeywords` varchar(255) NOT NULL DEFAULT '',
  `pagedescription` varchar(255) NOT NULL DEFAULT '',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`listid`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsuserlistclass`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsuserlistclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsuserloginck`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsuserloginck` (
  `userid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `andauth` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `dayuqixiu_enewsuserloginck`
--

INSERT INTO `dayuqixiu_enewsuserloginck` (`userid`, `andauth`) VALUES
(1, '4fda216a64da56d58fc239d9b7ba772f');

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsvg`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsvg` (
  `vgid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `gname` char(60) NOT NULL DEFAULT '',
  `gids` char(255) NOT NULL DEFAULT '',
  `ingids` char(255) NOT NULL DEFAULT '',
  `agids` char(255) NOT NULL DEFAULT '',
  `mlist` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`vgid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsvglist`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsvglist` (
  `vgid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `outtime` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `vgid` (`vgid`),
  KEY `userid` (`userid`),
  KEY `addtime` (`addtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsvote`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsvote` (
  `voteid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) NOT NULL DEFAULT '',
  `votenum` int(10) unsigned NOT NULL DEFAULT '0',
  `voteip` mediumtext NOT NULL,
  `votetext` text NOT NULL,
  `voteclass` tinyint(1) NOT NULL DEFAULT '0',
  `doip` tinyint(1) NOT NULL DEFAULT '0',
  `votetime` int(10) unsigned NOT NULL DEFAULT '0',
  `dotime` date NOT NULL DEFAULT '0000-00-00',
  `width` int(11) NOT NULL DEFAULT '0',
  `height` int(11) NOT NULL DEFAULT '0',
  `addtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`voteid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsvotemod`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsvotemod` (
  `voteid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) NOT NULL DEFAULT '',
  `votetext` text NOT NULL,
  `voteclass` tinyint(1) NOT NULL DEFAULT '0',
  `doip` tinyint(1) NOT NULL DEFAULT '0',
  `dotime` date NOT NULL DEFAULT '0000-00-00',
  `tempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `width` int(11) NOT NULL DEFAULT '0',
  `height` int(11) NOT NULL DEFAULT '0',
  `votenum` int(10) unsigned NOT NULL DEFAULT '0',
  `ysvotename` varchar(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`voteid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsvotetemp`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsvotetemp` (
  `tempid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tempname` varchar(60) NOT NULL DEFAULT '',
  `temptext` mediumtext NOT NULL,
  PRIMARY KEY (`tempid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `dayuqixiu_enewsvotetemp`
--

INSERT INTO `dayuqixiu_enewsvotetemp` (`tempid`, `tempname`, `temptext`) VALUES
(1, '默认投票模板', '<table width=100% border=0 align=center cellpadding=3 cellspacing=0><form name=enewsvote method=POST action=''[!--vote.action--]'' target=_blank><tr><td><strong>[!--title--]</strong></td></tr><input type=hidden name=voteid value=''[!--voteid--]''><input type=hidden name=enews value=AddVote>\r\n[!--empirenews.listtemp--]\r\n<tr><td>[!--vote.box--]&nbsp;[!--vote.name--]</td></tr>\r\n[!--empirenews.listtemp--]\r\n<tr><td align=center><input type=submit name=submit value=投票>&nbsp;&nbsp;<input type=button name=button value=查看结果 onclick=javascript:window.open(''[!--vote.view--]'','''',''width=[!--width--],height=[!--height--],scrollbars=yes'');></td></tr></form></table>'),
(2, '默认信息投票模板', '<table width=\\''100%\\'' border=0 align=center cellpadding=3 cellspacing=0><form name=enewsvote method=POST action=\\''[!--news.url--]e/enews/index.php\\'' target=_blank><tr><td><strong>[!--title--]</strong></td></tr><input type=hidden name=id value=\\''[!--id--]\\''><input type=hidden name=classid value=\\''[!--classid--]\\''><input type=hidden name=enews value=AddInfoVote>\r\n[!--empirenews.listtemp--]\r\n<tr><td>[!--vote.box--]&nbsp;[!--vote.name--]</td></tr>\r\n[!--empirenews.listtemp--]\r\n<tr><td align=center><input type=submit name=submit value=投票>&nbsp;&nbsp;<input type=button name=button value=查看结果 onclick=javascript:window.open(\\''[!--news.url--]e/public/vote/?classid=[!--classid--]&id=[!--id--]\\'',\\''\\'',\\''width=[!--width--],height=[!--height--],scrollbars=yes\\'');></td></tr></form></table>');

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewswapstyle`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewswapstyle` (
  `styleid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `stylename` varchar(60) NOT NULL DEFAULT '',
  `path` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`styleid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `dayuqixiu_enewswapstyle`
--

INSERT INTO `dayuqixiu_enewswapstyle` (`styleid`, `stylename`, `path`) VALUES
(1, '新闻模板', 1),
(2, '分类信息模板', 2);

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewswfinfo`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewswfinfo` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `wfid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tid` int(10) unsigned NOT NULL DEFAULT '0',
  `groupid` text NOT NULL,
  `userclass` text NOT NULL,
  `username` text NOT NULL,
  `checknum` tinyint(4) NOT NULL DEFAULT '0',
  `tstatus` varchar(30) NOT NULL DEFAULT '0',
  `checktno` tinyint(4) NOT NULL DEFAULT '0',
  KEY `id` (`id`,`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewswfinfolog`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewswfinfolog` (
  `logid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `wfid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tid` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `checktime` int(10) unsigned NOT NULL DEFAULT '0',
  `checktext` text NOT NULL,
  `checknum` tinyint(4) NOT NULL DEFAULT '0',
  `checktype` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`logid`),
  KEY `id` (`id`,`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewswords`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewswords` (
  `wordid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `oldword` varchar(255) NOT NULL DEFAULT '',
  `newword` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`wordid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsworkflow`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsworkflow` (
  `wfid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `wfname` varchar(60) NOT NULL DEFAULT '',
  `wftext` varchar(255) NOT NULL DEFAULT '',
  `myorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `adduser` varchar(30) NOT NULL DEFAULT '',
  `canedit` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`wfid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsworkflowitem`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsworkflowitem` (
  `tid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wfid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tname` varchar(60) NOT NULL DEFAULT '',
  `tno` int(11) NOT NULL DEFAULT '0',
  `ttext` varchar(255) NOT NULL DEFAULT '',
  `groupid` text NOT NULL,
  `userclass` text NOT NULL,
  `username` text NOT NULL,
  `lztype` tinyint(1) NOT NULL DEFAULT '0',
  `tbdo` int(10) unsigned NOT NULL DEFAULT '0',
  `tddo` int(10) unsigned NOT NULL DEFAULT '0',
  `tstatus` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`tid`),
  KEY `wfid` (`wfid`),
  KEY `tno` (`tno`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewswriter`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewswriter` (
  `wid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `writer` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(120) NOT NULL DEFAULT '',
  PRIMARY KEY (`wid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsyh`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsyh` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `yhname` varchar(30) NOT NULL DEFAULT '',
  `yhtext` varchar(255) NOT NULL DEFAULT '',
  `hlist` int(11) NOT NULL DEFAULT '0',
  `qlist` int(11) NOT NULL DEFAULT '0',
  `bqnew` int(11) NOT NULL DEFAULT '0',
  `bqhot` int(11) NOT NULL DEFAULT '0',
  `bqpl` int(11) NOT NULL DEFAULT '0',
  `bqgood` int(11) NOT NULL DEFAULT '0',
  `bqfirst` int(11) NOT NULL DEFAULT '0',
  `bqdown` int(11) NOT NULL DEFAULT '0',
  `otherlink` int(11) NOT NULL DEFAULT '0',
  `qmlist` int(11) NOT NULL DEFAULT '0',
  `dobq` tinyint(1) NOT NULL DEFAULT '0',
  `dojs` tinyint(1) NOT NULL DEFAULT '0',
  `dosbq` tinyint(1) NOT NULL DEFAULT '0',
  `rehtml` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewszt`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewszt` (
  `ztid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `ztname` varchar(60) NOT NULL DEFAULT '',
  `onclick` int(10) unsigned NOT NULL DEFAULT '0',
  `ztnum` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `listtempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ztpath` varchar(255) NOT NULL DEFAULT '',
  `zttype` varchar(10) NOT NULL DEFAULT '',
  `zturl` varchar(200) NOT NULL DEFAULT '',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `islist` tinyint(1) NOT NULL DEFAULT '0',
  `maxnum` int(11) NOT NULL DEFAULT '0',
  `reorder` varchar(50) NOT NULL DEFAULT '',
  `intro` text NOT NULL,
  `ztimg` varchar(255) NOT NULL DEFAULT '',
  `zcid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `showzt` tinyint(1) NOT NULL DEFAULT '0',
  `ztpagekey` varchar(255) NOT NULL DEFAULT '',
  `classtempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `myorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `usezt` tinyint(1) NOT NULL DEFAULT '0',
  `yhid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `checkpl` tinyint(1) NOT NULL DEFAULT '0',
  `restb` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `usernames` varchar(255) NOT NULL DEFAULT '',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `pltempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ztid`),
  KEY `classid` (`classid`),
  KEY `zcid` (`zcid`),
  KEY `usezt` (`usezt`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsztadd`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsztadd` (
  `ztid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `classtext` mediumtext NOT NULL,
  PRIMARY KEY (`ztid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsztclass`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsztclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsztf`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsztf` (
  `fid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `f` varchar(30) NOT NULL DEFAULT '',
  `fname` varchar(30) NOT NULL DEFAULT '',
  `fform` varchar(20) NOT NULL DEFAULT '',
  `fhtml` mediumtext NOT NULL,
  `fzs` varchar(255) NOT NULL DEFAULT '',
  `myorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ftype` varchar(30) NOT NULL DEFAULT '',
  `flen` varchar(20) NOT NULL DEFAULT '',
  `fvalue` text NOT NULL,
  `fformsize` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewsztinfo`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewsztinfo` (
  `zid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ztid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `cid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `mid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `isgood` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`zid`),
  KEY `ztid` (`ztid`),
  KEY `cid` (`cid`),
  KEY `classid` (`classid`),
  KEY `id` (`id`),
  KEY `newstime` (`newstime`),
  KEY `mid` (`mid`),
  KEY `isgood` (`isgood`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewszttype`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewszttype` (
  `cid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `ztid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `cname` varchar(20) NOT NULL DEFAULT '',
  `myorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `islist` tinyint(1) NOT NULL DEFAULT '0',
  `listtempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `maxnum` int(10) unsigned NOT NULL DEFAULT '0',
  `tnum` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `reorder` varchar(50) NOT NULL DEFAULT '',
  `ttype` varchar(10) NOT NULL DEFAULT '',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `tfile` varchar(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`cid`),
  KEY `ztid` (`ztid`),
  KEY `myorder` (`myorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dayuqixiu_enewszttypeadd`
--

CREATE TABLE IF NOT EXISTS `dayuqixiu_enewszttypeadd` (
  `cid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `classtext` mediumtext NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
