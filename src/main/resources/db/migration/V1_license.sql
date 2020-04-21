set foreign_key_checks = 0;
set names utf8;

USE `gmd`;

CREATE TABLE IF NOT EXISTS `t_license_info` (
  `sn` CHAR (16) NOT NULL COMMENT 'license的id',
  `type` TINYINT NOT NULL COMMENT 'license类型，1表示设备数量license，2表示更新时间license',
  `device` varchar(200) DEFAULT NULL COMMENT '设备数量，加密',
  `update` varchar(200) DEFAULT NULL COMMENT '更新时间，加密',
  `info` varchar(200) DEFAULT NULL COMMENT 'license的info信息',
  `consumer` varchar(200) DEFAULT NULL COMMENT '用户信息',
  PRIMARY KEY (`sn`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='该表保存智源设备license的信息，目前包括控制更新时间的license和控制设备数量的license';

SET FOREIGN_KEY_CHECKS=1;
SET sql_log_bin=1;