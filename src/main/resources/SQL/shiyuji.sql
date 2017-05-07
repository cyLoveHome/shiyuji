/*
Navicat MySQL Data Transfer

Source Server         : link
Source Server Version : 50554
Source Host           : localhost:3306
Source Database       : shiyuji

Target Server Type    : MYSQL
Target Server Version : 50554
File Encoding         : 65001

Date: 2017-05-07 23:54:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for answer
-- ----------------------------
DROP TABLE IF EXISTS `answer`;
CREATE TABLE `answer` (
  `aId` varchar(255) NOT NULL,
  `qId` varchar(255) NOT NULL,
  `uId` varchar(255) NOT NULL,
  `aInfo` varchar(10240) NOT NULL,
  `aTime` bigint(255) NOT NULL,
  PRIMARY KEY (`aId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of answer
-- ----------------------------
INSERT INTO `answer` VALUES ('21995792-daaf-48b3-bd6a-ad93e80ba0c0', '134ab12c-0615-4cd0-8587-f65e96964073', '', '我并不知道', '1493640231187');
INSERT INTO `answer` VALUES ('517b3139-88dd-480e-83d7-b611f2e4209e', '1cd9d65f-340e-45d6-9345-6ed4a35e2769', 'a195c718-a046-4fbe-ae1e-9672e09d9f6a', '奶！', '1493640293264');
INSERT INTO `answer` VALUES ('7707dafe-9b36-40a7-88d8-0047a66e2fa6', '134ab12c-0615-4cd0-8587-f65e96964073', '', '不知道', '1493640245132');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `uId` varchar(255) NOT NULL,
  `mId` varchar(255) NOT NULL,
  `commentInfo` varchar(255) NOT NULL,
  `commentTime` bigint(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('a195c718-a046-4fbe-ae1e-9672e09d9f6a', '3c010b6b-901d-43ae-89df-b6889fbd3f54', '哈哈哈', '1492054038871');
INSERT INTO `comment` VALUES ('a195c718-a046-4fbe-ae1e-9672e09d9f6a', '3c010b6b-901d-43ae-89df-b6889fbd3f54', '好吃诶', '1492054048290');
INSERT INTO `comment` VALUES ('a195c718-a046-4fbe-ae1e-9672e09d9f6a', 'b288764c-b953-4332-b72d-37c7b2139302', 'jsxjjjdjdjjjdjdjdj', '1492060532639');
INSERT INTO `comment` VALUES ('a195c718-a046-4fbe-ae1e-9672e09d9f6a', 'b288764c-b953-4332-b72d-37c7b2139302', 'eedkjejdjfjf', '1492060536641');
INSERT INTO `comment` VALUES ('a195c718-a046-4fbe-ae1e-9672e09d9f6a', 'b288764c-b953-4332-b72d-37c7b2139302', '我的我的', '1493640638044');

-- ----------------------------
-- Table structure for friend
-- ----------------------------
DROP TABLE IF EXISTS `friend`;
CREATE TABLE `friend` (
  `uId` varchar(255) NOT NULL,
  `fId` varchar(255) NOT NULL,
  `focus_time` bigint(255) NOT NULL,
  PRIMARY KEY (`uId`,`fId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of friend
-- ----------------------------
INSERT INTO `friend` VALUES ('a195c718-a046-4fbe-ae1e-9672e09d9f6a', '71a5d264-37f1-4b63-8a10-199a126607ca', '1493636932598');
INSERT INTO `friend` VALUES ('a195c718-a046-4fbe-ae1e-9672e09d9f6a', '91103882-e3a9-4e23-bd3d-268925f19105', '1493814862413');
INSERT INTO `friend` VALUES ('a195c718-a046-4fbe-ae1e-9672e09d9f6a', 'a34445ad-b181-4449-8b37-507ed3edc48b', '1493636929308');

-- ----------------------------
-- Table structure for mc_menu
-- ----------------------------
DROP TABLE IF EXISTS `mc_menu`;
CREATE TABLE `mc_menu` (
  `mId` varchar(255) NOT NULL,
  `mcId` varchar(255) NOT NULL,
  PRIMARY KEY (`mId`,`mcId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mc_menu
-- ----------------------------
INSERT INTO `mc_menu` VALUES ('3c010b6b-901d-43ae-89df-b6889fbd3f54', 'bf298e0c-a634-450a-9602-c9000e2c309f');
INSERT INTO `mc_menu` VALUES ('4391fb8b-e81a-4c65-bf25-8f96e2c25265', 'bf298e0c-a634-450a-9602-c9000e2c309f');
INSERT INTO `mc_menu` VALUES ('54ee52d3-869e-46b2-9a7e-06b5e2482170', '选择');
INSERT INTO `mc_menu` VALUES ('b288764c-b953-4332-b72d-37c7b2139302', 'bf298e0c-a634-450a-9602-c9000e2c309f');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `mId` varchar(255) NOT NULL,
  `uId` varchar(255) DEFAULT NULL,
  `mName` varchar(255) NOT NULL,
  `mPic` varchar(255) NOT NULL,
  `mInfo` varchar(10240) NOT NULL,
  `create_time` bigint(255) NOT NULL,
  `shicai` varchar(255) NOT NULL,
  `steps` varchar(255) NOT NULL,
  `state` int(2) NOT NULL,
  PRIMARY KEY (`mId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('3c010b6b-901d-43ae-89df-b6889fbd3f54', null, '入口即化的蛋黄小饼干', 'b1afd889-4b56-4088-b5c7-8a6c9df450bf.jpg', '每次做小融豆都会浪费几个蛋黄 前段时间照着几个厨友的方子做了两次蛋黄饼干 都以失败告终 凭借做小融豆的经验', '1492054024541', '蛋黄 2个|蛋白 1个|白砂糖 100克|淀粉  50克', '蛋黄用电动打蛋器打散，不需要打发|把奶粉，淀粉和5g细砂糖放进打散的蛋黄液|将所有材料混合均匀，搅拌无颗粒顺滑状态|打到细腻湿性发泡加剩下的白糖', '1');
INSERT INTO `menu` VALUES ('b288764c-b953-4332-b72d-37c7b2139302', null, 'chchchchc', 'd6c4a263-c330-4f57-b06a-5b706e0ccaea.jpg', 'hddhdhhdh', '1492060504739', 'hddkssjsdj|djjcdifjdk', 'hdnjkdkfvkkf|fffff|fff', '1');

-- ----------------------------
-- Table structure for menus
-- ----------------------------
DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus` (
  `msId` varchar(255) NOT NULL,
  `uId` varchar(255) NOT NULL,
  `msName` varchar(255) NOT NULL,
  `createTime` bigint(255) NOT NULL,
  `msInfo` varchar(10240) DEFAULT NULL,
  `state` int(2) NOT NULL,
  PRIMARY KEY (`msId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menus
-- ----------------------------
INSERT INTO `menus` VALUES ('55e55d3d-bc57-4cf0-96f4-f4ba872d075d', 'a195c718-a046-4fbe-ae1e-9672e09d9f6a', '你也会喜欢的', '1494168522034', '你也会喜欢的', '1');
INSERT INTO `menus` VALUES ('d60f8e3b-4477-440f-a11f-f9b68cbb461a', 'a195c718-a046-4fbe-ae1e-9672e09d9f6a', '好吃的好吃的', '1494168152557', '好吃的好吃的好吃的', '1');
INSERT INTO `menus` VALUES ('eb1033dd-7ad8-4c1d-a8e7-63295c2e079a', 'a195c718-a046-4fbe-ae1e-9672e09d9f6a', '哈哈哈哈哈哈', '1494167046987', '哈哈哈哈哈啊哈哈', '1');

-- ----------------------------
-- Table structure for menus_collect
-- ----------------------------
DROP TABLE IF EXISTS `menus_collect`;
CREATE TABLE `menus_collect` (
  `uId` varchar(255) NOT NULL,
  `msId` varchar(255) NOT NULL,
  `collect_time` bigint(255) NOT NULL,
  PRIMARY KEY (`uId`,`msId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menus_collect
-- ----------------------------
INSERT INTO `menus_collect` VALUES ('a195c718-a046-4fbe-ae1e-9672e09d9f6a', '55e55d3d-bc57-4cf0-96f4-f4ba872d075d', '1494168523812');
INSERT INTO `menus_collect` VALUES ('a195c718-a046-4fbe-ae1e-9672e09d9f6a', 'd60f8e3b-4477-440f-a11f-f9b68cbb461a', '1494168162614');

-- ----------------------------
-- Table structure for menus_menu
-- ----------------------------
DROP TABLE IF EXISTS `menus_menu`;
CREATE TABLE `menus_menu` (
  `mId` varchar(255) NOT NULL,
  `msId` varchar(255) NOT NULL,
  PRIMARY KEY (`mId`,`msId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menus_menu
-- ----------------------------

-- ----------------------------
-- Table structure for menu_classify
-- ----------------------------
DROP TABLE IF EXISTS `menu_classify`;
CREATE TABLE `menu_classify` (
  `mcId` varchar(255) NOT NULL,
  `mcName` varchar(255) NOT NULL,
  PRIMARY KEY (`mcId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu_classify
-- ----------------------------
INSERT INTO `menu_classify` VALUES ('07f4b297-e4c8-4d72-aeed-cf10d6a55251', '下饭菜');
INSERT INTO `menu_classify` VALUES ('166b02ce-65e9-4cff-b4de-7ca52af2aa8b', '肉');
INSERT INTO `menu_classify` VALUES ('21dae3b3-f96e-4c10-8746-0aec22866e3f', '素食');
INSERT INTO `menu_classify` VALUES ('244baa86-8608-497b-b2a0-14f1a6c48816', '鸡蛋');
INSERT INTO `menu_classify` VALUES ('549a2362-f50e-4a6d-828c-7c19afd9c600', '早餐');
INSERT INTO `menu_classify` VALUES ('7e8cfbdd-a349-42b6-9794-3ef3b0deb209', '面');
INSERT INTO `menu_classify` VALUES ('902e1fe3-6106-450f-bdcd-3ea498327a3c', '汤羹');
INSERT INTO `menu_classify` VALUES ('94c32f60-9e78-426c-8424-ee055efda8f4', '快手菜');
INSERT INTO `menu_classify` VALUES ('9c55ea41-bdca-44b1-9229-b7507e6ed4c5', '主食');
INSERT INTO `menu_classify` VALUES ('ad4ad5da-99f3-4584-875d-08f254d215d2', '蔬菜');
INSERT INTO `menu_classify` VALUES ('aebcd365-c989-4a03-9824-9b1e5e946832', '鱼');
INSERT INTO `menu_classify` VALUES ('bf298e0c-a634-450a-9602-c9000e2c309f', '烘焙');
INSERT INTO `menu_classify` VALUES ('e2d33fb2-700d-439f-b031-c8bd5152bbc9', '家常菜');

-- ----------------------------
-- Table structure for menu_collect
-- ----------------------------
DROP TABLE IF EXISTS `menu_collect`;
CREATE TABLE `menu_collect` (
  `uId` varchar(255) NOT NULL,
  `mId` varchar(255) NOT NULL,
  `collect_time` bigint(255) NOT NULL,
  PRIMARY KEY (`uId`,`mId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu_collect
-- ----------------------------
INSERT INTO `menu_collect` VALUES ('a195c718-a046-4fbe-ae1e-9672e09d9f6a', '3c010b6b-901d-43ae-89df-b6889fbd3f54', '1492054032112');
INSERT INTO `menu_collect` VALUES ('a195c718-a046-4fbe-ae1e-9672e09d9f6a', '4391fb8b-e81a-4c65-bf25-8f96e2c25265', '1492053439623');
INSERT INTO `menu_collect` VALUES ('a195c718-a046-4fbe-ae1e-9672e09d9f6a', 'b288764c-b953-4332-b72d-37c7b2139302', '1492060524454');

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question` (
  `qId` varchar(255) NOT NULL,
  `uId` varchar(255) NOT NULL,
  `qTitle` varchar(255) NOT NULL,
  `qInfo` varchar(10240) NOT NULL,
  `createTime` bigint(255) NOT NULL,
  PRIMARY KEY (`qId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES ('134ab12c-0615-4cd0-8587-f65e96964073', '088b499c-e68b-4367-93a2-a404143f3cff', '面筋蒸好关火以后会塌陷下去，为什么？', '做凉皮的时候洗好面剩下的面筋，第一次直接蒸的蒸完塌了，第二次加上干酵母过了一夜蒸的时候还是塌了，有人知道是什么原因吗？怎样蒸才能不塌呢？', '1492016020204');
INSERT INTO `question` VALUES ('1cd9d65f-340e-45d6-9345-6ed4a35e2769', '088b499c-e68b-4367-93a2-a404143f3cff', '浓缩咖啡里加什么会比较好喝？', '除了最普遍牛奶、可可外，浓缩咖啡里加什么会比较好喝？', '1492015937483');
INSERT INTO `question` VALUES ('b774496e-71c5-4356-9f4e-3eed5387f754', '088b499c-e68b-4367-93a2-a404143f3cff', '纯好奇：吃货妹子们，有没有吃什么东西过敏？', '如题。我家男人吃芒果过敏，但我总想喂给他，测试他接触芒果的底线……', '1492016072513');
INSERT INTO `question` VALUES ('ba122732-80f8-4577-ba2f-fa2020e8e557', '088b499c-e68b-4367-93a2-a404143f3cff', '没有冰箱，做什么便当当午饭才不容易腐坏呢？', '夏天快到了，上课的地方没有冰箱，可以做什么便当当午饭才不容易腐坏呢？用的是月兔便当盒', '1492015973207');
INSERT INTO `question` VALUES ('c25361eb-bf64-457a-a8d5-ecaaa54edc1e', '088b499c-e68b-4367-93a2-a404143f3cff', '有什么办法使高汤保存时间长一些？', '我觉得没什么好方法，因为每天都要用，时间长了就坏了', '1492016043317');
INSERT INTO `question` VALUES ('f8d9c409-524c-4566-8a0e-4b2f8c9d3cc2', '088b499c-e68b-4367-93a2-a404143f3cff', '全麦粉是很难发酵吗？', '用全麦粉发酵好像不太成功，发头也不大，请教一下', '1492015997527');

-- ----------------------------
-- Table structure for report
-- ----------------------------
DROP TABLE IF EXISTS `report`;
CREATE TABLE `report` (
  `reId` varchar(255) NOT NULL,
  `uId` varchar(255) NOT NULL,
  `mId` varchar(255) NOT NULL,
  `cause` varchar(10240) NOT NULL,
  `report_time` bigint(255) NOT NULL,
  PRIMARY KEY (`reId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of report
-- ----------------------------
INSERT INTO `report` VALUES ('', 'a195c718-a046-4fbe-ae1e-9672e09d9f6a', '3c010b6b-901d-43ae-89df-b6889fbd3f54', '其他原因我不喜欢', '1492054064342');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `rId` varchar(255) NOT NULL,
  `rName` varchar(255) NOT NULL,
  PRIMARY KEY (`rId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------

-- ----------------------------
-- Table structure for suggest
-- ----------------------------
DROP TABLE IF EXISTS `suggest`;
CREATE TABLE `suggest` (
  `sId` varchar(255) NOT NULL,
  `uId` varchar(255) NOT NULL,
  `sInfo` varchar(10240) NOT NULL,
  `createTime` bigint(255) NOT NULL,
  PRIMARY KEY (`sId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of suggest
-- ----------------------------
INSERT INTO `suggest` VALUES ('0eb5383d-df24-44f4-955d-6ac1bc3b3775', 'a195c718-a046-4fbe-ae1e-9672e09d9f6a', '我是上帝的', '1494164740975');
INSERT INTO `suggest` VALUES ('1568f8da-aef9-489e-b0f2-da64e24dd101', 'a195c718-a046-4fbe-ae1e-9672e09d9f6a', '我是', '1494164753603');
INSERT INTO `suggest` VALUES ('5427972b-ef49-4fee-8a51-db5d2a213bcd', 'a195c718-a046-4fbe-ae1e-9672e09d9f6a', '我很虚幻', '1494164710866');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uId` varchar(255) NOT NULL,
  `uName` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `rId` varchar(255) DEFAULT NULL,
  `bindEmail` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `state` int(2) NOT NULL,
  `headPic` varchar(255) NOT NULL,
  `sex` int(2) NOT NULL,
  `birth` bigint(255) DEFAULT NULL,
  `hometown` varchar(255) DEFAULT NULL,
  `createTime` bigint(255) NOT NULL,
  `uInfo` varchar(10240) DEFAULT NULL,
  PRIMARY KEY (`uId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('088b499c-e68b-4367-93a2-a404143f3cff', 'sunny-mr', 'a07c5138c5d806ab26fb39f166c2b92e', null, '921126833@qq.com', 'ff40d94e999d60214c9db0dad1b33157', '0', 'user.jpg', '1', '0', null, '1492015505189', null);
INSERT INTO `user` VALUES ('224b8ef1-f158-4150-962e-494edb6f12d3', '妄想de甜甜圈', 'a07c5138c5d806ab26fb39f166c2b92e', null, '15061137872@163.com', '5c0156fe40fd6fd1b82c487cff92bded', '0', 'uPic1.jpg', '1', '0', null, '1492040364593', null);
INSERT INTO `user` VALUES ('2c515c11-8d32-437f-b1a8-a563ea7191ee', '甜花卷儿', 'a07c5138c5d806ab26fb39f166c2b92e', null, '15061137872@163.com', '5c0156fe40fd6fd1b82c487cff92bded', '0', 'uPic2.jpg', '1', '0', null, '1492040392077', null);
INSERT INTO `user` VALUES ('54e86353-ef83-49a5-bd3a-90db48c9fced', '菁心烘培', 'a07c5138c5d806ab26fb39f166c2b92e', null, '15061137872@163.com', '5c0156fe40fd6fd1b82c487cff92bded', '0', 'uPic3.jpg', '1', '0', null, '1492040443537', null);
INSERT INTO `user` VALUES ('5971e6c8-fb8a-4822-b3d0-4353dcf170c4', ' 温暖向阳sunny', 'a07c5138c5d806ab26fb39f166c2b92e', null, '15061137872@163.com', '5c0156fe40fd6fd1b82c487cff92bded', '0', 'uPic4.jpg', '1', '0', null, '1492040503569', null);
INSERT INTO `user` VALUES ('608a5305-89c1-40b7-aeb0-caae99011379', ' tauQQ陶朵朵', 'a07c5138c5d806ab26fb39f166c2b92e', null, '15061137872@163.com', '5c0156fe40fd6fd1b82c487cff92bded', '0', 'uPic5.jpg', '1', '0', null, '1492040556121', null);
INSERT INTO `user` VALUES ('6f28d169-9067-4698-81f5-08d3004eead2', '一只ruier喵', 'a07c5138c5d806ab26fb39f166c2b92e', null, '15061137872@163.com', '5c0156fe40fd6fd1b82c487cff92bded', '0', 'uPic6.jpg', '1', '0', null, '1492040480614', null);
INSERT INTO `user` VALUES ('71a5d264-37f1-4b63-8a10-199a126607ca', '曹燕', 'a07c5138c5d806ab26fb39f166c2b92e', null, '15061137872@163.com', '5c0156fe40fd6fd1b82c487cff92bded', '0', 'uPic7.jpg', '1', '0', null, '1492040298882', null);
INSERT INTO `user` VALUES ('91103882-e3a9-4e23-bd3d-268925f19105', ' 开心狮子座2002', 'a07c5138c5d806ab26fb39f166c2b92e', null, '15061137872@163.com', '5c0156fe40fd6fd1b82c487cff92bded', '0', 'uPic8.jpg', '1', '0', null, '1492040527637', null);
INSERT INTO `user` VALUES ('a195c718-a046-4fbe-ae1e-9672e09d9f6a', 'cy', 'a07c5138c5d806ab26fb39f166c2b92e', null, '15061137872@163.com', '5c0156fe40fd6fd1b82c487cff92bded', '0', 'uPic9.jpg', '1', '0', null, '1492040574453', null);
INSERT INTO `user` VALUES ('a34445ad-b181-4449-8b37-507ed3edc48b', 'caoxiaoyan', 'a07c5138c5d806ab26fb39f166c2b92e', null, '15061137872@163.com', '5c0156fe40fd6fd1b82c487cff92bded', '0', 'uPic10.jpg', '1', '0', null, '1492040147718', null);
INSERT INTO `user` VALUES ('f8479daa-3f71-44e3-ae5e-fcfe2d5a0171', 'cyy', 'a07c5138c5d806ab26fb39f166c2b92e', null, '15061137872@163.com', '5c0156fe40fd6fd1b82c487cff92bded', '0', 'user.png', '1', '0', null, '1492040745931', null);

-- ----------------------------
-- Table structure for zan
-- ----------------------------
DROP TABLE IF EXISTS `zan`;
CREATE TABLE `zan` (
  `uId` varchar(255) NOT NULL,
  `mId` varchar(255) NOT NULL,
  `like_time` bigint(255) NOT NULL,
  PRIMARY KEY (`uId`,`mId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zan
-- ----------------------------
