-- MySQL Script generated by MySQL Workbench
-- Mon May  9 11:19:04 2016
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema superwechat_v02
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema superwechat_v02
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `superwechat_v02` DEFAULT CHARACTER SET utf8 ;
USE `superwechat_v02` ;

-- -----------------------------------------------------
-- Table `superwechat_v02`.`t_superwechat_contact`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `superwechat_v02`.`t_superwechat_contact` (
  `m_contact_id` INT NOT NULL AUTO_INCREMENT COMMENT '主键',
  `m_contact_user_id` INT NOT NULL COMMENT '用户id',
  `m_contact_user_name` VARCHAR(45) NOT NULL COMMENT '用户账号',
  `m_contact_cid` INT NOT NULL COMMENT '好友id',
  `m_contact_cname` VARCHAR(45) NOT NULL COMMENT '好友账号',
  PRIMARY KEY (`m_contact_id`));


-- -----------------------------------------------------
-- Table `superwechat_v02`.`t_superwechat_user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `superwechat_v02`.`t_superwechat_user` (
  `m_user_id` INT NOT NULL AUTO_INCREMENT COMMENT '主键',
  `m_user_name` VARCHAR(45) NOT NULL COMMENT '用户账号',
  `m_user_password` VARCHAR(45) NOT NULL COMMENT '用户密码',
  `m_user_nick` VARCHAR(45) NOT NULL COMMENT '用户昵称',
  `m_user_unread_msg_count` INT NULL DEFAULT 0 COMMENT '未读消息数量',
  PRIMARY KEY (`m_user_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `superwechat_v02`.`t_superwchat_group`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `superwechat_v02`.`t_superwechat_group` (
  `m_group_id` INT NOT NULL AUTO_INCREMENT COMMENT '主键',
  `m_group_hxid` VARCHAR(45) NULL COMMENT '环信群组id',
  `m_group_name` VARCHAR(45) NULL COMMENT '群组名称',
  `m_group_description` VARCHAR(45) NULL COMMENT '群组简介',
  `m_group_owner` VARCHAR(45) NOT NULL COMMENT '群组所有者－用户账号',
  `m_group_last_modified_time` DATETIME NOT NULL COMMENT '最后修改时间',
  `m_group_max_users` INT NULL DEFAULT 0 COMMENT '最大人数',
  `m_group_affiliations_count` INT NOT NULL DEFAULT -1 COMMENT '群组人数',
  `m_group_is_public` TINYINT(1) NOT NULL DEFAULT 0 COMMENT '群组是否公开',
  `m_group_allow_invites` TINYINT(1) NOT NULL DEFAULT 0 COMMENT '是否可以邀请',
  PRIMARY KEY (`m_group_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `superwechat_v02`.`t_superwechat_member`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `superwechat_v02`.`t_superwechat_member` (
  `m_member_id` INT NOT NULL AUTO_INCREMENT COMMENT '主键',
  `m_member_user_id` INT NOT NULL COMMENT '用户id',
  `m_member_user_name` VARCHAR(45) NOT NULL COMMENT '用户账号',
  `m_member_group_id` INT NOT NULL COMMENT '群组id',
  `m_member_group_hxid` VARCHAR(45) NOT NULL COMMENT '群组环信id',
  `m_member_permission` INT NOT NULL COMMENT '用户对群组的权限\n0:普通用户\n1:群组所有者',
  PRIMARY KEY (`m_member_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `superwechat_v02`.`t_superwechat_avatar`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `superwechat_v02`.`t_superwechat_avatar` (
  `m_avatar_id` INT NOT NULL AUTO_INCREMENT COMMENT '主键',
  `m_avatar_user_id` INT NOT NULL COMMENT '用户id或者群组id',
  `m_avatar_user_name` VARCHAR(45) NOT NULL COMMENT '用户账号或者群组账号',
  `m_avatar_path` VARCHAR(45) NOT NULL COMMENT '保存路径',
  `m_avatar_type` INT NOT NULL DEFAULT 0 COMMENT '头像类型：\n0:用户头像\n1:群组头像',
  PRIMARY KEY (`m_avatar_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `superwechat_v02`.`t_superwechat_location`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `superwechat_v02`.`t_superwechat_location` (
  `m_location_id` INT NOT NULL AUTO_INCREMENT COMMENT '主键',
  `m_location_user_id` INT NOT NULL COMMENT '用户id',
  `m_location_user_name` VARCHAR(45) NOT NULL COMMENT '用户账号',
  `m_location_latitude` DOUBLE NULL COMMENT '纬度',
  `m_location_longitude` DOUBLE NULL COMMENT '经度',
  `m_location_is_searched` TINYINT(1) NOT NULL DEFAULT 0 COMMENT '是否可以被搜索到',
  `m_location_last_update_time` DATETIME NULL COMMENT '最后更新时间',
  PRIMARY KEY (`m_location_id`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
