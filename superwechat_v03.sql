/*
 Navicat Premium Data Transfer

 Source Server         : superwechat_v03
 Source Server Type    : SQLite
 Source Server Version : 3008008
 Source Database       : main

 Target Server Type    : SQLite
 Target Server Version : 3008008
 File Encoding         : utf-8

 Date: 05/10/2016 17:35:46 PM
*/

PRAGMA foreign_keys = false;

-- ----------------------------
--  Table structure for t_superwechat_user
-- ----------------------------
DROP TABLE IF EXISTS "t_superwechat_user";
CREATE TABLE "t_superwechat_user" (
"m_user_id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
"m_user_name"  TEXT NOT NULL,
"m_user_password"  TEXT NOT NULL,
"m_user_nick"  TEXT NOT NULL,
"m_user_unread_msg_count"  INTEGER DEFAULT 0
);

-- ----------------------------
--  Records of t_superwechat_user
-- ----------------------------
BEGIN;
INSERT INTO "t_superwechat_user" VALUES (1, 'zhangsan', 'a', '张三', 0);
INSERT INTO "t_superwechat_user" VALUES (2, 'lisi', 'a', '李思思', 0);
INSERT INTO "t_superwechat_user" VALUES (3, 'wangwu', 'a', '王五', 0);
COMMIT;


-- ----------------------------
--  Table structure for t_superwechat_avatar
-- ----------------------------
DROP TABLE IF EXISTS "t_superwechat_avatar";
CREATE TABLE "t_superwechat_avatar" (
	"m_avatar_id"  INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	"m_avatar_user_id"  INTEGER NOT NULL,
	"m_avatar_user_name"  TEXT NOT NULL,
	"m_avatar_path"  TEXT NOT NULL,
	"m_avatar_type"  INTEGER DEFAULT 0
);

-- ----------------------------
--  Records of t_superwechat_avatar
-- ----------------------------
BEGIN;
INSERT INTO "t_superwechat_avatar" VALUES (1, 1, 'zhangsan', 'user_avatar', 0);
INSERT INTO "t_superwechat_avatar" VALUES (2, 2, 'lisi', 'user_avatar', 0);
INSERT INTO "t_superwechat_avatar" VALUES (3, 3, 'wangwu', 'user_avatar', 0);
COMMIT;

-- ----------------------------
--  Table structure for t_superwechat_group
-- ----------------------------
DROP TABLE IF EXISTS "t_superwechat_group";
CREATE TABLE "t_superwechat_group" (
	"m_group_id"  INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	"m_group_hxid"  TEXT,
	"m_group_name"  TEXT NOT NULL ,
	"m_group_description"  TEXT,
	"m_group_owner"  TEXT NOT NULL,
	"m_group_last_modified_time"  TEXT NOT NULL,
	"m_group_max_users"  INTEGER DEFAULT -1,
	"m_group_affiliations_count"  INTEGER DEFAULT 0,
	"m_group_is_public"  INTEGER DEFAULT 0,
	"m_group_allow_invites"  INTEGER DEFAULT 0
);

-- ----------------------------
--  Records of t_superwechat_group
-- ----------------------------
BEGIN;
INSERT INTO "t_superwechat_group" VALUES (1, 1460308192724, 'OMG', '临时测试的群组', 'zhangsan', 1462870455, -1, 1, 1, 0);
COMMIT;

-- ----------------------------
--  Table structure for t_superwechat_contact
-- ----------------------------
DROP TABLE IF EXISTS "t_superwechat_contact";
CREATE TABLE "t_superwechat_contact" (
	"m_contact_id"  INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	"m_contact_user_id"  INTEGER NOT NULL,
	"m_contact_user_name"  TEXT NOT NULL,
	"m_contact_cid"  INTEGER NOT NULL,
	"m_contact_cname"  TEXT NOT NULL
);

-- ----------------------------
--  Records of t_superwechat_contact
-- ----------------------------
BEGIN;
INSERT INTO "t_superwechat_contact" VALUES (1, 1, 'zhangsan', 2, 'lisi');
INSERT INTO "t_superwechat_contact" VALUES (2, 2, 'lisi', 1, 'zhangsan');
INSERT INTO "t_superwechat_contact" VALUES (3, 1, 'zhangsan', 3, 'wangwu');
INSERT INTO "t_superwechat_contact" VALUES (4, 3, 'wangwu', 1, 'zhangsan');
COMMIT;

-- ----------------------------
--  Table structure for _t_superwechat_member
-- ----------------------------
DROP TABLE IF EXISTS "t_superwechat_member";
CREATE TABLE "t_superwechat_member" (
	 "m_member_id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 "m_member_user_id" INTEGER NOT NULL,
	 "m_member_user_name" TEXT NOT NULL,
	 "m_member_group_id" INTEGER NOT NULL,
	 "m_member_group_hxid" TEXT NOT NULL,
	 "m_member_permission" INTEGER DEFAULT 0
);
-- ----------------------------
--  Records of t_superwechat_member
-- ----------------------------
BEGIN;
INSERT INTO "t_superwechat_member" VALUES (1, 1, 'zhangsan', 1, 1460308192724, 1);
COMMIT;

-- ----------------------------
--  Table structure for t_superwechat_location
-- ----------------------------
DROP TABLE IF EXISTS "t_superwechat_location";
CREATE TABLE "t_superwechat_location" (
	"m_location_id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	"m_location_user_id"  INTEGER NOT NULL,
	"m_location_user_name"  TEXT NOT NULL,
	"m_location_latitude"  REAL NOT NULL,
	"m_location_longitude"  REAL NOT NULL,
	"m_location_is_searched"  INTEGER,
	"m_location_last_update_time"  TEXT
);

-- ----------------------------
--  Records of t_superwechat_location
-- ----------------------------
BEGIN;
INSERT INTO "t_superwechat_location" VALUES (1, 1, 'zhangsan', 116.397518, 39.930657, 1, 1462566818);
INSERT INTO "t_superwechat_location" VALUES (2, 2, 'lisi', 116.183566, 39.932199, 1, 1462811883);
INSERT INTO "t_superwechat_location" VALUES (3, 3, 'wangwu', 116.403963, 39.915119, 1, 1462802888);
COMMIT;



PRAGMA foreign_keys = true;
