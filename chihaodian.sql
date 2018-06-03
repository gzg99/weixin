/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50712
Source Host           : 120.27.93.57:3306
Source Database       : chihaodian

Target Server Type    : MYSQL
Target Server Version : 50712
File Encoding         : 65001

Date: 2016-12-09 09:30:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `access_token`
-- ----------------------------
DROP TABLE IF EXISTS `access_token`;
CREATE TABLE `access_token` (
  `id` int(11) NOT NULL,
  `access_token` varchar(1000) DEFAULT NULL,
  `expires_in` varchar(255) DEFAULT NULL,
  `add_time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of access_token
-- ----------------------------
INSERT INTO `access_token` VALUES ('1', 'kS8aBJs8nvNp0AluSqg7nkAFHgdL2DJGwVu35KCOWDDFqvTlYxHPsBYYs_yjRF5wiHVhSwZ053OhwEgZCb3utnyCDReV2PtPzSq5-oYS_3zJD-5BgvsBO8ajf37yPqrQAJUaAFARAL', null, '1481002855246');

-- ----------------------------
-- Table structure for `tb_address`
-- ----------------------------
DROP TABLE IF EXISTS `tb_address`;
CREATE TABLE `tb_address` (
  `addr_id` int(11) NOT NULL AUTO_INCREMENT,
  `addr_user` varchar(255) DEFAULT NULL,
  `addr_name` varchar(255) DEFAULT NULL,
  `addr_tel` varchar(255) DEFAULT NULL,
  `oppen_id` varchar(255) DEFAULT NULL,
  `sort` varchar(255) DEFAULT '5',
  `city` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`addr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_address
-- ----------------------------
INSERT INTO `tb_address` VALUES ('11', ' ', '     1', '   ', '111', '20160409131928', null, null, null);
INSERT INTO `tb_address` VALUES ('13', '', '', '', 'oyqTtw3DsY4PXg1wVFfQp8ewOKh8', null, null, null, null);
INSERT INTO `tb_address` VALUES ('14', '123', '', '', 'oyqTtw3DsY4PXg1wVFfQp8ewOKh8', null, null, null, null);
INSERT INTO `tb_address` VALUES ('15', '123', '1234', '123', 'oyqTtw3DsY4PXg1wVFfQp8ewOKh8', null, null, null, null);
INSERT INTO `tb_address` VALUES ('16', '常振伟', '55', '13357823304', 'oyqTtw0g_Gc4YlHlUAUGnx6Gft90', null, null, null, null);
INSERT INTO `tb_address` VALUES ('17', '哈', '111111', '11111', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '20160416103616', null, null, null);
INSERT INTO `tb_address` VALUES ('18', '尹翔', '南京市新街口政务大厦北楼306', '18260009902', 'oyqTtw2gjY17ntKIyba_i48EB26A', '20160426221551', '1', '16', '2');
INSERT INTO `tb_address` VALUES ('19', '武蒙', '雨润大街123456789好好好好好好好好好好哈哈哈', '13800138000', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '20160504080620', '1', '16', '2');
INSERT INTO `tb_address` VALUES ('20', '我的', '123', '13800138000', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', null, '1', '16', '1');
INSERT INTO `tb_address` VALUES ('21', '哈哈哈', '你家', '1111111', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('22', '你好high糊涂推拿Jul图兔兔图图', '好好好好好好好好好好好好好好好好好好好好好好好好好', '13800138000', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '20160504080620', '1', '16', '2');
INSERT INTO `tb_address` VALUES ('24', '雷锋', '水岸明珠3', '13184235048', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', null, '1', '16', '11');
INSERT INTO `tb_address` VALUES ('25', '楚荡', '永武街16号', '18977106731', 'oyqTtwx22xt4J9oujYfC3wjRD5Uk', null, '2', '7', '12');
INSERT INTO `tb_address` VALUES ('26', '晨', '大石桥', '18913834441', 'oyqTtw_dPj4Ne9iKxO-S2uK9tGkE', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('27', '晨', '大石桥', '18913834441', 'oyqTtw_d252V55C89XiqmkGrRpHM', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('28', '李祥', '卫巷29—2,80手机', '15005151906', 'oyqTtw0p_NhAaOjZH1OOG7Npg9FA', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('29', '胡翀宇', '大石桥19号', '13851759927', 'oyqTtw91DW4dmYULSdL7n-4-G9BY', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('30', 'robbin', '柳州东路', '18301985940', 'oyqTtw-iCmyM3xVw_3XM8pO_xao4', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('31', 'ssss', '玄武大道', 'ssss18301985940', 'oyqTtw-iCmyM3xVw_3XM8pO_xao4', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('32', '哈哈', '2号', '1111111111111', 'oyqTtw-iCmyM3xVw_3XM8pO_xao4', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('33', 'xxxx', 'xxxxxx', '18018673503', 'oyqTtw6su9NPDlAhgmGUYHukqQ7A', null, '2', '23', '1');
INSERT INTO `tb_address` VALUES ('34', 'test', '南京', '13524525133', 'oyqTtw2vfPMrtQczREkZYaQmMqt0', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('35', '你', '这', '18516187204', 'oyqTtw3-pP203p605MLi9iX1utyo', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('36', '陈好', '汉中黄金时间时间', '13815875144', 'oyqTtw4Fy9Fn31QnZKfd91w9e6jw', null, '1', '16', '4');
INSERT INTO `tb_address` VALUES ('37', '看看', '做最去外婆哦破', '13357823304', 'oyqTtw0g_Gc4YlHlUAUGnx6Gft90', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('38', '12312', '123123123', '3123123123123', 'oyqTtw7EM8Dfe5FtvSXZTP3JpSAI', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('39', '张先生', '真新商务楼628', '13391008872', 'oyqTtw-Wo0Ke5FHnmcvs3-9_NB9Q', null, '4', '25', '4');
INSERT INTO `tb_address` VALUES ('40', '徐爸爸', '搞不好地方', '13577446886', 'oyqTtwzcK3cIq56eogDl4fs04UZU', null, '1', '16', '6');
INSERT INTO `tb_address` VALUES ('41', '付伟', '捎带手按时发哦就', '15120095077', 'oyqTtwz-6YtPxpphyqVGGuapqAkc', null, '1', '16', '3');
INSERT INTO `tb_address` VALUES ('42', '11', '1111', '13513533333', 'oyqTtw2EbRUgt2TfsjFkKOzDYGlc', null, '1', '16', '4');
INSERT INTO `tb_address` VALUES ('43', '八', '蘑菇头图片', '1333333333', 'oyqTtw0VCsm7fTPrZMMISKZ24-Vk', null, '1', '16', '4');
INSERT INTO `tb_address` VALUES ('44', '体检', '推荐', '15888888888', 'oyqTtw1y0z_wUYa-w1rNc8Y5s9FU', null, '1', '16', '1');
INSERT INTO `tb_address` VALUES ('45', 'ddd', '走着走着zz', 'ssd', 'oyqTtw13vXWsCtbuSsw7FD8-1oG0', null, '2', '18', '2');
INSERT INTO `tb_address` VALUES ('46', 'ss', '收拾收拾', 'ssss', 'oyqTtw8aLbm2Z9cI_lNZfqA8jO1k', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('47', '北京', '回龙观', '13718105180', 'oyqTtw-0IYTFupfhydyMQe1dKe6M', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('48', '肖文志', '休息休息谢谢', '11111111', 'oyqTtw9evW2ceV_C-wKbpEw7K1EY', null, '1', '16', '5');
INSERT INTO `tb_address` VALUES ('49', '默默', '急急急急', '13803518888', 'oyqTtw0mv38vcI-LgoICHl1wN8RQ', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('50', 'd f f', 'd f f f', 's sh h', 'oyqTtw_embzWA8S7UcaBBj_cHzGU', null, '1', '17', '2');
INSERT INTO `tb_address` VALUES ('51', 'JJ了', '\'\'\'5考虑考虑', '18658630700', 'oyqTtw2jJo2PeN2KvEFUhe7GufAA', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('52', '11', '555', '11111111111', 'oyqTtwz9hyWd87BYMxvfO1qHmQOk', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('53', '测试名', '测试。', '13525252521', 'oyqTtw7EJh-DpDBXKkkM9oQVwHTU', null, '1', '16', '12');
INSERT INTO `tb_address` VALUES ('54', '测试名', '测试地点', '13676767676', 'oyqTtw4wC-qD6qH83YGbhPS9Y4Go', null, '20', '6', '6');
INSERT INTO `tb_address` VALUES ('55', 'ssssss', '说的话电话', '13213131313', 'oyqTtw5vZzTW34diCGh8EvF-lBgM', null, '1', '16', '4');
INSERT INTO `tb_address` VALUES ('56', 'king', '啊啊啊啊', '18711110000', 'oyqTtw3qFRmliBkvEyV_hnYUFsv8', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('57', '王承林', '123358', '13193152333', 'oyqTtw7awg1cjj_jfWbARvKDmPjg', null, '4', '7', '6');
INSERT INTO `tb_address` VALUES ('58', '王晓鹏', '桃子路16号', '15907979898', 'oyqTtw6nHi7bW3tO7kwOIMnybWtI', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('59', '李先生', '哈哈哈哈', '13826531136', 'oyqTtw5A8gyh5hWYWeBmGdKifNlE', null, '6', '6', '5');
INSERT INTO `tb_address` VALUES ('60', '么么哒', '110', '15048562332', 'oyqTtww7ucEo1bpuIrsVUo4kia5o', '20160821162620', '1', '16', '2');
INSERT INTO `tb_address` VALUES ('61', '么么哒', '110', '15048562332', 'oyqTtww7ucEo1bpuIrsVUo4kia5o', '20160821162620', '1', '16', '2');
INSERT INTO `tb_address` VALUES ('62', '司小毛', '6646', '497844346', 'oyqTtwxVskVi5gknp6Zi85na8Afc', '20160821162620', '1', '16', '4');
INSERT INTO `tb_address` VALUES ('63', '沈在宏', '28栋601', '17095011358', 'oyqTtw1y5pUj0V-3aJAFi3qXJ9x4', '20160821162620', '1', '16', '2');
INSERT INTO `tb_address` VALUES ('64', '午餐', '：德克勒克', '15329109996', 'oyqTtw3ojDG0bxnTcMf3CoSuEiYY', '20160821162620', '1', '16', '4');
INSERT INTO `tb_address` VALUES ('65', '到达', '赶紧睡觉', '13112341234', 'oyqTtw3LfpX7MuHYaKpETe2mQCag', '20160821162620', '1', '16', '4');
INSERT INTO `tb_address` VALUES ('66', '哈哈哈哈', '哥给你', '13655552236', 'oyqTtw_1lKS5bMAK9U0Ujo6jGIUM', '20160821162620', '1', '16', '9');
INSERT INTO `tb_address` VALUES ('67', '发货', '随便吧暴饮暴食', '15699999999', 'oyqTtwyhgl0bTLUXOLonU-YjzoFo', '20160821162620', '1', '4', '3');
INSERT INTO `tb_address` VALUES ('68', '叶晓明', '西丽街道88栋501', '15999594104', 'oyqTtw7YNOwzjFWNQ-OnyFaODSgM', '20160821162620', '6', '6', '4');
INSERT INTO `tb_address` VALUES ('69', '生里', '14722', '13100000000', 'oyqTtw4orv5TBRsz1CCrrU18du5s', null, '1', '16', '4');
INSERT INTO `tb_address` VALUES ('70', '这', '在', '我', 'oyqTtwz6CKxywINf8fIHjdTkhfy8', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('71', '测试', '测试', '13128845886', 'ou8VTwljRzueY2YuUjYxNnB0YKTQ', null, '1', '16', '1');
INSERT INTO `tb_address` VALUES ('72', '刘韦', '123', '18855150306', 'ou8VTws6WD0XhKyFIrzurEOk_B08', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('73', '咯噢噢', '他们默默', '18365432123', 'ou8VTwjcT9r3iq1TdcVMsn5zlSwI', null, '1', '16', '3');
INSERT INTO `tb_address` VALUES ('74', '测试', '测试', '13812345678', 'ou8VTwskoxxmWPrfJzWqyNaPNMe8', null, '1', '16', '3');
INSERT INTO `tb_address` VALUES ('75', 'h l', '啦啦', '利库路特', 'ou8VTwqfBP8vjG9h55ihMQ01MRY4', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('76', '伍照生', '很多亟待解决', '15329109996', 'ou8VTwsobQoGHPRsCxIq_m_jk_z8', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('77', '陈瑞', '1111', '1508603232', 'ou8VTwq99JgxdYFlFBn0QS_aOSbQ', null, '1', '16', '4');
INSERT INTO `tb_address` VALUES ('78', '哈哈', '4444', '13184222222', 'ou8VTwn85kT1eSZmL2Lz7RmXZo10', null, '1', '16', '1');
INSERT INTO `tb_address` VALUES ('79', '我', '你们都', '19398273728', 'ou8VTwjjeTBoS_83y-GVz_dsULFA', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('80', '1', '122', '18057936784', 'ou8VTwlq0fSMJah4dfXyYfKY5CzQ', null, '1', '16', '1');
INSERT INTO `tb_address` VALUES ('81', 'sfsd', 'asdfasfasdfadsf', '13112341234', 'ou8VTwvABQpyIpJDBFvGnUPJAcmE', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('82', '小子', '44', '13826062828', 'ou8VTwoEE7MArX5PFaNqdsYysPwc', null, '1', '16', '1');
INSERT INTO `tb_address` VALUES ('83', '小子', '44', '13826062828', 'ou8VTwoEE7MArX5PFaNqdsYysPwc', null, '1', '16', '1');
INSERT INTO `tb_address` VALUES ('84', '郭鑫', '566666', '18821780377', 'ou8VTwkfzz1iPJyoVW11lHyzoedU', null, '6', '16', '5');
INSERT INTO `tb_address` VALUES ('85', '子勺', '乡子_45号', '13566666778', 'ou8VTwic_nOuiMobj9DJFPuB5ekU', null, '1', '16', '4');
INSERT INTO `tb_address` VALUES ('86', '肖吐', 'V领酷我', '13800000000', 'ou8VTwnjnL5K8tAIPFPGo4MDD9os', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('87', '功能', '来咯摸摸哦哦哦OK啦', '13800000000', 'ou8VTwtXee4vzTawUp9dyfUNq7Cc', null, '1', '16', '1');
INSERT INTO `tb_address` VALUES ('88', 'George', '哈千区', '12345678914', 'ou8VTwsxLQTCa46WsPLUecPZW02U', null, '1', '16', '3');
INSERT INTO `tb_address` VALUES ('89', 'zzxx', '而通过 v 很艰难！', '124445566777', 'ou8VTwi5QeqO9G9Crq5Gxafs6aGA', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('90', '哈哈哈', '哈哈哈', '11111111111', 'ou8VTwtCzmuG1D1T95LN4UwyUY2E', null, '1', '16', '5');
INSERT INTO `tb_address` VALUES ('91', '哈哈', '共', '15840040044', 'ou8VTwuYXOhkEJkcOrn7_G8Bfr7Q', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('92', '12', '123', '15836985236', 'ou8VTwhOrxREKicoSZhZvrA-_Kvk', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('93', 'aa', 'ffgg', '12345678912', 'ou8VTwtC9vvMm4TZ_aoMlVwiEn-E', null, '1', '17', '2');
INSERT INTO `tb_address` VALUES ('94', '11', '21', '11', 'ou8VTwiy0LiYm5casAiw9NZV5P-E', null, '1', '16', '1');
INSERT INTO `tb_address` VALUES ('95', '11', '1111', '13815511069', 'ou8VTwlXE--4jVErbh8UhrjiisNE', null, '1', '16', '3');
INSERT INTO `tb_address` VALUES ('96', '8555', '吐了咯哦里', '13518227731', 'ou8VTwgF5REv9Jcc2L077FbunN8s', null, '1', '16', '6');
INSERT INTO `tb_address` VALUES ('97', '椰', '随便忋', '13101231887', 'ou8VTwqvmbvC70s3zwNfua8yfhLs', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('98', '裤', '5', '15215478985', 'ou8VTwlX7U2v-AmokmTT2dMHHu2g', null, '5', '16', '7');
INSERT INTO `tb_address` VALUES ('99', '老人', '哈哈哈哈', '15259771234', 'ou8VTwrSkK02zQAqRVoTLXgKJfKE', null, '1', '16', '5');
INSERT INTO `tb_address` VALUES ('100', '黄思绪', '规划和斤斤计较', '15895289058', 'ou8VTwtP7bAsgg_VjS6RL26-NbY0', null, '1', '16', '10');
INSERT INTO `tb_address` VALUES ('101', '嘿嘿', '好', '18980581676', 'ou8VTwsfziZsGMXNyCMWVCtFRvak', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('102', '俞忠鑫', '安宁', '15163190697', 'ou8VTwjqR_GaTbEMnL_QAv5WQ8V4', null, '1', '16', '3');
INSERT INTO `tb_address` VALUES ('103', '看看', '嗯嗯', '15856423685', 'ou8VTwrN4op-MSU7n4rA5fV5EcKE', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('104', '牛敏', '贴近', '12313155131', 'ou8VTwhiWQROhAXw8ghU41ozsTwU', null, '1', '16', '4');
INSERT INTO `tb_address` VALUES ('105', '郭耀歆', '1717', '18120052915', 'ou8VTwk0U1f87cCyUDmUm0tC1i9M', null, '4', '16', '10');
INSERT INTO `tb_address` VALUES ('106', '郭耀歆', '1717', '18120052915', 'ou8VTwk0U1f87cCyUDmUm0tC1i9M', null, '4', '16', '10');
INSERT INTO `tb_address` VALUES ('107', '济阳', '啦咯啦咯看累了垃圾', '13810354792', 'ou8VTwrBRhpyJ3VjkS1O4qKD46mw', null, '1', '16', '4');
INSERT INTO `tb_address` VALUES ('108', '4111', '哈哈哈', '2222222222', 'ou8VTwqbP6sY2C6blaA0Vg7BvXrQ', '20161109222555', '2', '30', '5');
INSERT INTO `tb_address` VALUES ('109', '百战百胜吧', '孩子说话', '13732536976', 'ou8VTwpefG2kauXvtutM_ww6E03o', '20161027122748', '1', '16', '1');
INSERT INTO `tb_address` VALUES ('110', '正在做', '108538258855', '13811111111', 'ou8VTwqXTCPIlMeo3TYimLlrYU2A', '20161027122748', '1', '16', '3');
INSERT INTO `tb_address` VALUES ('111', '法国就让乳房', 'tyuhg', '13333333333', 'ou8VTwvYwOYMgm0ossa390RPdLVI', '20161027122748', '2', '14', '2');
INSERT INTO `tb_address` VALUES ('112', 'wwww', '氢气球', '18210079780', 'ou8VTwl3LM-CjVCDO64fbcJSVtsY', '20161027122748', '1', '16', '1');
INSERT INTO `tb_address` VALUES ('113', '肖先生', '农林路', '13510661780', 'ou8VTwiJcLkKs8vxLdvS-yBcZ5A4', '20161027122748', '6', '6', '3');
INSERT INTO `tb_address` VALUES ('114', '谢谢', '吃饭饭', '15626028899', 'ou8VTwp10jbngeWCWhJKHWxuQ-5I', '20161027122748', '6', '16', '4');
INSERT INTO `tb_address` VALUES ('115', '沈龙', '北滘', '18676181261', 'ou8VTwp-Qn4YExm5uwH4c-dgOTSg', '20161027122748', '8', '6', '4');
INSERT INTO `tb_address` VALUES ('116', '111', '123', '15151212114', 'ou8VTwoVbGuhH2GLGAjxjSywXPf0', '20161027122748', '1', '16', '1');
INSERT INTO `tb_address` VALUES ('117', '赶紧摸了', '肉夹馍了啦', '131222233333', 'ou8VTwl7ZK4QQw9S7OxccafulHxM', '20161027122748', '1', '16', '2');
INSERT INTO `tb_address` VALUES ('118', '赶紧摸了', '肉夹馍了啦', '131222233333', 'ou8VTwl7ZK4QQw9S7OxccafulHxM', '20161027122748', '1', '16', '2');
INSERT INTO `tb_address` VALUES ('119', 'uiuugg', '这种事情还是发生了变化和成长的路上我', '18643224998', 'ou8VTwuWpLPkwEuAnmdGreneXEnk', '20161027122748', '1', '16', '2');
INSERT INTO `tb_address` VALUES ('120', '发反反复复', 'g h h h h h j', '13760876988', 'ou8VTwusUEW3tdzUpHwr05p6aLpA', '20161027122748', '1', '16', '2');
INSERT INTO `tb_address` VALUES ('121', '陈', '哈哈', '11111111111', 'ou8VTwgNa3khqV-8T2LoVnmXF11Q', '20161027122748', '1', '16', '2');
INSERT INTO `tb_address` VALUES ('122', '李超', '新闻路216号', '13698732903', 'ou8VTwrXVM_Pq3OdVJ6SZHsiyUlE', '20161027122748', '2', '29', '5');
INSERT INTO `tb_address` VALUES ('123', '娃娃', '进1我1滴哦why移民一', '13815856582', 'ou8VTwupTEPHJBs9dBRiBnmUKdKI', '20161109222555', '1', '16', '2');
INSERT INTO `tb_address` VALUES ('124', '李明', '可口可乐了可口可乐了', '13460688548', 'ou8VTwl3l6uGbY0EM4J817DkFCLU', '20161109222555', '1', '16', '1');
INSERT INTO `tb_address` VALUES ('125', '时间没', '流量偷懒调理', '15914023551', 'ou8VTwqeX8pySxBZ2pukb1rMS1bI', '20161109222555', '1', '16', '4');
INSERT INTO `tb_address` VALUES ('126', '测试', '测试一下', '18819067178', 'ou8VTwvlcjYZS90t71g5dZJ1VwQ4', '20161109222555', '1', '16', '2');
INSERT INTO `tb_address` VALUES ('127', 'g h h h h h j', 'g h g', '5555667888', 'ou8VTwt5NriYWu5IffvxxdmUyPV0', '20161109222555', '1', '16', '3');
INSERT INTO `tb_address` VALUES ('128', '小伙伴', '绝对经典看看', '13898980198', 'ou8VTwsR0jPYrT5d5WyjJob5Yc4g', '20161109222555', '1', '16', '3');
INSERT INTO `tb_address` VALUES ('129', '在！', '你？好', '13538240895', 'ou8VTwnIPlReqwsTZKS4vpDIe350', '20161109222555', '1', '16', '2');
INSERT INTO `tb_address` VALUES ('130', '昌平', '点吧', '17415655785', 'ou8VTwtaRjh60nRuE2Hj8rTztbho', '20161109222555', '1', '16', '4');
INSERT INTO `tb_address` VALUES ('131', 'test', '下沙会发路', '13923870708', 'ou8VTwsRfl7lA6YAuBi7wb_I2NMs', '20161109222555', '1', '16', '3');
INSERT INTO `tb_address` VALUES ('132', '萨顶顶', '就收不到黄辉的', '13909090909', 'ou8VTwkYbPARvzaRjo9tljYcd-KE', '20161109222555', '1', '16', '2');
INSERT INTO `tb_address` VALUES ('133', '哈哈镜', '好纠结123', '11111111221', 'ou8VTwl1PtN-wuilfv9BEVCAnjCc', '20161109222555', '1', '16', '1');
INSERT INTO `tb_address` VALUES ('134', '陈初', '东风路1号', '13430268282', 'ou8VTwn7v9ukn-pj2ewogKxJpeyk', '20161109222555', '1', '16', '2');
INSERT INTO `tb_address` VALUES ('135', '腊八', '比较', '12345648912', 'ou8VTwor6u_RAjAo1JfGNlOOaAyc', '20161109222555', '1', '16', '4');
INSERT INTO `tb_address` VALUES ('136', '徐', '到到', '13544452227', 'ou8VTwg-BlQa4CZOB2Ka4JBPXlS4', '20161109222555', '1', '16', '1');
INSERT INTO `tb_address` VALUES ('137', '测试', '测试', '12345678901', 'ou8VTwihkxJm9ZYe_FXTFi6lwPaY', '20161109222555', '1', '16', '4');
INSERT INTO `tb_address` VALUES ('138', '孙鹏', '1234567988555', '15551198902', 'ou8VTwvdeCe_WF5F_V18ZFDftFNg', '20161109222555', '1', '16', '1');
INSERT INTO `tb_address` VALUES ('139', '呵呵呵', '呵呵', '13128808042', 'ou8VTwp8MZyN9I0l-89C9nwlGifA', '20161109222555', '1', '16', '3');
INSERT INTO `tb_address` VALUES ('140', 'hdje', 'bdjehshsh', '13051917654', 'ou8VTwsapaLt2qiTw6rk8PNpWXAA', '20161109222555', '3', '18', '2');
INSERT INTO `tb_address` VALUES ('141', '李涛涛', '南京大学', '15295063375', 'ou8VTwumv0a3ftwmieTR_XoOGHp8', '20161130155021', '1', '16', '11');
INSERT INTO `tb_address` VALUES ('142', '来了就', '记录贴', '15295063232', 'ou8VTwumv0a3ftwmieTR_XoOGHp8', '20161130155024', '1', '16', '1');
INSERT INTO `tb_address` VALUES ('143', '啦啦啦', '健健康康', '15623028092', 'ou8VTwoQa1RZRIy7OgEicEENwWrI', '20161127001644', '1', '16', '2');
INSERT INTO `tb_address` VALUES ('144', 'g h h', '12号', '13800138000', 'ou8VTwuGDs7y4UC6ny-gZiLE_kzY', null, '1', '16', '3');
INSERT INTO `tb_address` VALUES ('145', '112', '哦送你们', '11111111111', 'ou8VTwluWTmRDqllWBNY-z08ADSQ', null, '1', '16', '3');
INSERT INTO `tb_address` VALUES ('147', '啊啊啊', '巴拉巴', '11111111111', 'ou8VTwmaNXULaYHc8jHbO1aeDdPY', '20161130155024', '6', '6', '6');
INSERT INTO `tb_address` VALUES ('148', 'zzm', '让他', '12456677543', 'ou8VTwo3TLbHyAj5y_GiqaIKZD3c', '20161130155024', '1', '16', '2');
INSERT INTO `tb_address` VALUES ('149', '1', '摸摸摸哦哦', '111111111111', 'ou8VTwsKzF4rScQcxpHaNrF8ehMo', '20161130155024', '1', '16', '1');
INSERT INTO `tb_address` VALUES ('150', '刘军伟', '橡树玫瑰城', '18539299635', 'ou8VTwtCk47MJ8xcFlgTyOSEMBHU', '20161130155024', '2', '12', '4');
INSERT INTO `tb_address` VALUES ('151', '杨杭富', '股海护航哈', '15981763995', 'ou8VTwsimQEiB9EsTxFSM8od0ung', '20161130155024', '2', '16', '1');
INSERT INTO `tb_address` VALUES ('152', '黄生', '1号', '18673002816', 'ou8VTwt3hOSd59Rqq7HjbXNN4wbQ', '20161130155024', '1', '16', '3');
INSERT INTO `tb_address` VALUES ('153', '王先生', '岳阳电大', '18773000370', 'ou8VTwkYfbPjT64INDLsNZcnMiMo', '20161130155024', '1', '14', '2');
INSERT INTO `tb_address` VALUES ('154', '过敏', '你明明', '1122334456', 'ou8VTwneV2yYX3fistDWn2YUPpAo', '20161130155024', '8', '16', '12');
INSERT INTO `tb_address` VALUES ('155', '123', '你猜', '1123456789', 'ou8VTwugFUqywpELAP4xCuy6BfLA', '20161130155024', '1', '16', '2');
INSERT INTO `tb_address` VALUES ('156', '邹元凯', '积极叽叽叽叽集体', '18615595642', 'ou8VTwiXqAeu9XyyRH0ZyLuD5D-g', '20161130155024', '1', '16', '7');

-- ----------------------------
-- Table structure for `tb_admin`
-- ----------------------------
DROP TABLE IF EXISTS `tb_admin`;
CREATE TABLE `tb_admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_admin
-- ----------------------------
INSERT INTO `tb_admin` VALUES ('1', 'admin', 'e10adc3949ba59abbe56e057f20f883e');

-- ----------------------------
-- Table structure for `tb_area`
-- ----------------------------
DROP TABLE IF EXISTS `tb_area`;
CREATE TABLE `tb_area` (
  `area_id` int(11) NOT NULL AUTO_INCREMENT,
  `area_name` varchar(255) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `status` int(255) DEFAULT NULL,
  `sort` int(255) DEFAULT NULL,
  PRIMARY KEY (`area_id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_area
-- ----------------------------
INSERT INTO `tb_area` VALUES ('33', '鼓楼区', '0', '1', '0');
INSERT INTO `tb_area` VALUES ('34', '玄武区', '0', '1', '0');
INSERT INTO `tb_area` VALUES ('35', '秦淮区', '0', '1', '0');
INSERT INTO `tb_area` VALUES ('36', '南京移动汉中门大街沟通100服务店', '33', '1', '0');
INSERT INTO `tb_area` VALUES ('37', '南京移动中央北路指定专营店', '33', '1', '0');
INSERT INTO `tb_area` VALUES ('38', '南京移动清凉门大街手机卖场', '33', '1', '0');
INSERT INTO `tb_area` VALUES ('39', '南京移动明故宫沟通100服务店', '34', '1', '0');
INSERT INTO `tb_area` VALUES ('40', '南京移动新庄指定专营店', '34', '1', '0');
INSERT INTO `tb_area` VALUES ('41', '丹凤街新街口政务大厦', '34', '1', '0');
INSERT INTO `tb_area` VALUES ('42', '南京移动升州路营业厅', '35', '1', '0');
INSERT INTO `tb_area` VALUES ('43', '南京移动火瓦巷指定专营店', '35', '1', '0');
INSERT INTO `tb_area` VALUES ('44', '建邺区', '0', '1', '0');
INSERT INTO `tb_area` VALUES ('45', '南京移动水西门沟通100服务店', '44', '1', '0');
INSERT INTO `tb_area` VALUES ('46', '南京移动河西万达营业厅', '44', '1', '0');

-- ----------------------------
-- Table structure for `tb_banner`
-- ----------------------------
DROP TABLE IF EXISTS `tb_banner`;
CREATE TABLE `tb_banner` (
  `ban_id` int(11) NOT NULL AUTO_INCREMENT,
  `ban_img` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`ban_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_banner
-- ----------------------------
INSERT INTO `tb_banner` VALUES ('1', '/chihaodian/upload/1457876411558.png', '#', '1', '1', '0');
INSERT INTO `tb_banner` VALUES ('2', '/chihaodian/../upload/1457922904544.png', '#', '4', '1', '0');
INSERT INTO `tb_banner` VALUES ('3', '/chihaodian/../upload/1466840233549.png', 'http://www.7haodian.cc/chihaodian/page/category.html?ctg_id=23', '2', '1', '1');
INSERT INTO `tb_banner` VALUES ('4', '/chihaodian/../upload/1457922914911.png', '#', '2', '1', '0');
INSERT INTO `tb_banner` VALUES ('5', '/chihaodian/../upload/1464335304002.png', 'http://www.7haodian.cc/chihaodian/page/goodsListById.html?goods_id=40', '5', '2', '1');
INSERT INTO `tb_banner` VALUES ('7', '/chihaodian/../upload/1466840222440.png', 'http://www.7haodian.cc/chihaodian/page/goodsListById.html?goods_id=39', '1', '1', '1');
INSERT INTO `tb_banner` VALUES ('8', '/chihaodian/../upload/1464335248909.png', 'http://www.7haodian.cc/chihaodian/page/goodsListById.html?goods_id=66', '4', '2', '1');
INSERT INTO `tb_banner` VALUES ('9', '/chihaodian/../upload/1465882607388.png', 'http://www.7haodian.cc/chihaodian/page/cpsAll.html', '0', '2', '1');
INSERT INTO `tb_banner` VALUES ('10', '/chihaodian/../upload/1467004540850.png', 'http://www.7haodian.cc/chihaodian/page/goodsListById.html?goods_id=60', '0', '1', '1');
INSERT INTO `tb_banner` VALUES ('11', '/chihaodian/../upload/1467004561444.png', 'http://www.7haodian.cc/chihaodian/page/goodsListById.html?goods_id=61', '0', '1', '1');

-- ----------------------------
-- Table structure for `tb_button`
-- ----------------------------
DROP TABLE IF EXISTS `tb_button`;
CREATE TABLE `tb_button` (
  `id` varchar(25) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL COMMENT '菜单类别，click，view',
  `value` varchar(255) DEFAULT NULL,
  `super_id` varchar(25) DEFAULT NULL COMMENT '父级id，即本表id；',
  `add_time` varchar(255) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_button
-- ----------------------------
INSERT INTO `tb_button` VALUES ('1468903253791', '微信商城', 'view', 'http://www.7haodian.cc/chihaodian/page/index.html', '1468903253791', null, '1', '1');
INSERT INTO `tb_button` VALUES ('1468903253792', '菜单二', 'view', null, '1468903253792', null, '2', '1');
INSERT INTO `tb_button` VALUES ('1468903253793', '菜单三', 'view', 'http://www.7haodian.cc/chihaodian/main/index.html', '1468903253793', null, '3', '1');
INSERT INTO `tb_button` VALUES ('1468903253797', '二、1', 'view', 'http://www.baidu.com', '1468903253792', null, '1', '2');
INSERT INTO `tb_button` VALUES ('1468903253798', '二、2', 'view', 'http://www.baidu.com', '1468903253792', null, '2', '2');
INSERT INTO `tb_button` VALUES ('1468903305065', '2', 'view', 'http://www.baidu.com', '1468903253792', '2016-07-19 12:41:45', '3', '2');
INSERT INTO `tb_button` VALUES ('1474170107783', 'index', 'view', 'http://www.7haodian.cc/chihaodian/page/index.html', '1468903253792', '2016-09-18 11:41:47', '1', '2');

-- ----------------------------
-- Table structure for `tb_cart`
-- ----------------------------
DROP TABLE IF EXISTS `tb_cart`;
CREATE TABLE `tb_cart` (
  `cart_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL,
  `goods_name` varchar(255) DEFAULT NULL,
  `goods_img` varchar(255) DEFAULT NULL,
  `goods_spe` varchar(255) DEFAULT NULL,
  `goods_price` float DEFAULT NULL,
  `goods_num` int(11) DEFAULT NULL,
  `goods_total` float DEFAULT NULL,
  `oppen_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cart_id`)
) ENGINE=InnoDB AUTO_INCREMENT=590 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_cart
-- ----------------------------
INSERT INTO `tb_cart` VALUES ('239', '42', '泰国金枕榴莲', '/chihaodian/../upload/1465724197732.png', '约5-7斤', '109', '1', '109', 'oyqTtw1jIZLr6rAJvAFUWOOiVEqc');
INSERT INTO `tb_cart` VALUES ('240', '43', '泰国金枕榴莲', '/chihaodian/../upload/1465724208122.png', '约3.5-4.9斤', '89', '1', '89', 'oyqTtw1jIZLr6rAJvAFUWOOiVEqc');
INSERT INTO `tb_cart` VALUES ('307', '57', '澳洲草饲牛仔骨 500g（6-8片）', '/chihaodian/../upload/1464319978611.png', '6-8片', '89', '2', '178', 'ou8VTwsHuNPVYK4tL_VWP9jzqajw');
INSERT INTO `tb_cart` VALUES ('311', '62', '台湾红标老母鸡', '/chihaodian/../upload/1465888267174.png', '2.0kg', '168', '1', '168', 'ou8VTwkfzz1iPJyoVW11lHyzoedU');
INSERT INTO `tb_cart` VALUES ('321', '57', '澳洲草饲牛仔骨 500g（6-8片）', '/chihaodian/../upload/1464319978611.png', '6-8片', '89', '1', '89', 'ou8VTwvH7Kozo3gjEl0R9wPa4xjY');
INSERT INTO `tb_cart` VALUES ('340', '22', '蔬菜会员半年卡', '/chihaodian/../upload/1465976834996.png', '半年/52次 3-5人 每次9斤', '2900', '1', '2900', 'ou8VTwuYXOhkEJkcOrn7_G8Bfr7Q');
INSERT INTO `tb_cart` VALUES ('341', '24', '蔬菜会员年卡', '/chihaodian/../upload/1465976935715.png', '1年/104次 3-5人 每次9斤', '5300', '1', '5300', 'ou8VTwuYXOhkEJkcOrn7_G8Bfr7Q');
INSERT INTO `tb_cart` VALUES ('377', '24', '蔬菜会员年卡', '/chihaodian/../upload/1465976935715.png', '1年/104次 3-5人 每次9斤', '5300', '1', '5300', 'ou8VTwjWRmk_CVfEBiQXOfTly5gI');
INSERT INTO `tb_cart` VALUES ('383', '62', '台湾红标老母鸡', '/chihaodian/../upload/1465888267174.png', '2.0kg', '168', '1', '168', 'ou8VTwldmozS2Nk393JoF_EMmsXM');
INSERT INTO `tb_cart` VALUES ('386', '73', '蔬菜会员卡年卡', '/chihaodian/../upload/1465977042091.png', '1年/52次 1-2人 每次4斤', '1588', '2', '3176', 'ou8VTwp5Jg2vXpXZOhug01VUyLLw');
INSERT INTO `tb_cart` VALUES ('390', '60', '澳洲草饲牛腩块', '/chihaodian/../upload/1464318370545.png', '500g', '56', '1', '56', 'ou8VTwp5Jg2vXpXZOhug01VUyLLw');
INSERT INTO `tb_cart` VALUES ('393', '73', '蔬菜会员卡年卡', '/chihaodian/../upload/1465977042091.png', '1年/52次 1-2人 每次4斤', '1588', '1', '1588', 'ou8VTwjqR_GaTbEMnL_QAv5WQ8V4');
INSERT INTO `tb_cart` VALUES ('449', '22', '蔬菜会员半年卡', '/chihaodian/../upload/1465976834996.png', '半年/52次 3-5人 每次9斤', '2900', '1', '2900', 'ou8VTwp-Qn4YExm5uwH4c-dgOTSg');
INSERT INTO `tb_cart` VALUES ('480', '57', '澳洲草饲牛仔骨 500g（6-8片）', '/chihaodian/../upload/1464319978611.png', '6-8片', '89', '7', '623', 'ou8VTwh5h-cBYeD_GyiB05pZB7ms');
INSERT INTO `tb_cart` VALUES ('485', '60', '澳洲草饲牛腩块', '/chihaodian/../upload/1464318370545.png', '500g', '56', '1', '56', 'ou8VTwqoBgp-K0rU15DhqnCdu9WI');
INSERT INTO `tb_cart` VALUES ('507', '68', '非转基因黄豆', '/chihaodian/../upload/1465701002059.png', '500g', '10', '1', '10', 'ou8VTwqbId4my2bRTAr1t494aZyY');
INSERT INTO `tb_cart` VALUES ('511', '74', '冬虫夏草（鲜草）', '/chihaodian/../upload/1466479379008.png', '20条', '850', '1', '850', 'ou8VTwjG988nVeZIEqdMwlYtEPoQ');
INSERT INTO `tb_cart` VALUES ('519', '22', '蔬菜会员半年卡', '/chihaodian/../upload/1465976834996.png', '半年/52次 3-5人 每次9斤', '2900', '1', '2900', 'ou8VTwor6u_RAjAo1JfGNlOOaAyc');
INSERT INTO `tb_cart` VALUES ('532', '19', '蔬菜会员月卡', '/chihaodian/../upload/1465974795254.png', '1个月/8次 2-3人 每次6斤', '360', '1', '360', 'ou8VTwm6dGSoDvn_SmiQrBdNjhP4');
INSERT INTO `tb_cart` VALUES ('547', '75', '冬虫夏草（鲜草）', '/chihaodian/../upload/1466479445305.png', '50条', '1998', '1', '1998', 'ou8VTwumv0a3ftwmieTR_XoOGHp8');
INSERT INTO `tb_cart` VALUES ('553', '54', '巴西原装翅中', '/chihaodian/../upload/1464316350243.png', '1KG', '58', '1', '58', 'ou8VTwpViUutDLHYruhhdwhUK28c');
INSERT INTO `tb_cart` VALUES ('554', '73', '蔬菜会员卡年卡', '/chihaodian/../upload/1465977042091.png', '1年/52次 1-2人 每次4斤', '1588', '1', '1588', 'ou8VTwuGDs7y4UC6ny-gZiLE_kzY');
INSERT INTO `tb_cart` VALUES ('561', '38', '有机葡聚糖胚芽米', '/chihaodian/../upload/1464165453285.png', '10斤', '228', '3', '684', 'ou8VTwka0YxLSWS8fYBDbTHVeSZ4');
INSERT INTO `tb_cart` VALUES ('562', '39', '生态柔玉米', '/chihaodian/../upload/1466730801733.png', '10斤', '48', '1', '48', 'ou8VTwrXKlBN5pWYJqPNrJN0mUrw');
INSERT INTO `tb_cart` VALUES ('564', '39', '生态柔玉米', '/chihaodian/../upload/1466730801733.png', '10斤', '48', '1', '48', 'ou8VTwumv0a3ftwmieTR_XoOGHp8');
INSERT INTO `tb_cart` VALUES ('568', '39', '生态柔玉米', '/chihaodian/../upload/1466730801733.png', '10斤', '48', '1', '48', 'ou8VTwsY2xE_hdDURNBdlT9aGTlo');
INSERT INTO `tb_cart` VALUES ('569', '57', '澳洲草饲牛仔骨 500g（6-8片）', '/chihaodian/../upload/1464319978611.png', '6-8片', '89', '1', '89', 'ou8VTwkjDuQsuqUXMW4AujT6JZsY');
INSERT INTO `tb_cart` VALUES ('571', '75', '冬虫夏草（鲜草）', '/chihaodian/../upload/1466479445305.png', '50条', '1998', '1', '1998', 'ou8VTwuQ2vTDOWRhRTjr1NEvTAEQ');
INSERT INTO `tb_cart` VALUES ('574', '58', '肥牛卷 透明托盒装', '/chihaodian/../upload/1464318053841.png', ' 500g', '59', '1', '59', 'ou8VTwhWQqufwVkGEYHoOQUMD6IA');
INSERT INTO `tb_cart` VALUES ('577', '67', '菲律宾大香蕉', '/chihaodian/../upload/1465723850965.png', '1.5kg', '19.8', '1', '19.8', 'ou8VTwl-7K0k-wipLH0cIHlwGd6U');
INSERT INTO `tb_cart` VALUES ('578', '19', '蔬菜会员月卡', '/chihaodian/../upload/1465974795254.png', '1个月/8次 2-3人 每次6斤', '360', '1', '360', 'ou8VTwnp6NMQFyABTm3lB7tjaAXA');
INSERT INTO `tb_cart` VALUES ('581', '54', '巴西原装翅中', '/chihaodian/../upload/1464316350243.png', '1KG', '58', '1', '58', 'ou8VTwiU7sThau5sa_w5_56RXhvo');

-- ----------------------------
-- Table structure for `tb_category`
-- ----------------------------
DROP TABLE IF EXISTS `tb_category`;
CREATE TABLE `tb_category` (
  `ctg_id` int(11) NOT NULL AUTO_INCREMENT,
  `ctg_name` varchar(255) DEFAULT '',
  `ctg_img` varchar(255) DEFAULT '',
  `status` int(11) DEFAULT NULL COMMENT '0禁用，1启用',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`ctg_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_category
-- ----------------------------
INSERT INTO `tb_category` VALUES ('1', '蔬菜卡', '/chihaodian/../upload/1460612766269.png', '1', '4');
INSERT INTO `tb_category` VALUES ('21', '五谷杂粮', '/chihaodian/../upload/1460602430649.png', '1', '2');
INSERT INTO `tb_category` VALUES ('22', '肉禽蛋类', '/chihaodian/../upload/1460602659462.png', '1', '3');
INSERT INTO `tb_category` VALUES ('23', '活力鲜果', '/chihaodian/../upload/1460612742253.png', '1', '0');
INSERT INTO `tb_category` VALUES ('25', '保健养生', '/chihaodian/../upload/1460612908722.png', '1', '5');

-- ----------------------------
-- Table structure for `tb_click_text`
-- ----------------------------
DROP TABLE IF EXISTS `tb_click_text`;
CREATE TABLE `tb_click_text` (
  `ct_key` varchar(255) NOT NULL,
  `type` int(11) DEFAULT '0' COMMENT '1 文本，2图文信息',
  `content` varchar(255) DEFAULT NULL,
  `title` text,
  `intro` text,
  `pic_url` text,
  `url` text COMMENT '跳转url',
  PRIMARY KEY (`ct_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_click_text
-- ----------------------------
INSERT INTO `tb_click_text` VALUES ('subscribe', '1', '阿斯蒂芬', null, null, null, null);
INSERT INTO `tb_click_text` VALUES ('图文', '2', '', '自定义内容区', '简介', '/chihaodian/../upload/1474207005529.png', '123');
INSERT INTO `tb_click_text` VALUES ('测试', '1', '<img src=\"http://www.7haodian.cc/upload/image/20160919/20160919110750_307.png\" alt=\"\" />', null, '', '', '');

-- ----------------------------
-- Table structure for `tb_coupons`
-- ----------------------------
DROP TABLE IF EXISTS `tb_coupons`;
CREATE TABLE `tb_coupons` (
  `cps_id` int(11) NOT NULL AUTO_INCREMENT,
  `cps_name` varchar(255) DEFAULT NULL,
  `cps_code` varchar(255) DEFAULT NULL COMMENT '优惠券兑换码',
  `cps_price` float DEFAULT NULL,
  `cps_time` varchar(255) DEFAULT NULL,
  `cps_level` int(11) DEFAULT NULL COMMENT '0系统总优惠券，!0用户优惠券',
  `oppen_id` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT '1' COMMENT '0已用，1可用',
  PRIMARY KEY (`cps_id`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_coupons
-- ----------------------------
INSERT INTO `tb_coupons` VALUES ('42', '1', '77500', '1', '2016-03-29', '0', '0', '1');
INSERT INTO `tb_coupons` VALUES ('48', '端午节优惠券', '40868', '5', '2016-05-27', '43', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '0');
INSERT INTO `tb_coupons` VALUES ('49', '测试', '87093', '5', '2016-05-27', '45', 'oyqTtw2gjY17ntKIyba_i48EB26A', '1');
INSERT INTO `tb_coupons` VALUES ('50', '端午节优惠券', '40868', '5', '2016-05-31', '43', 'oyqTtw2gjY17ntKIyba_i48EB26A', '1');
INSERT INTO `tb_coupons` VALUES ('51', '测试', '87093', '5', '2016-05-27', '45', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '0');
INSERT INTO `tb_coupons` VALUES ('52', '新用户领券', '71233', '10', '2016-05-31', '0', '0', '1');
INSERT INTO `tb_coupons` VALUES ('53', '新用户领券', '71233', '10', '2016-05-31', '52', 'oyqTtw2gjY17ntKIyba_i48EB26A', '0');
INSERT INTO `tb_coupons` VALUES ('54', '新用户领券', '71233', '10', '2016-05-31', '52', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '1');
INSERT INTO `tb_coupons` VALUES ('55', '新手优惠', '13289', '10', '2016-12-31', '0', '0', '1');
INSERT INTO `tb_coupons` VALUES ('56', '新手优惠', '13289', '10', '2016-12-31', '55', 'oyqTtw2gjY17ntKIyba_i48EB26A', '0');
INSERT INTO `tb_coupons` VALUES ('57', '新手优惠', '13289', '10', '2016-12-31', '55', 'oyqTtw8UGbJh7XLMr1s5tSLrC2io', '1');
INSERT INTO `tb_coupons` VALUES ('58', '新手优惠', '13289', '10', '2016-12-31', '55', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '1');
INSERT INTO `tb_coupons` VALUES ('59', '新手优惠', '13289', '10', '2016-12-31', '55', 'oyqTtw91DW4dmYULSdL7n-4-G9BY', '0');
INSERT INTO `tb_coupons` VALUES ('60', '新手优惠', '13289', '10', '2016-12-31', '55', 'oyqTtw_d252V55C89XiqmkGrRpHM', '0');
INSERT INTO `tb_coupons` VALUES ('61', '新手优惠', '13289', '10', '2016-12-31', '55', 'oyqTtw-iCmyM3xVw_3XM8pO_xao4', '1');
INSERT INTO `tb_coupons` VALUES ('62', '新手优惠', '13289', '10', '2016-12-31', '55', 'oyqTtw4Fy9Fn31QnZKfd91w9e6jw', '1');
INSERT INTO `tb_coupons` VALUES ('63', '新手优惠', '13289', '10', '2016-12-31', '55', 'oyqTtwzEjo8pzJngr0jPsVoKWedo', '1');
INSERT INTO `tb_coupons` VALUES ('64', '新手优惠', '13289', '10', '2016-12-31', '55', 'oyqTtw7EM8Dfe5FtvSXZTP3JpSAI', '1');
INSERT INTO `tb_coupons` VALUES ('65', '新手优惠', '13289', '10', '2016-12-31', '55', 'oyqTtw6QkdoZjbSLlQbEsadb8Eu8', '1');
INSERT INTO `tb_coupons` VALUES ('66', '新手优惠', '13289', '10', '2016-12-31', '55', 'oyqTtw9Rx04TEd8pVCaVXxNFvRDw', '1');
INSERT INTO `tb_coupons` VALUES ('67', '新手优惠', '13289', '10', '2016-12-31', '55', 'oyqTtwz-6YtPxpphyqVGGuapqAkc', '1');
INSERT INTO `tb_coupons` VALUES ('68', '新手优惠', '13289', '10', '2016-12-31', '55', 'oyqTtw9KssTdTOkFZcCXB6bowtE4', '1');
INSERT INTO `tb_coupons` VALUES ('69', '新手优惠', '13289', '10', '2016-12-31', '55', 'oyqTtw1s7Kti_ZB6PEZ7aWVeApIU', '1');
INSERT INTO `tb_coupons` VALUES ('70', '新手优惠', '13289', '10', '2016-12-31', '55', 'oyqTtw-0IYTFupfhydyMQe1dKe6M', '1');
INSERT INTO `tb_coupons` VALUES ('71', '新手优惠', '13289', '10', '2016-12-31', '55', 'oyqTtw24wiquOjeyMKS760QbhJuQ', '1');
INSERT INTO `tb_coupons` VALUES ('72', '新手优惠', '13289', '10', '2016-12-31', '55', 'oyqTtw7EJh-DpDBXKkkM9oQVwHTU', '1');
INSERT INTO `tb_coupons` VALUES ('73', '新手优惠', '13289', '10', '2016-12-31', '55', 'oyqTtw4wC-qD6qH83YGbhPS9Y4Go', '0');
INSERT INTO `tb_coupons` VALUES ('74', '新手优惠', '13289', '10', '2016-12-31', '55', 'oyqTtw0mv38vcI-LgoICHl1wN8RQ', '1');
INSERT INTO `tb_coupons` VALUES ('75', '新手优惠', '13289', '10', '2016-12-31', '55', 'oyqTtw3jh4m3jNSXvy0Y_Nd_pmbU', '1');
INSERT INTO `tb_coupons` VALUES ('76', '新手优惠', '13289', '10', '2016-12-31', '55', 'oyqTtw3LfpX7MuHYaKpETe2mQCag', '0');
INSERT INTO `tb_coupons` VALUES ('77', '新手优惠', '13289', '10', '2016-12-31', '55', 'oyqTtw--3Bh4dAm_A5P0BoV5pBMo', '1');
INSERT INTO `tb_coupons` VALUES ('78', '新手优惠', '13289', '10', '2016-12-31', '55', 'oyqTtw_7uxG8L8Nguhgt7cljAStU', '1');
INSERT INTO `tb_coupons` VALUES ('79', '新手优惠', '13289', '10', '2016-12-31', '55', 'oyqTtw3ojDG0bxnTcMf3CoSuEiYY', '1');
INSERT INTO `tb_coupons` VALUES ('80', '新手优惠', '13289', '10', '2016-12-31', '55', 'oyqTtw7Yh_thZm7KFtjL_zw2iop4', '1');
INSERT INTO `tb_coupons` VALUES ('81', '新手优惠', '13289', '10', '2016-12-31', '55', 'oyqTtw3bV5mOoYWAwr1AYPf_w0DE', '1');
INSERT INTO `tb_coupons` VALUES ('82', '新手优惠', '13289', '10', '2016-12-31', '55', 'oyqTtwyhgl0bTLUXOLonU-YjzoFo', '1');
INSERT INTO `tb_coupons` VALUES ('83', '新手优惠', '13289', '10', '2016-12-31', '55', 'oyqTtw7YNOwzjFWNQ-OnyFaODSgM', '1');
INSERT INTO `tb_coupons` VALUES ('84', '新手优惠', '13289', '10', '2016-12-31', '55', 'ou8VTwpbPyK8rYDrec8Xz024pXnc', '1');
INSERT INTO `tb_coupons` VALUES ('85', '新手优惠', '13289', '10', '2016-12-31', '55', 'ou8VTwlq0fSMJah4dfXyYfKY5CzQ', '1');
INSERT INTO `tb_coupons` VALUES ('86', '新手优惠', '13289', '10', '2016-12-31', '55', 'ou8VTwpm1_PlXzQ2YA6ZF1I46m6c', '1');
INSERT INTO `tb_coupons` VALUES ('87', '新手优惠', '13289', '10', '2016-12-31', '55', 'ou8VTwi5QeqO9G9Crq5Gxafs6aGA', '0');
INSERT INTO `tb_coupons` VALUES ('88', '新手优惠', '13289', '10', '2016-12-31', '55', 'ou8VTwgagvfC9iYQmQAPRzM4ZeVY', '1');
INSERT INTO `tb_coupons` VALUES ('89', '新手优惠', '13289', '10', '2016-12-31', '55', 'ou8VTwuYXOhkEJkcOrn7_G8Bfr7Q', '1');
INSERT INTO `tb_coupons` VALUES ('90', '新手优惠', '13289', '10', '2016-12-31', '55', 'ou8VTwhOrxREKicoSZhZvrA-_Kvk', '1');
INSERT INTO `tb_coupons` VALUES ('91', '新手优惠', '13289', '10', '2016-12-31', '55', 'ou8VTwvAtQdpsdkLTE7Zq1_8KScE', '1');
INSERT INTO `tb_coupons` VALUES ('92', '新手优惠', '13289', '10', '2016-12-31', '55', 'ou8VTws5C2eCda5UHRN4E_7wA3n8', '1');
INSERT INTO `tb_coupons` VALUES ('93', '新手优惠', '13289', '10', '2016-12-31', '55', 'ou8VTwp5Jg2vXpXZOhug01VUyLLw', '1');
INSERT INTO `tb_coupons` VALUES ('94', '新手优惠', '13289', '10', '2016-12-31', '55', 'ou8VTwsfziZsGMXNyCMWVCtFRvak', '1');
INSERT INTO `tb_coupons` VALUES ('95', '新手优惠', '13289', '10', '2016-12-31', '55', 'ou8VTwqLNtliXbHZcYuL0y0ZKUlk', '1');
INSERT INTO `tb_coupons` VALUES ('96', '新手优惠', '13289', '10', '2016-12-31', '55', 'ou8VTwnjnL5K8tAIPFPGo4MDD9os', '1');
INSERT INTO `tb_coupons` VALUES ('97', '新手优惠', '13289', '10', '2016-12-31', '55', 'ou8VTwuGEVXO9eJnHIU0r-QfGB4o', '1');
INSERT INTO `tb_coupons` VALUES ('98', '新手优惠', '13289', '10', '2016-12-31', '55', 'ou8VTwusUEW3tdzUpHwr05p6aLpA', '0');
INSERT INTO `tb_coupons` VALUES ('99', '新手优惠', '13289', '10', '2016-12-31', '55', 'ou8VTwk5M4CwC83kfoGLC4U8DtsA', '1');
INSERT INTO `tb_coupons` VALUES ('100', '新手优惠', '13289', '10', '2016-12-31', '55', 'ou8VTwgye2TBios1mhSgWo7Y29Wo', '1');
INSERT INTO `tb_coupons` VALUES ('101', '新手优惠', '13289', '10', '2016-12-31', '55', 'ou8VTwnM1K8APuE39cz33yr9F9Dc', '1');
INSERT INTO `tb_coupons` VALUES ('102', '新手优惠', '13289', '10', '2016-12-31', '55', 'ou8VTwqXTCPIlMeo3TYimLlrYU2A', '1');
INSERT INTO `tb_coupons` VALUES ('103', '新手优惠', '13289', '10', '2016-12-31', '55', 'ou8VTwupTEPHJBs9dBRiBnmUKdKI', '0');
INSERT INTO `tb_coupons` VALUES ('104', '新手优惠', '13289', '10', '2016-12-31', '55', 'ou8VTwl3l6uGbY0EM4J817DkFCLU', '1');
INSERT INTO `tb_coupons` VALUES ('105', '新手优惠', '13289', '10', '2016-12-31', '55', 'ou8VTwvlcjYZS90t71g5dZJ1VwQ4', '1');
INSERT INTO `tb_coupons` VALUES ('106', '新手优惠', '13289', '10', '2016-12-31', '55', 'ou8VTwnIPlReqwsTZKS4vpDIe350', '1');
INSERT INTO `tb_coupons` VALUES ('107', '新手优惠', '13289', '10', '2016-12-31', '55', 'ou8VTwtaRjh60nRuE2Hj8rTztbho', '0');
INSERT INTO `tb_coupons` VALUES ('108', '新手优惠', '13289', '10', '2016-12-31', '55', 'ou8VTwqoBgp-K0rU15DhqnCdu9WI', '1');
INSERT INTO `tb_coupons` VALUES ('109', '新手优惠', '13289', '10', '2016-12-31', '55', 'ou8VTwqbId4my2bRTAr1t494aZyY', '1');
INSERT INTO `tb_coupons` VALUES ('110', '新手优惠', '13289', '10', '2016-12-31', '55', 'ou8VTwn7v9ukn-pj2ewogKxJpeyk', '1');
INSERT INTO `tb_coupons` VALUES ('111', '新手优惠', '13289', '10', '2016-12-31', '55', 'ou8VTwumv0a3ftwmieTR_XoOGHp8', '0');
INSERT INTO `tb_coupons` VALUES ('112', '新手优惠', '13289', '10', '2016-12-31', '55', 'ou8VTwp10jbngeWCWhJKHWxuQ-5I', '1');
INSERT INTO `tb_coupons` VALUES ('113', '新手优惠', '13289', '10', '2016-12-31', '55', 'ou8VTwp8MZyN9I0l-89C9nwlGifA', '1');
INSERT INTO `tb_coupons` VALUES ('114', '新手优惠', '13289', '10', '2016-12-31', '55', 'ou8VTwka0YxLSWS8fYBDbTHVeSZ4', '1');
INSERT INTO `tb_coupons` VALUES ('115', '新手优惠', '13289', '10', '2016-12-31', '55', 'ou8VTwrXKlBN5pWYJqPNrJN0mUrw', '1');
INSERT INTO `tb_coupons` VALUES ('116', '双十二预热', '3510', '10', '2017-12-01', '0', '0', '1');
INSERT INTO `tb_coupons` VALUES ('117', '双十二预热', '3510', '10', '2017-12-01', '116', 'ou8VTwumv0a3ftwmieTR_XoOGHp8', '1');
INSERT INTO `tb_coupons` VALUES ('118', '双十二预热', '3510', '10', '2017-12-01', '116', 'ou8VTwp8MZyN9I0l-89C9nwlGifA', '1');
INSERT INTO `tb_coupons` VALUES ('119', '双十二预热', '3510', '10', '2017-12-01', '116', 'ou8VTwnnpkSr-ofaf7yQppEkNwNM', '1');
INSERT INTO `tb_coupons` VALUES ('120', '新手优惠', '13289', '10', '2016-12-31', '55', 'ou8VTwnnpkSr-ofaf7yQppEkNwNM', '1');
INSERT INTO `tb_coupons` VALUES ('121', '双十二预热', '3510', '10', '2017-12-01', '116', 'ou8VTwtCk47MJ8xcFlgTyOSEMBHU', '1');
INSERT INTO `tb_coupons` VALUES ('122', '新手优惠', '13289', '10', '2016-12-31', '55', 'ou8VTwtCk47MJ8xcFlgTyOSEMBHU', '1');
INSERT INTO `tb_coupons` VALUES ('123', '双十二预热', '3510', '10', '2017-12-01', '116', 'ou8VTwmv8TsZQgPnDiaUFMJtCACE', '1');
INSERT INTO `tb_coupons` VALUES ('124', '双十二预热', '3510', '10', '2017-12-01', '116', 'ou8VTwneV2yYX3fistDWn2YUPpAo', '1');
INSERT INTO `tb_coupons` VALUES ('125', '新手优惠', '13289', '10', '2016-12-31', '55', 'ou8VTwneV2yYX3fistDWn2YUPpAo', '1');

-- ----------------------------
-- Table structure for `tb_freight`
-- ----------------------------
DROP TABLE IF EXISTS `tb_freight`;
CREATE TABLE `tb_freight` (
  `fgt_id` int(11) NOT NULL AUTO_INCREMENT,
  `fgt_price` float DEFAULT NULL,
  `free_price` float DEFAULT NULL,
  PRIMARY KEY (`fgt_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_freight
-- ----------------------------
INSERT INTO `tb_freight` VALUES ('1', '6', '58');

-- ----------------------------
-- Table structure for `tb_goods`
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods`;
CREATE TABLE `tb_goods` (
  `goods_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_name` varchar(255) DEFAULT NULL,
  `goods_img` varchar(255) DEFAULT NULL,
  `goods_spe` varchar(255) DEFAULT NULL COMMENT '规格',
  `goods_price` float DEFAULT NULL,
  `goods_detail` text,
  `goods_num` varchar(255) DEFAULT NULL,
  `add_time` varchar(255) DEFAULT NULL,
  `ctg_id` int(11) DEFAULT NULL COMMENT '是1否0热销',
  `is_recommend` int(11) DEFAULT NULL COMMENT '是否首页推荐',
  `status` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT '1' COMMENT '1普通商品2会员商品',
  PRIMARY KEY (`goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_goods
-- ----------------------------
INSERT INTO `tb_goods` VALUES ('2', '西瓜', '/chihaodian/../upload/1457923321834.png', '', '200', '阿斯蒂芬', null, '2016-03-13', '7', '1', '1', null);
INSERT INTO `tb_goods` VALUES ('16', '油麦菜', '/chihaodian/../upload/1464245268878.png', '1斤', '0', '', null, '2016-04-29', null, null, '1', '2');
INSERT INTO `tb_goods` VALUES ('19', '蔬菜会员月卡', '/chihaodian/../upload/1465974795254.png', '1个月/8次 2-3人 每次6斤', '360', '<p>\n	<img src=\"/chihaodian/../upload/image/20160615/20160615151535_211.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160615/20160615151535_559.jpg\" alt=\"\" />\n</p>\n<p>\n	<span style=\"color:#333333;font-family:微软雅黑;font-size:16px;line-height:24px;background-color:#F8F8F8;\">如果您的附近没有自提点，而您又不想使用快递，那您只需凑齐六个人办会员卡，我们将为您在附近开设新的自提点！</span> \n</p>', null, '2016-05-12', '1', '1', '1', '1');
INSERT INTO `tb_goods` VALUES ('20', '蔬菜会员月卡', '/chihaodian/../upload/1465975621288.png', '1个月/8次 3-5人 每次9斤', '520', '<span style=\"color:#333333;font-family:微软雅黑;font-size:16px;line-height:24px;background-color:#F8F8F8;\"><img src=\"/chihaodian/../upload/image/20160615/20160615152713_944.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160615/20160615152713_423.jpg\" alt=\"\" />如果您的附近没有自提点，而您又不想使用快递，那您只需凑齐六个人办会员卡，我们将为您在附近开设新的自提点！</span>', null, '2016-05-12', '1', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('21', '蔬菜会员半年卡', '/chihaodian/../upload/1465975865805.png', '半年/52次 2-3人 每次6斤', '2000', '<span style=\"color:#333333;font-family:微软雅黑;font-size:16px;line-height:24px;background-color:#F8F8F8;\"><img src=\"/chihaodian/../upload/image/20160615/20160615153117_614.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160615/20160615153118_561.jpg\" alt=\"\" />如果您的附近没有自提点，而您又不想使用快递，那您只需凑齐六个人办会员卡，我们将为您在附近开设新的自提点！</span>', null, '2016-05-12', '1', '1', '1', '1');
INSERT INTO `tb_goods` VALUES ('22', '蔬菜会员半年卡', '/chihaodian/../upload/1465976834996.png', '半年/52次 3-5人 每次9斤', '2900', '<p>\n	<img src=\"/chihaodian/../upload/image/20160615/20160615154727_406.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160615/20160615154727_241.jpg\" alt=\"\" />\n</p>\n<p>\n	<span style=\"color:#333333;font-family:微软雅黑;font-size:16px;line-height:24px;background-color:#F8F8F8;\">如果您的附近没有自提点，而您又不想使用快递，那您只需凑齐六个人办会员卡，我们将为您在附近开设新的自提点！</span> \n</p>', null, '2016-05-12', '1', '0', '1', '1');
INSERT INTO `tb_goods` VALUES ('23', '蔬菜会员年卡', '/chihaodian/../upload/1465976906449.png', '1年/104次 2-3人 每次6斤', '3600', '<img src=\"/chihaodian/../upload/image/20160615/20160615154839_620.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160615/20160615154839_633.jpg\" alt=\"\" />', null, '2016-05-12', '1', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('24', '蔬菜会员年卡', '/chihaodian/../upload/1465976935715.png', '1年/104次 3-5人 每次9斤', '5300', '<img src=\"/chihaodian/../upload/image/20160615/20160615154908_679.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160615/20160615154908_133.jpg\" alt=\"\" />', null, '2016-05-12', '1', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('25', '新疆库尔勒香梨', '/chihaodian/../upload/1463109011535.png', '16个', '25.8', '<img src=\"/upload/image/20160513/20160513111104_660.jpg\" alt=\"\" /><img src=\"/upload/image/20160513/20160513111118_958.jpg\" alt=\"\" /><img src=\"/upload/image/20160513/20160513111124_44.jpg\" alt=\"\" /><img src=\"/upload/image/20160513/20160513111132_415.jpg\" alt=\"\" />', null, '2016-05-13', '23', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('26', '东方蜜1号', '/chihaodian/../upload/1463110161194.png', '3个 约4-5斤', '29.9', '<img src=\"/upload/image/20160513/20160513112937_524.jpg\" alt=\"\" />', null, '2016-05-13', '23', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('27', '海南木瓜', '/chihaodian/../upload/1463110264179.png', '1个', '6.5', '<img src=\"/upload/image/20160513/20160513113119_408.jpg\" alt=\"\" />', null, '2016-05-13', '23', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('29', '四川柠檬', '/chihaodian/../upload/1465703766021.png', '4个', '7.9', '<img src=\"/upload/image/20160517/20160517161902_232.jpg\" alt=\"\" />', null, '2016-05-17', '23', '0', '1', '1');
INSERT INTO `tb_goods` VALUES ('30', '缅甸黄河蜜', '/chihaodian/../upload/1464250276685.png', '约4斤', '18.9', '<img src=\"/upload/image/20160517/20160517162017_401.jpg\" alt=\"\" />', null, '2016-05-17', '23', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('31', '麒麟西瓜', '/chihaodian/../upload/1463473271392.png', '约5.5斤-6.5斤', '26.9', '<img src=\"/upload/image/20160517/20160517162206_337.jpg\" alt=\"\" />', null, '2016-05-17', '23', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('32', '特小凤西瓜', '/chihaodian/../upload/1463473433361.png', '约4斤-5斤', null, '<img src=\"/upload/image/20160517/20160517162428_793.jpg\" alt=\"\" />', null, '2016-05-17', '23', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('33', '烟台红富士80脆', '/chihaodian/../upload/1463473499830.png', '1斤', '4.8', '<img src=\"/upload/image/20160517/20160517162523_535.jpg\" alt=\"\" />', null, '2016-05-17', '23', '0', '1', '1');
INSERT INTO `tb_goods` VALUES ('34', '海南西州蜜', '/chihaodian/../upload/1463473570955.png', '约4斤', '27.9', '<img src=\"/upload/image/20160517/20160517162639_435.jpg\" alt=\"\" />', null, '2016-05-17', '23', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('35', '小台农芒果', '/chihaodian/../upload/1463473632080.png', '12个', '17.8', '<img src=\"/upload/image/20160517/20160517162745_47.jpg\" alt=\"\" /><img src=\"/upload/image/20160517/20160517162751_93.jpg\" alt=\"\" /><img src=\"/upload/image/20160517/20160517162756_531.jpg\" alt=\"\" />', null, '2016-05-17', '23', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('36', '越南红心火龙果', '/chihaodian/../upload/1463473711206.png', '1个 约675g', '20', '<img src=\"/upload/image/20160517/20160517163058_156.jpg\" alt=\"\" />', null, '2016-05-17', '23', '0', '1', '1');
INSERT INTO `tb_goods` VALUES ('37', '台湾传统小番茄 ', '/chihaodian/../upload/1463474160676.png', '1斤', '8', '<img src=\"/upload/image/20160517/20160517163621_933.jpg\" alt=\"\" />', null, '2016-05-17', '23', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('38', '有机葡聚糖胚芽米', '/chihaodian/../upload/1464165453285.png', '10斤', '228', '<img src=\"/upload/image/20160525/20160525163922_150.jpg\" alt=\"\" /><img src=\"/upload/image/20160525/20160525163927_913.jpg\" alt=\"\" /><img src=\"/upload/image/20160525/20160525163932_131.jpg\" alt=\"\" />', null, '2016-05-25', '21', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('39', '生态柔玉米', '/chihaodian/../upload/1466730801733.png', '10斤', '48', '<img src=\"/upload/image/20160624/20160624091338_96.jpg\" alt=\"\" />', null, '2016-05-25', '21', '1', '1', '1');
INSERT INTO `tb_goods` VALUES ('40', '新西兰佳沛阳', '/chihaodian/../upload/1465724169981.png', '6个', '60', '<img src=\"/upload/image/20160526/20160526140644_568.jpg\" alt=\"\" /><img src=\"/upload/image/20160526/20160526140648_727.jpg\" alt=\"\" /><img src=\"/upload/image/20160526/20160526140652_405.jpg\" alt=\"\" />', null, '2016-05-26', '23', '0', '1', '1');
INSERT INTO `tb_goods` VALUES ('42', '泰国金枕榴莲', '/chihaodian/../upload/1465724197732.png', '约5-7斤', '109', '<img src=\"/upload/image/20160526/20160526141141_970.jpg\" alt=\"\" /><img src=\"/upload/image/20160526/20160526141146_445.jpg\" alt=\"\" /><img src=\"/upload/image/20160526/20160526141150_602.jpg\" alt=\"\" />', null, '2016-05-26', '23', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('43', '泰国金枕榴莲', '/chihaodian/../upload/1465724208122.png', '约3.5-4.9斤', '89', '<img src=\"/upload/image/20160526/20160526141311_610.jpg\" alt=\"\" /><img src=\"/upload/image/20160526/20160526141315_276.jpg\" alt=\"\" /><img src=\"/upload/image/20160526/20160526141319_949.jpg\" alt=\"\" />', null, '2016-05-26', '23', '0', '1', '1');
INSERT INTO `tb_goods` VALUES ('44', '香葱', '/chihaodian/../upload/1464245310066.png', '一斤', '0', '', null, '2016-05-26', null, null, '1', '2');
INSERT INTO `tb_goods` VALUES ('45', '西蓝花', '/chihaodian/../upload/1464245343050.png', '一斤', '0', '', null, '2016-05-26', null, null, '1', '2');
INSERT INTO `tb_goods` VALUES ('46', '西葫芦', '/chihaodian/../upload/1464245387566.png', '一斤', '0', '', null, '2016-05-26', null, null, '1', '2');
INSERT INTO `tb_goods` VALUES ('47', '豌豆苗', '/chihaodian/../upload/1464245419066.png', '一斤', '0', '', null, '2016-05-26', null, null, '1', '2');
INSERT INTO `tb_goods` VALUES ('48', '茼蒿', '/chihaodian/../upload/1464245453129.png', '一斤', '0', '', null, '2016-05-26', null, null, '1', '2');
INSERT INTO `tb_goods` VALUES ('49', '榻菜', '/chihaodian/../upload/1464245485582.png', '一斤', '0', '', null, '2016-05-26', null, null, '1', '2');
INSERT INTO `tb_goods` VALUES ('50', '蒜薹', '/chihaodian/../upload/1464245516050.png', '一斤', '0', '', null, '2016-05-26', null, null, '1', '2');
INSERT INTO `tb_goods` VALUES ('51', '生菜', '/chihaodian/../upload/1464245592332.png', '一斤', '0', '', null, '2016-05-26', null, null, '1', '2');
INSERT INTO `tb_goods` VALUES ('52', '青椒', '/chihaodian/../upload/1464245620769.png', '一斤', '0', '', null, '2016-05-26', null, null, '1', '2');
INSERT INTO `tb_goods` VALUES ('53', '青菜', '/chihaodian/../upload/1464245647957.png', '一斤', '0', '', null, '2016-05-26', null, null, '1', '2');
INSERT INTO `tb_goods` VALUES ('54', '巴西原装翅中', '/chihaodian/../upload/1464316350243.png', '1KG', '58', '<img src=\"/upload/image/20160601/20160601163307_898.jpg\" alt=\"\" /><img src=\"/upload/image/20160601/20160601163459_674.jpg\" alt=\"\" /><img src=\"/upload/image/20160601/20160601164856_426.jpg\" alt=\"\" /><img src=\"/upload/image/20160601/20160601164905_212.jpg\" alt=\"\" /><img src=\"/upload/image/20160601/20160601164912_311.jpg\" alt=\"\" /><img src=\"/upload/image/20160601/20160601164919_196.jpg\" alt=\"\" /><img src=\"/upload/image/20160601/20160601164925_118.jpg\" alt=\"\" /><img src=\"/upload/image/20160601/20160601164932_981.jpg\" alt=\"\" /><img src=\"/upload/image/20160601/20160601164938_196.jpg\" alt=\"\" />', null, '2016-05-27', '22', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('55', '加拿大AAA级牛小排', '/chihaodian/../upload/1464316409415.png', '500g(3-4片）', '228', '<img src=\"/upload/image/20160606/20160606094353_270.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606094401_308.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606094418_609.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606094427_103.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606094435_408.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606094442_489.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606094449_579.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606094456_406.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606094504_811.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606094512_875.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606094518_415.jpg\" alt=\"\" />', null, '2016-05-27', '22', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('56', '加拿大AAA板腱牛排', '/chihaodian/../upload/1464319904220.png', '3-4片', '89', '<img src=\"/upload/image/20160606/20160606114256_204.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606114304_437.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606114310_628.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606114316_861.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606114321_756.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606114326_99.jpg\" alt=\"\" />', null, '2016-05-27', '22', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('57', '澳洲草饲牛仔骨 500g（6-8片）', '/chihaodian/../upload/1464319978611.png', '6-8片', '89', '<img src=\"/upload/image/20160606/20160606110603_342.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606110610_827.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606110616_482.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606110626_702.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606110632_714.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606110638_473.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606110651_500.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606110656_605.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606110703_722.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606110710_991.jpg\" alt=\"\" />', null, '2016-05-27', '22', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('58', '肥牛卷 透明托盒装', '/chihaodian/../upload/1464318053841.png', ' 500g', '59', '<img src=\"/upload/image/20160606/20160606114831_626.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606114837_63.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606114842_346.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606114847_370.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606114852_206.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606114857_629.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606114901_5.jpg\" alt=\"\" />', null, '2016-05-27', '22', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('59', '澳洲牛尾', '/chihaodian/../upload/1464320071736.png', '500g', '58', '<img src=\"/upload/image/20160606/20160606115420_775.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606115426_235.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606115431_832.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606115436_598.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606115441_281.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606115450_882.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606115454_290.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606115459_387.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606115504_193.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606115510_375.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606115514_465.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606115520_889.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606115535_489.jpg\" alt=\"\" />', null, '2016-05-27', '22', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('60', '澳洲草饲牛腩块', '/chihaodian/../upload/1464318370545.png', '500g', '56', '<img src=\"/upload/image/20160606/20160606135919_524.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606135927_492.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606140003_418.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606140008_567.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606140017_948.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606140022_917.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606140028_783.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606140033_800.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606140038_961.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606140044_227.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606140053_999.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606140057_239.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606140102_152.jpg\" alt=\"\" />', null, '2016-05-27', '22', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('61', '台湾土鸡仔', '/chihaodian/../upload/1465887400031.png', '1.0-1.2KG', '48', '<img src=\"/upload/image/20160606/20160606140430_427.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606140435_145.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606140440_760.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606140444_391.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606140450_406.jpg\" alt=\"\" />', null, '2016-05-27', '22', '1', '1', '1');
INSERT INTO `tb_goods` VALUES ('62', '台湾红标老母鸡', '/chihaodian/../upload/1465888267174.png', '2.0kg', '168', '<img src=\"/chihaodian/../upload/image/20160606/20160606152309_200.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606152309_515.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606152310_670.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606152310_793.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606152310_374.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606152310_428.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606152310_638.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606152310_336.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606152310_816.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606152311_153.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606152311_364.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606152311_941.jpg\" alt=\"\" />', null, '2016-05-27', '22', '0', '1', '1');
INSERT INTO `tb_goods` VALUES ('63', '同仁堂十全大补台湾红标老母鸡', '/chihaodian/../upload/1464319011485.png', '2.0KG', '228', '<img src=\"/chihaodian/../upload/image/20160606/20160606153659_117.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606153700_414.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606153700_71.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606153700_547.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606153700_55.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606153700_164.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606153700_211.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606153700_857.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606153700_250.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606153700_90.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606153701_822.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606153701_971.jpg\" alt=\"\" />', null, '2016-05-27', '22', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('64', '生态稻田土鸡蛋', '/chihaodian/../upload/1466479271070.png', '48枚', '96', '<img src=\"/upload/image/20160615/20160615091200_871.jpg\" alt=\"\" />', null, '2016-05-27', '22', '0', '1', '1');
INSERT INTO `tb_goods` VALUES ('65', '妃子笑荔枝', '/chihaodian/../upload/1465723952090.png', '1kg', '30', '<img src=\"/chihaodian/../upload/image/20160607/20160607142334_888.jpg\" alt=\"\" />', null, '2016-06-07', '23', '0', '1', '1');
INSERT INTO `tb_goods` VALUES ('66', '澳大利亚无籽红提', '/chihaodian/../upload/1465724148153.png', '500g', '21.9', '<img src=\"/upload/image/20160607/20160607144646_538.jpg\" alt=\"\" />', null, '2016-06-07', '23', '0', '1', '1');
INSERT INTO `tb_goods` VALUES ('67', '菲律宾大香蕉', '/chihaodian/../upload/1465723850965.png', '1.5kg', '19.8', '<img src=\"/upload/image/20160608/20160608093755_855.jpg\" alt=\"\" />', null, '2016-06-08', '23', '1', '1', '1');
INSERT INTO `tb_goods` VALUES ('68', '非转基因黄豆', '/chihaodian/../upload/1465701002059.png', '500g', '10', '<img src=\"/chihaodian/../upload/image/20160612/20160612111019_687.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160612/20160612111019_150.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160612/20160612111019_516.jpg\" alt=\"\" />', null, '2016-06-12', '21', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('69', '生态菜籽油', '/chihaodian/../upload/1465717197584.png', '2.5L', '60', '<img src=\"/chihaodian/../upload/image/20160612/20160612155635_29.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160612/20160612155636_501.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160612/20160612155636_968.jpg\" alt=\"\" />', null, '2016-06-12', '21', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('70', '生态菜籽油', '/chihaodian/../upload/1465718279680.png', '5L', '115', '<img src=\"/chihaodian/../upload/image/20160612/20160612155912_633.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160612/20160612155912_584.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160612/20160612155912_783.jpg\" alt=\"\" />', null, '2016-06-12', '21', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('71', '生态黄金耳', '/chihaodian/../upload/1466474419051.png', '1袋', '12', '<img src=\"/upload/image/20160621/20160621100036_686.jpg\" alt=\"\" />', null, '2016-06-12', '21', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('72', '新疆西州蜜', '/chihaodian/../upload/1465802535035.png', '2.25kg-2.5kg', '39.8', '<img src=\"/upload/image/20160613/20160613152642_827.jpg\" alt=\"\" />', null, '2016-06-13', '23', '1', '1', '1');
INSERT INTO `tb_goods` VALUES ('73', '蔬菜会员卡年卡', '/chihaodian/../upload/1465977042091.png', '1年/52次 1-2人 每次4斤', '1588', '<img src=\"/chihaodian/../upload/image/20160615/20160615155134_9.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160615/20160615155135_852.jpg\" alt=\"\" />', null, '2016-06-15', '1', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('74', '冬虫夏草（鲜草）', '/chihaodian/../upload/1466479379008.png', '20条', '850', '<img src=\"/upload/image/20160621/20160621112332_761.jpg\" alt=\"\" />', null, '2016-06-21', '25', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('75', '冬虫夏草（鲜草）', '/chihaodian/../upload/1466479445305.png', '50条', '1998', '<img src=\"/upload/image/20160621/20160621112452_333.jpg\" alt=\"\" />', null, '2016-06-21', '25', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('76', '冬虫夏草（鲜草）', '/chihaodian/../upload/1466479517055.png', '100条', '3880', '<img src=\"/upload/image/20160621/20160621112538_490.jpg\" alt=\"\" />', null, '2016-06-21', '25', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('77', '山竹', '/chihaodian/../upload/1466736000313.png', '1', '0.1', '<img src=\"/upload/image/20160624/20160624104011_926.jpg\" alt=\"\" />', null, '2016-06-24', '23', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('78', '仙桃香粳米 50斤', '/chihaodian/../upload/1466818615476.png', '25kg', '180', '<img src=\"/upload/image/20160625/20160625093709_160.jpg\" alt=\"\" />', null, '2016-06-25', '21', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('80', '小美合作', 'http://www.7haodian.cc/upload/1480302637630.png', '箱', '0.1', '<p>\n	<img title=\"前小桔图文.jpg\" src=\"http://wx.diyit.cn/wx/Uploads/Editor/gh_5422a26c220a/2016-11-25/5837ae73e5808.jpg\" />\n</p>\n<p>\n	<img title=\"前小桔图文2.jpg\" src=\"http://wx.diyit.cn/wx/Uploads/Editor/gh_5422a26c220a/2016-11-25/5837ae741d0e8.jpg\" />\n</p>\n<p>\n	<img title=\"前小桔图文3.jpg\" src=\"http://wx.diyit.cn/wx/Uploads/Editor/gh_5422a26c220a/2016-11-25/5837ae74449dc.jpg\" />\n</p>\n<p>\n	<img title=\"前小桔图文4.jpg\" src=\"http://wx.diyit.cn/wx/Uploads/Editor/gh_5422a26c220a/2016-11-25/5837ae746c2c1.jpg\" />\n</p>\n<p>\n	<img title=\"前小桔图文5.jpg\" src=\"http://wx.diyit.cn/wx/Uploads/Editor/gh_5422a26c220a/2016-11-25/5837ae7516c12.jpg\" />\n</p>\n<p>\n	<img title=\"前小桔图文6.jpg\" src=\"http://wx.diyit.cn/wx/Uploads/Editor/gh_5422a26c220a/2016-11-25/5837ae754621c.jpg\" />\n</p>\n<p>\n	<img title=\"前小桔图文7.jpg\" src=\"http://wx.diyit.cn/wx/Uploads/Editor/gh_5422a26c220a/2016-11-25/5837ae7571d3d.jpg\" />\n</p>\n<p>\n	<img title=\"前小桔图文8.jpg\" src=\"http://wx.diyit.cn/wx/Uploads/Editor/gh_5422a26c220a/2016-11-25/5837ae75e320d.jpg\" />\n</p>\n<p>\n	<img title=\"前小桔图文9.jpg\" src=\"http://wx.diyit.cn/wx/Uploads/Editor/gh_5422a26c220a/2016-11-25/5837ae761d239.jpg\" />\n</p>\n<p>\n	<img title=\"前小桔图文10.jpg\" src=\"http://wx.diyit.cn/wx/Uploads/Editor/gh_5422a26c220a/2016-11-25/5837ae768bc47.jpg\" />\n</p>\n<p>\n	<img title=\"前小桔图文11.jpg\" src=\"http://wx.diyit.cn/wx/Uploads/Editor/gh_5422a26c220a/2016-11-25/5837ae76b8ae9.jpg\" />\n</p>\n<p>\n	<img title=\"前小桔图文12.jpg\" src=\"http://wx.diyit.cn/wx/Uploads/Editor/gh_5422a26c220a/2016-11-25/5838245a77e90.jpg\" />\n</p>\n<p>\n	<img title=\"前小桔图文13.jpg\" src=\"http://wx.diyit.cn/wx/Uploads/Editor/gh_5422a26c220a/2016-11-25/5837ae7763036.jpg\" />\n</p>\n<p>\n	<br />\n</p>', null, '2016-11-28', '21', '1', '1', '1');

-- ----------------------------
-- Table structure for `tb_menu`
-- ----------------------------
DROP TABLE IF EXISTS `tb_menu`;
CREATE TABLE `tb_menu` (
  `goods_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_name` varchar(255) DEFAULT NULL,
  `goods_img` varchar(255) DEFAULT NULL,
  `goods_price` float DEFAULT NULL,
  `goods_detail` text,
  `add_time` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_menu
-- ----------------------------
INSERT INTO `tb_menu` VALUES ('1', '菜单菜品1', '/chihaodian/upload/1457680109579.png', '150', '123', '2016-03-11', '1');
INSERT INTO `tb_menu` VALUES ('2', '123', '/chihaodian/upload/1457680149919.png', '123', '123', '2016-03-11', '1');
INSERT INTO `tb_menu` VALUES ('3', '123', '/chihaodian/upload/1457680149919.png', '123', '123', '2016-03-11', '1');
INSERT INTO `tb_menu` VALUES ('4', '123', '/chihaodian/upload/1457680149919.png', '123', '123', '2016-03-11', '1');
INSERT INTO `tb_menu` VALUES ('5', '123', '/chihaodian/upload/1457680149919.png', '123', '123', '2016-03-11', '1');
INSERT INTO `tb_menu` VALUES ('6', '123', '/chihaodian/upload/1457680149919.png', '123', '123', '2016-03-11', '1');
INSERT INTO `tb_menu` VALUES ('7', '123', '/chihaodian/upload/1457680149919.png', '123', '123', '2016-03-11', '1');
INSERT INTO `tb_menu` VALUES ('8', '123', '/chihaodian/upload/1457680149919.png', '123', '123', '2016-03-11', '1');
INSERT INTO `tb_menu` VALUES ('9', '123', '/chihaodian/upload/1457680149919.png', '123', '123', '2016-03-11', '1');
INSERT INTO `tb_menu` VALUES ('10', '123', '/chihaodian/upload/1457680149919.png', '123', '123', '2016-03-11', '1');
INSERT INTO `tb_menu` VALUES ('11', '123', '/chihaodian/upload/1457680149919.png', '123', '123', '2016-03-11', '1');
INSERT INTO `tb_menu` VALUES ('12', '123', '/chihaodian/upload/1457680149919.png', '123', '123', '2016-03-11', '1');
INSERT INTO `tb_menu` VALUES ('13', '123', '/chihaodian/upload/1457680149919.png', '123', '123', '2016-03-11', '1');
INSERT INTO `tb_menu` VALUES ('14', '123', '/chihaodian/upload/1457680149919.png', '123', '123', '2016-03-11', '1');
INSERT INTO `tb_menu` VALUES ('15', '123', '/chihaodian/upload/1457680149919.png', '123', '123', '2016-03-11', '1');
INSERT INTO `tb_menu` VALUES ('16', '123', '/chihaodian/upload/1457680149919.png', '123', '123', '2016-03-11', '1');
INSERT INTO `tb_menu` VALUES ('17', '123', '/chihaodian/upload/1457680149919.png', '123', '123', '2016-03-11', '1');
INSERT INTO `tb_menu` VALUES ('18', '123', '/chihaodian/upload/1457680149919.png', '123', '123', '2016-03-11', '1');
INSERT INTO `tb_menu` VALUES ('19', '123', '/chihaodian/upload/1457680149919.png', '123', '123', '2016-03-11', '1');
INSERT INTO `tb_menu` VALUES ('20', '123', '/chihaodian/upload/1457680149919.png', '123', '123', '2016-03-11', '1');
INSERT INTO `tb_menu` VALUES ('21', '123', '/chihaodian/upload/1457680149919.png', '123', '123', '2016-03-11', '1');

-- ----------------------------
-- Table structure for `tb_order`
-- ----------------------------
DROP TABLE IF EXISTS `tb_order`;
CREATE TABLE `tb_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` varchar(255) DEFAULT NULL,
  `goods_name` text,
  `goods_img` text,
  `goods_spe` varchar(255) DEFAULT NULL,
  `goods_price` varchar(255) DEFAULT NULL,
  `goods_num` varchar(255) DEFAULT NULL,
  `goods_total` float DEFAULT NULL,
  `goods_total_num` int(11) DEFAULT NULL,
  `addr_name` varchar(255) DEFAULT NULL COMMENT '收货地址',
  `receive` varchar(255) DEFAULT NULL COMMENT '收货方式，如果为自提点则记录自提点，如果是快递则记录收货地址',
  `cps_id` int(11) DEFAULT NULL,
  `cps_name` varchar(255) DEFAULT NULL,
  `cps_price` float DEFAULT NULL,
  `oppen_id` varchar(255) DEFAULT NULL,
  `add_time` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '0待付款，1待发货，2已发货',
  `note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=676 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_order
-- ----------------------------
INSERT INTO `tb_order` VALUES ('47', '3', '西瓜', '/chihaodian/../upload/1460216501594.png', null, '0.1', '1', '0.1', '1', '武蒙 13800138000 1111', '鼓楼1', null, '', '0', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-04-11 08:07:46', '0', null);
INSERT INTO `tb_order` VALUES ('48', '3,-=1', '西瓜,-=西红柿1', '/chihaodian/../upload/1460216501594.png,-=/chihaodian/../upload/1457923339965.png', null, '0.1,-=200.0', '1,-=1', '200.12', '2', '123 123 1234', '', null, '', '0', 'oyqTtw3DsY4PXg1wVFfQp8ewOKh8', '2016-04-11 21:23:37', '0', null);
INSERT INTO `tb_order` VALUES ('49', '3,-=1', '西瓜,-=西红柿1', '/chihaodian/../upload/1460216501594.png,-=/chihaodian/../upload/1457923339965.png', null, '0.1,-=200.0', '1,-=1', '200.12', '2', '武蒙 13800138000 1111', '', null, '', '0', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-04-11 21:34:21', '0', null);
INSERT INTO `tb_order` VALUES ('50', '3,-=1', '西瓜,-=西红柿1', '/chihaodian/../upload/1460381914241.png,-=/chihaodian/../upload/1457923339965.png', null, '0.1,-=200.0', '1,-=1', '200.12', '2', '武蒙 13800138000 1111', '', null, '', '0', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-04-11 21:39:26', '0', null);
INSERT INTO `tb_order` VALUES ('51', '3,-=1', '西瓜,-=西红柿1', '/chihaodian/../upload/1460381914241.png,-=/chihaodian/../upload/1457923339965.png', null, '0.1,-=200.0', '1,-=1', '200.12', '2', '武蒙 13800138000 1111', '', null, '', '0', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-04-11 21:41:01', '0', null);
INSERT INTO `tb_order` VALUES ('52', '3,-=1', '西瓜,-=西红柿1', '/chihaodian/../upload/1460381914241.png,-=/chihaodian/../upload/1457923339965.png', null, '0.1,-=200.0', '1,-=1', '200.12', '2', '武蒙 13800138000 1111', '', null, '', '0', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-04-11 21:59:15', '0', null);
INSERT INTO `tb_order` VALUES ('53', '3', '西瓜', '/chihaodian/../upload/1460381914241.png', null, '0.1', '1', '0.12', '1', '武蒙 13800138000 1111', '', null, '', '0', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-04-12 23:38:36', '0', null);
INSERT INTO `tb_order` VALUES ('54', '3', '西瓜', '/chihaodian/../upload/1460381914241.png', null, '0.1', '1', '0.12', '1', '常振伟 13357823304 55', '', null, '', '0', 'oyqTtw0g_Gc4YlHlUAUGnx6Gft90', '2016-04-13 16:26:19', '0', null);
INSERT INTO `tb_order` VALUES ('55', '1', '西红柿1', '/chihaodian/../upload/1457923339965.png', null, '200.0', '4', '800', '4', '常振伟 13357823304 55', '', null, '', '0', 'oyqTtw0g_Gc4YlHlUAUGnx6Gft90', '2016-04-13 16:30:06', '0', null);
INSERT INTO `tb_order` VALUES ('56', '3', '西瓜', '/chihaodian/../upload/1460381914241.png', null, '0.1', '1', '0.1', '1', '常振伟 13357823304 55', '玄武区1', null, '', '0', 'oyqTtw0g_Gc4YlHlUAUGnx6Gft90', '2016-04-13 16:36:27', '0', null);
INSERT INTO `tb_order` VALUES ('57', '3', '西瓜', '/chihaodian/../upload/1460381914241.png', null, '0.1', '1', '0.12', '1', '哈 11111 111111', '', null, '', '0', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-04-14 17:51:54', '0', null);
INSERT INTO `tb_order` VALUES ('59', '3', '西瓜', '/chihaodian/../upload/1460381914241.png', null, '0.1', '1', '0.1', '1', '哈 11111 111111', '玄武区3', null, '', '0', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-04-15 14:16:33', '2', null);
INSERT INTO `tb_order` VALUES ('61', '4', '????', '/chihaodian/../upload/1458972205809.png', null, '0.0', '1', '0.02', '1', '哈 11111 111111', '', null, '', '0', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-04-21 17:44:37', '0', null);
INSERT INTO `tb_order` VALUES ('63', '3', '西瓜', '/chihaodian/../upload/1460381914241.png', null, '0.1', '15', '1.5', '15', '哈 11111 111111', '玄武区1', null, '', '0', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-04-27 07:06:11', '0', null);
INSERT INTO `tb_order` VALUES ('64', '1', '西红柿1', '/chihaodian/../upload/1457923339965.png', null, '200.0', '8', '1600', '8', '哈 11111 111111', '', null, '', '0', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-04-27 07:07:10', '0', null);
INSERT INTO `tb_order` VALUES ('65', '3', '西瓜', '/chihaodian/../upload/1460381914241.png', null, '0.1', '1', '0.1', '1', '哈 11111 111111', '玄武区1', null, '', '0', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-04-27 20:45:29', '0', null);
INSERT INTO `tb_order` VALUES ('66', '3', '西瓜', '/chihaodian/../upload/1460381914241.png', null, '0.1', '1', '0.1', '1', '哈 11111 111111', '玄武区1', null, '', '0', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-04-28 10:09:43', '2', null);
INSERT INTO `tb_order` VALUES ('67', '16,-=18', '特小凤西瓜,-=123', '/chihaodian/../upload/1461913791357.png,-=/chihaodian/../upload/1461908769781.png', null, '18.9,-=123.0', '1,-=1', '141.9', '2', '我的 13800138000 江苏 南京市 市辖区 123', '玄武区1', null, '', '0', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-05-03 15:02:55', '0', null);
INSERT INTO `tb_order` VALUES ('68', '16,-=18', '特小凤西瓜,-=123', '/chihaodian/../upload/1461913791357.png,-=/chihaodian/../upload/1462258643458.png', null, '0.0,-=123.0', '1,-=1', '123.02', '2', '你好high糊涂推拿Jul图兔兔图图 13800138000    好好好好好好好好好好好好好好好好好好好好好好好好好', '', null, '', '0', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-05-04 10:44:24', '0', null);
INSERT INTO `tb_order` VALUES ('70', '18', '123', '/chihaodian/../upload/1462258643458.png', null, '123.0', '1', '123.02', '1', '你好high糊涂推拿Jul图兔兔图图 138001380', '', null, '', '0', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-05-04 11:49:57', '0', null);
INSERT INTO `tb_order` VALUES ('71', '18', '吃号店精品推荐', '/chihaodian/../upload/1462258643458.png', null, '0.01', '1', '0.01', '1', '武蒙 13800138000 江苏 南京市 玄武区 雨润大街123456789', '玄武区1', null, '', '0', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-05-06 16:24:57', '2', null);
INSERT INTO `tb_order` VALUES ('72', '18', '吃号店精品推荐', '/chihaodian/../upload/1462258643458.png', null, '0.01', '1', '0.01', '1', '武蒙 13800138000 江苏 南京市 玄武区 雨润大街123456789', '玄武区1', null, '', '0', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-05-06 16:39:27', '2', null);
INSERT INTO `tb_order` VALUES ('75', '18', '吃号店精品推荐', '/chihaodian/../upload/1462258643458.png', null, '0.01', '1', '0.03', '1', '你好high糊涂推拿Jul图兔兔图图 13800138000 江苏 南京市 玄武区 好好好好好好好好好好好好好好好好好好好好好好好好好', '', null, '', '0', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-05-09 17:19:14', '0', null);
INSERT INTO `tb_order` VALUES ('76', '18', '吃号店精品推荐', '/chihaodian/../upload/1462258643458.png', null, '0.01', '1', '0.03', '1', '武蒙 13800138000 江苏 南京市 玄武区 雨润大街123456789好好好好好好好好好好哈哈哈', '', null, '', '0', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-05-09 17:20:52', '0', null);
INSERT INTO `tb_order` VALUES ('77', '18', '吃号店精品推荐', '/chihaodian/../upload/1462258643458.png', null, '0.01', '15', '-4.85', '15', '武蒙 13800138000 江苏 南京市 玄武区 雨润大街123456789好好好好好好好好好好哈哈哈', '鼓楼区南京汉中门大街沟通100服务店', '44', '端午节优惠券', '5', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-05-10 22:26:26', '0', null);
INSERT INTO `tb_order` VALUES ('78', '27,-=28,-=26', '海南木瓜,-=伦晚橙,-=东方蜜1号', '/chihaodian/../upload/1463110264179.png,-=/chihaodian/../upload/1463192197542.png,-=/chihaodian/../upload/1463110161194.png', null, '25.9,-=32.9,-=29.9', '2,-=1,-=1', '114.6', '4', '雷锋 13184235048 江苏 南京市 江宁区 水岸明珠3', '鼓楼区南京汉中门大街沟通100服务店', null, '', '0', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-05-16 21:26:38', '0', null);
INSERT INTO `tb_order` VALUES ('79', '19,-=22,-=23', '放心蔬菜,-=放心蔬菜会员半年卡 每次9斤,-=放心蔬菜会员年卡 每次6斤', '/chihaodian/../upload/1463108870113.png,-=/chihaodian/../upload/1463034781289.png,-=/chihaodian/../upload/1463035150649.png', null, '360.0,-=2900.0,-=3600.0', '3,-=1,-=6', '25580', '10', '武蒙 13800138000 江苏 南京市 玄武区 雨润大街123456789好好好好好好好好好好哈哈哈', '鼓楼区南京汉中门大街沟通100服务店', null, '', '0', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-05-19 23:56:33', '0', null);
INSERT INTO `tb_order` VALUES ('80', '29,-=30', '四川柠檬,-=缅甸黄河蜜', '/chihaodian/../upload/1463473103033.png,-=/chihaodian/../upload/1463473177830.png', null, '7.9,-=18.9', '1,-=1', '32.8', '2', '武蒙 13800138000 江苏 南京市 玄武区 雨润大街123456789好好好好好好好好好好哈哈哈', '', null, '', '0', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-05-23 13:22:05', '0', null);
INSERT INTO `tb_order` VALUES ('81', '22', '放心蔬菜会员半年卡 每次9斤', '/chihaodian/../upload/1463034781289.png', null, '2900.0', '1', '2895', '1', '武蒙 13800138000 江苏 南京市 玄武区 雨润大街123456789好好好好好好好好好好哈哈哈', '鼓楼区南京汉中门大街沟通100服务店', '48', '端午节优惠券', '5', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-05-23 13:48:01', '0', null);
INSERT INTO `tb_order` VALUES ('82', '24', '放心蔬菜会员年卡 每次9斤', '/chihaodian/../upload/1463035381900.png', null, '5300.0', '1', '5300', '1', '武蒙 13800138000 江苏 南京市 玄武区 雨润大街123456789好好好好好好好好好好哈哈哈', '', null, '', '0', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-05-24 14:11:28', '0', null);
INSERT INTO `tb_order` VALUES ('83', '19', '放心蔬菜', '/chihaodian/../upload/1463108870113.png', null, '360.0', '1', '350', '1', '关机了 111111 江苏 南京市 白下区 112', '', '53', '新用户领券', '10', 'oyqTtw2gjY17ntKIyba_i48EB26A', '2016-05-25 10:37:05', '0', null);
INSERT INTO `tb_order` VALUES ('84', '16', '特小凤西瓜', '/chihaodian/../upload/1461913791357.png', null, '0.0', '1', '6', '1', '武蒙 13800138000 江苏 南京市 玄武区 雨润大街123456789好好好好好好好好好好哈哈哈', '', null, '', '0', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-05-25 14:00:20', '0', null);
INSERT INTO `tb_order` VALUES ('85', '31', '麒麟西瓜', '/chihaodian/../upload/1463473271392.png', null, '26.9', '1', '32.9', '1', '武蒙 13800138000 江苏 南京市 玄武区 雨润大街123456789好好好好好好好好好好哈哈哈', 'undefined', null, '', '0', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-05-25 14:01:35', '0', null);
INSERT INTO `tb_order` VALUES ('88', '30', '缅甸黄河蜜', '/chihaodian/../upload/1463473177830.png', null, '18.9', '1', '24.9', '1', '武蒙 13800138000 江苏 南京市 玄武区 雨润大街123456789好好好好好好好好好好哈哈哈', '', null, '', '0', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-05-25 14:10:26', '0', null);
INSERT INTO `tb_order` VALUES ('89', '30', '缅甸黄河蜜', '/chihaodian/../upload/1463473177830.png', null, '18.9', '1', '24.9', '1', '武蒙 13800138000 江苏 南京市 玄武区 雨润大街123456789好好好好好好好好好好哈哈哈', '', null, '', '0', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-05-25 14:11:28', '0', null);
INSERT INTO `tb_order` VALUES ('90', '33', '烟台红富士80脆', '/chihaodian/../upload/1463473499830.png', null, '4.8', '3', '10.4', '3', '武蒙 13800138000 江苏 南京市 玄武区 雨润大街123456789好好好好好好好好好好哈哈哈', '', '54', '新用户领券', '10', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-05-25 14:12:23', '2', null);
INSERT INTO `tb_order` VALUES ('91', '44', '香葱', '/chihaodian/../upload/1464245310066.png', null, '0.0', '5', '0', '5', '关机了 111111 江苏 南京市 白下区 112', '秦淮区南京移动火瓦巷指定专营店', null, '', '0', 'oyqTtw2gjY17ntKIyba_i48EB26A', '2016-05-26 17:42:04', '2', null);
INSERT INTO `tb_order` VALUES ('92', '19', '蔬菜会员月卡', '/chihaodian/../upload/1463108870113.png', null, '360.0', '1', '360', '1', '楚荡 18977106731 广西 南宁市 宾阳县 永武街16号', '', null, '', '0', 'oyqTtwx22xt4J9oujYfC3wjRD5Uk', '2016-06-03 13:15:08', '0', null);
INSERT INTO `tb_order` VALUES ('93', '40', '新西兰佳沛阳光金果', '/chihaodian/../upload/1464249541340.png', null, '60.0', '1', '60', '1', '楚荡 18977106731 广西 南宁市 宾阳县 永武街16号', '', null, '', '0', 'oyqTtwx22xt4J9oujYfC3wjRD5Uk', '2016-06-03 13:18:30', '0', null);
INSERT INTO `tb_order` VALUES ('94', '72', '新疆西州蜜', '/chihaodian/../upload/1465802535035.png', null, '39.8', '1', '39.8', '1', '晨 18913834441 江苏 南京市 玄武区 大石桥', '玄武区丹凤街新街口政务大厦', null, '', '0', 'oyqTtw_d252V55C89XiqmkGrRpHM', '2016-06-13 16:50:46', '0', null);
INSERT INTO `tb_order` VALUES ('95', '72', '新疆西州蜜', '/chihaodian/../upload/1465802535035.png', null, '39.8', '3', '125.4', '3', '武蒙 13800138000 江苏 南京市 玄武区 雨润大街123456789好好好好好好好好好好哈哈哈', '', null, '', '0', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-06-13 17:12:49', '-6', null);
INSERT INTO `tb_order` VALUES ('96', '72', '新疆西州蜜', '/chihaodian/../upload/1465802535035.png', null, '39.8', '1', '39.8', '1', '李祥 15005151906 江苏 南京市 玄武区 卫巷29—2,80手机', '玄武区丹凤街新街口政务大厦', null, '', '0', 'oyqTtw0p_NhAaOjZH1OOG7Npg9FA', '2016-06-15 09:56:44', '2', null);
INSERT INTO `tb_order` VALUES ('97', '39', '生态揉玉米', '/chihaodian/../upload/1464165603582.png', null, '48.0', '1', '38', '1', '胡翀宇 13851759927 江苏 南京市 玄武区 大石桥19号', '玄武区丹凤街新街口政务大厦', '59', '新手优惠', '10', 'oyqTtw91DW4dmYULSdL7n-4-G9BY', '2016-06-15 10:45:01', '2', null);
INSERT INTO `tb_order` VALUES ('98', '61', '台湾土鸡仔', '/chihaodian/../upload/1465887400031.png', null, '48.0', '1', '54', '1', '雷锋 13184235048 江苏 南京市 江宁区 水岸明珠3', '', null, '', '0', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-06-15 14:17:13', '0', null);
INSERT INTO `tb_order` VALUES ('99', '68', '非转基因黄豆', '/chihaodian/../upload/1465701002059.png', null, '10.0', '1', '0', '1', '尹翔 18260009902 江苏 南京市 玄武区 南京市新街口政务大厦北楼306', '玄武区丹凤街新街口政务大厦', '56', '新手优惠', '10', 'oyqTtw2gjY17ntKIyba_i48EB26A', '2016-06-15 16:51:12', '2', 'haoma13901581204+');
INSERT INTO `tb_order` VALUES ('100', '68', '非转基因黄豆', '/chihaodian/../upload/1465701002059.png', null, '10.0', '1', '0', '1', '晨 18913834441 江苏 南京市 玄武区 大石桥', '玄武区丹凤街新街口政务大厦', '60', '新手优惠', '10', 'oyqTtw_d252V55C89XiqmkGrRpHM', '2016-06-15 17:22:29', '2', null);
INSERT INTO `tb_order` VALUES ('101', '67', '菲律宾大香蕉', '/chihaodian/../upload/1465723850965.png', null, '19.8', '1', '25.8', '1', 'robbin 18301985940 江苏 南京市 玄武区 柳州东路', '', null, '', '0', 'oyqTtw-iCmyM3xVw_3XM8pO_xao4', '2016-06-16 21:03:17', '0', null);
INSERT INTO `tb_order` VALUES ('102', '66,-=65', '澳大利亚无籽红提,-=妃子笑荔枝', '/chihaodian/../upload/1465724148153.png,-=/chihaodian/../upload/1465723952090.png', null, '21.9,-=30.0', '1,-=1', '57.9', '2', '武蒙 13800138000 江苏 南京市 玄武区 雨润大街123456789好好好好好好好好好好哈哈哈', '', null, '', '0', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-06-20 14:54:53', '0', '哈哈');
INSERT INTO `tb_order` VALUES ('103', '72', '新疆西州蜜', '/chihaodian/../upload/1465802535035.png', null, '39.8', '1', '45.8', '1', '武蒙 13800138000 江苏 南京市 玄武区 雨润大街123456789好好好好好好好好好好哈哈哈', '', null, '', '0', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-06-20 14:56:08', '0', '');
INSERT INTO `tb_order` VALUES ('104', '61', '台湾土鸡仔', '/chihaodian/../upload/1465887400031.png', null, '48.0', '1', '54', '1', '武蒙 13800138000 江苏 南京市 玄武区 雨润大街123456789好好好好好好好好好好哈哈哈', '', null, '', '0', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-06-21 10:09:55', '0', '');
INSERT INTO `tb_order` VALUES ('105', '72', '新疆西州蜜', '/chihaodian/../upload/1465802535035.png', null, '39.8', '1', '45.8', '1', '武蒙 13800138000 江苏 南京市 玄武区 雨润大街123456789好好好好好好好好好好哈哈哈', '', null, '', '0', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-06-21 10:10:34', '0', '');
INSERT INTO `tb_order` VALUES ('106', '20', '蔬菜会员月卡', '/chihaodian/../upload/1465975621288.png', null, '520.0', '1', '520', '1', 'test 13524525133 江苏 南京市 玄武区 南京', '', null, '', '0', 'oyqTtw2vfPMrtQczREkZYaQmMqt0', '2016-06-21 13:47:53', '0', '');
INSERT INTO `tb_order` VALUES ('107', '70,-=68', '生态菜籽油,-=非转基因黄豆', '/chihaodian/../upload/1465718279680.png,-=/chihaodian/../upload/1465701002059.png', null, '115.0,-=10.0', '1,-=1', '125', '2', '你 18516187204 江苏 南京市 玄武区 这', '', null, '', '0', 'oyqTtw3-pP203p605MLi9iX1utyo', '2016-06-21 14:19:42', '0', '');
INSERT INTO `tb_order` VALUES ('108', '72', '新疆西州蜜', '/chihaodian/../upload/1465802535035.png', null, '39.8', '1', '39.8', '1', '陈好 13815875144 江苏 南京市 秦淮区 汉中黄金时间时间', '鼓楼区南京移动汉中门大街沟通100服务店', null, '', '0', 'oyqTtw4Fy9Fn31QnZKfd91w9e6jw', '2016-06-21 15:56:59', '0', '就堵堵堵');
INSERT INTO `tb_order` VALUES ('109', '67', '菲律宾大香蕉', '/chihaodian/../upload/1465723850965.png', null, '19.8', '1', '25.8', '1', '看看 13357823304 江苏 南京市 玄武区 做最去外婆哦破', '', null, '', '0', 'oyqTtw0g_Gc4YlHlUAUGnx6Gft90', '2016-06-22 15:28:35', '0', '');
INSERT INTO `tb_order` VALUES ('110', '77', '山竹', '/chihaodian/../upload/1466736000313.png', null, '0.1', '1', '0.1', '1', '尹翔 18260009902 江苏 南京市 玄武区 南京市新街口政务大厦北楼306', '鼓楼区南京移动汉中门大街沟通100服务店', null, '', '0', 'oyqTtw2gjY17ntKIyba_i48EB26A', '2016-06-24 11:17:38', '2', '88888888');
INSERT INTO `tb_order` VALUES ('111', '77', '山竹', '/chihaodian/../upload/1466736000313.png', null, '0.1', '1', '0.1', '1', '尹翔 18260009902 江苏 南京市 玄武区 南京市新街口政务大厦北楼306', '鼓楼区null', null, '', '0', 'oyqTtw2gjY17ntKIyba_i48EB26A', '2016-06-24 11:18:25', '0', '12345678');
INSERT INTO `tb_order` VALUES ('112', '77', '山竹', '/chihaodian/../upload/1466736000313.png', null, '0.1', '1', '0.1', '1', '尹翔 18260009902 江苏 南京市 玄武区 南京市新街口政务大厦北楼306', '秦淮区南京移动升州路营业厅', null, '', '0', 'oyqTtw2gjY17ntKIyba_i48EB26A', '2016-06-24 11:18:43', '2', '12345678');
INSERT INTO `tb_order` VALUES ('113', '77', '山竹', '/chihaodian/../upload/1466736000313.png', null, '0.1', '1', '0.1', '1', '尹翔 18260009902 江苏 南京市 玄武区 南京市新街口政务大厦北楼306', '玄武区南京移动明故宫沟通100服务店', null, '', '0', 'oyqTtw2gjY17ntKIyba_i48EB26A', '2016-06-24 11:19:24', '2', '12352698');
INSERT INTO `tb_order` VALUES ('114', '77', '山竹', '/chihaodian/../upload/1466736000313.png', null, '0.1', '1', '0.1', '1', '尹翔 18260009902 江苏 南京市 玄武区 南京市新街口政务大厦北楼306', '建邺区南京移动河西万达营业厅', null, '', '0', 'oyqTtw2gjY17ntKIyba_i48EB26A', '2016-06-24 11:20:15', '2', '54269854');
INSERT INTO `tb_order` VALUES ('115', '66', '澳大利亚无籽红提', '/chihaodian/../upload/1465724148153.png', null, '21.9', '1', '27.9', '1', '12312 3123123123123 江苏 南京市 玄武区 123123123', '', null, '', '0', 'oyqTtw7EM8Dfe5FtvSXZTP3JpSAI', '2016-06-24 23:28:33', '0', '');
INSERT INTO `tb_order` VALUES ('116', '66', '澳大利亚无籽红提', '/chihaodian/../upload/1465724148153.png', null, '21.9', '1', '27.9', '1', '12312 3123123123123 江苏 南京市 玄武区 123123123', '', null, '', '0', 'oyqTtw7EM8Dfe5FtvSXZTP3JpSAI', '2016-06-24 23:28:34', '0', '');
INSERT INTO `tb_order` VALUES ('117', '72', '新疆西州蜜', '/chihaodian/../upload/1465802535035.png', null, '39.8', '2', '79.6', '2', '张先生 13391008872 四川 绵阳市 三台县 真新商务楼628', '', null, '', '0', 'oyqTtw-Wo0Ke5FHnmcvs3-9_NB9Q', '2016-06-28 13:10:12', '0', '');
INSERT INTO `tb_order` VALUES ('118', '72', '新疆西州蜜', '/chihaodian/../upload/1465802535035.png', null, '39.8', '1', '45.8', '1', '徐爸爸 13577446886 江苏 南京市 鼓楼区 搞不好地方', '', null, '', '0', 'oyqTtwzcK3cIq56eogDl4fs04UZU', '2016-06-28 20:10:22', '0', '法国哈哈哈哈');
INSERT INTO `tb_order` VALUES ('119', '72', '新疆西州蜜', '/chihaodian/../upload/1465802535035.png', null, '39.8', '1', '45.8', '1', '徐爸爸 13577446886 江苏 南京市 鼓楼区 搞不好地方', '', null, '', '0', 'oyqTtwzcK3cIq56eogDl4fs04UZU', '2016-06-28 20:10:22', '0', '法国哈哈哈哈');
INSERT INTO `tb_order` VALUES ('120', '77', '山竹', '/chihaodian/../upload/1466736000313.png', null, '0.1', '1', '6.1', '1', '付伟 15120095077 江苏 南京市 白下区 捎带手按时发哦就', '', null, '', '0', 'oyqTtwz-6YtPxpphyqVGGuapqAkc', '2016-06-29 13:56:42', '0', '');
INSERT INTO `tb_order` VALUES ('121', '77', '山竹', '/chihaodian/../upload/1466736000313.png', null, '0.1', '1', '6.1', '1', '付伟 15120095077 江苏 南京市 白下区 捎带手按时发哦就', '', null, '', '0', 'oyqTtwz-6YtPxpphyqVGGuapqAkc', '2016-06-29 13:56:45', '0', '');
INSERT INTO `tb_order` VALUES ('122', '54', '巴西原装翅中', '/chihaodian/../upload/1464316350243.png', null, '58.0', '1', '58', '1', '武蒙 13800138000 江苏 南京市 玄武区 雨润大街123456789好好好好好好好好好好哈哈哈', '', null, '', '0', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-06-29 15:38:42', '0', '');
INSERT INTO `tb_order` VALUES ('123', '61', '台湾土鸡仔', '/chihaodian/../upload/1465887400031.png', null, '48.0', '1', '48', '1', '11 13513533333 江苏 南京市 秦淮区 1111', '玄武区南京移动新庄指定专营店', null, '', '0', 'oyqTtw2EbRUgt2TfsjFkKOzDYGlc', '2016-06-29 22:25:44', '0', '');
INSERT INTO `tb_order` VALUES ('124', '72', '新疆西州蜜', '/chihaodian/../upload/1465802535035.png', null, '39.8', '1', '45.8', '1', '八 1333333333 江苏 南京市 秦淮区 蘑菇头图片', '', null, '', '0', 'oyqTtw0VCsm7fTPrZMMISKZ24-Vk', '2016-06-30 22:02:44', '0', '');
INSERT INTO `tb_order` VALUES ('125', '77', '山竹', '/chihaodian/../upload/1466736000313.png', null, '0.1', '1', '0.1', '1', '体检 15888888888 江苏 南京市 市辖区 推荐', '鼓楼区南京移动汉中门大街沟通100服务店', null, '', '0', 'oyqTtw1y0z_wUYa-w1rNc8Y5s9FU', '2016-07-05 08:59:02', '0', '');
INSERT INTO `tb_order` VALUES ('126', '40', '新西兰佳沛阳', '/chihaodian/../upload/1465724169981.png', null, '60.0', '1', '60', '1', 'ddd ssd 吉林 吉林市 昌邑区 走着走着zz', '', null, '', '0', 'oyqTtw13vXWsCtbuSsw7FD8-1oG0', '2016-07-07 15:37:16', '0', '');
INSERT INTO `tb_order` VALUES ('127', '40', '新西兰佳沛阳', '/chihaodian/../upload/1465724169981.png', null, '60.0', '1', '60', '1', 'ddd ssd 吉林 吉林市 昌邑区 走着走着zz', '', null, '', '0', 'oyqTtw13vXWsCtbuSsw7FD8-1oG0', '2016-07-07 15:37:35', '0', '');
INSERT INTO `tb_order` VALUES ('128', '61', '台湾土鸡仔', '/chihaodian/../upload/1465887400031.png', null, '48.0', '1', '54', '1', '哈哈哈 1111111 江苏 南京市 玄武区 你家', '', null, '', '0', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-07-07 15:39:11', '0', '');
INSERT INTO `tb_order` VALUES ('129', '77', '山竹', '/chihaodian/../upload/1466736000313.png', null, '0.1', '1', '6.1', '1', '哈哈哈 1111111 江苏 南京市 玄武区 你家', '', null, '', '0', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-07-07 15:40:45', '0', '');
INSERT INTO `tb_order` VALUES ('130', '61', '台湾土鸡仔', '/chihaodian/../upload/1465887400031.png', null, '48.0', '1', '54', '1', 'ss ssss 江苏 南京市 玄武区 收拾收拾', '', null, '', '0', 'oyqTtw8aLbm2Z9cI_lNZfqA8jO1k', '2016-07-07 16:19:58', '0', '');
INSERT INTO `tb_order` VALUES ('131', '19,-=22,-=64,-=39', '蔬菜会员月卡,-=蔬菜会员半年卡,-=生态稻田土鸡蛋,-=生态柔玉米', '/chihaodian/../upload/1465974795254.png,-=/chihaodian/../upload/1465976834996.png,-=/chihaodian/../upload/1466479271070.png,-=/chihaodian/../upload/1466730801733.png', null, '360.0,-=2900.0,-=96.0,-=48.0', '2,-=1,-=1,-=1', '3764', '5', '北京 13718105180 江苏 南京市 玄武区 回龙观', '', null, '', '0', 'oyqTtw-0IYTFupfhydyMQe1dKe6M', '2016-07-08 13:19:11', '0', '');
INSERT INTO `tb_order` VALUES ('132', '72', '新疆西州蜜', '/chihaodian/../upload/1465802535035.png', null, '39.8', '1', '39.8', '1', '默默 13803518888 江苏 南京市 玄武区 急急急急', '鼓楼区南京移动汉中门大街沟通100服务店', null, '', '0', 'oyqTtw0mv38vcI-LgoICHl1wN8RQ', '2016-07-14 17:47:15', '0', '');
INSERT INTO `tb_order` VALUES ('133', '60', '澳洲草饲牛腩块', '/chihaodian/../upload/1464318370545.png', null, '56.0', '1', '56', '1', 'd f f s sh h 江西 新余市 渝水区 d f f f', '玄武区null', null, '', '0', 'oyqTtw_embzWA8S7UcaBBj_cHzGU', '2016-07-15 14:44:07', '0', '');
INSERT INTO `tb_order` VALUES ('134', '61', '台湾土鸡仔', '/chihaodian/../upload/1465887400031.png', null, '48.0', '1', '48', '1', 'JJ了 18658630700 江苏 南京市 玄武区 \'\'\'5考虑考虑', '玄武区南京移动明故宫沟通100服务店', null, '', '0', 'oyqTtw2jJo2PeN2KvEFUhe7GufAA', '2016-07-16 19:16:57', '0', '');
INSERT INTO `tb_order` VALUES ('135', '61', '台湾土鸡仔', '/chihaodian/../upload/1465887400031.png', null, '48.0', '1', '48', '1', 'JJ了 18658630700 江苏 南京市 玄武区 \'\'\'5考虑考虑', '玄武区南京移动明故宫沟通100服务店', null, '', '0', 'oyqTtw2jJo2PeN2KvEFUhe7GufAA', '2016-07-16 19:16:59', '0', '');
INSERT INTO `tb_order` VALUES ('136', '78,-=68', '仙桃香粳米 50斤,-=非转基因黄豆', '/chihaodian/../upload/1466818615476.png,-=/chihaodian/../upload/1465701002059.png', null, '180.0,-=10.0', '1,-=1', '190', '2', '11 11111111111 江苏 南京市 玄武区 555', '', null, '', '0', 'oyqTtwz9hyWd87BYMxvfO1qHmQOk', '2016-07-17 20:32:40', '0', '');
INSERT INTO `tb_order` VALUES ('137', '67', '菲律宾大香蕉', '/chihaodian/../upload/1465723850965.png', null, '19.8', '1', '15.8', '1', '测试名 13676767676 广东 江门市 蓬江区 测试地点', '', '73', '新手优惠', '10', 'oyqTtw4wC-qD6qH83YGbhPS9Y4Go', '2016-07-18 07:05:41', '0', '');
INSERT INTO `tb_order` VALUES ('138', '66,-=40,-=19', '澳大利亚无籽红提,-=新西兰佳沛阳,-=蔬菜会员月卡', '/chihaodian/../upload/1465724148153.png,-=/chihaodian/../upload/1465724169981.png,-=/chihaodian/../upload/1465974795254.png', null, '21.9,-=60.0,-=360.0', '2,-=3,-=1', '583.8', '6', 'king 18711110000 江苏 南京市 玄武区 啊啊啊啊', '', null, '', '0', 'oyqTtw3qFRmliBkvEyV_hnYUFsv8', '2016-07-18 19:57:44', '0', '');
INSERT INTO `tb_order` VALUES ('139', '74', '冬虫夏草（鲜草）', '/chihaodian/../upload/1466479379008.png', null, '850.0', '1', '850', '1', '默默 13803518888 江苏 南京市 玄武区 急急急急', '鼓楼区南京移动汉中门大街沟通100服务店', null, '', '0', 'oyqTtw0mv38vcI-LgoICHl1wN8RQ', '2016-07-19 00:04:34', '0', '');
INSERT INTO `tb_order` VALUES ('140', '65', '妃子笑荔枝', '/chihaodian/../upload/1465723952090.png', null, '30.0', '1', '36', '1', '王承林 13193152333 广西 桂林市 雁山区 123358', '', null, '', '0', 'oyqTtw7awg1cjj_jfWbARvKDmPjg', '2016-07-19 11:14:38', '0', '');
INSERT INTO `tb_order` VALUES ('141', '67', '菲律宾大香蕉', '/chihaodian/../upload/1465723850965.png', null, '19.8', '1', '19.8', '1', '王晓鹏 15907979898 江苏 南京市 玄武区 桃子路16号', '玄武区南京移动新庄指定专营店', null, '', '0', 'oyqTtw6nHi7bW3tO7kwOIMnybWtI', '2016-07-20 14:44:14', '0', '');
INSERT INTO `tb_order` VALUES ('142', '67', '菲律宾大香蕉', '/chihaodian/../upload/1465723850965.png', null, '19.8', '1', '25.8', '1', '李先生 13826531136 广东 深圳市 宝安区 哈哈哈哈', '', null, '', '0', 'oyqTtw5A8gyh5hWYWeBmGdKifNlE', '2016-07-20 16:07:43', '0', '');
INSERT INTO `tb_order` VALUES ('143', '40', '新西兰佳沛阳', '/chihaodian/../upload/1465724169981.png', null, '60.0', '1', '60', '1', '么么哒 15048562332 江苏 南京市 玄武区 110', '', null, '', '0', 'oyqTtww7ucEo1bpuIrsVUo4kia5o', '2016-08-30 22:06:44', '0', '');
INSERT INTO `tb_order` VALUES ('144', '40', '新西兰佳沛阳', '/chihaodian/../upload/1465724169981.png', null, '60.0', '1', '60', '1', '么么哒 15048562332 江苏 南京市 玄武区 110', '', null, '', '0', 'oyqTtww7ucEo1bpuIrsVUo4kia5o', '2016-08-30 22:24:14', '0', '');
INSERT INTO `tb_order` VALUES ('145', '20', '蔬菜会员月卡', '/chihaodian/../upload/1465975621288.png', null, '520.0', '1', '520', '1', '司小毛 497844346 江苏 南京市 秦淮区 6646', '', null, '', '0', 'oyqTtwxVskVi5gknp6Zi85na8Afc', '2016-08-31 13:46:16', '0', '');
INSERT INTO `tb_order` VALUES ('146', '77', '山竹', '/chihaodian/../upload/1466736000313.png', null, '0.1', '2', '6.2', '2', '司小毛 497844346 江苏 南京市 秦淮区 6646', '', null, '', '0', 'oyqTtwxVskVi5gknp6Zi85na8Afc', '2016-08-31 13:50:38', '0', '');
INSERT INTO `tb_order` VALUES ('147', '72', '新疆西州蜜', '/chihaodian/../upload/1465802535035.png', null, '39.8', '1', '45.8', '1', '哈哈哈 1111111 江苏 南京市 玄武区 你家', '', null, '', '0', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-08-31 14:02:07', '0', '');
INSERT INTO `tb_order` VALUES ('148', '40', '新西兰佳沛阳', '/chihaodian/../upload/1465724169981.png', null, '60.0', '1', '60', '1', '司小毛 497844346 江苏 南京市 秦淮区 6646', '', null, '', '0', 'oyqTtwxVskVi5gknp6Zi85na8Afc', '2016-08-31 14:02:29', '0', '');
INSERT INTO `tb_order` VALUES ('149', '72', '新疆西州蜜', '/chihaodian/../upload/1465802535035.png', null, '39.8', '1', '45.8', '1', '我的 13800138000 江苏 南京市 市辖区 123', '', null, '', '0', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-08-31 14:03:06', '0', '');
INSERT INTO `tb_order` VALUES ('150', '72', '新疆西州蜜', '/chihaodian/../upload/1465802535035.png', null, '39.8', '1', '45.8', '1', '武蒙 13800138000 江苏 南京市 玄武区 雨润大街123456789好好好好好好好好好好哈哈哈', '', null, '', '0', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-08-31 14:04:08', '0', '');
INSERT INTO `tb_order` VALUES ('152', '61', '台湾土鸡仔', '/chihaodian/../upload/1465887400031.png', null, '48.0', '1', '54', '1', '雷锋 13184235048 江苏 南京市 江宁区 水岸明珠3', '', null, '', '0', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-08-31 14:07:29', '0', '');
INSERT INTO `tb_order` VALUES ('153', '61', '台湾土鸡仔', '/chihaodian/../upload/1465887400031.png', null, '48.0', '1', '54', '1', '雷锋 13184235048 江苏 南京市 江宁区 水岸明珠3', '', null, '', '0', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-08-31 14:08:25', '0', '');
INSERT INTO `tb_order` VALUES ('154', '61', '台湾土鸡仔', '/chihaodian/../upload/1465887400031.png', null, '48.0', '1', '54', '1', '雷锋 13184235048 江苏 南京市 江宁区 水岸明珠3', '', null, '', '0', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-08-31 14:08:57', '0', '');
INSERT INTO `tb_order` VALUES ('155', '61', '台湾土鸡仔', '/chihaodian/../upload/1465887400031.png', null, '48.0', '1', '54', '1', '雷锋 13184235048 江苏 南京市 江宁区 水岸明珠3', '', null, '', '0', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-08-31 14:09:08', '0', '');
INSERT INTO `tb_order` VALUES ('156', '77', '山竹', '/chihaodian/../upload/1466736000313.png', null, '0.1', '1', '6.1', '1', '武蒙 13800138000 江苏 南京市 玄武区 雨润大街123456789好好好好好好好好好好哈哈哈', '', null, '', '0', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-08-31 14:09:42', '0', '');
INSERT INTO `tb_order` VALUES ('157', '61', '台湾土鸡仔', '/chihaodian/../upload/1465887400031.png', null, '48.0', '1', '54', '1', '司小毛 497844346 江苏 南京市 秦淮区 6646', '', null, '', '0', 'oyqTtwxVskVi5gknp6Zi85na8Afc', '2016-08-31 14:58:04', '0', '');
INSERT INTO `tb_order` VALUES ('158', '60', '澳洲草饲牛腩块', '/chihaodian/../upload/1464318370545.png', null, '56.0', '1', '62', '1', '沈在宏 17095011358 江苏 南京市 玄武区 28栋601', '', null, '', '0', 'oyqTtw1y5pUj0V-3aJAFi3qXJ9x4', '2016-08-31 16:56:22', '0', '');
INSERT INTO `tb_order` VALUES ('159', '60', '澳洲草饲牛腩块', '/chihaodian/../upload/1464318370545.png', null, '56.0', '1', '62', '1', '沈在宏 17095011358 江苏 南京市 玄武区 28栋601', '', null, '', '0', 'oyqTtw1y5pUj0V-3aJAFi3qXJ9x4', '2016-08-31 16:56:23', '0', '');
INSERT INTO `tb_order` VALUES ('160', '40', '新西兰佳沛阳', '/chihaodian/../upload/1465724169981.png', null, '60.0', '1', '60', '1', '司小毛 497844346 江苏 南京市 秦淮区 6646', '', null, '', '0', 'oyqTtwxVskVi5gknp6Zi85na8Afc', '2016-08-31 17:00:00', '0', '');
INSERT INTO `tb_order` VALUES ('161', '40', '新西兰佳沛阳', '/chihaodian/../upload/1465724169981.png', null, '60.0', '1', '60', '1', '午餐 15329109996 江苏 南京市 秦淮区 ：德克勒克', '', null, '', '0', 'oyqTtw3ojDG0bxnTcMf3CoSuEiYY', '2016-08-31 23:02:26', '0', '');
INSERT INTO `tb_order` VALUES ('162', '61', '台湾土鸡仔', '/chihaodian/../upload/1465887400031.png', null, '48.0', '3', '144', '3', '到达 13112341234 江苏 南京市 秦淮区 赶紧睡觉', '', null, '', '0', 'oyqTtw3LfpX7MuHYaKpETe2mQCag', '2016-09-03 12:46:15', '0', '');
INSERT INTO `tb_order` VALUES ('163', '61', '台湾土鸡仔', '/chihaodian/../upload/1465887400031.png', null, '48.0', '3', '144', '3', '到达 13112341234 江苏 南京市 秦淮区 赶紧睡觉', '', null, '', '0', 'oyqTtw3LfpX7MuHYaKpETe2mQCag', '2016-09-03 12:46:16', '0', '');
INSERT INTO `tb_order` VALUES ('164', '72', '新疆西州蜜', '/chihaodian/../upload/1465802535035.png', null, '39.8', '3', '109.4', '3', '到达 13112341234 江苏 南京市 秦淮区 赶紧睡觉', '', '76', '新手优惠', '10', 'oyqTtw3LfpX7MuHYaKpETe2mQCag', '2016-09-05 22:09:08', '0', '');
INSERT INTO `tb_order` VALUES ('165', '72', '新疆西州蜜', '/chihaodian/../upload/1465802535035.png', null, '39.8', '3', '109.4', '3', '到达 13112341234 江苏 南京市 秦淮区 赶紧睡觉', '', '76', '新手优惠', '10', 'oyqTtw3LfpX7MuHYaKpETe2mQCag', '2016-09-05 22:09:09', '0', '');
INSERT INTO `tb_order` VALUES ('166', '72', '新疆西州蜜', '/chihaodian/../upload/1465802535035.png', null, '39.8', '3', '109.4', '3', '到达 13112341234 江苏 南京市 秦淮区 赶紧睡觉', '', '76', '新手优惠', '10', 'oyqTtw3LfpX7MuHYaKpETe2mQCag', '2016-09-05 22:09:09', '0', '');
INSERT INTO `tb_order` VALUES ('167', '72', '新疆西州蜜', '/chihaodian/../upload/1465802535035.png', null, '39.8', '3', '109.4', '3', '到达 13112341234 江苏 南京市 秦淮区 赶紧睡觉', '', '76', '新手优惠', '10', 'oyqTtw3LfpX7MuHYaKpETe2mQCag', '2016-09-05 22:09:09', '0', '');
INSERT INTO `tb_order` VALUES ('168', '72', '新疆西州蜜', '/chihaodian/../upload/1465802535035.png', null, '39.8', '3', '109.4', '3', '到达 13112341234 江苏 南京市 秦淮区 赶紧睡觉', '', '76', '新手优惠', '10', 'oyqTtw3LfpX7MuHYaKpETe2mQCag', '2016-09-05 22:09:09', '0', '');
INSERT INTO `tb_order` VALUES ('169', '74,-=20,-=58,-=54', '冬虫夏草（鲜草）,-=蔬菜会员月卡,-=肥牛卷 透明托盒装,-=巴西原装翅中', '/chihaodian/../upload/1466479379008.png,-=/chihaodian/../upload/1465975621288.png,-=/chihaodian/../upload/1464318053841.png,-=/chihaodian/../upload/1464316350243.png', null, '850.0,-=520.0,-=59.0,-=58.0', '1,-=1,-=1,-=2', '1545', '5', '到达 13112341234 江苏 南京市 秦淮区 赶紧睡觉', '', null, '', '0', 'oyqTtw3LfpX7MuHYaKpETe2mQCag', '2016-09-05 22:10:40', '0', '');
INSERT INTO `tb_order` VALUES ('170', '74,-=20,-=58,-=54', '冬虫夏草（鲜草）,-=蔬菜会员月卡,-=肥牛卷 透明托盒装,-=巴西原装翅中', '/chihaodian/../upload/1466479379008.png,-=/chihaodian/../upload/1465975621288.png,-=/chihaodian/../upload/1464318053841.png,-=/chihaodian/../upload/1464316350243.png', null, '850.0,-=520.0,-=59.0,-=58.0', '1,-=1,-=1,-=2', '1545', '5', '到达 13112341234 江苏 南京市 秦淮区 赶紧睡觉', '', null, '', '0', 'oyqTtw3LfpX7MuHYaKpETe2mQCag', '2016-09-05 22:10:41', '0', '');
INSERT INTO `tb_order` VALUES ('171', '66', '澳大利亚无籽红提', '/chihaodian/../upload/1465724148153.png', null, '21.9', '1', '21.9', '1', '哈哈哈哈 13655552236 江苏 南京市 栖霞区 哥给你', '鼓楼区南京移动汉中门大街沟通100服务店', null, '', '0', 'oyqTtw_1lKS5bMAK9U0Ujo6jGIUM', '2016-09-06 11:13:02', '0', '');
INSERT INTO `tb_order` VALUES ('172', '66', '澳大利亚无籽红提', '/chihaodian/../upload/1465724148153.png', null, '21.9', '1', '21.9', '1', '哈哈哈哈 13655552236 江苏 南京市 栖霞区 哥给你', '鼓楼区南京移动汉中门大街沟通100服务店', null, '', '0', 'oyqTtw_1lKS5bMAK9U0Ujo6jGIUM', '2016-09-06 11:13:05', '0', '');
INSERT INTO `tb_order` VALUES ('173', '26,-=27', '东方蜜1号,-=海南木瓜', '/chihaodian/../upload/1463110161194.png,-=/chihaodian/../upload/1463110264179.png', null, '29.9,-=6.5', '1,-=2', '48.9', '3', '发货 15699999999 福建 福州市 台江区 随便吧暴饮暴食', '', null, '', '0', 'oyqTtwyhgl0bTLUXOLonU-YjzoFo', '2016-09-08 15:45:16', '0', '');
INSERT INTO `tb_order` VALUES ('174', '67', '菲律宾大香蕉', '/chihaodian/../upload/1465723850965.png', null, '19.8', '1', '25.8', '1', '叶晓明 15999594104 广东 深圳市 南山区 西丽街道88栋501', '', null, '', '0', 'oyqTtw7YNOwzjFWNQ-OnyFaODSgM', '2016-09-09 11:34:27', '0', '');
INSERT INTO `tb_order` VALUES ('175', '65', '妃子笑荔枝', '/chihaodian/../upload/1465723952090.png', null, '30.0', '1', '36', '1', '叶晓明 15999594104 广东 深圳市 南山区 西丽街道88栋501', '', null, '', '0', 'oyqTtw7YNOwzjFWNQ-OnyFaODSgM', '2016-09-09 11:49:47', '0', '');
INSERT INTO `tb_order` VALUES ('500', '61', '台湾土鸡仔', '/chihaodian/../upload/1465887400031.png', null, '48.0', '1', '54', '1', '武蒙 13800138000 江苏 南京市 玄武区 雨润大街123456789好好好好好好好好好好哈哈哈', '', null, '', '0', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-08-31 14:06:20', '0', '');
INSERT INTO `tb_order` VALUES ('501', '72', '新疆西州蜜', '/chihaodian/../upload/1465802535035.png', null, '39.8', '1', '45.8', '1', '生里 13100000000 江苏 南京市 秦淮区 14722', '', null, '', '0', 'oyqTtw4orv5TBRsz1CCrrU18du5s', '2016-09-14 18:03:31', '0', '');
INSERT INTO `tb_order` VALUES ('502', '76', '冬虫夏草（鲜草）', '/chihaodian/../upload/1466479517055.png', null, '3880.0', '1', '3880', '1', '生里 13100000000 江苏 南京市 秦淮区 14722', '', null, '', '0', 'oyqTtw4orv5TBRsz1CCrrU18du5s', '2016-09-14 18:04:35', '0', '');
INSERT INTO `tb_order` VALUES ('503', '76', '冬虫夏草（鲜草）', '/chihaodian/../upload/1466479517055.png', null, '3880.0', '1', '3880', '1', '这 我 江苏 南京市 玄武区 在', '', null, '', '0', 'oyqTtwz6CKxywINf8fIHjdTkhfy8', '2016-09-17 02:29:10', '0', '');
INSERT INTO `tb_order` VALUES ('504', '77', '山竹', '/chihaodian/../upload/1466736000313.png', null, '0.1', '1', '6.1', '1', '测试 13128845886 江苏 南京市 市辖区 测试', '', null, '', '0', 'ou8VTwljRzueY2YuUjYxNnB0YKTQ', '2016-09-19 13:20:26', '0', null);
INSERT INTO `tb_order` VALUES ('505', '67', '菲律宾大香蕉', '/chihaodian/../upload/1465723850965.png', null, '19.8', '1', '25.8', '1', '测试 13128845886 江苏 南京市 市辖区 测试', '', null, '', '0', 'ou8VTwljRzueY2YuUjYxNnB0YKTQ', '2016-09-19 20:33:36', '0', '');
INSERT INTO `tb_order` VALUES ('506', '72,-=67', '新疆西州蜜,-=菲律宾大香蕉', '/chihaodian/../upload/1465802535035.png,-=/chihaodian/../upload/1465723850965.png', null, '39.8,-=19.8', '1,-=1', '59.6', '2', '刘韦 18855150306 江苏 南京市 玄武区 123', '', null, '', '0', 'ou8VTws6WD0XhKyFIrzurEOk_B08', '2016-09-20 22:08:23', '0', '');
INSERT INTO `tb_order` VALUES ('507', '72,-=77', '新疆西州蜜,-=山竹', '/chihaodian/../upload/1465802535035.png,-=/chihaodian/../upload/1466736000313.png', null, '39.8,-=0.1', '1,-=1', '45.9', '2', '咯噢噢 18365432123 江苏 南京市 白下区 他们默默', '', null, '', '0', 'ou8VTwjcT9r3iq1TdcVMsn5zlSwI', '2016-09-21 09:21:05', '0', '');
INSERT INTO `tb_order` VALUES ('508', '76,-=75', '冬虫夏草（鲜草）,-=冬虫夏草（鲜草）', '/chihaodian/../upload/1466479517055.png,-=/chihaodian/../upload/1466479445305.png', null, '3880.0,-=1998.0', '1,-=1', '5878', '2', '咯噢噢 18365432123 江苏 南京市 白下区 他们默默', '玄武区南京移动新庄指定专营店', null, '', '0', 'ou8VTwjcT9r3iq1TdcVMsn5zlSwI', '2016-09-21 09:25:22', '0', '');
INSERT INTO `tb_order` VALUES ('509', '66', '澳大利亚无籽红提', '/chihaodian/../upload/1465724148153.png', null, '21.9', '1', '27.9', '1', '测试 13812345678 江苏 南京市 白下区 测试', '', null, '', '0', 'ou8VTwskoxxmWPrfJzWqyNaPNMe8', '2016-09-22 15:14:58', '0', null);
INSERT INTO `tb_order` VALUES ('510', '77', '山竹', '/chihaodian/../upload/1466736000313.png', null, '0.1', '1', '0.1', '1', '测试 13812345678 江苏 南京市 白下区 测试', '鼓楼区南京移动汉中门大街沟通100服务店', null, '', '0', 'ou8VTwskoxxmWPrfJzWqyNaPNMe8', '2016-09-22 15:24:35', '0', '');
INSERT INTO `tb_order` VALUES ('511', '78', '仙桃香粳米 50斤', '/chihaodian/../upload/1466818615476.png', null, '180.0', '1', '180', '1', 'h l 利库路特 江苏 南京市 玄武区 啦啦', '', null, '', '0', 'ou8VTwqfBP8vjG9h55ihMQ01MRY4', '2016-09-22 20:36:01', '0', null);
INSERT INTO `tb_order` VALUES ('512', '79', '商品测试', 'http://localhost:8080/upload/1474343819028.png', null, '1.0', '1', '1', '1', '伍照生 15329109996 江苏 南京市 玄武区 很多亟待解决', '鼓楼区南京移动汉中门大街沟通100服务店', null, '', '0', 'ou8VTwsobQoGHPRsCxIq_m_jk_z8', '2016-09-22 20:40:44', '0', null);
INSERT INTO `tb_order` VALUES ('513', '67', '菲律宾大香蕉', '/chihaodian/../upload/1465723850965.png', null, '19.8', '1', '19.8', '1', '伍照生 15329109996 江苏 南京市 玄武区 很多亟待解决', '鼓楼区南京移动汉中门大街沟通100服务店', null, '', '0', 'ou8VTwsobQoGHPRsCxIq_m_jk_z8', '2016-09-22 21:12:26', '0', null);
INSERT INTO `tb_order` VALUES ('514', '72', '新疆西州蜜', '/chihaodian/../upload/1465802535035.png', null, '39.8', '2', '79.6', '2', '陈瑞 1508603232 江苏 南京市 秦淮区 1111', '', null, '', '0', 'ou8VTwq99JgxdYFlFBn0QS_aOSbQ', '2016-09-22 21:19:23', '0', '');
INSERT INTO `tb_order` VALUES ('515', '77', '山竹', '/chihaodian/../upload/1466736000313.png', null, '0.1', '1', '6.1', '1', '陈瑞 1508603232 江苏 南京市 秦淮区 1111', '', null, '', '0', 'ou8VTwq99JgxdYFlFBn0QS_aOSbQ', '2016-09-22 21:20:24', '0', null);
INSERT INTO `tb_order` VALUES ('516', '72', '新疆西州蜜', '/chihaodian/../upload/1465802535035.png', null, '39.8', '1', '45.8', '1', '哈哈 13184222222 江苏 南京市 市辖区 4444', '', null, '', '0', 'ou8VTwn85kT1eSZmL2Lz7RmXZo10', '2016-09-22 22:20:37', '0', null);
INSERT INTO `tb_order` VALUES ('517', '74,-=67', '冬虫夏草（鲜草）,-=菲律宾大香蕉', '/chihaodian/../upload/1466479379008.png,-=/chihaodian/../upload/1465723850965.png', null, '850.0,-=19.8', '1,-=1', '869.8', '2', '我 19398273728 江苏 南京市 玄武区 你们都', '', null, '', '0', 'ou8VTwjjeTBoS_83y-GVz_dsULFA', '2016-09-23 15:06:07', '0', '');
INSERT INTO `tb_order` VALUES ('518', '72', '新疆西州蜜', '/chihaodian/../upload/1465802535035.png', null, '39.8', '1', '45.8', '1', '哈哈 13184222222 江苏 南京市 市辖区 4444', '', null, '', '0', 'ou8VTwn85kT1eSZmL2Lz7RmXZo10', '2016-09-23 15:07:40', '0', '');
INSERT INTO `tb_order` VALUES ('519', '72', '新疆西州蜜', '/chihaodian/../upload/1465802535035.png', null, '39.8', '1', '45.8', '1', '哈哈 13184222222 江苏 南京市 市辖区 4444', '', null, '', '0', 'ou8VTwn85kT1eSZmL2Lz7RmXZo10', '2016-09-23 15:07:43', '0', '');
INSERT INTO `tb_order` VALUES ('520', '72', '新疆西州蜜', '/chihaodian/../upload/1465802535035.png', null, '39.8', '1', '45.8', '1', '我 19398273728 江苏 南京市 玄武区 你们都', '', null, '', '0', 'ou8VTwjjeTBoS_83y-GVz_dsULFA', '2016-09-23 15:08:27', '0', '');
INSERT INTO `tb_order` VALUES ('521', '72', '新疆西州蜜', '/chihaodian/../upload/1465802535035.png', null, '39.8', '3', '119.4', '3', '我 19398273728 江苏 南京市 玄武区 你们都', '', null, '', '0', 'ou8VTwjjeTBoS_83y-GVz_dsULFA', '2016-09-23 16:42:38', '0', '');
INSERT INTO `tb_order` VALUES ('522', '67', '菲律宾大香蕉', '/chihaodian/../upload/1465723850965.png', null, '19.8', '1', '19.8', '1', '1 18057936784 江苏 南京市 市辖区 122', '鼓楼区南京移动中央北路指定专营店', null, '', '0', 'ou8VTwlq0fSMJah4dfXyYfKY5CzQ', '2016-09-25 03:30:48', '0', null);
INSERT INTO `tb_order` VALUES ('523', '71,-=67', '生态黄金耳,-=菲律宾大香蕉', '/chihaodian/../upload/1466474419051.png,-=/chihaodian/../upload/1465723850965.png', null, '12.0,-=19.8', '1,-=1', '37.8', '2', '小子 13826062828 江苏 南京市 市辖区 44', '', null, '', '0', 'ou8VTwoEE7MArX5PFaNqdsYysPwc', '2016-09-28 12:01:49', '0', '');
INSERT INTO `tb_order` VALUES ('524', '39', '生态柔玉米', '/chihaodian/../upload/1466730801733.png', null, '48.0', '1', '54', '1', '郭鑫 18821780377 江苏 扬州市 宝应县 566666', '', null, '', '0', 'ou8VTwkfzz1iPJyoVW11lHyzoedU', '2016-09-28 16:12:03', '0', null);
INSERT INTO `tb_order` VALUES ('525', '78', '仙桃香粳米 50斤', '/chihaodian/../upload/1466818615476.png', null, '180.0', '2', '360', '2', '子勺 13566666778 江苏 南京市 秦淮区 乡子_45号', '', null, '', '0', 'ou8VTwic_nOuiMobj9DJFPuB5ekU', '2016-09-28 21:14:08', '0', '');
INSERT INTO `tb_order` VALUES ('526', '', '', '', null, '', '', '6', '0', '子勺 13566666778 江苏 南京市 秦淮区 乡子_45号', '', null, '', '0', 'ou8VTwic_nOuiMobj9DJFPuB5ekU', '2016-09-28 21:15:46', '0', '');
INSERT INTO `tb_order` VALUES ('527', '', '', '', null, '', '', '6', '0', '子勺 13566666778 江苏 南京市 秦淮区 乡子_45号', '', null, '', '0', 'ou8VTwic_nOuiMobj9DJFPuB5ekU', '2016-09-28 21:16:03', '0', '');
INSERT INTO `tb_order` VALUES ('528', '60', '澳洲草饲牛腩块', '/chihaodian/../upload/1464318370545.png', null, '56.0', '1', '62', '1', '子勺 13566666778 江苏 南京市 秦淮区 乡子_45号', '', null, '', '0', 'ou8VTwic_nOuiMobj9DJFPuB5ekU', '2016-09-28 21:19:35', '0', null);
INSERT INTO `tb_order` VALUES ('529', '78', '仙桃香粳米 50斤', '/chihaodian/../upload/1466818615476.png', null, '180.0', '1', '180', '1', '子勺 13566666778 江苏 南京市 秦淮区 乡子_45号', '', null, '', '0', 'ou8VTwic_nOuiMobj9DJFPuB5ekU', '2016-09-28 21:27:50', '0', null);
INSERT INTO `tb_order` VALUES ('530', '78', '仙桃香粳米 50斤', '/chihaodian/../upload/1466818615476.png', null, '180.0', '1', '180', '1', '子勺 13566666778 江苏 南京市 秦淮区 乡子_45号', '', null, '', '0', 'ou8VTwic_nOuiMobj9DJFPuB5ekU', '2016-09-29 12:30:22', '0', null);
INSERT INTO `tb_order` VALUES ('531', '61,-=73', '台湾土鸡仔,-=蔬菜会员卡年卡', '/chihaodian/../upload/1465887400031.png,-=/chihaodian/../upload/1465977042091.png', null, '48.0,-=1588.0', '1,-=1', '1636', '2', '肖吐 13800000000 江苏 南京市 玄武区 V领酷我', '', null, '', '0', 'ou8VTwnjnL5K8tAIPFPGo4MDD9os', '2016-09-29 18:23:27', '0', '');
INSERT INTO `tb_order` VALUES ('532', '72', '新疆西州蜜', '/chihaodian/../upload/1465802535035.png', null, '39.8', '1', '39.8', '1', '功能 13800000000 江苏 南京市 市辖区 来咯摸摸哦哦哦OK啦', '鼓楼区南京移动汉中门大街沟通100服务店', null, '', '0', 'ou8VTwtXee4vzTawUp9dyfUNq7Cc', '2016-09-29 20:34:14', '0', '');
INSERT INTO `tb_order` VALUES ('533', '77', '山竹', '/chihaodian/../upload/1466736000313.png', null, '0.1', '1', '0.1', '1', 'George 12345678914 江苏 南京市 白下区 哈千区', '玄武区南京移动新庄指定专营店', null, '', '0', 'ou8VTwsxLQTCa46WsPLUecPZW02U', '2016-09-29 23:15:58', '0', null);
INSERT INTO `tb_order` VALUES ('534', '72,-=39', '新疆西州蜜,-=生态柔玉米', '/chihaodian/../upload/1465802535035.png,-=/chihaodian/../upload/1466730801733.png', null, '39.8,-=48.0', '1,-=1', '77.8', '2', 'zzxx 77.8 江苏 南京市 玄武区 而通过 v 很艰难！', '', '87', '新手优惠', '10', 'ou8VTwi5QeqO9G9Crq5Gxafs6aGA', '2016-09-30 23:04:07', '0', '');
INSERT INTO `tb_order` VALUES ('535', '74', '冬虫夏草（鲜草）', '/chihaodian/../upload/1466479379008.png', null, '850.0', '1', '850', '1', '哈哈哈 11111111111 江苏 南京市 建邺区 哈哈哈', '', null, '', '0', 'ou8VTwtCzmuG1D1T95LN4UwyUY2E', '2016-10-06 23:09:38', '0', '');
INSERT INTO `tb_order` VALUES ('536', '76,-=67,-=72', '冬虫夏草（鲜草）,-=菲律宾大香蕉,-=新疆西州蜜', '/chihaodian/../upload/1466479517055.png,-=/chihaodian/../upload/1465723850965.png,-=/chihaodian/../upload/1465802535035.png', null, '3880.0,-=19.8,-=39.8', '1,-=2,-=1', '3959.4', '4', '哈哈 15840040044 江苏 南京市 玄武区 共', '', null, '', '0', 'ou8VTwuYXOhkEJkcOrn7_G8Bfr7Q', '2016-10-08 15:16:10', '0', '');
INSERT INTO `tb_order` VALUES ('537', '76,-=67,-=72', '冬虫夏草（鲜草）,-=菲律宾大香蕉,-=新疆西州蜜', '/chihaodian/../upload/1466479517055.png,-=/chihaodian/../upload/1465723850965.png,-=/chihaodian/../upload/1465802535035.png', null, '3880.0,-=19.8,-=39.8', '1,-=2,-=1', '3959.4', '4', '哈哈 15840040044 江苏 南京市 玄武区 共', '', null, '', '0', 'ou8VTwuYXOhkEJkcOrn7_G8Bfr7Q', '2016-10-08 15:16:41', '0', '');
INSERT INTO `tb_order` VALUES ('538', '66', '澳大利亚无籽红提', '/chihaodian/../upload/1465724148153.png', null, '21.9', '1', '21.9', '1', '12 15836985236 江苏 南京市 玄武区 123', '鼓楼区南京移动汉中门大街沟通100服务店', null, '', '0', 'ou8VTwhOrxREKicoSZhZvrA-_Kvk', '2016-10-08 21:13:28', '0', '');
INSERT INTO `tb_order` VALUES ('539', '72,-=67', '新疆西州蜜,-=菲律宾大香蕉', '/chihaodian/../upload/1465802535035.png,-=/chihaodian/../upload/1465723850965.png', null, '39.8,-=19.8', '2,-=1', '99.4', '3', '12 15836985236 江苏 南京市 玄武区 123', '', null, '', '0', 'ou8VTwhOrxREKicoSZhZvrA-_Kvk', '2016-10-09 21:32:48', '0', '');
INSERT INTO `tb_order` VALUES ('540', '66', '澳大利亚无籽红提', '/chihaodian/../upload/1465724148153.png', null, '21.9', '1', '27.9', '1', '12 15836985236 江苏 南京市 玄武区 123', '', null, '', '0', 'ou8VTwhOrxREKicoSZhZvrA-_Kvk', '2016-10-09 21:34:29', '0', null);
INSERT INTO `tb_order` VALUES ('541', '21,-=23,-=75', '蔬菜会员半年卡,-=蔬菜会员年卡,-=冬虫夏草（鲜草）', '/chihaodian/../upload/1465975865805.png,-=/chihaodian/../upload/1465976906449.png,-=/chihaodian/../upload/1466479445305.png', null, '2000.0,-=3600.0,-=1998.0', '1,-=1,-=1', '7598', '3', 'aa 12345678912 江西 新余市 渝水区 ffgg', '', null, '', '0', 'ou8VTwtC9vvMm4TZ_aoMlVwiEn-E', '2016-10-10 22:41:47', '0', '');
INSERT INTO `tb_order` VALUES ('542', '66', '澳大利亚无籽红提', '/chihaodian/../upload/1465724148153.png', null, '21.9', '1', '27.9', '1', '12 15836985236 江苏 南京市 玄武区 123', '', null, '', '0', 'ou8VTwhOrxREKicoSZhZvrA-_Kvk', '2016-10-11 13:28:46', '0', '');
INSERT INTO `tb_order` VALUES ('543', '72,-=39', '新疆西州蜜,-=生态柔玉米', '/chihaodian/../upload/1465802535035.png,-=/chihaodian/../upload/1466730801733.png', null, '39.8,-=48.0', '1,-=1', '87.8', '2', '11 11 江苏 南京市 市辖区 21', '', null, '', '0', 'ou8VTwiy0LiYm5casAiw9NZV5P-E', '2016-10-11 13:55:15', '0', '');
INSERT INTO `tb_order` VALUES ('544', '', '', '', null, '', '', '6', '0', '11 11 江苏 南京市 市辖区 21', '', null, '', '0', 'ou8VTwiy0LiYm5casAiw9NZV5P-E', '2016-10-11 13:56:07', '0', '');
INSERT INTO `tb_order` VALUES ('545', '', '', '', null, '', '', '87.8', '0', '11 11 江苏 南京市 市辖区 21', '', null, '', '0', 'ou8VTwiy0LiYm5casAiw9NZV5P-E', '2016-10-11 13:58:15', '0', '');
INSERT INTO `tb_order` VALUES ('546', '', '', '', null, '', '', '87.8', '0', '11 11 江苏 南京市 市辖区 21', '', null, '', '0', 'ou8VTwiy0LiYm5casAiw9NZV5P-E', '2016-10-11 13:58:17', '0', '');
INSERT INTO `tb_order` VALUES ('547', '72', '新疆西州蜜', '/chihaodian/../upload/1465802535035.png', null, '39.8', '1', '45.8', '1', '哈哈 13184222222 江苏 南京市 市辖区 4444', '', null, '', '0', 'ou8VTwn85kT1eSZmL2Lz7RmXZo10', '2016-10-11 14:19:04', '0', '');
INSERT INTO `tb_order` VALUES ('548', '66', '澳大利亚无籽红提', '/chihaodian/../upload/1465724148153.png', null, '21.9', '1', '27.9', '1', '12 15836985236 江苏 南京市 玄武区 123', '', null, '', '0', 'ou8VTwhOrxREKicoSZhZvrA-_Kvk', '2016-10-11 14:22:27', '0', '');
INSERT INTO `tb_order` VALUES ('549', '40', '新西兰佳沛阳', '/chihaodian/../upload/1465724169981.png', null, '60.0', '1', '60', '1', '12 15836985236 江苏 南京市 玄武区 123', '', null, '', '0', 'ou8VTwhOrxREKicoSZhZvrA-_Kvk', '2016-10-11 14:28:56', '0', '');
INSERT INTO `tb_order` VALUES ('550', '72', '新疆西州蜜', '/chihaodian/../upload/1465802535035.png', null, '39.8', '1', '45.8', '1', '哈哈 13184222222 江苏 南京市 市辖区 4444', '', null, '', '0', 'ou8VTwn85kT1eSZmL2Lz7RmXZo10', '2016-10-11 15:19:50', '0', '');
INSERT INTO `tb_order` VALUES ('551', '19', '蔬菜会员月卡', '/chihaodian/../upload/1465974795254.png', null, '360.0', '1', '360', '1', '12 15836985236 江苏 南京市 玄武区 123', '', null, '', '0', 'ou8VTwhOrxREKicoSZhZvrA-_Kvk', '2016-10-11 15:29:22', '0', '');
INSERT INTO `tb_order` VALUES ('552', '44', '香葱', '/chihaodian/../upload/1464245310066.png', null, '0.0', '1', '6', '1', '12 15836985236 江苏 南京市 玄武区 123', '', null, '', '0', 'ou8VTwhOrxREKicoSZhZvrA-_Kvk', '2016-10-11 15:32:12', '0', '');
INSERT INTO `tb_order` VALUES ('553', '78', '仙桃香粳米 50斤', '/chihaodian/../upload/1466818615476.png', null, '180.0', '1', '180', '1', '11 13815511069 江苏 南京市 白下区 1111', '', null, '', '0', 'ou8VTwlXE--4jVErbh8UhrjiisNE', '2016-10-11 16:58:26', '0', null);
INSERT INTO `tb_order` VALUES ('554', '78', '仙桃香粳米 50斤', '/chihaodian/../upload/1466818615476.png', null, '180.0', '1', '180', '1', '11 13815511069 江苏 南京市 白下区 1111', '', null, '', '0', 'ou8VTwlXE--4jVErbh8UhrjiisNE', '2016-10-11 16:58:28', '0', null);
INSERT INTO `tb_order` VALUES ('555', '72', '新疆西州蜜', '/chihaodian/../upload/1465802535035.png', null, '39.8', '1', '45.8', '1', '8555 13518227731 江苏 南京市 鼓楼区 吐了咯哦里', '', null, '', '0', 'ou8VTwgF5REv9Jcc2L077FbunN8s', '2016-10-12 21:12:07', '0', '');
INSERT INTO `tb_order` VALUES ('556', '60', '澳洲草饲牛腩块', '/chihaodian/../upload/1464318370545.png', null, '56.0', '1', '62', '1', '椰 13101231887 江苏 南京市 玄武区 随便忋', '', null, '', '0', 'ou8VTwqvmbvC70s3zwNfua8yfhLs', '2016-10-13 09:53:53', '0', '');
INSERT INTO `tb_order` VALUES ('557', '66', '澳大利亚无籽红提', '/chihaodian/../upload/1465724148153.png', null, '21.9', '1', '27.9', '1', '椰 13101231887 江苏 南京市 玄武区 随便忋', '', null, '', '0', 'ou8VTwqvmbvC70s3zwNfua8yfhLs', '2016-10-13 13:44:39', '0', null);
INSERT INTO `tb_order` VALUES ('558', '76', '冬虫夏草（鲜草）', '/chihaodian/../upload/1466479517055.png', null, '3880.0', '1', '3880', '1', '裤 15215478985 江苏 南通市 如皋市 5', '', null, '', '0', 'ou8VTwlX7U2v-AmokmTT2dMHHu2g', '2016-10-13 17:01:11', '0', null);
INSERT INTO `tb_order` VALUES ('559', '72', '新疆西州蜜', '/chihaodian/../upload/1465802535035.png', null, '39.8', '1', '45.8', '1', '老人 15259771234 江苏 南京市 建邺区 哈哈哈哈', '', null, '', '0', 'ou8VTwrSkK02zQAqRVoTLXgKJfKE', '2016-10-15 14:40:08', '0', null);
INSERT INTO `tb_order` VALUES ('560', '72', '新疆西州蜜', '/chihaodian/../upload/1465802535035.png', null, '39.8', '1', '45.8', '1', '黄思绪 15895289058 江苏 南京市 雨花台区 规划和斤斤计较', '', null, '', '0', 'ou8VTwtP7bAsgg_VjS6RL26-NbY0', '2016-10-16 18:40:08', '0', null);
INSERT INTO `tb_order` VALUES ('561', '67', '菲律宾大香蕉', '/chihaodian/../upload/1465723850965.png', null, '19.8', '1', '25.8', '1', '嘿嘿 18980581676 江苏 南京市 玄武区 好', '', null, '', '0', 'ou8VTwsfziZsGMXNyCMWVCtFRvak', '2016-10-19 15:50:20', '0', '');
INSERT INTO `tb_order` VALUES ('562', '76', '冬虫夏草（鲜草）', '/chihaodian/../upload/1466479517055.png', null, '3880.0', '10', '38800', '10', '俞忠鑫 15163190697 江苏 南京市 白下区 安宁', '', null, '', '0', 'ou8VTwjqR_GaTbEMnL_QAv5WQ8V4', '2016-10-20 01:39:48', '0', null);
INSERT INTO `tb_order` VALUES ('563', '66', '澳大利亚无籽红提', '/chihaodian/../upload/1465724148153.png', null, '21.9', '1', '27.9', '1', '看看 15856423685 江苏 南京市 玄武区 嗯嗯', '', null, '', '0', 'ou8VTwrN4op-MSU7n4rA5fV5EcKE', '2016-10-20 10:38:11', '0', '');
INSERT INTO `tb_order` VALUES ('564', '71', '生态黄金耳', '/chihaodian/../upload/1466474419051.png', null, '12.0', '1', '18', '1', '看看 15856423685 江苏 南京市 玄武区 嗯嗯', '', null, '', '0', 'ou8VTwrN4op-MSU7n4rA5fV5EcKE', '2016-10-21 11:53:42', '0', '');
INSERT INTO `tb_order` VALUES ('565', '78', '仙桃香粳米 50斤', '/chihaodian/../upload/1466818615476.png', null, '180.0', '1', '180', '1', '牛敏 12313155131 江苏 南京市 秦淮区 贴近', '', null, '', '0', 'ou8VTwhiWQROhAXw8ghU41ozsTwU', '2016-10-21 15:28:30', '0', null);
INSERT INTO `tb_order` VALUES ('566', '72', '新疆西州蜜', '/chihaodian/../upload/1465802535035.png', null, '39.8', '1', '45.8', '1', '郭耀歆 18120052915 江苏 苏州市 昆山市 1717', '', null, '', '0', 'ou8VTwk0U1f87cCyUDmUm0tC1i9M', '2016-10-22 18:27:30', '0', null);
INSERT INTO `tb_order` VALUES ('567', '72', '新疆西州蜜', '/chihaodian/../upload/1465802535035.png', null, '39.8', '1', '45.8', '1', '济阳 13810354792 江苏 南京市 秦淮区 啦咯啦咯看累了垃圾', '', null, '', '0', 'ou8VTwrBRhpyJ3VjkS1O4qKD46mw', '2016-10-23 12:18:49', '0', '');
INSERT INTO `tb_order` VALUES ('568', '69,-=70', '生态菜籽油,-=生态菜籽油', '/chihaodian/../upload/1465717197584.png,-=/chihaodian/../upload/1465718279680.png', null, '60.0,-=115.0', '1,-=1', '175', '2', '嘿嘿 18980581676 江苏 南京市 玄武区 好', '', null, '', '0', 'ou8VTwsfziZsGMXNyCMWVCtFRvak', '2016-10-23 14:54:23', '0', '');
INSERT INTO `tb_order` VALUES ('569', '55', '加拿大AAA级牛小排', '/chihaodian/../upload/1464316409415.png', null, '228.0', '1', '228', '1', '嘿嘿 18980581676 江苏 南京市 玄武区 好', '', null, '', '0', 'ou8VTwsfziZsGMXNyCMWVCtFRvak', '2016-10-26 12:15:06', '0', '');
INSERT INTO `tb_order` VALUES ('570', '72', '新疆西州蜜', '/chihaodian/../upload/1465802535035.png', null, '39.8', '1', '45.8', '1', '4111 2222222222 浙江 杭州市 拱墅区 哈哈哈', '', null, '', '0', 'ou8VTwqbP6sY2C6blaA0Vg7BvXrQ', '2016-10-27 12:30:43', '0', null);
INSERT INTO `tb_order` VALUES ('571', '40', '新西兰佳沛阳', '/chihaodian/../upload/1465724169981.png', null, '60.0', '1', '60', '1', '百战百胜吧 13732536976 江苏 南京市 市辖区 孩子说话', '', null, '', '0', 'ou8VTwpefG2kauXvtutM_ww6E03o', '2016-10-27 15:55:17', '0', null);
INSERT INTO `tb_order` VALUES ('572', '72', '新疆西州蜜', '/chihaodian/../upload/1465802535035.png', null, '39.8', '1', '45.8', '1', '百战百胜吧 13732536976 江苏 南京市 市辖区 孩子说话', '', null, '', '0', 'ou8VTwpefG2kauXvtutM_ww6E03o', '2016-10-27 16:00:49', '0', null);
INSERT INTO `tb_order` VALUES ('573', '54', '巴西原装翅中', '/chihaodian/../upload/1464316350243.png', null, '58.0', '1', '58', '1', '正在做 13811111111 江苏 南京市 白下区 108538258855', '', null, '', '0', 'ou8VTwqXTCPIlMeo3TYimLlrYU2A', '2016-10-28 15:34:15', '0', '');
INSERT INTO `tb_order` VALUES ('574', '66,-=56,-=58', '澳大利亚无籽红提,-=加拿大AAA板腱牛排,-=肥牛卷 透明托盒装', '/chihaodian/../upload/1465724148153.png,-=/chihaodian/../upload/1464319904220.png,-=/chihaodian/../upload/1464318053841.png', null, '21.9,-=89.0,-=59.0', '1,-=4,-=1', '436.9', '6', '法国就让乳房 13333333333 湖南 长沙市 芙蓉区 tyuhg', '', null, '', '0', 'ou8VTwvYwOYMgm0ossa390RPdLVI', '2016-10-29 20:53:58', '0', '');
INSERT INTO `tb_order` VALUES ('575', '66', '澳大利亚无籽红提', '/chihaodian/../upload/1465724148153.png', null, '21.9', '1', '27.9', '1', 'wwww 18210079780 江苏 南京市 市辖区 氢气球', '', null, '', '0', 'ou8VTwl3LM-CjVCDO64fbcJSVtsY', '2016-11-02 11:32:40', '0', null);
INSERT INTO `tb_order` VALUES ('576', '61', '台湾土鸡仔', '/chihaodian/../upload/1465887400031.png', null, '48.0', '1', '48', '1', '谢谢 15626028899 江苏 扬州市 郊　区 吃饭饭', '玄武区南京移动明故宫沟通100服务店', null, '', '0', 'ou8VTwp10jbngeWCWhJKHWxuQ-5I', '2016-11-03 17:01:52', '0', null);
INSERT INTO `tb_order` VALUES ('577', '61', '台湾土鸡仔', '/chihaodian/../upload/1465887400031.png', null, '48.0', '1', '48', '1', '谢谢 15626028899 江苏 扬州市 郊　区 吃饭饭', '玄武区南京移动明故宫沟通100服务店', null, '', '0', 'ou8VTwp10jbngeWCWhJKHWxuQ-5I', '2016-11-03 17:01:54', '0', null);
INSERT INTO `tb_order` VALUES ('578', '66', '澳大利亚无籽红提', '/chihaodian/../upload/1465724148153.png', null, '21.9', '1', '21.9', '1', '谢谢 15626028899 江苏 扬州市 郊　区 吃饭饭', '玄武区南京移动新庄指定专营店', null, '', '0', 'ou8VTwp10jbngeWCWhJKHWxuQ-5I', '2016-11-03 17:02:46', '0', null);
INSERT INTO `tb_order` VALUES ('579', '74', '冬虫夏草（鲜草）', '/chihaodian/../upload/1466479379008.png', null, '850.0', '1', '850', '1', '肖吐 13800000000 江苏 南京市 玄武区 V领酷我', '玄武区南京移动新庄指定专营店', null, '', '0', 'ou8VTwnjnL5K8tAIPFPGo4MDD9os', '2016-11-04 00:32:47', '0', null);
INSERT INTO `tb_order` VALUES ('580', '72', '新疆西州蜜', '/chihaodian/../upload/1465802535035.png', null, '39.8', '1', '45.8', '1', '沈龙 18676181261 广东 佛山市 顺德区 北滘', '', null, '', '0', 'ou8VTwp-Qn4YExm5uwH4c-dgOTSg', '2016-11-04 11:48:22', '0', null);
INSERT INTO `tb_order` VALUES ('581', '66', '澳大利亚无籽红提', '/chihaodian/../upload/1465724148153.png', null, '21.9', '1', '27.9', '1', '111 15151212114 江苏 南京市 市辖区 123', '', null, '', '0', 'ou8VTwoVbGuhH2GLGAjxjSywXPf0', '2016-11-04 12:02:04', '0', null);
INSERT INTO `tb_order` VALUES ('582', '21', '蔬菜会员半年卡', '/chihaodian/../upload/1465975865805.png', null, '2000.0', '1', '2000', '1', '沈龙 18676181261 广东 佛山市 顺德区 北滘', '', null, '', '0', 'ou8VTwp-Qn4YExm5uwH4c-dgOTSg', '2016-11-04 20:36:38', '0', null);
INSERT INTO `tb_order` VALUES ('583', '19', '蔬菜会员月卡', '/chihaodian/../upload/1465974795254.png', null, '360.0', '1', '360', '1', 'uiuugg 18643224998 江苏 南京市 玄武区 这种事情还是发生了变化和成长的路上我', '鼓楼区南京移动汉中门大街沟通100服务店', null, '', '0', 'ou8VTwuWpLPkwEuAnmdGreneXEnk', '2016-11-05 06:23:33', '0', null);
INSERT INTO `tb_order` VALUES ('584', '21,-=19', '蔬菜会员半年卡,-=蔬菜会员月卡', '/chihaodian/../upload/1465975865805.png,-=/chihaodian/../upload/1465974795254.png', null, '2000.0,-=360.0', '1,-=1', '2360', '2', '发反反复复 13760876988 江苏 南京市 玄武区 g h h h h h j', '', null, '', '0', 'ou8VTwusUEW3tdzUpHwr05p6aLpA', '2016-11-05 12:25:30', '0', '');
INSERT INTO `tb_order` VALUES ('585', '40', '新西兰佳沛阳', '/chihaodian/../upload/1465724169981.png', null, '60.0', '1', '56', '1', '发反反复复 13760876988 江苏 南京市 玄武区 g h h h h h j', '', '98', '新手优惠', '10', 'ou8VTwusUEW3tdzUpHwr05p6aLpA', '2016-11-05 12:42:29', '0', null);
INSERT INTO `tb_order` VALUES ('586', '21,-=39,-=61,-=19,-=72,-=67', '蔬菜会员半年卡,-=生态柔玉米,-=台湾土鸡仔,-=蔬菜会员月卡,-=新疆西州蜜,-=菲律宾大香蕉', '/chihaodian/../upload/1465975865805.png,-=/chihaodian/../upload/1466730801733.png,-=/chihaodian/../upload/1465887400031.png,-=/chihaodian/../upload/1465974795254.png,-=/chihaodian/../upload/1465802535035.png,-=/chihaodian/../upload/1465723850965.png', null, '2000.0,-=48.0,-=48.0,-=360.0,-=39.8,-=19.8', '1,-=1,-=1,-=1,-=1,-=1', '2515.6', '6', '发反反复复 13760876988 江苏 南京市 玄武区 g h h h h h j', '玄武区南京移动新庄指定专营店', null, '', '0', 'ou8VTwusUEW3tdzUpHwr05p6aLpA', '2016-11-05 12:45:01', '0', '');
INSERT INTO `tb_order` VALUES ('587', '61', '台湾土鸡仔', '/chihaodian/../upload/1465887400031.png', null, '48.0', '1', '54', '1', '陈 11111111111 江苏 南京市 玄武区 哈哈', '', null, '', '0', 'ou8VTwgNa3khqV-8T2LoVnmXF11Q', '2016-11-05 22:49:55', '0', '');
INSERT INTO `tb_order` VALUES ('588', '66', '澳大利亚无籽红提', '/chihaodian/../upload/1465724148153.png', null, '21.9', '2', '49.8', '2', '李超 13698732903 云南 昆明市 西山区 新闻路216号', '', null, '', '0', 'ou8VTwrXVM_Pq3OdVJ6SZHsiyUlE', '2016-11-07 23:50:00', '0', '');
INSERT INTO `tb_order` VALUES ('589', '66', '澳大利亚无籽红提', '/chihaodian/../upload/1465724148153.png', null, '21.9', '2', '49.8', '2', '李超 13698732903 云南 昆明市 西山区 新闻路216号', '', null, '', '0', 'ou8VTwrXVM_Pq3OdVJ6SZHsiyUlE', '2016-11-07 23:50:01', '0', '');
INSERT INTO `tb_order` VALUES ('590', '67', '菲律宾大香蕉', '/chihaodian/../upload/1465723850965.png', null, '19.8', '1', '25.8', '1', '李超 13698732903 云南 昆明市 西山区 新闻路216号', '', null, '', '0', 'ou8VTwrXVM_Pq3OdVJ6SZHsiyUlE', '2016-11-07 23:58:43', '0', '');
INSERT INTO `tb_order` VALUES ('591', '61', '台湾土鸡仔', '/chihaodian/../upload/1465887400031.png', null, '48.0', '1', '48', '1', '正在做 13811111111 江苏 南京市 白下区 108538258855', '鼓楼区南京移动汉中门大街沟通100服务店', null, '', '0', 'ou8VTwqXTCPIlMeo3TYimLlrYU2A', '2016-11-11 15:13:25', '0', null);
INSERT INTO `tb_order` VALUES ('592', '67', '菲律宾大香蕉', '/chihaodian/../upload/1465723850965.png', null, '19.8', '1', '15.8', '1', '娃娃 13815856582 江苏 南京市 玄武区 进1我1滴哦why移民一', '', '103', '新手优惠', '10', 'ou8VTwupTEPHJBs9dBRiBnmUKdKI', '2016-11-12 09:12:27', '0', null);
INSERT INTO `tb_order` VALUES ('593', '61', '台湾土鸡仔', '/chihaodian/../upload/1465887400031.png', null, '48.0', '1', '54', '1', '陈 11111111111 江苏 南京市 玄武区 哈哈', '', null, '', '0', 'ou8VTwgNa3khqV-8T2LoVnmXF11Q', '2016-11-14 22:30:55', '0', '');
INSERT INTO `tb_order` VALUES ('594', '72,-=61', '新疆西州蜜,-=台湾土鸡仔', '/chihaodian/../upload/1465802535035.png,-=/chihaodian/../upload/1465887400031.png', null, '39.8,-=48.0', '2,-=2', '175.6', '4', '陈 11111111111 江苏 南京市 玄武区 哈哈', '', null, '', '0', 'ou8VTwgNa3khqV-8T2LoVnmXF11Q', '2016-11-14 23:27:11', '0', '');
INSERT INTO `tb_order` VALUES ('595', '66', '澳大利亚无籽红提', '/chihaodian/../upload/1465724148153.png', null, '21.9', '1', '21.9', '1', '李明 13460688548 江苏 南京市 市辖区 可口可乐了可口可乐了', '鼓楼区南京移动汉中门大街沟通100服务店', null, '', '0', 'ou8VTwl3l6uGbY0EM4J817DkFCLU', '2016-11-15 11:06:05', '0', null);
INSERT INTO `tb_order` VALUES ('596', '72,-=67', '新疆西州蜜,-=菲律宾大香蕉', '/chihaodian/../upload/1465802535035.png,-=/chihaodian/../upload/1465723850965.png', null, '39.8,-=19.8', '1,-=1', '59.6', '2', '时间没 15914023551 江苏 南京市 秦淮区 流量偷懒调理', '', null, '', '0', 'ou8VTwqeX8pySxBZ2pukb1rMS1bI', '2016-11-15 23:34:25', '0', '');
INSERT INTO `tb_order` VALUES ('597', '77', '山竹', '/chihaodian/../upload/1466736000313.png', null, '0.1', '1', '0.1', '1', '测试 18819067178 江苏 南京市 玄武区 测试一下', '玄武区南京移动明故宫沟通100服务店', null, '', '0', 'ou8VTwvlcjYZS90t71g5dZJ1VwQ4', '2016-11-16 23:10:49', '0', '');
INSERT INTO `tb_order` VALUES ('598', '72', '新疆西州蜜', '/chihaodian/../upload/1465802535035.png', null, '39.8', '2', '79.6', '2', 'g h h h h h j 5555667888 江苏 南京市 白下区 g h g', '', null, '', '0', 'ou8VTwt5NriYWu5IffvxxdmUyPV0', '2016-11-17 17:24:30', '0', '');
INSERT INTO `tb_order` VALUES ('599', '78', '仙桃香粳米 50斤', '/chihaodian/../upload/1466818615476.png', null, '180.0', '1', '180', '1', '小伙伴 13898980198 江苏 南京市 白下区 绝对经典看看', '鼓楼区南京移动汉中门大街沟通100服务店', null, '', '0', 'ou8VTwsR0jPYrT5d5WyjJob5Yc4g', '2016-11-17 22:00:39', '0', '');
INSERT INTO `tb_order` VALUES ('600', '66,-=54', '澳大利亚无籽红提,-=巴西原装翅中', '/chihaodian/../upload/1465724148153.png,-=/chihaodian/../upload/1464316350243.png', null, '21.9,-=58.0', '1,-=1', '79.9', '2', '在！ 13538240895 江苏 南京市 玄武区 你？好', '', null, '', '0', 'ou8VTwnIPlReqwsTZKS4vpDIe350', '2016-11-17 23:13:23', '0', '');
INSERT INTO `tb_order` VALUES ('601', '68', '非转基因黄豆', '/chihaodian/../upload/1465701002059.png', null, '10.0', '1', '0', '1', '昌平 17415655785 江苏 南京市 秦淮区 点吧', '建邺区南京移动河西万达营业厅', '107', '新手优惠', '10', 'ou8VTwtaRjh60nRuE2Hj8rTztbho', '2016-11-18 02:02:20', '-5', '');
INSERT INTO `tb_order` VALUES ('602', '65', '妃子笑荔枝', '/chihaodian/../upload/1465723952090.png', null, '30.0', '1', '36', '1', 'test 13923870708 江苏 南京市 白下区 下沙会发路', '', null, '', '0', 'ou8VTwsRfl7lA6YAuBi7wb_I2NMs', '2016-11-19 16:47:09', '0', null);
INSERT INTO `tb_order` VALUES ('603', '65', '妃子笑荔枝', '/chihaodian/../upload/1465723952090.png', null, '30.0', '1', '36', '1', 'test 13923870708 江苏 南京市 白下区 下沙会发路', '', null, '', '0', 'ou8VTwsRfl7lA6YAuBi7wb_I2NMs', '2016-11-19 16:47:11', '0', null);
INSERT INTO `tb_order` VALUES ('604', '72', '新疆西州蜜', '/chihaodian/../upload/1465802535035.png', null, '39.8', '1', '45.8', '1', '萨顶顶 13909090909 江苏 南京市 玄武区 就收不到黄辉的', '', null, '', '0', 'ou8VTwkYbPARvzaRjo9tljYcd-KE', '2016-11-20 15:01:09', '0', '哈哈是不是');
INSERT INTO `tb_order` VALUES ('605', '61', '台湾土鸡仔', '/chihaodian/../upload/1465887400031.png', null, '48.0', '1', '54', '1', '哈哈镜 54.0 江苏 南京市 市辖区 好纠结123', '', null, '', '0', 'ou8VTwl1PtN-wuilfv9BEVCAnjCc', '2016-11-21 11:48:16', '0', '');
INSERT INTO `tb_order` VALUES ('606', '76', '冬虫夏草（鲜草）', '/chihaodian/../upload/1466479517055.png', null, '3880.0', '2', '7760', '2', '陈初 13430268282 江苏 南京市 玄武区 东风路1号', '', null, '', '0', 'ou8VTwn7v9ukn-pj2ewogKxJpeyk', '2016-11-21 18:37:39', '0', '');
INSERT INTO `tb_order` VALUES ('607', '23', '蔬菜会员年卡', '/chihaodian/../upload/1465976906449.png', null, '3600.0', '3', '10800', '3', '腊八 12345648912 江苏 南京市 秦淮区 比较', '', null, '', '0', 'ou8VTwor6u_RAjAo1JfGNlOOaAyc', '2016-11-21 23:13:21', '0', null);
INSERT INTO `tb_order` VALUES ('608', '23', '蔬菜会员年卡', '/chihaodian/../upload/1465976906449.png', null, '3600.0', '3', '10800', '3', '腊八 12345648912 江苏 南京市 秦淮区 比较', '', null, '', '0', 'ou8VTwor6u_RAjAo1JfGNlOOaAyc', '2016-11-21 23:13:24', '0', null);
INSERT INTO `tb_order` VALUES ('609', '77', '山竹', '/chihaodian/../upload/1466736000313.png', null, '0.1', '1', '6.1', '1', '腊八 12345648912 江苏 南京市 秦淮区 比较', '', null, '', '0', 'ou8VTwor6u_RAjAo1JfGNlOOaAyc', '2016-11-21 23:25:25', '0', null);
INSERT INTO `tb_order` VALUES ('610', '77', '山竹', '/chihaodian/../upload/1466736000313.png', null, '0.1', '1', '6.1', '1', '腊八 12345648912 江苏 南京市 秦淮区 比较', '', null, '', '0', 'ou8VTwor6u_RAjAo1JfGNlOOaAyc', '2016-11-21 23:25:29', '0', null);
INSERT INTO `tb_order` VALUES ('611', '77', '山竹', '/chihaodian/../upload/1466736000313.png', null, '0.1', '1', '6.1', '1', '腊八 12345648912 江苏 南京市 秦淮区 比较', '', null, '', '0', 'ou8VTwor6u_RAjAo1JfGNlOOaAyc', '2016-11-21 23:25:29', '0', null);
INSERT INTO `tb_order` VALUES ('612', '19', '蔬菜会员月卡', '/chihaodian/../upload/1465974795254.png', null, '360.0', '1', '360', '1', '徐 13544452227 江苏 南京市 市辖区 到到', '', null, '', '0', 'ou8VTwg-BlQa4CZOB2Ka4JBPXlS4', '2016-11-22 08:37:14', '0', '');
INSERT INTO `tb_order` VALUES ('613', '38', '有机葡聚糖胚芽米', '/chihaodian/../upload/1464165453285.png', null, '228.0', '1', '228', '1', '测试 12345678901 江苏 南京市 秦淮区 测试', '鼓楼区南京移动中央北路指定专营店', null, '', '0', 'ou8VTwihkxJm9ZYe_FXTFi6lwPaY', '2016-11-24 07:08:26', '0', '');
INSERT INTO `tb_order` VALUES ('614', '38', '有机葡聚糖胚芽米', '/chihaodian/../upload/1464165453285.png', null, '228.0', '1', '228', '1', '测试 12345678901 江苏 南京市 秦淮区 测试', '鼓楼区南京移动中央北路指定专营店', null, '', '0', 'ou8VTwihkxJm9ZYe_FXTFi6lwPaY', '2016-11-24 07:08:27', '0', '');
INSERT INTO `tb_order` VALUES ('615', '79,-=77,-=72,-=67', '商品测试,-=山竹,-=新疆西州蜜,-=菲律宾大香蕉', 'http://localhost:8080/upload/1474343819028.png,-=/chihaodian/../upload/1466736000313.png,-=/chihaodian/../upload/1465802535035.png,-=/chihaodian/../upload/1465723850965.png', null, '1.0,-=0.1,-=39.8,-=19.8', '1,-=1,-=1,-=1', '60.7', '4', '孙鹏 15551198902 江苏 南京市 市辖区 1234567988555', '', null, '', '0', 'ou8VTwvdeCe_WF5F_V18ZFDftFNg', '2016-11-25 11:18:35', '0', '');
INSERT INTO `tb_order` VALUES ('616', '36,-=25,-=77,-=66', '越南红心火龙果,-=新疆库尔勒香梨,-=山竹,-=澳大利亚无籽红提', '/chihaodian/../upload/1463473711206.png,-=/chihaodian/../upload/1463109011535.png,-=/chihaodian/../upload/1466736000313.png,-=/chihaodian/../upload/1465724148153.png', null, '20.0,-=25.8,-=0.1,-=21.9', '1,-=1,-=1,-=1', '67.8', '4', '呵呵呵 13128808042 江苏 南京市 白下区 呵呵', '', null, '', '0', 'ou8VTwp8MZyN9I0l-89C9nwlGifA', '2016-11-25 17:00:12', '0', '');
INSERT INTO `tb_order` VALUES ('617', '54', '巴西原装翅中', '/chihaodian/../upload/1464316350243.png', null, '58.0', '1', '58', '1', 'hdje 13051917654 吉林 延边朝鲜族自治州 图们市 bdjehshsh', '鼓楼区南京移动汉中门大街沟通100服务店', null, '', '0', 'ou8VTwsapaLt2qiTw6rk8PNpWXAA', '2016-11-26 15:51:07', '0', '');
INSERT INTO `tb_order` VALUES ('618', '72', '新疆西州蜜', '/chihaodian/../upload/1465802535035.png', null, '39.8', '2', '79.6', '2', '李涛涛 15295063375 江苏 南京市 江宁区 南京大学', '', null, '', '0', 'ou8VTwumv0a3ftwmieTR_XoOGHp8', '2016-11-26 19:56:27', '0', '');
INSERT INTO `tb_order` VALUES ('619', '72', '新疆西州蜜', '/chihaodian/../upload/1465802535035.png', null, '39.8', '1', '45.8', '1', '哈哈 13184222222 江苏 南京市 市辖区 4444', '', null, '', '0', 'ou8VTwn85kT1eSZmL2Lz7RmXZo10', '2016-11-26 20:13:35', '0', '');
INSERT INTO `tb_order` VALUES ('620', '56', '加拿大AAA板腱牛排', '/chihaodian/../upload/1464319904220.png', null, '89.0', '1', '79', '1', '来了就 15295063232 江苏 南京市 市辖区 记录贴', '', '111', '新手优惠', '10', 'ou8VTwumv0a3ftwmieTR_XoOGHp8', '2016-11-26 22:54:17', '0', null);
INSERT INTO `tb_order` VALUES ('621', '67', '菲律宾大香蕉', '/chihaodian/../upload/1465723850965.png', null, '19.8', '1', '19.8', '1', '谢谢 15626028899 江苏 扬州市 郊　区 吃饭饭', '玄武区南京移动新庄指定专营店', null, '', '0', 'ou8VTwp10jbngeWCWhJKHWxuQ-5I', '2016-11-28 09:03:16', '0', '');
INSERT INTO `tb_order` VALUES ('622', '69', '生态菜籽油', '/chihaodian/../upload/1465717197584.png', null, '60.0', '1', '60', '1', '谢谢 15626028899 江苏 扬州市 郊　区 吃饭饭', '', null, '', '0', 'ou8VTwp10jbngeWCWhJKHWxuQ-5I', '2016-11-28 10:15:36', '0', null);
INSERT INTO `tb_order` VALUES ('623', '69', '生态菜籽油', '/chihaodian/../upload/1465717197584.png', null, '60.0', '1', '60', '1', '谢谢 15626028899 江苏 扬州市 郊　区 吃饭饭', '', null, '', '0', 'ou8VTwp10jbngeWCWhJKHWxuQ-5I', '2016-11-28 10:15:43', '0', null);
INSERT INTO `tb_order` VALUES ('624', '80', '小美合作', 'http://www.7haodian.cc/upload/1480302637630.png', null, '0.1', '1', '0.1', '1', '啦啦啦 15623028092 江苏 南京市 玄武区 健健康康', '秦淮区南京移动火瓦巷指定专营店', null, '', '0', 'ou8VTwoQa1RZRIy7OgEicEENwWrI', '2016-11-28 11:15:52', '0', null);
INSERT INTO `tb_order` VALUES ('625', '80', '小美合作', 'http://www.7haodian.cc/upload/1480302637630.png', null, '0.1', '1', '0.1', '1', '啦啦啦 15623028092 江苏 南京市 玄武区 健健康康', '秦淮区南京移动火瓦巷指定专营店', null, '', '0', 'ou8VTwoQa1RZRIy7OgEicEENwWrI', '2016-11-28 11:16:56', '0', null);
INSERT INTO `tb_order` VALUES ('626', '80', '小美合作', 'http://www.7haodian.cc/upload/1480302637630.png', null, '0.1', '1', '0.1', '1', '啦啦啦 15623028092 江苏 南京市 玄武区 健健康康', '秦淮区南京移动火瓦巷指定专营店', null, '', '0', 'ou8VTwoQa1RZRIy7OgEicEENwWrI', '2016-11-28 15:18:25', '2', null);
INSERT INTO `tb_order` VALUES ('627', '66', '澳大利亚无籽红提', '/chihaodian/../upload/1465724148153.png', null, '21.9', '1', '27.9', '1', 'g h h 13800138000 江苏 南京市 白下区 12号', '', null, '', '0', 'ou8VTwuGDs7y4UC6ny-gZiLE_kzY', '2016-11-28 18:50:57', '0', null);
INSERT INTO `tb_order` VALUES ('628', '21', '蔬菜会员半年卡', '/chihaodian/../upload/1465975865805.png', null, '2000.0', '1', '2000', '1', '112 11111111111 江苏 南京市 白下区 哦送你们', '', null, '', '0', 'ou8VTwluWTmRDqllWBNY-z08ADSQ', '2016-11-29 17:37:46', '0', null);
INSERT INTO `tb_order` VALUES ('629', '21', '蔬菜会员半年卡', '/chihaodian/../upload/1465975865805.png', null, '2000.0', '1', '2000', '1', '112 11111111111 江苏 南京市 白下区 哦送你们', '', null, '', '0', 'ou8VTwluWTmRDqllWBNY-z08ADSQ', '2016-11-29 17:37:47', '0', null);
INSERT INTO `tb_order` VALUES ('630', '40', '新西兰佳沛阳', '/chihaodian/../upload/1465724169981.png', null, '60.0', '3', '180', '3', '啊啊啊 11111111111 广东 深圳市 龙岗区 巴拉巴', '', null, '', '0', 'ou8VTwmaNXULaYHc8jHbO1aeDdPY', '2016-11-30 18:58:38', '0', '');
INSERT INTO `tb_order` VALUES ('631', '77', '山竹', '/chihaodian/../upload/1466736000313.png', null, '0.1', '1', '6.1', '1', 'zzm 12456677543 江苏 南京市 玄武区 让他', '', null, '', '0', 'ou8VTwo3TLbHyAj5y_GiqaIKZD3c', '2016-12-05 12:15:33', '0', '');
INSERT INTO `tb_order` VALUES ('632', '21', '蔬菜会员半年卡', '/chihaodian/../upload/1465975865805.png', null, '2000.0', '1', '2000', '1', '1 111111111111 江苏 南京市 市辖区 摸摸摸哦哦', '', null, '', '0', 'ou8VTwsKzF4rScQcxpHaNrF8ehMo', '2016-12-05 22:44:15', '0', '');
INSERT INTO `tb_order` VALUES ('633', '67', '菲律宾大香蕉', '/chihaodian/../upload/1465723850965.png', null, '19.8', '1', '25.8', '1', '刘军伟 18539299635 河南 郑州市 管城回族区 橡树玫瑰城', '', null, '', '0', 'ou8VTwtCk47MJ8xcFlgTyOSEMBHU', '2016-12-05 23:37:37', '0', null);
INSERT INTO `tb_order` VALUES ('634', '66', '澳大利亚无籽红提', '/chihaodian/../upload/1465724148153.png', null, '21.9', '1', '27.9', '1', '刘军伟 18539299635 河南 郑州市 管城回族区 橡树玫瑰城', '', null, '', '0', 'ou8VTwtCk47MJ8xcFlgTyOSEMBHU', '2016-12-05 23:38:32', '0', null);
INSERT INTO `tb_order` VALUES ('635', '66', '澳大利亚无籽红提', '/chihaodian/../upload/1465724148153.png', null, '21.9', '1', '27.9', '1', '刘军伟 18539299635 河南 郑州市 管城回族区 橡树玫瑰城', '', null, '', '0', 'ou8VTwtCk47MJ8xcFlgTyOSEMBHU', '2016-12-05 23:38:33', '0', null);
INSERT INTO `tb_order` VALUES ('636', '65', '妃子笑荔枝', '/chihaodian/../upload/1465723952090.png', null, '30.0', '1', '36', '1', '杨杭富 15981763995 江苏 无锡市 市辖区 股海护航哈', '', null, '', '0', 'ou8VTwsimQEiB9EsTxFSM8od0ung', '2016-12-06 11:42:48', '0', null);
INSERT INTO `tb_order` VALUES ('637', '40', '新西兰佳沛阳', '/chihaodian/../upload/1465724169981.png', null, '60.0', '1', '60', '1', '黄生 18673002816 江苏 南京市 白下区 1号', '', null, '', '0', 'ou8VTwt3hOSd59Rqq7HjbXNN4wbQ', '2016-12-07 18:39:17', '0', '');
INSERT INTO `tb_order` VALUES ('638', '40', '新西兰佳沛阳', '/chihaodian/../upload/1465724169981.png', null, '60.0', '1', '60', '1', '黄生 18673002816 江苏 南京市 白下区 1号', '', null, '', '0', 'ou8VTwt3hOSd59Rqq7HjbXNN4wbQ', '2016-12-07 18:39:20', '0', '');
INSERT INTO `tb_order` VALUES ('639', '77', '山竹', '/chihaodian/../upload/1466736000313.png', null, '0.1', '1', '0.1', '1', '王先生 18773000370 湖南 岳阳市 岳阳楼区 岳阳电大', '玄武区南京移动明故宫沟通100服务店', null, '', '0', 'ou8VTwkYfbPjT64INDLsNZcnMiMo', '2016-12-08 09:12:33', '0', '');
INSERT INTO `tb_order` VALUES ('640', '77', '山竹', '/chihaodian/../upload/1466736000313.png', null, '0.1', '1', '0.1', '1', '王先生 18773000370 湖南 岳阳市 岳阳楼区 岳阳电大', '玄武区南京移动明故宫沟通100服务店', null, '', '0', 'ou8VTwkYfbPjT64INDLsNZcnMiMo', '2016-12-08 09:14:12', '0', null);
INSERT INTO `tb_order` VALUES ('641', '77', '山竹', '/chihaodian/../upload/1466736000313.png', null, '0.1', '1', '0.1', '1', '王先生 18773000370 湖南 岳阳市 岳阳楼区 岳阳电大', '鼓楼区南京移动汉中门大街沟通100服务店', null, '', '0', 'ou8VTwkYfbPjT64INDLsNZcnMiMo', '2016-12-08 10:04:01', '1', null);
INSERT INTO `tb_order` VALUES ('642', '66', '澳大利亚无籽红提', '/chihaodian/../upload/1465724148153.png', null, '21.9', '1', '27.9', '1', '过敏 1122334456 江苏 徐州市 邳州市 你明明', '', null, '', '0', 'ou8VTwneV2yYX3fistDWn2YUPpAo', '2016-12-08 11:02:55', '0', null);
INSERT INTO `tb_order` VALUES ('643', '66', '澳大利亚无籽红提', '/chihaodian/../upload/1465724148153.png', null, '21.9', '1', '27.9', '1', '过敏 1122334456 江苏 徐州市 邳州市 你明明', '', null, '', '0', 'ou8VTwneV2yYX3fistDWn2YUPpAo', '2016-12-08 11:02:55', '0', null);
INSERT INTO `tb_order` VALUES ('644', '66', '澳大利亚无籽红提', '/chihaodian/../upload/1465724148153.png', null, '21.9', '1', '27.9', '1', '过敏 1122334456 江苏 徐州市 邳州市 你明明', '', null, '', '0', 'ou8VTwneV2yYX3fistDWn2YUPpAo', '2016-12-08 11:02:56', '0', null);
INSERT INTO `tb_order` VALUES ('645', '66', '澳大利亚无籽红提', '/chihaodian/../upload/1465724148153.png', null, '21.9', '1', '27.9', '1', '过敏 1122334456 江苏 徐州市 邳州市 你明明', '', null, '', '0', 'ou8VTwneV2yYX3fistDWn2YUPpAo', '2016-12-08 11:02:56', '0', null);
INSERT INTO `tb_order` VALUES ('646', '66', '澳大利亚无籽红提', '/chihaodian/../upload/1465724148153.png', null, '21.9', '1', '27.9', '1', '过敏 1122334456 江苏 徐州市 邳州市 你明明', '', null, '', '0', 'ou8VTwneV2yYX3fistDWn2YUPpAo', '2016-12-08 11:02:56', '0', null);
INSERT INTO `tb_order` VALUES ('647', '66', '澳大利亚无籽红提', '/chihaodian/../upload/1465724148153.png', null, '21.9', '1', '27.9', '1', '过敏 1122334456 江苏 徐州市 邳州市 你明明', '', null, '', '0', 'ou8VTwneV2yYX3fistDWn2YUPpAo', '2016-12-08 11:02:56', '0', null);
INSERT INTO `tb_order` VALUES ('648', '66', '澳大利亚无籽红提', '/chihaodian/../upload/1465724148153.png', null, '21.9', '1', '27.9', '1', '过敏 1122334456 江苏 徐州市 邳州市 你明明', '', null, '', '0', 'ou8VTwneV2yYX3fistDWn2YUPpAo', '2016-12-08 11:02:56', '0', null);
INSERT INTO `tb_order` VALUES ('649', '66', '澳大利亚无籽红提', '/chihaodian/../upload/1465724148153.png', null, '21.9', '1', '27.9', '1', '过敏 1122334456 江苏 徐州市 邳州市 你明明', '', null, '', '0', 'ou8VTwneV2yYX3fistDWn2YUPpAo', '2016-12-08 11:02:56', '0', null);
INSERT INTO `tb_order` VALUES ('650', '66', '澳大利亚无籽红提', '/chihaodian/../upload/1465724148153.png', null, '21.9', '1', '27.9', '1', '过敏 1122334456 江苏 徐州市 邳州市 你明明', '', null, '', '0', 'ou8VTwneV2yYX3fistDWn2YUPpAo', '2016-12-08 11:02:56', '0', null);
INSERT INTO `tb_order` VALUES ('651', '66', '澳大利亚无籽红提', '/chihaodian/../upload/1465724148153.png', null, '21.9', '1', '27.9', '1', '过敏 1122334456 江苏 徐州市 邳州市 你明明', '', null, '', '0', 'ou8VTwneV2yYX3fistDWn2YUPpAo', '2016-12-08 11:02:56', '0', null);
INSERT INTO `tb_order` VALUES ('652', '66', '澳大利亚无籽红提', '/chihaodian/../upload/1465724148153.png', null, '21.9', '1', '27.9', '1', '过敏 1122334456 江苏 徐州市 邳州市 你明明', '', null, '', '0', 'ou8VTwneV2yYX3fistDWn2YUPpAo', '2016-12-08 11:02:56', '0', null);
INSERT INTO `tb_order` VALUES ('653', '66', '澳大利亚无籽红提', '/chihaodian/../upload/1465724148153.png', null, '21.9', '1', '27.9', '1', '过敏 1122334456 江苏 徐州市 邳州市 你明明', '', null, '', '0', 'ou8VTwneV2yYX3fistDWn2YUPpAo', '2016-12-08 11:02:56', '0', null);
INSERT INTO `tb_order` VALUES ('654', '66', '澳大利亚无籽红提', '/chihaodian/../upload/1465724148153.png', null, '21.9', '1', '27.9', '1', '过敏 1122334456 江苏 徐州市 邳州市 你明明', '', null, '', '0', 'ou8VTwneV2yYX3fistDWn2YUPpAo', '2016-12-08 11:02:57', '0', null);
INSERT INTO `tb_order` VALUES ('655', '66', '澳大利亚无籽红提', '/chihaodian/../upload/1465724148153.png', null, '21.9', '1', '27.9', '1', '过敏 1122334456 江苏 徐州市 邳州市 你明明', '', null, '', '0', 'ou8VTwneV2yYX3fistDWn2YUPpAo', '2016-12-08 11:03:34', '0', null);
INSERT INTO `tb_order` VALUES ('656', '61', '台湾土鸡仔', '/chihaodian/../upload/1465887400031.png', null, '48.0', '1', '48', '1', '过敏 1122334456 江苏 徐州市 邳州市 你明明', '鼓楼区南京移动清凉门大街手机卖场', null, '', '0', 'ou8VTwneV2yYX3fistDWn2YUPpAo', '2016-12-08 11:07:19', '0', null);
INSERT INTO `tb_order` VALUES ('657', '77', '山竹', '/chihaodian/../upload/1466736000313.png', null, '0.1', '1', '6.1', '1', '过敏 1122334456 江苏 徐州市 邳州市 你明明', '', null, '', '0', 'ou8VTwneV2yYX3fistDWn2YUPpAo', '2016-12-08 11:08:38', '0', null);
INSERT INTO `tb_order` VALUES ('658', '77', '山竹', '/chihaodian/../upload/1466736000313.png', null, '0.1', '1', '0.1', '1', '过敏 1122334456 江苏 徐州市 邳州市 你明明', '鼓楼区南京移动清凉门大街手机卖场', null, '', '0', 'ou8VTwneV2yYX3fistDWn2YUPpAo', '2016-12-08 11:10:28', '0', null);
INSERT INTO `tb_order` VALUES ('659', '77', '山竹', '/chihaodian/../upload/1466736000313.png', null, '0.1', '1', '0.1', '1', '过敏 1122334456 江苏 徐州市 邳州市 你明明', '鼓楼区南京移动清凉门大街手机卖场', null, '', '0', 'ou8VTwneV2yYX3fistDWn2YUPpAo', '2016-12-08 11:10:28', '0', null);
INSERT INTO `tb_order` VALUES ('660', '77', '山竹', '/chihaodian/../upload/1466736000313.png', null, '0.1', '1', '0.1', '1', '过敏 1122334456 江苏 徐州市 邳州市 你明明', '鼓楼区南京移动汉中门大街沟通100服务店', null, '', '0', 'ou8VTwneV2yYX3fistDWn2YUPpAo', '2016-12-08 11:14:11', '0', null);
INSERT INTO `tb_order` VALUES ('661', '77', '山竹', '/chihaodian/../upload/1466736000313.png', null, '0.1', '1', '0.1', '1', '过敏 1122334456 江苏 徐州市 邳州市 你明明', '鼓楼区南京移动汉中门大街沟通100服务店', null, '', '0', 'ou8VTwneV2yYX3fistDWn2YUPpAo', '2016-12-08 11:14:13', '0', null);
INSERT INTO `tb_order` VALUES ('662', '77', '山竹', '/chihaodian/../upload/1466736000313.png', null, '0.1', '1', '0.1', '1', '123 1123456789 江苏 南京市 玄武区 你猜', '鼓楼区南京移动汉中门大街沟通100服务店', null, '', '0', 'ou8VTwugFUqywpELAP4xCuy6BfLA', '2016-12-08 11:16:59', '0', null);
INSERT INTO `tb_order` VALUES ('663', '77', '山竹', '/chihaodian/../upload/1466736000313.png', null, '0.1', '1', '0.1', '1', '123 1123456789 江苏 南京市 玄武区 你猜', '鼓楼区南京移动汉中门大街沟通100服务店', null, '', '0', 'ou8VTwugFUqywpELAP4xCuy6BfLA', '2016-12-08 11:17:00', '0', null);
INSERT INTO `tb_order` VALUES ('664', '77', '山竹', '/chihaodian/../upload/1466736000313.png', null, '0.1', '1', '0.1', '1', '过敏 1122334456 江苏 徐州市 邳州市 你明明', '鼓楼区南京移动汉中门大街沟通100服务店', null, '', '0', 'ou8VTwneV2yYX3fistDWn2YUPpAo', '2016-12-08 11:22:57', '0', null);
INSERT INTO `tb_order` VALUES ('665', '77', '山竹', '/chihaodian/../upload/1466736000313.png', null, '0.1', '1', '0.1', '1', '过敏 1122334456 江苏 徐州市 邳州市 你明明', '鼓楼区南京移动汉中门大街沟通100服务店', null, '', '0', 'ou8VTwneV2yYX3fistDWn2YUPpAo', '2016-12-08 11:22:58', '0', null);
INSERT INTO `tb_order` VALUES ('666', '77', '山竹', '/chihaodian/../upload/1466736000313.png', null, '0.1', '1', '0.1', '1', '过敏 1122334456 江苏 徐州市 邳州市 你明明', '鼓楼区南京移动汉中门大街沟通100服务店', null, '', '0', 'ou8VTwneV2yYX3fistDWn2YUPpAo', '2016-12-08 11:22:59', '0', null);
INSERT INTO `tb_order` VALUES ('667', '77', '山竹', '/chihaodian/../upload/1466736000313.png', null, '0.1', '1', '0.1', '1', '过敏 1122334456 江苏 徐州市 邳州市 你明明', '鼓楼区南京移动汉中门大街沟通100服务店', null, '', '0', 'ou8VTwneV2yYX3fistDWn2YUPpAo', '2016-12-08 11:22:59', '0', null);
INSERT INTO `tb_order` VALUES ('668', '77', '山竹', '/chihaodian/../upload/1466736000313.png', null, '0.1', '1', '0.1', '1', '过敏 1122334456 江苏 徐州市 邳州市 你明明', '鼓楼区南京移动汉中门大街沟通100服务店', null, '', '0', 'ou8VTwneV2yYX3fistDWn2YUPpAo', '2016-12-08 14:01:49', '0', null);
INSERT INTO `tb_order` VALUES ('669', '79', '商品测试', 'http://localhost:8080/upload/1474343819028.png', null, '1.0', '1', '1', '1', '过敏 1122334456 江苏 徐州市 邳州市 你明明', '鼓楼区南京移动汉中门大街沟通100服务店', null, '', '0', 'ou8VTwneV2yYX3fistDWn2YUPpAo', '2016-12-08 14:03:53', '0', null);
INSERT INTO `tb_order` VALUES ('670', '79', '商品测试', 'http://localhost:8080/upload/1474343819028.png', null, '1.0', '1', '1', '1', '过敏 1122334456 江苏 徐州市 邳州市 你明明', '鼓楼区南京移动汉中门大街沟通100服务店', null, '', '0', 'ou8VTwneV2yYX3fistDWn2YUPpAo', '2016-12-08 14:03:55', '0', null);
INSERT INTO `tb_order` VALUES ('671', '79', '商品测试', 'http://localhost:8080/upload/1474343819028.png', null, '1.0', '1', '1', '1', '过敏 1122334456 江苏 徐州市 邳州市 你明明', '鼓楼区南京移动汉中门大街沟通100服务店', null, '', '0', 'ou8VTwneV2yYX3fistDWn2YUPpAo', '2016-12-08 14:03:56', '0', null);
INSERT INTO `tb_order` VALUES ('672', '77', '山竹', '/chihaodian/../upload/1466736000313.png', null, '0.1', '4', '0.4', '4', '过敏 1122334456 江苏 徐州市 邳州市 你明明', '鼓楼区南京移动汉中门大街沟通100服务店', null, '', '0', 'ou8VTwneV2yYX3fistDWn2YUPpAo', '2016-12-08 14:14:21', '0', null);
INSERT INTO `tb_order` VALUES ('673', '77', '山竹', '/chihaodian/../upload/1466736000313.png', null, '0.1', '4', '0.4', '4', '过敏 1122334456 江苏 徐州市 邳州市 你明明', '鼓楼区南京移动汉中门大街沟通100服务店', null, '', '0', 'ou8VTwneV2yYX3fistDWn2YUPpAo', '2016-12-08 14:14:22', '0', null);
INSERT INTO `tb_order` VALUES ('674', '72', '新疆西州蜜', '/chihaodian/../upload/1465802535035.png', null, '39.8', '1', '45.8', '1', '邹元凯 18615595642 江苏 南京市 下关区 积极叽叽叽叽集体', '', null, '', '0', 'ou8VTwiXqAeu9XyyRH0ZyLuD5D-g', '2016-12-08 14:37:40', '0', null);
INSERT INTO `tb_order` VALUES ('675', '77', '山竹', '/chihaodian/../upload/1466736000313.png', null, '0.1', '1', '0.1', '1', '邹元凯 18615595642 江苏 南京市 下关区 积极叽叽叽叽集体', '玄武区南京移动新庄指定专营店', null, '', '0', 'ou8VTwiXqAeu9XyyRH0ZyLuD5D-g', '2016-12-08 14:46:27', '0', '');

-- ----------------------------
-- Table structure for `tb_order2`
-- ----------------------------
DROP TABLE IF EXISTS `tb_order2`;
CREATE TABLE `tb_order2` (
  `ord_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) DEFAULT NULL,
  `goods_name` varchar(255) DEFAULT NULL,
  `goods_price` float DEFAULT NULL,
  `goods_num` int(11) DEFAULT NULL,
  `cps_id` int(11) DEFAULT NULL COMMENT '优惠券id、',
  `cps_name` varchar(255) DEFAULT NULL COMMENT '优惠券名称',
  `cps_price` float DEFAULT NULL COMMENT '优惠券价格',
  `goods_total` float DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`ord_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_order2
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_search`
-- ----------------------------
DROP TABLE IF EXISTS `tb_search`;
CREATE TABLE `tb_search` (
  `sec_id` int(11) NOT NULL AUTO_INCREMENT,
  `sec_name` varchar(255) DEFAULT NULL,
  `sort` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`sec_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_search
-- ----------------------------
INSERT INTO `tb_search` VALUES ('1', '香蕉1', '1', '0');
INSERT INTO `tb_search` VALUES ('2', '苹果', '2', '1');
INSERT INTO `tb_search` VALUES ('3', '红标鸡', '0', '1');
INSERT INTO `tb_search` VALUES ('4', '香稻米', '0', '1');
INSERT INTO `tb_search` VALUES ('5', '土鸡蛋', '0', '1');
INSERT INTO `tb_search` VALUES ('6', '蔬菜卡', '0', '1');

-- ----------------------------
-- Table structure for `tb_user`
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `oppen_id` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL COMMENT '账号手机号',
  `realname` varchar(255) DEFAULT NULL COMMENT '昵称',
  `password` varchar(255) DEFAULT NULL,
  `head_img` varchar(255) DEFAULT NULL,
  `add_time` varchar(255) DEFAULT NULL,
  `area_id` int(11) DEFAULT NULL,
  `area_name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `member_time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`,`oppen_id`)
) ENGINE=InnoDB AUTO_INCREMENT=403 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('4', 'oyqTtw3DsY4PXg1wVFfQp8ewOKh8', '', null, null, null, '2016-04-11', '37', '鼓楼2', '1', null);
INSERT INTO `tb_user` VALUES ('5', 'oyqTtw2gjY17ntKIyba_i48EB26A', '', '尹翔', null, 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLDr5ibdIjO4rX8U4UDVE3Xf1WFAPcYw5Xqzd3phekO1be8j8fCjku6CVwvKkS3iaN9v8Q5uU3iauOdpA/0', '2016-04-11', '36', '南京汉中门大街沟通100服务店', '1', '');
INSERT INTO `tb_user` VALUES ('6', 'oyqTtw0g_Gc4YlHlUAUGnx6Gft90', '', 'changzhenwei', null, 'http://wx.qlogo.cn/mmopen/GEicHjw6yAoausj0bjjZeLEb7ib78No0HnFF2wEXaVnicBMwOvmeVFxuy4hOlSCjXLeeia42glF84mMCibmrW0ebM6TgCUqYB8nJb/0', '2016-04-13', '39', '玄武区1', '1', '');
INSERT INTO `tb_user` VALUES ('8', 'oyqTtwxQ7MQgfoqMwVd8mj03MyQQ', '', null, null, null, '2016-04-20', '36', '鼓楼1', '1', null);
INSERT INTO `tb_user` VALUES ('9', 'oyqTtw96SNP2q4ZZxcnIuVj7sYNk', '', '阿朱', null, 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLD94uicFLQ9Dmt6icfGDoop5lxH9sdiaLs3xocHC9wOhzddYTZ0T7K1fBTicN4rrGDpUclTJCuXia21ofHW2eFjer6O77A3HFWMn3bE/0', '2016-04-26', '39', '玄武区1', '1', '2016-05-25');
INSERT INTO `tb_user` VALUES ('10', 'oyqTtw1HH95lrkd5GJwqusVT6z5A', '', null, null, null, '2016-04-29', '36', '鼓楼1', '1', null);
INSERT INTO `tb_user` VALUES ('11', 'oyqTtw8UGbJh7XLMr1s5tSLrC2io', '', '乀_-Sherry', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKMrkYDpIGuCxlZVicEmK4Jz87E2pGelZ0uxP1WoMotQI70mnPuF1ib3p2jRSeWHLBpXreqFibDqLDMpAM0qPFKRx15/0', '2016-05-06', '36', '鼓楼1', '1', null);
INSERT INTO `tb_user` VALUES ('12', 'oyqTtw_d252V55C89XiqmkGrRpHM', '', 'Rosarin*', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKMrkYDpIGuCxmAAsZZI5Sr26AaDeyveYrGMTM5omicPsJp3zEuE7kj2tqBbHBSlyF54XvA2ArrEq90Aqb6ENEicd1/0', '2016-05-06', '36', '鼓楼1', '1', null);
INSERT INTO `tb_user` VALUES ('13', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '', 'wum', null, 'http://wx.qlogo.cn/mmopen/iahdQicCC5VBSCGg65m04jn0aoSDNlW4dEib1Cmy66JZfon7BW6gtc1yBldTU7JDRe5SDcib90otODEJ9JqOQNjMaRpyAcSvf9Us/0', '2016-05-06', '36', '南京汉中门大街沟通100服务店', '1', '2016-06-08');
INSERT INTO `tb_user` VALUES ('14', 'oyqTtw3i2cte30LSHsGrXAkXVxqE', '', null, null, null, '2016-05-10', '42', '南京升州路营业厅', '1', null);
INSERT INTO `tb_user` VALUES ('15', 'oyqTtwzgJl31fSxOeeyny-ASSYQ4', '', null, null, null, '2016-05-16', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('16', 'oyqTtw1A-aDwocImx_r01EG0MioY', '', null, null, null, '2016-05-19', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('17', 'oyqTtw_dPj4Ne9iKxO-S2uK9tGkE', '', '吃号店大掌柜', null, 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM5ia4wIuzuiaszUibU71nMDFjfxUzjmbxhzb6kmuoYxlLVPInRJ9saE6q3iabEibvs37iaT9icuy4FwKXW9Q/0', '2016-05-23', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('18', 'oyqTtw3UjQfx_MINSCnQXbmAPqpY', '', null, null, null, '2016-05-23', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('19', 'oyqTtw3qfVPOKbbdt6v1hHiTVF1U', '', null, null, null, '2016-05-23', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('20', 'oyqTtw1TyV2TRmTIVeF1Z3R3wqaw', '', '胡哥', null, 'http://wx.qlogo.cn/mmopen/iahdQicCC5VBSCGg65m04jn1yvHVIibexDJjcVXqicSmmWpyOuxw5Xiahuyia6c6icScfsDBv5PI6iaEBm3t9mmXKUHYMibHyUstBRgaib/0', '2016-05-24', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('21', 'oyqTtw_8nBavm1j7aPJwKlic_oqw', '', '夏日凉橙', null, 'http://wx.qlogo.cn/mmopen/Fz6VicuJux6Gan5ZFWR65QlCS2lTGv7F7gA9B1NXiazYWSb8Pz6X1BYAycGE0lRCSDJnMiasNbxqVty4xRC5Mkpc07QAKoWNXGv/0', '2016-05-24', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('22', 'oyqTtwwPQXjq5CcUhNuDg-LMzN1A', '', '勐子', null, 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM490yIClsWPyNYHLA0BQOR4Sk7icB9Snic1ZNwdSkZp0YMkq6PCx4ujHwMibcJkuWqmuWJOdwnU1nWJqsLIye0IRdiavKxcXAOr1yo/0', '2016-05-24', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('23', 'oyqTtw0mBWl6V0bqU-xD5-_vzuiY', '', '陈雪成', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKMrkYDpIGuCxsS1YN5OIQEFzm4TekpwnYJdnMaaPicy0gLZ5hhicFEPyL4FakXo7DJG4LKZgcoUOFQ5XYwchdv1vK/0', '2016-05-24', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('24', 'oyqTtw9Rx04TEd8pVCaVXxNFvRDw', '', '姚瑾', null, 'http://wx.qlogo.cn/mmopen/iahdQicCC5VBSfZZtRITaVayMWLdib7Lmm8Xrlgph45WDZ8fPtD3dCrvcYUlQvSbSHSFyFdwzQQmMiaXTEK5Z3CmuQ/0', '2016-05-24', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('25', 'oyqTtw91DW4dmYULSdL7n-4-G9BY', '', '豆娘', null, 'http://wx.qlogo.cn/mmopen/GEicHjw6yAoausj0bjjZeLGh8UD3J3I5GCmliaTcBBf54r827vvGoxNPUPSia0asRHRR9k5aSs83JE4wU9bF0rnwVO2LMmMMl9g/0', '2016-06-03', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('26', 'oyqTtwx22xt4J9oujYfC3wjRD5Uk', '', null, null, null, '2016-06-03', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('27', 'oyqTtw5jkAu9hSIYZUpyqylejx_8', '', 'angel', null, 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEIcFdm4G4fEaQRb5YoQPfupTobpR8z1wQwSlJGCnIiaft9o3rxHwFkRIcka8yO5VPCMRH7tv7Hic8hbgTFu0aicm6Y1Dooia7fafibE/0', '2016-06-03', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('28', 'oyqTtw_SHoOKbpNJoF6fU-vfXxFY', '', '→_→^o^⊙ω⊙(ง •̀_•́)ง', null, 'http://wx.qlogo.cn/mmopen/Fz6VicuJux6Gan5ZFWR65Qhs01vSPTts4kmTjEtTM5Cdicd82JFsj8TuhbWg1NHIB49B7tokiajbCmYu3dHIFiaPez6zfvD1GSeM/0', '2016-06-08', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('29', 'oyqTtw0p_NhAaOjZH1OOG7Npg9FA', '', '如果还有明天', null, 'http://wx.qlogo.cn/mmopen/iahdQicCC5VBSCGg65m04jn7RYIC6SsBB4WZ9fPQqBxd7QXOibn0HiaqYOa2ibMt1W9D7SPFoFRXUMejiaIQPNiahRQygkdEo0UOQFv/0', '2016-06-15', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('30', 'oyqTtw7f1lYZFlKdCF5VAHePqcxI', '', '王博', null, 'http://wx.qlogo.cn/mmopen/iahdQicCC5VBTbibyLs0XWpGVQk6QDKkuPvt8mJrn7W7Fgp0nTKjchS0ELYDiawLr4yiaTxJMYlZ3YDuWxswibWEuxjw/0', '2016-06-15', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('31', 'oyqTtw4N1B1s_rd4bJyLdfAfNGd8', '', '又变凹凸曼', null, 'http://wx.qlogo.cn/mmopen/xLj91RZ6kpDMtE6INGZUOOuYw6wOpVCJvibXeDPZVtXjqSibCZRImkODLrKLQHTXsuPGdJCZbTJXibUsenrz3WW89ib7gInO6OQM/0', '2016-06-15', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('32', 'oyqTtw_3J9QWix69R8lFyGcAwCoA', '', '岑岑', null, 'http://wx.qlogo.cn/mmopen/GEicHjw6yAoausj0bjjZeLBlO3ibecznZklsJ2mSNT0CDiaMuibaIQ1gticiaJf2Qp5eSr4YIqEZicCS7gUXpLkp9Vr854K2rfKCIgt/0', '2016-06-15', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('33', 'oyqTtwzkMdmKiUdVDhnlM6GXGYq8', '', '蝶衣婚庆', null, 'http://wx.qlogo.cn/mmopen/Fz6VicuJux6Gan5ZFWR65QgsFcUwibab06Mia9zG6W1lSh0AKhTCiberKbOBiaeDibBp15moAFxMgsmWh8VyAVKGFUJt1FIS1g8ea2/0', '2016-06-15', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('34', 'oyqTtw1jyQge4jL-hxW1fLc1WKnA', '', '釆菊东篱', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKNjqrlFxZibkQpfycicPszZAZ6DhL4meAtcdWTNffynUEqAwAXdPe2c7Q9wtuO1w6Pjq9uzWCfU5qiallNW3SADNz2/0', '2016-06-15', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('35', 'oyqTtw-iCmyM3xVw_3XM8pO_xao4', '', '张朝', null, 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEJvD49ksHEhxgAShTJialc7rdo20Kz8aIopjEibJDYfxVicGotN6SUnCLHj2pTQ8XM0iamt1icSFdbLUUA/0', '2016-06-16', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('36', 'oyqTtwzEjo8pzJngr0jPsVoKWedo', '', '冯永强', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKMrkYDpIGuCxqyMtLduCycG9PYhSGKEy3HmVPm9M96PNWJnkLT4WcJ48FrMicibMrP3ahwYQDOtB1g9H1utwPcVv3/0', '2016-06-19', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('37', 'oyqTtw6su9NPDlAhgmGUYHukqQ7A', '', '细菌', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKO8iazWichBSGk6rEEL7DBk1ib8IloFA93JEAqwkxcIZnVx1yzDUeWttdz3cEqh2J9clSJ7wdjfLL7ibA/0', '2016-06-20', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('38', 'oyqTtw2vfPMrtQczREkZYaQmMqt0', '', '陆惠', null, 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM6CKGTXCuIoibODV9NdJzdyEb7SWxWXOxdD9KjiaIKyce8YiaMbOaUjxrkldBj7M2WNCBkdPu0V3ibQ0A/0', '2016-06-21', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('39', 'oyqTtw3-pP203p605MLi9iX1utyo', '', 'EOW', null, 'http://wx.qlogo.cn/mmopen/xLj91RZ6kpDMtE6INGZUODmKBp4OplXgw4iauSpag1VjhqYClI4tKiazeKxaNzBsRpH8ibCicuDr6xkpD4HXQ8Doa1ESZTPWVqGW/0', '2016-06-21', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('40', 'oyqTtw-1ntxGmb48Evmvc6r2VlyQ', '', '子夜 「果语官方省代」', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKMrkYDpIGuCxnA3IJiarFlAqX14Eef3XrNCGHS7icYKRCvQUEiadru3Py7dtFoNOV7BMLKCS9KTszsvoz9s1ichrGpl/0', '2016-06-21', null, null, '1', '');
INSERT INTO `tb_user` VALUES ('41', 'oyqTtw_4KRONtzhkIWrZMeQVM2So', '', '炎炎', null, '', '2016-06-22', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('42', 'oyqTtwyAyUrpwNrPPx8F7q61p7RI', '', '有志者事竟成', null, 'http://wx.qlogo.cn/mmopen/MmXzf48yfIlugJ1Ric8ibQBCdiaK6MnPGf6kCJR6L4duBfF8TINAg5CsWuUAyabt4ibeuibex170SeKrsvyTsHl0kpgNYUYBWTXdD/0', '2016-06-24', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('43', 'oyqTtw1zOWY0M3qayRdDu_XnHsfM', '', '喜之郎', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKMrTxdZl8tZOXE2icZsmsiasdPKgQsbPXNCfjiaUrCBgMGMOW6ve2QI00zlRibS0WDCbiat3FboczqUic7wVPPnNys64I/0', '2016-06-24', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('44', 'oyqTtw7EM8Dfe5FtvSXZTP3JpSAI', '', 'Auyl', null, 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM7tYCkvHHWRH5l22e9eictuAlHCfibaMBDpicETrgofTHmqGqG23ERkk54aQRguvMbm6Wj9bpVhZWO6w/0', '2016-06-24', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('45', 'oyqTtww6p1kWXM4oWOWgnwxRG9G4', '', 'twang', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKPBMswfV6UguVHBovTDNLb9bCSHLpqqkdL4J6KkvaKxpQFztVJt94GUpRdjIruuCzJib1qNUd6xQnw/0', '2016-06-26', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('46', 'oyqTtw3FQoAM2glqBcgDYtW4iyUU', '', 'ice_冰块', null, 'http://wx.qlogo.cn/mmopen/Fz6VicuJux6Gan5ZFWR65QoIO1oZ08ZHWlqRX2QGrm8Jj7veb4RicjfTmKOxu6ibXG7a0t5qQZnnJBGXN5aj9xVOG6TmGm7VzYc/0', '2016-06-26', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('47', 'oyqTtw6QkdoZjbSLlQbEsadb8Eu8', '', 'A^_^上海金蝶软件', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKMrkYDpIGuCxsrG2picGibW0RU8nM1gZoOlJnjJlFRWtm2MyDXOWsxRnvYptUqOJGBhXbofbXvoYRyOjl5Tp4G0Td/0', '2016-06-27', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('48', 'oyqTtwww94zQehm9KMlvSMsyku_Y', '', '旅馆大兵', null, 'http://wx.qlogo.cn/mmopen/GEicHjw6yAoausj0bjjZeLERgcBibPRPxbzChxnm0qSMJM00nXLrKMkvUaU5Har6gYg0h4phnkREHibMMM7oBjyQQgHMUaX41Ml/0', '2016-06-27', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('49', 'oyqTtw4otwJOBj2s94ZL5Wt5KwGo', '', '磊', null, 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEKvVNjsFMMMz6aQBGVwHgfsYMX0erLDnVj3JicaHZZuibO3zVd1YzllYLGMLeEjCkswOSOA64YeTIVA/0', '2016-06-27', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('50', 'oyqTtw4LxNUBlUOTt1ql0r-sKtv4', '', 'L', null, 'http://wx.qlogo.cn/mmopen/Fz6VicuJux6HH5ynLvIcia8yNzMiaHbC55Ldvm194gcBA4fNaMII26kPUWvveqdeicrRhNbYbeJrvpLb1iaIC5gicibXTfwUt62hkibM/0', '2016-06-27', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('51', 'oyqTtwzH1zzT1xZZWUovnkj6TxPg', '', 'hopeful', null, 'http://wx.qlogo.cn/mmopen/Fz6VicuJux6Fn70Vpcrc1c21HNpO6rJsvWSG0hDSxbk9TTnYexiaBooia3EvXP8fBU0AABM3ibEKSbrsZNvqiaqf4g7Q7ytK5EoFf/0', '2016-06-27', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('52', 'oyqTtw__0-vXm5HFx3D7IsKz3M7E', '', '蔡礼松', null, 'http://wx.qlogo.cn/mmopen/GEicHjw6yAoausj0bjjZeLOsEr5cbBWy1lMVffysMG254NfmbyZwFNo3AczCqiaAfNLIr61ncMGOcSoJ6iaxkBo1gdxQU9Ke5Fx/0', '2016-06-28', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('53', 'oyqTtw4O0F2-mrFGbPGHcVXhhF6Q', '', 'HY', null, 'http://wx.qlogo.cn/mmopen/GEicHjw6yAoausj0bjjZeLAY7Fxj6QQKHeXDMQjNbTYddWyrt90Vw1aPk2RGK8W7R594ic1yxhYcLlFEFDwzusKTf7D1Eq7Oyu/0', '2016-06-28', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('54', 'oyqTtw-Wo0Ke5FHnmcvs3-9_NB9Q', '', '扬帆启航', null, 'http://wx.qlogo.cn/mmopen/iahdQicCC5VBSCGg65m04jn3LTib3LzuHRJaukvlfjB0vticgQju5yvIgj0UJuKNvHMA4oBSbEfrspynzLEnrICiaVnb79fbkRpT7/0', '2016-06-28', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('55', 'oyqTtwxkF1w3_DZDu_5Z2cStYoXw', '', '墨', null, 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM7gOkibGxANRp1NyrvcdTk5Os2zw155kSFLYKeibjsurywKnpPdUhwX9M5BfexcjLCbNdHkiaunneOpMicgicbktFaibPPDT5Y3LIfyI/0', '2016-06-28', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('56', 'oyqTtwwMhius33Yqjrv4Q2onmr1c', '', '流浪信仰', null, 'http://wx.qlogo.cn/mmopen/Fz6VicuJux6Gan5ZFWR65QpCPfY6yhdWyKsUPOBmNdz3LQS14ELAX7Pjlw0vg0FfibTfXY1B6L2ZW6uqicanHUYu2Xibpz3fCeFI/0', '2016-06-29', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('57', 'oyqTtwz-6YtPxpphyqVGGuapqAkc', '', '付伟', null, 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEInV2gyZzicLPWpYWs0p4q1czAKCO5dC1kFFOSPzhMRIwGJ45n68v6416G0ibVR7srPL2I2F0v20zug/0', '2016-06-29', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('58', 'oyqTtw2EbRUgt2TfsjFkKOzDYGlc', '', '鲁云', null, 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEKWAcAXJEssHKs3Mhvibxib3KmgaIibf2bQicEfhLF84K1p6188icNh6D1ESNkBZm2zQsD7PclB8ajq0DA/0', '2016-06-29', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('59', 'oyqTtw7QMYKadn97uYrzoQLtR4Tk', '', 'zxw', null, 'http://wx.qlogo.cn/mmopen/GEicHjw6yAobcA8L65Yp85VuoVjp5C2fSzPEqOFNQ7OUPH6ib9O3bStj6jH2yicr4grRpZKo5juaZXpSWliaibrtibg9RIBtFUXRP6/0', '2016-06-29', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('60', 'oyqTtw51bjkjUl__qSKCkVzGvCS4', '', '蘭鋳', null, 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLD94uicFLQ9DmiaWto7ogRuBiaibYHBv6hoSAibAzPJPlMWvlhXRjxIhp7rLzGwZjnial9XGqZTdTudQ3aVvfhEBpibU79EvzzOL6cVUc/0', '2016-06-29', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('61', 'oyqTtw3S8l44GHrJyZ6dG_52OuTs', '', '榆林技术宅', null, 'http://wx.qlogo.cn/mmopen/Fz6VicuJux6HPNSGgh0KchK08zfb8DngxsZUMhLsnQvDgCFuviauXrCetjiage1bK9zmyYvhI8B1BibbKsd9yyibn6wdeHR6uZskM/0', '2016-06-30', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('62', 'oyqTtw2IDXvHmJw1K8vz7jLoffe8', '', '天胡荽', null, 'http://wx.qlogo.cn/mmopen/GEicHjw6yAoausj0bjjZeLMNuicicgtXCfsicOFWgEv3os2BnGrxKqxy2PssrcN5ibnUQTJomsCsIKOXpyqr7y2IW4q62DhBjNN5d/0', '2016-06-30', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('63', 'oyqTtw0VCsm7fTPrZMMISKZ24-Vk', '', '郭锐', null, 'http://wx.qlogo.cn/mmopen/GEicHjw6yAoausj0bjjZeLEZlW2Hiam7iaauWpamTMBTWQmGK1buCwDaYlR62y2x6KdMx6GBDFcTPKIa6iaejHDAfqtSPMia6fr5K/0', '2016-06-30', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('64', 'oyqTtwyswNhhDWXXMEAe45cPzgoU', '', '星期五的', null, 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLBrq5Djs00QlXeoBLSnSlLJABgGqIX1eNMJWfSXlGF7aEyWVTSCzicS2QibXLm8Od53hogJXyiaZLMV9ibOk6uibCfDoMu324QfrmC0/0', '2016-07-01', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('65', 'oyqTtw3JBu1RzFLk8vsezSgiENWw', '', '懒懒dè阳光℡', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKNflECOT45DiaUFgXM9HmgUj5TXWiaHwia1tq9ZgnaEaicRDpfPYUZibrVeafq9AxguwzELAmpkydf7bjqInZQ0PPRm6/0', '2016-07-01', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('66', 'oyqTtw_embzWA8S7UcaBBj_cHzGU', '', '张庆', null, 'http://wx.qlogo.cn/mmopen/iahdQicCC5VBSCGg65m04jn1zK8ujrm1V7PLdbTb8Qib2MKenibvxQhA6crsF7gFekn9nVZibT8jNddrg1w1MxnYEJFBiaaBt80RT1/0', '2016-07-01', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('67', 'oyqTtw1y0z_wUYa-w1rNc8Y5s9FU', '', '心晴', null, 'http://wx.qlogo.cn/mmopen/MmXzf48yfIlugJ1Ric8ibQBJSR4BMQUy9JfoibBtyYdUWFGQsjOjBFu2icIOicZvAERc6pItL59LMzfzx74O2AWlOykX3vfDcHRwd/0', '2016-07-05', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('68', 'oyqTtw6uTN82lKqHdvTKdbAaaxeI', '', '小傑', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKMrkYDpIGuCxtCVBtpBqjm7dA5UhQ8ia7gKzRTocZuzseARvrJxYyKRefBjDrGG7ibicw5JnUKYiaial72hOuG0gkFNm/0', '2016-07-05', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('69', 'oyqTtw9KssTdTOkFZcCXB6bowtE4', '', '张腾达', null, 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM5lGQ6tUtayM0NHsZKKcfd9oS2zibGUicXoQnjUb3F5sxs5iaoQ9XIR88gnJTyuDLRXV7QiadId7puia0w/0', '2016-07-05', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('70', 'oyqTtw_PwoKQINpq6-kzPv0T0wp0', '', 'Michael德亮', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKMrkYDpIGuCxknOrm8l0tONSy7UWmhhic3EJFobojjyzLZ3RgVn1iceSiac2ex4IChYfbE22xhxIjSNrlDwouviacHW/0', '2016-07-05', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('71', 'oyqTtw46jXeyrPmgHEXfzqcTxwqM', '', '夜猫', null, 'http://wx.qlogo.cn/mmopen/GEicHjw6yAoausj0bjjZeLB7AfBzoFHlpngYfaDTStJ1ZVSdicrxqrnE766xJlszhhcUaZibww64Xpe8PMhvl0Uu2uhWzsGA2iaF/0', '2016-07-05', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('72', 'oyqTtw7MN_dqCMg_cG1pXLcXIexE', '', '仲景武（泊仲）', null, 'http://wx.qlogo.cn/mmopen/EzVk5PKYrkqtwafWDnMpK3yz5OKVhhSyRjsq4CFHTeUgFsB6oQwna2ibI7BxKe3amwpoMsVF3EcL4hZYfgwPvycjETicc2iacee/0', '2016-07-06', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('73', 'oyqTtw6NiB8G2Dsh6X1bFglVUAb8', '', 'bobo', null, 'http://wx.qlogo.cn/mmopen/iahdQicCC5VBQNgFibWuGMRgAJ6d2Ziat1nLpVFvmgSGkf9KVYibXA2zwSbky9nhpG2r9o3NjX6OdCNficr8VVoPuocQ/0', '2016-07-06', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('74', 'oyqTtwwsQHnURB_ZXmYQR7uson6E', '', '陈新', null, 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLAZfwxQHz6e4KviazNCtNaBUsKMNh6GmQkpG1wFObiaaDTOG4ZSXb8plW0Q7hMDYgDUyg8NtoUkyJ9A/0', '2016-07-06', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('75', 'oyqTtw-Kanlls4WZ5jSFK07rLtac', '', 'charm', null, 'http://wx.qlogo.cn/mmopen/Fz6VicuJux6GiblpxMvCcQlQrSygSngQwFTTSa7YibrHiaPPN2dMPbxbwsiapQHB3oebibWY6MFLreall4mhysWRSr6aFFLhsaChvh/0', '2016-07-06', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('76', 'oyqTtwwR_UJKYFzjccGDW-FRlZG8', '', '冯泳', null, 'http://wx.qlogo.cn/mmopen/GEicHjw6yAoZedDVM9ELLFttCKStbX5N8R3KovOGtXy4fDq8AfRF7s0dicEKTmlRcRONXNs7625X5TrTICJwWUfg/0', '2016-07-06', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('77', 'oyqTtw1s7Kti_ZB6PEZ7aWVeApIU', '', '李强', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKMrkYDpIGuCxpQehWeECnZbpFyLo77EEqEl8iclVokxwhic730mHA87oyRSzgVbLvFjuh8pxyDfxdd6SelpicvGcfl/0', '2016-07-06', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('78', 'oyqTtw_noSdZUmM1Jk6nV-592r4I', '', '无言', null, 'http://wx.qlogo.cn/mmopen/PiajxSqBRaELDVMMBYZ2HZnTibnrSwxZPZlDHKWRNXR49xY2ND1NuvLZrkicRRJBSQCG0hhkfVshibZAndQuyBbHEw/0', '2016-07-06', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('79', 'oyqTtw13vXWsCtbuSsw7FD8-1oG0', '', 'Leo·S', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKMrkYDpIGuCxia7icd51TxgLBdk34VyibCp7QQYeKDPiaP5HvuHBiaJAol4647ZzbHJib0dFVLIMsAicUoYXBM0hhzW19V/0', '2016-07-07', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('80', 'oyqTtwy2GZcWnrm7GxdbQ2YCTl04', '', '于文雨', null, 'http://wx.qlogo.cn/mmopen/iahdQicCC5VBSCGg65m04jn5ERNts066OeQVXJGEqqyAAUTUwiaSHTrj4YcWmdNkJZibiaV9szfic0D259FhyUVfyDVErcRRaA2W4ic/0', '2016-07-07', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('81', 'oyqTtw8aLbm2Z9cI_lNZfqA8jO1k', '', '从今以后\'', null, 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEL471xg1Rq7pvdwavXS97ndcf1S4c8iam3nvc599yoqSwg6sAAByhQluADVwaIlBYOicE545K4ibqRHA/0', '2016-07-07', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('82', 'oyqTtw-0IYTFupfhydyMQe1dKe6M', '', 'Kalven', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKMrkYDpIGuCxoiccianlho0iahZ3IlryGPUlPIEqTDs162Ete7wmLkvUCiaicAdg9L93VJsqb4m4wciaGrVojexVDSBTF/0', '2016-07-08', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('83', 'oyqTtwyvlfpPLihhMb1gsk1yGHtM', '', 'ZHL', null, 'http://wx.qlogo.cn/mmopen/iahdQicCC5VBSCGg65m04jn9lAiclexYyG3p2LSDK7DzQpP2wB0cezX5jokY69rpqugI91rqMpvYL4hRlrV1p0otWEYeAB4tb2t/0', '2016-07-09', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('84', 'oyqTtwx33N4XPEOmwvaNVwUl0SfI', '', '马学平', null, 'http://wx.qlogo.cn/mmopen/GEicHjw6yAoYhVOmq9q9gRwmzMFxzEyMUQS6BHKIo8F92ctWJ6zfDliaVyv66f7icKVkNuoUCk8cAHjiaJP1Y8OG5eNl4qgVDmM5/0', '2016-07-09', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('85', 'oyqTtw93fUMN48On-8bpNsgkl_VM', '', '邓忠乘', null, 'http://wx.qlogo.cn/mmopen/PiajxSqBRaELPeicalEoAAEmtOhIbNHyNGMtHAibiaTqz0lCbibFyuFmqqevhghuckibrgukVGAXqrHyic2nFb1NoTdkA/0', '2016-07-09', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('86', 'oyqTtwx82NJ_PZhIPb8WgYSZex-Y', '', '刘佳亮', null, 'http://wx.qlogo.cn/mmopen/PiajxSqBRaELmOknCSHDcSPl7z5LvhXMKlgUvjwicLHBWyVH2BHQeAlB0PUkjIy28qGLib9HaZ3u7u4xP6SHnND7g/0', '2016-07-09', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('87', 'oyqTtw2J46OTu-gIHM5Ceh5LWqcM', '', '小炜', null, 'http://wx.qlogo.cn/mmopen/GEicHjw6yAobAyicsB8W3tAIeRQwpnJhWib8BoCuZKg9go5f2Uicf3wTErEPZSibTxbmGI9ZUXD1QafrbUCeGyFNFVI61uegXgURia/0', '2016-07-09', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('88', 'oyqTtwxZ2AM2Kvxae1Di0O2pS0x4', '', '波粒小江', null, 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLB00LKajWxKtjsdpODnClzAyP7GmQdbvUETV283D6SrEAwyk6XZ0GtYoB1ZJDjPmBKjx3Y3WiawJ6w/0', '2016-07-09', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('89', 'oyqTtw0daPqFrpzf6udTRq2PvRjk', '', '广州天王点歌总代理小利', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKMrkYDpIGuCxvRlFkkXfk4IUeGibbV2jBMyiadE4xa0AU5EMNbhFfd2ukNSgx0wvznYzyJcg0NEtxM7HrVL1xjYvw/0', '2016-07-09', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('90', 'oyqTtw-lmpvXm419gK1DyMysmtv8', '', '张三鲜', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKMrkYDpIGuCxolWPy1OY2zGjYHELiaKUiaMThD5bkkBGqiajbBKsibQt2EcJUfgBOZUChMTmDDk9V0snEuUm1E20fvg/0', '2016-07-09', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('91', 'oyqTtwyVjYeFls9mzhpP1VtiV25M', '', 'xyy', null, 'http://wx.qlogo.cn/mmopen/iahdQicCC5VBSCGg65m04jn575evwfKKEqTBxXbuicte4bqedjlqs11zngXaicDx4icUgKo9RISrNR2ibrgKKI6GfskJLDpLjPgrJk/0', '2016-07-09', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('92', 'oyqTtw18D98Z6Z1N_7nJpTj-aKf8', '', '吴奇胜', null, 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEIqu7EUIFHJLnl3XOxlY7FXMicNhLJsCTI9a98QfxYZjS7V5S4T63icNLL3ibc7zSqdZwSS6hcKteqLA/0', '2016-07-09', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('93', 'oyqTtw7GMp2Re_LIt9ghepmBqYMI', '', 'cge', null, 'http://wx.qlogo.cn/mmopen/GEicHjw6yAoaAKW87ZqVBRfRVYXnGOEdJVvCGzWAoib9jptiaKnY95uY6tNw9YicUrRUjRtAwT244nDeGicEibAdMBDg/0', '2016-07-10', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('94', 'oyqTtw0mv38vcI-LgoICHl1wN8RQ', '', '传世', null, 'http://wx.qlogo.cn/mmopen/GEicHjw6yAoausj0bjjZeLNJ4RKbNQborUhbYib7zF6pVibkjS7PpClRbWrCuZ0szC7yhjYNEnRUj41QcIicYThibjwklVQxDcYM1/0', '2016-07-11', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('95', 'oyqTtw1Ux4KN9cVDJFLbft1vXLhA', '', 'Ming', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKMrkYDpIGuCxqP9UONJ2Oj2jYp8LicFTYTrOa8ViaRubN4r2AEva335H6aibEiaSIhlicBz7FAKBxjJztJLWZGO72a6a/0', '2016-07-11', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('96', 'oyqTtwwSpO0YMU0l81eB0fgRYIos', '', '暖暖', null, 'http://wx.qlogo.cn/mmopen/xLj91RZ6kpDMtE6INGZUOPT8ic6484ssbDiaEBXtFkDxZHO2yEM4Fduju6hqS1gibvgPLhnmKfUUiaNUK1toYZydSGzTgggXXgMia/0', '2016-07-11', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('97', 'oyqTtw7awg1cjj_jfWbARvKDmPjg', '', '元亨利贞', null, 'http://wx.qlogo.cn/mmopen/GEicHjw6yAobJZoQiaSlKRxI7iaxN8m6rYDyZ27G11HmxXicxIQpp5NrWCXiaFqXibLEe7EIQZQT4oibbxsPCB9pH6g2LI5Oz031tvG/0', '2016-07-11', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('98', 'oyqTtw49lh7RNPtgGhJ_BNyF1ro8', '', '殷坤', null, 'http://wx.qlogo.cn/mmopen/GEicHjw6yAob4zqPEcbFjGgyyGmba4KRp50qxaq4XicG1iamSkgAuWbqEqbCXr6lHMC8AzibCTsJy81x9NdhGiaoic97RaiaTKicoUia9/0', '2016-07-12', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('99', 'oyqTtw323_sdj-rR8Yp27y_ZhUGw', '', '漂流船', null, 'http://wx.qlogo.cn/mmopen/Fz6VicuJux6Gan5ZFWR65QkRwRwSPr42GpsYjDU6E7b3wFVZggUPuKBGqLAahZjmgekcZILwDTB8AgPEvHGccOpCfDn28pvH4/0', '2016-07-12', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('100', 'oyqTtw6V9K8rfRUIbElW7fBOCOK0', '', '奔牛', null, 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEI70E6NpEfhE2SZYVkoyySUBNYhLibbzbfQMlwwVLKKf6dSU0vBjd65MKoFap2QmScsa143CtAWtBA/0', '2016-07-13', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('101', 'oyqTtw5V1eQrMBLU8bGdYVWSMYz4', '', '高备资产@婴儿', null, 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEI3rYpOwhDoibzZmVAoiav3iaUj45Tb7MaYrHiazt3umhwliaKrU5yE8zDLJayDHpTwk1XuxGedk0J5w3w/0', '2016-07-14', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('102', 'oyqTtw71JtyPKfnLao7PJyHEB-lU', '', '路鹰', null, 'http://wx.qlogo.cn/mmopen/MmXzf48yfIlugJ1Ric8ibQBOibz7HqJcBUQdMzCiaYzFic0WKNwMPQnjbTNu3zKTGJIukH3DtqqC3AsiafBLiaO627QZ3nUqYGM9I7G/0', '2016-07-14', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('103', 'oyqTtw0J-ytrGmD0Nx6BbDZHNl70', '', '程丽', null, 'http://wx.qlogo.cn/mmopen/xLj91RZ6kpDMtE6INGZUOAUU0Q1sicXBlvtZVE3KWKYWx5R422MAN9salt6H7lJobEkNSeb9h54tf7sTic6xVE6Y39DorkIbge/0', '2016-07-14', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('104', 'oyqTtw9evW2ceV_C-wKbpEw7K1EY', '', '四眼摸摸活狗', null, 'http://wx.qlogo.cn/mmopen/PiajxSqBRaELYicjlUhO2oZSd07ogFqaAolYjwkDq6jlDYCvYgGnAOjwMxFhia6UhuEMI46j4vRibKRmtSvrQMoEAg/0', '2016-07-14', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('105', 'oyqTtww0HkwishJFkuuYRPjptKUY', '', 'PM - Sparta', null, 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM7M7Qbbx2WUiabOOJl4jlMYz8bicuNwyUiaX5Cob8xzCeEyK0T4ib7TF4yVDx34ljSlaN1KPyHvHWHmIPxaMDJx8jt5OsLfsWvNX44/0', '2016-07-14', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('106', 'oyqTtw5plnrASL-cF6Al_6lvxc7s', '', '淡茶', null, 'http://wx.qlogo.cn/mmopen/PiajxSqBRaELSQFrC84ksrg8u1xxiaOvT1UabFQonJLSZicI9vNN8fjKnT7CI7QNZLib5wNQKkOEX73RreG8y0fAYA/0', '2016-07-14', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('107', 'oyqTtwzHmjTAelgd0QTkmkQ1gqm4', '', 'alex', null, 'http://wx.qlogo.cn/mmopen/iahdQicCC5VBRCyBkkzw2ISXCMnAPVBYM7eqjCBIV6H9GZ2kTJmYeEuAIZewndLTq1jOCgTUwDUX9PX6OSlTatTg/0', '2016-07-14', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('108', 'oyqTtw6lAhPTweLH13qfNAxt0YNU', '', '济宁商超软件收款机考勤机监控', null, 'http://wx.qlogo.cn/mmopen/GEicHjw6yAoausj0bjjZeLJ1jRyZHia1LRtGqk4LfTVfGsstXv74R3ZjJqZVh2B6Ce3qyh4ZokWf92wcLy7JQhT3OSqxiaWj5Pib/0', '2016-07-15', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('109', 'oyqTtw0Mg86w0w57h3WFIYHy-h9U', '', '李绍龙', null, 'http://wx.qlogo.cn/mmopen/GEicHjw6yAoaib1bYe0C7SsZo2QJQlp0CQTenzbZFvpiaaWT4JibvdFK36Y6D3CPmoOTZ95WnvoEuia0h40PQjrVpR49eYmnKsmJu/0', '2016-07-15', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('110', 'oyqTtw24wiquOjeyMKS760QbhJuQ', '', '.zhz', null, 'http://wx.qlogo.cn/mmopen/iahdQicCC5VBSfKbicNRNkfVw6tfz4W5vOQ7nsAQszFd9e0lVnN2m7Hb77dqs5vBLpICmN0PYPuqI8MDvr9hAb8nX5ib6dJJqkxVQgUufT8UHz0/0', '2016-07-16', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('111', 'oyqTtw2jJo2PeN2KvEFUhe7GufAA', '', '梁剑平', null, 'http://wx.qlogo.cn/mmopen/jP5X2H3hNnSIBfIUxEsjsEDzibGlyUk3r2JHicxicQraL9wOOMCIxljzPXRmsqiat35uRkmRAoUYWc20iaZB240icnfTM0njRZu6qC/0', '2016-07-16', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('112', 'oyqTtwwEhBETKR7J6VQOjxvS1GNM', '', 'A贷款18658670700林珊', null, 'http://wx.qlogo.cn/mmopen/xLj91RZ6kpDMtE6INGZUOEYTUshficHE98ydLBoCFPr4sDNHDicBMCEwtNLM35Q4ohLRFibm2pjmFfYLJicbiarCZ1cCVOKAaGMVL/0', '2016-07-16', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('113', 'oyqTtwyeKwNSePKB9DZQJwehFWTY', '', '名堂', null, 'http://wx.qlogo.cn/mmopen/Fz6VicuJux6HprCr6cOia3Kb5icaxR9fSX9aV3RT5B0DZk1a4V8AT4ERosmkiaqUddRWl61Lfib5atRtwdHtE0coK9FQdBYEl3acC/0', '2016-07-17', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('114', 'oyqTtw9kzffR9DVdS4gEKi8BRLDE', '', 'crazybunny', null, 'http://wx.qlogo.cn/mmopen/xLj91RZ6kpDMtE6INGZUOL89AMibvlxiaKmaFhJ2pLTRFb8Sia1hU0xzoicicHLiajWk7p9vNj8IaNBPt1Y4opaOxrYp8JTldVbFMn/0', '2016-07-17', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('115', 'oyqTtwzcmt8yvNWhlP5bcnjImTIY', '', '日落黄昏', null, 'http://wx.qlogo.cn/mmopen/e0ekhuCqbrIEmfBFjg3WOSquVaILOdEzn7pdkakB7qRbnKkjlribfjlQr62FJ9EEOfCNm5ubYvCvOEpPQqY4QURX9TOGbKRcW/0', '2016-07-17', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('116', 'oyqTtw08CHLtWYYBuzRnNp3-AX2U', '', '玩具熊', null, 'http://wx.qlogo.cn/mmopen/GEicHjw6yAoausj0bjjZeLDly1yGx2ZlvkjfSHVbBDqYasW60n1hngypND7acOC4pcHLW9VE3hf7yEMBYKJ80ic1Bf4jFOvD94/0', '2016-07-17', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('117', 'oyqTtwwL-EG4jwTn3_xrvmS7-Lnk', '', 'Lost youth', null, 'http://wx.qlogo.cn/mmopen/iahdQicCC5VBSCGg65m04jn5CwMsicEPDickbuI9a5Fdl5wtot55RXQqic8FwKVibmUFicUzb04wZiaZdjyY33icN4ZqwfYJHnfj1Po5N/0', '2016-07-17', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('118', 'oyqTtw7EJh-DpDBXKkkM9oQVwHTU', '', '陈耀波', null, 'http://wx.qlogo.cn/mmopen/Fz6VicuJux6F3ahmFswkxrEY19oBpCBAGo9Z2CO14ADlMkxNAla0kUoT1eMyM6ibrzR2gfib08FJnIRVS878qtib2kFibeg2P2DR2/0', '2016-07-17', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('119', 'oyqTtw4wC-qD6qH83YGbhPS9Y4Go', '', '无名人士', null, 'http://wx.qlogo.cn/mmopen/Fz6VicuJux6E9dlOV2D6hGAMeJoDMKibkeJV4k1ichRwDwBEJAOBa1arlic70OnutH0BktnUMGvPLXnQP6vshWx5jvuQy38hzo2t/0', '2016-07-17', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('120', 'oyqTtwz9hyWd87BYMxvfO1qHmQOk', '', '殷年平', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKMrkYDpIGuCxlAaqoHByHPN7wQxRf2nVvUfKRy4UmEvOHMMeZokFZ8kKn4niarSMqibeUj5DWAot6AplFHsdmlv7V/0', '2016-07-17', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('121', 'oyqTtw5vZzTW34diCGh8EvF-lBgM', '', 'Ziv', null, 'http://wx.qlogo.cn/mmopen/Fz6VicuJux6Gan5ZFWR65QhGt6AvQkDoUY9CmbgeR83wwK2naOwJYJpKNWV0mrWx1eROsdJxG8etoCwQ5Qr586VleOGUCHcVv/0', '2016-07-18', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('122', 'oyqTtw3ezjRdPyFf0mcyZuyzBW7o', '', '随缘', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKMrkYDpIGuCxn46btUxVZfdyMkYlsVLbhBtqEMRcQtd2PIx5yguVqicsyqzCUooUsdLt3ibZgbtSCA2haYyXsK8G2/0', '2016-07-18', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('123', 'oyqTtw_cifF2zCA5nnEbqaIMw08I', '', '阿陶', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKMrkYDpIGuCxnSA2icUqic7cme3OKUk6sgNBOiaRpSeYb9t9fd9qI2ib6DvTuQJG8K5unibYcSgibVUaB4ymcS8JwqLic4/0', '2016-07-18', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('124', 'oyqTtw5rumZrQRMlVjTvBeypYR7s', '', '爱重来', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKMrkYDpIGuCxtzicOkJ2xu7R2SibR3fSBkRFHcbfP744k98uzgWBiam4A3Yt4ILFZOYtLqEwLg70eJDldibXeKTTrDP/0', '2016-07-18', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('125', 'oyqTtw2BEIQMgzza2e4tinoDq6Yg', '', '豆豆的老爸爸', null, 'http://wx.qlogo.cn/mmopen/GEicHjw6yAoausj0bjjZeLNrkyghc9x7zbYZ6w88YOwELGD7kQY4rFAz7Id9oob1hMXPRiaBxqBz2uXEYqm107tQyT6pIqXPVj/0', '2016-07-18', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('126', 'oyqTtw_NCZpC9UHIwF7vPOUqAMIs', '', '程巍', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKMrkYDpIGuCxn5nc8OzgFHengueRSDXJYRzelbcOBuVUmf0vrdrEU6qDVhXFWzymiaJQcmEmHNHTmvLznyEdsFy8/0', '2016-07-18', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('127', 'oyqTtw3qFRmliBkvEyV_hnYUFsv8', '', 'king', null, 'http://wx.qlogo.cn/mmopen/Fz6VicuJux6Gan5ZFWR65QrMWtToXZ8hibMwBibfic8o0NxjJ9o2G4jt0AviaTySnfUCRBQjV5HXicHOGUMWWzGuibArPUoSNdla3NC/0', '2016-07-18', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('128', 'oyqTtw_h8d1olzyKFTHWwnhNg50s', '', '瑶瑶', null, 'http://wx.qlogo.cn/mmopen/Fz6VicuJux6G5JkVW1kD2kCuZnXxScgE2GY7TVxZeXMz6icOwAIcwOLhqjichiaP3ibBgP4olRV9B3kKjACWsIBeKTME4ibxTpicIDM/0', '2016-07-18', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('129', 'oyqTtwz06Kgz-giiMdPPwiQw6aMw', '', '杨放', null, 'http://wx.qlogo.cn/mmopen/GEicHjw6yAoausj0bjjZeLADHhhnv5W5ic95iaj8l8bAmppVpPEjK61AwCmVq3e5olicI5qic4Q9O26CEQZzkO6uYMbhkEDG1jPvD/0', '2016-07-18', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('130', 'oyqTtw_MVjQ5TrfRm8YvIvsFmBCI', '', 'Krismile', null, 'http://wx.qlogo.cn/mmopen/GEicHjw6yAoausj0bjjZeLCfCJbK8yZU7h7Ucb7vxzSwYEp4ibUpP9nLOKUNmpvX5DglEjDPO0GlbQEM76fxkF9ddUBw3icXyEC/0', '2016-07-19', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('131', 'oyqTtw1jIZLr6rAJvAFUWOOiVEqc', '', 'Allan欧阳俊Java工程师', null, 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM7M7Qbbx2WUiabOOJl4jlMYzOUoqg7oVuWMe6SBy01nUJTplf2Ib5Fnt8jgy1WwqUhXNjMTXXcHYsribpMEZUmBVM8l3NJzPuxPM/0', '2016-07-19', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('132', 'oyqTtw09cLMjwLzQw-q-JatwnM3g', '', '李斌', null, 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEK3kibZLkXqv4n83QzKS46rkeCibfLMnVd0IbZazgDCKqwFd9QaTMLmbnZfHT3DXUAtuvTBvmtiatAibw/0', '2016-07-19', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('133', 'oyqTtw96aT0ZpaxAqaT3Ue-VXZnA', '', 'Lucive', null, 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLDXKECUS5F3813AtPSLvichCIeg9PXwVcgU6UFRn1avJiak3OFcJSgdox46auxDLoorOciaTNYemxBjQ/0', '2016-07-19', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('134', 'oyqTtw2BabOclTZPhsF6wwM2iqP0', '', '子鱼', null, 'http://wx.qlogo.cn/mmopen/GEicHjw6yAobcA8L65Yp85Uqkc8pUTYYMfcgbTMAicPBjcGSdDxd42icjibasSKy1EcknssicSa0uMicvZlOiaFqHwvs9pxdt1CHZne/0', '2016-07-20', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('135', 'oyqTtw_1vVdZQ7kCePJjHvbm_a-w', '', 'Leo', null, 'http://wx.qlogo.cn/mmopen/GEicHjw6yAoayaicHFEbFOTxyciciaicc3n89auDnQo60icwelBicE2IaJHOQDxiasOoEibJicpeKSicJicwzfHUicIZSWibLXHib5cJqb80CxK/0', '2016-07-20', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('136', 'oyqTtw6nHi7bW3tO7kwOIMnybWtI', '', '王晓鹏', null, 'http://wx.qlogo.cn/mmopen/xLj91RZ6kpDMtE6INGZUOJGzX8MQI22Micicic3tjh0veT3agBdiceoPViaTVgaeMILW5iaNy0JO2ib1fibOPezlibGHiagH8Muw5tdbia1/0', '2016-07-20', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('137', 'oyqTtw6OvHzxKSG4PHhp2LM7n1oM', '', '喵了个咪', null, 'http://wx.qlogo.cn/mmopen/jBkb3aQMVicWpiaPO5ZWMMhgofg7MbaKeLvSUukQjeCzWyZU8aDUgwCg4b199UdUmVtjBoic5mz2YWguiaM4JRw9x7CwEtF96abH/0', '2016-07-20', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('138', 'oyqTtw48qsyR0Yu3902uUhKw7A6k', '', '美好互联 Jsn 马骏驰 15712890889', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKMrkYDpIGuCxp38heibqbAVepXhWw77rpzfkEw7Nlia7Bs788CDH2ic2kVFJCJhzXwelibG4oSVgoC4SSOOcOpJibicxw/0', '2016-07-20', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('139', 'oyqTtw8OW756Zmt86O2GF_khXKBQ', '', '鱼', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKMrkYDpIGuCxuYE813saPC6jvckSf4qmeIia3ghhPNQhbUev7dicPYbhq8JllAoe0jTlAx0jBjgqbor3dvN3APgsq/0', '2016-07-20', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('140', 'oyqTtw5A8gyh5hWYWeBmGdKifNlE', '', 'Tong', null, 'http://wx.qlogo.cn/mmopen/GEicHjw6yAoaDFTQsNtBOdXCOcmbZ02O5m4hdYSCkibw5s6D7NWzLHP7boaMiaXBd42zaL2k5cicScjZVVriabxLCuQHpKOBGbYJd/0', '2016-07-20', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('141', 'oyqTtw2AftPx-_FpLJaHjvaWQaWw', '', '汪成鹏', null, 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLBsic0SWNHQsvL8EVlicRKoq9fNznEMqrDictJNxBogEGGJHFHc287crcfoyU8wj55zKDSkJc5bVr3ZQ/0', '2016-07-20', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('142', 'oyqTtw8FM2RkGpPemGt5orP-ghC0', '', 'SoYoung', null, 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEJEO6sFpSyK9RicFn2ry2wTwlpjkeaA3KFE4VhbqZah2TCx6lziauWNkQkHKLGwX7v0OAygv2BN6Tug/0', '2016-07-20', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('143', 'oyqTtwztm5aidb3UH5dmo9IuEXhQ', '', '荷', null, 'http://wx.qlogo.cn/mmopen/Fz6VicuJux6Fn70Vpcrc1c0fdicONCGR5SDPrqMLOia2ibicghhDp6FicZw762UkIvzlFNguJYAbtWm5v4GSHDblktLTXUWp5KyicOd/0', '2016-07-21', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('144', 'oyqTtw3jh4m3jNSXvy0Y_Nd_pmbU', '', '异℃客', null, 'http://wx.qlogo.cn/mmopen/Fz6VicuJux6Gan5ZFWR65QhSa9Mp6dBsrUBMYp2C5RYhsVHzjj8y6vh48j7GhGw3iabarQvAgfwiaGJgIMAXdKS6icgLYPbSCrsR/0', '2016-07-22', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('145', 'oyqTtw7t9U3z54G09B0NyVAo_l9Y', '', '黑马', null, 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEIicRGXcS8uF94j1GibngdDwXcS8AiaMTk2jiaic6oKAzU2Aq0PtricbsNdziaHQOX0ic7DGM9BNQvoT5MrAQ/0', '2016-07-22', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('146', 'oyqTtw2H6UOtEaTxPzdUfIzNbIOI', '', 'Roc.Qian', null, 'http://wx.qlogo.cn/mmopen/iahdQicCC5VBQ2AeNALpaasGxeuKWaXhMeFMNVChE2SCnUSt5ZibEPMFW8uWicAyjCbEoDE56S0K8f1ic5K5NsborcadRgiaD6WR1B/0', '2016-08-30', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('147', 'oyqTtw_CuGpO4G333OzF5V7NxqiE', '', 'Ray Tsang', null, 'http://wx.qlogo.cn/mmopen/Fz6VicuJux6HPNSGgh0KchPcYpZtLlw5QGf6L5msEhc9SyDCsrKORTU1mca3uVqic7Usoic3O14Obua5ENlMP4o5unu2W0FX5hZ/0', '2016-08-30', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('148', 'oyqTtw-RJ9WJIPm_H3xi2DRAEp5I', '', 'Mir°伟', null, 'http://wx.qlogo.cn/mmopen/Fz6VicuJux6E0HAicDIQ7C8L4dXvlm3VAcEx0UdTOMYkjqx02qdtHibYIEoEzMbib8KnWTl4k9qtspYev5dYN2IEMJCfys3Lrvvp/0', '2016-08-30', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('149', 'oyqTtww7ucEo1bpuIrsVUo4kia5o', '', 'Bridge', null, 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEI2oZMs2ibqVBtR2ia7iaXOp4aBP4O2YVE3q32KcDKnbFqT886whr5icdTZhXZXqpbx6L5edvCnSjWKUg/0', '2016-08-30', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('150', 'oyqTtw-nF4OTvmWLgPzPTbn9x5X0', '', '熊明威', null, 'http://wx.qlogo.cn/mmopen/iahdQicCC5VBTrcibHXyJQ4adx1wQnJW0hZyjsUMkBichEAh96cGnSwSBzYRwLVwHReprEF8UwPCcdGh45rCLicI3Pg/0', '2016-08-30', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('151', 'oyqTtw2JvPHCFIKyvGEFVM371D70', '', '于伟-微点互动', null, 'http://wx.qlogo.cn/mmopen/GEicHjw6yAoausj0bjjZeLIT13SZQiaktkmPwOicXt2uEoNQDW9Pjb5rLWhC3Pcu4vmRVthhLxw0boIl1sSdshGcReUCpic9SeCR/0', '2016-08-30', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('152', 'oyqTtw8dWPc3B-m1_HLgEK1Qg4Y8', '', '武敬宇', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKMo2dfYBY8UO3sdiaPLv2EbFuribtBAPW1u3EjofibwunDqlQ9uo9xOOSNDUicBdGB8pzIquiaVrW7KoDA/0', '2016-08-30', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('153', 'oyqTtwxVskVi5gknp6Zi85na8Afc', '', '快乐的一匹小野驴', null, 'http://wx.qlogo.cn/mmopen/GEicHjw6yAoausj0bjjZeLLykLR5yXMqtB2w4bYeJf9xkhYbnhNaKVzMjIdelkmOuibwy8zp1L9WqMlssEeHtXjSb69DmR5WZn/0', '2016-08-31', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('154', 'oyqTtwyelf8vi3eGAC8sjJLCuBbY', '', '萌萌哒', null, 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLCSDJibecdsaxsPQsxxTPBoEeW9Iozia5EY4njWV7v9lJzT6hFW1icY85lHvFnZ2NZjMcljl5ypbGGkQ/0', '2016-08-31', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('155', 'oyqTtw5zbd0kCmX0FWZFUym5c1Ps', '', 'Wujy', null, 'http://wx.qlogo.cn/mmopen/GEicHjw6yAoausj0bjjZeLCGiazlaS3aPxHBGfWd0SFOYspq59diceGxfVQ9iax15NRaTiagc4sjL1hgPyetr58RicgY0F4PlbFibGV/0', '2016-08-31', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('156', 'oyqTtw1y5pUj0V-3aJAFi3qXJ9x4', '', 'Mac2013', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKMrkYDpIGuCxgeibSvzGQ93eq9jnc5D53REsO9bTJ9Iq6DwDKM8cIsJ1CpbbeCsAFo6pWbFgNqv8nRmILtg0kvNj/0', '2016-08-31', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('157', 'oyqTtw3LfpX7MuHYaKpETe2mQCag', '', '丫丫_追逐', null, 'http://wx.qlogo.cn/mmopen/iahdQicCC5VBSlH3bVMD9ZHCVwFWfwoNghhfbnA2VG4JNQkSF8wqvURbyQrFcYrV65RMWkJuR5eZjN6rP8KET6IaiaQcaeaMSFf/0', '2016-08-31', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('158', 'oyqTtw--3Bh4dAm_A5P0BoV5pBMo', '', '✨司马逍遥✨', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKMrkYDpIGuCxpn3f68m5Dia5N6hV8mz882WGyTvtVxFEiapmha7QOveqIP4Fg64BZEesI2DBFIQhBhVvDSP3Glml0/0', '2016-08-31', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('159', 'oyqTtw3ojDG0bxnTcMf3CoSuEiYY', '', '伍照生', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKOyM3jCGFBmtgxaO4VfjDicKiaicyRDpAegF9ficIK4n2F11jQVADuGnJ9M79ysEflLj5bbEM7VskOyN0tbRbh70ogO/0', '2016-08-31', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('160', 'oyqTtw7Yh_thZm7KFtjL_zw2iop4', '', '黑鱼', null, 'http://wx.qlogo.cn/mmopen/iahdQicCC5VBSCGg65m04jn7ozibdh5smbaWl5TvNaURQs6YgCFT20d4WvSNTHsw8icyPiabYv6S8WdVmG72ctxe3icwbpP1ZiaypFJ/0', '2016-09-01', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('161', 'oyqTtw1zA95rJxq9hprpM2Ch87mM', '', 'Zippy mouse', null, 'http://wx.qlogo.cn/mmopen/ricmICEkBzRwELYlxjC8icGbrx1UyTbd6CqVLdsXgib7CLeMcuuj6XZyTY1ibib4iaFG89aEnFCC2uP7J2chqvaR6lJNExRcuRFfHh/0', '2016-09-01', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('162', 'oyqTtwy3SqW5rUagoLqn-viacno8', '', 'scott', null, 'http://wx.qlogo.cn/mmopen/GEicHjw6yAoausj0bjjZeLPVjlDRbXy0tw3fbE001D2y6DJdatRGOCvAxbcw2cpkpQq4tgWvBgxFYBm15Ftf8ia1xcaLicE6t3p/0', '2016-09-02', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('163', 'oyqTtw9ECLc9VMQD80KjR3zNuo84', '', '奇异果', null, 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM4SGZIqicZ8xrfME4yTiaBbIcZelLWMoGqtPFxFVicMoWEuund0u7kCDRCrgRMEwkHJSh8FEVgZttRoucQIZNuMC59GiaFNic4Q2j3M/0', '2016-09-02', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('164', 'oyqTtw67Y_g91SQby7DH3U2IqUTE', '', '哎呦，不错哦', null, 'http://wx.qlogo.cn/mmopen/Fz6VicuJux6GrsDojdDUoKk2NR8icagicCkHvNuaYXmEy305aa0ugA95Zdiaicib8QkjEMC4kRG6q1icmRjkJP96X9xNNjuibl8S8Xf9/0', '2016-09-02', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('165', 'oyqTtw5IaGbQIumaF-GB4O4YlkI0', '', '呆毛', null, 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEINbqq0iatyuLYRGrIvhBKl3CDmQApFRnT02cng8SBwblquxibapcc1DQupjwuloBGI8iahaP4iblFJ8w/0', '2016-09-03', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('166', 'oyqTtw3bV5mOoYWAwr1AYPf_w0DE', '', '劣徒 ゅ', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKMrkYDpIGuCxpkSACicHkBM0ZbYiaiaQK0ichDmNsE7ibKCvBo1B5TrniaJXDXXy4icjjaZkMP1mpHDhh3LqlDrN1p6lHs/0', '2016-09-03', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('167', 'oyqTtw9cO0TFSppEweVBg9AllGvM', '', '夏姥姥', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKMrkYDpIGuCxs29P1M9lURK0nBdGrN1DDgyk3DluwmQZSqHziawJDKR8rciaX2yxFm8ngtJA6rJNNCA4VQl64O7Al/0', '2016-09-03', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('168', 'oyqTtwxGjP5GfG6Ix4z7d1D0g930', '', '楊', null, 'http://wx.qlogo.cn/mmopen/GEicHjw6yAoausj0bjjZeLNz7aPwpibghXNU3VfWSp0zcFwlFJPcS7hnO5icTKiccnBtHY4iblfTia8rHwD1zu7P7MHtUdgoJ0aXkw/0', '2016-09-04', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('169', 'oyqTtw_WCB0FzRmorLOo51JEMkCE', '', '坚持', null, 'http://wx.qlogo.cn/mmopen/Fz6VicuJux6Fn70Vpcrc1cyoXW5G6w5Gk4iaIWgQiaLce0qBXDQTDOvuYfP1E9NliapTnwzF7Or96eVTCIGADPQJKYvibqoicjhnqw/0', '2016-09-04', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('170', 'oyqTtw8_T5EzXa_bV69DuPiLbrnk', '', '海英', null, 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM7M7Qbbx2WUiabOOJl4jlMYzVkrqUmSg9pegS49XbYibwfXoyopGibVJof29acaLAwpym9YRo1AAf41rBdFQC8TtD2WTCufUvBQvQ/0', '2016-09-04', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('171', 'oyqTtw3ZP4OofuFkM2pR_ltiNeNQ', '', '迟到的土豆', null, 'http://wx.qlogo.cn/mmopen/Fz6VicuJux6Gan5ZFWR65Qm5J8zlznoRB5fZ5tmiamtWzz2AeouN21K6g3Fd1KJQQjR7RILYTterjoFiaSSErQ0Sbhhh86buRq3/0', '2016-09-05', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('172', 'oyqTtw-_gendm-RAW5u9bScr_DOY', '', 'Haber', null, 'http://wx.qlogo.cn/mmopen/GEicHjw6yAoaLXHUMYAHoH5zpr2cjjJib3RkgUuiajpoMiblCG6CCrSiaJ1rH3ibJufNs7w4N3FPNic2FKP5QexN1bL1aO4o8t9YXwU/0', '2016-09-05', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('173', 'oyqTtw85JJoOhM7nf7CTrKEH7sdU', '', 'yepan', null, 'http://wx.qlogo.cn/mmopen/Fz6VicuJux6GoHf3ELocnc2Inas5mWVmRxAc1WHpghHoc2ULqDPjbvWGDkd3eDibvI130Xqbzg7S81p0G8Ur8PjfnEXeb6IwC9/0', '2016-09-05', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('174', 'oyqTtwyPXTTrSvvjAp0dblnYicPA', '', '刘大明', null, 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLAeTNPABkWuZaHgWhic7GvPfPIicPjaUDQ968N5kQyJtqDpN75OgicD59bF42Zp9xOhdiajoT3EQAuq6g/0', '2016-09-06', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('175', 'oyqTtw_1lKS5bMAK9U0Ujo6jGIUM', '', 'wade_川', null, 'http://wx.qlogo.cn/mmopen/iahdQicCC5VBSq9cE2amXQ5hP8c3SQZzAqI0GFvibH8BAplXtr6aThd0N0ich63pyzwOVV0uzOQvcq3qfIP9AaHONA/0', '2016-09-06', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('176', 'oyqTtw3ebkkuo9scH3wgYBjFUNiU', '', '寻找一份平淡', null, 'http://wx.qlogo.cn/mmopen/Fz6VicuJux6Gan5ZFWR65QmYqWwfDYjS0QsceB0ol01icn9QGTTOOPmawuRcEkwXOpc36SDAqHwjsIZSFNPzRQQe9S3Jjj7N0K/0', '2016-09-06', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('177', 'oyqTtw6gaA5Wuh9aNB5_emTm4W8k', '', '杨叫兽', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKNvQza6dMckTXdx6B1aclYUicnCbumlFIpre96QdynMreqibTcgo7PQSj0oKMP9Ned1Qibo6kk9qsnp1NZQCCjmYVk/0', '2016-09-06', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('178', 'oyqTtwyhgl0bTLUXOLonU-YjzoFo', '', '走路到纽约', null, 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEL7m5MCHztg47OWicMUvczjYTicn7e9v3TXZz5qQHZ0iaTefM9NJrnhsxvRiagNWb9wibKOkQFGDvQkMEg/0', '2016-09-08', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('179', 'oyqTtw7YNOwzjFWNQ-OnyFaODSgM', '', '冷雨叶。', null, 'http://wx.qlogo.cn/mmopen/iahdQicCC5VBSJNLvGAbTnkdyfobPJIiadMFHGpUUHbVKUia5uia9rKX5QmUE7Ez3dmS9B8qfjXKxrQVdBbgIkyOWnnx59adJ2XA3/0', '2016-09-09', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('180', 'oyqTtw9abo9ZpQURbbh5-S8auD9I', '', '小青', null, 'http://wx.qlogo.cn/mmopen/GEicHjw6yAoausj0bjjZeLIDXaVvd36bPh8Dic0rpFVcTMwCp5Y0U3cD9HvNr3h7goHMibcMaFrLSU59iaRynSoR1DI6xZGvHNgl/0', '2016-09-13', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('181', 'oyqTtwy8o-Xdflbv2N6Qg_iK2p0k', '', 'Since-A', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKMrkYDpIGuCxv82sqdzSVgdY0xCza3As5S8wfiadviaykoaqH2ssGNiarYjGV142FlFvWXJtsQto8PoibxtSAsbQjJ8/0', '2016-09-14', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('182', 'oyqTtw5oANq7VTTVQ9Ex03JDYGME', '', 'Adrian', null, 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM4lx184PnNf6JtPbtseoFp7W1G452T6vGR8Rcp4S2WaJ6NLzuL6LZPWOewChDpSIbvoY6zXFs2pibibf0hd7y4gRu4dh0tE9fxNY/0', '2016-09-14', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('183', 'oyqTtw4orv5TBRsz1CCrrU18du5s', '', '龙星', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKNqzO1ibUkiaeQmFw5SicFC4oHmG58PawknySbRsJrrm2EZxhpl6Uel7suJgEKYicK7vfd2UBY8fRYxyxAjgSgkmke7/0', '2016-09-14', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('184', 'oyqTtwwsCMLj1vRupg7-bZteqYYI', '', '硬汉', null, 'http://wx.qlogo.cn/mmopen/3jRiazY6XazKdjibR0KPh3K0pM5jgwibyjJ5MicSFjbqlhOudv693XQ4sBs3RuwawEIRmmLH6RLd0TtLm1AaRIKeKJQMAzglICn5/0', '2016-09-15', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('185', 'oyqTtwz6CKxywINf8fIHjdTkhfy8', '', '姜建林', null, 'http://wx.qlogo.cn/mmopen/iahdQicCC5VBSCGg65m04jn3hicnHWDlLGLeo6zpicMp0gwicyUg4R8gPlM6qXm9mgGdfobcUOkLkQicezhfXdicibRzGgsmCQUwmRww/0', '2016-09-15', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('186', 'ou8VTwn85kT1eSZmL2Lz7RmXZo10', '', 'wum', null, 'http://wx.qlogo.cn/mmopen/6t0VDe9bl5decMZw1o4qXEYoia2kiaJMibfM5UibpXGw1Rgz9kraXzqNvicNbiaiaBicO4ge41JvXwWiaocxZTpWBoV66E1TmC4A90j4e/0', '2016-09-18', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('187', 'ou8VTwpbPyK8rYDrec8Xz024pXnc', '', 'Since-A', null, 'http://wx.qlogo.cn/mmopen/4GwEgiaOAwfl6HpHULs1SvtUzSU2UPsib4pqJHNpBHbq8EeSsj9oK4sLB7AXO9FKySGIzWE7XarA6SyWzssu9pjeoeYoXApzLq/0', '2016-09-18', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('188', 'ou8VTwljRzueY2YuUjYxNnB0YKTQ', '', '✨司马逍遥✨', null, 'http://wx.qlogo.cn/mmopen/4GwEgiaOAwfl6HpHULs1SvoBuMYMfGeFD7Y7c8R3gaSnxVKf8yPteiasUibhqbbOH4O7joAKAzPic1iaxw0TNqWymIyI97zvoUeHP/0', '2016-09-19', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('189', 'ou8VTwho5jucEwytPnP0MBr-xVHg', '', 'Adrian', null, 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM7TpGFjia3iapyythLVvica2OZoFQeqqD7hoic8CUtMr0L04HgySZFotFXia1bqMMH4pUrpq4AelVczyIqSUQicgeY5yEh3RRLTaiaWyQ/0', '2016-09-19', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('190', 'ou8VTwqa4RborKLR1cmsu0Q9QrL4', '', 'Krismile', null, 'http://wx.qlogo.cn/mmopen/wnCxTeuKa1fA2JEOmZNUcVSw50HUyAyS0mr8zJs2OJauHrZMjibZ3RIonCunBWstkA8GK2k6VH2TapF2jS6hPNMtnGlLGv2Da/0', '2016-09-19', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('191', 'ou8VTwgfr0H4ReIvXZpgiBlhqGZM', '', '徐辉', null, 'http://wx.qlogo.cn/mmopen/wnCxTeuKa1fA2JEOmZNUcRWAbI8LnW1ul8wtgh5GpFPrQqdxHRz3IIt7RBTw5gJE9H0NgwAOT0EyrUJ0MyUicRYmD2g7By0x8/0', '2016-09-20', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('192', 'ou8VTws6WD0XhKyFIrzurEOk_B08', '', '韦', null, 'http://wx.qlogo.cn/mmopen/6t0VDe9bl5decMZw1o4qXPgRdbBePmfgWmtRjkZhcsSvM8mlYv4ZFWlWuxuXZe0gCm5T7K8IDAOS1I6xpOFcCVoIhZHUTjZ0/0', '2016-09-20', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('193', 'ou8VTwjcT9r3iq1TdcVMsn5zlSwI', '', '风云', null, 'http://wx.qlogo.cn/mmopen/4GwEgiaOAwfl6HpHULs1SvhS22V6IsiajUZWF5VGXDSpNcymCibickgic6xuKJJ3iaLjEN9SrzTqP0XP3Qtz96CPVVyF3GMe0XNjvU/0', '2016-09-21', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('194', 'ou8VTwoICPQd9VSLj9FSkilLTFmY', '', '郑绍鹏', null, 'http://wx.qlogo.cn/mmopen/wnCxTeuKa1fA2JEOmZNUcXhSIYe7W1dvzKv3sXomTEw0PXo4Aia80H8ibCrPnSxGhKo5CibqAakpoAicjF8H6ZovHg7ZZr0ZOic3R/0', '2016-09-22', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('195', 'ou8VTwvN4GzWWr79oZLvkD_YxsuU', '', '楊', null, 'http://wx.qlogo.cn/mmopen/wnCxTeuKa1fA2JEOmZNUcU399tlA9X1q9licSQIrNWrtRibf3Qrpib9dEjsyICqmNax1RW8bBnRGl0EXvD7C70V7anzDXfLPFoI/0', '2016-09-22', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('196', 'ou8VTwskoxxmWPrfJzWqyNaPNMe8', '', '徐子旭', null, 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLCqeib3ia1HW3pTyRxmLcNeePgic7Cect2jeHiadTAibRYIIvmTJL9AoJEF87qYhGPNDaO3xiaibrKykb5FQ/0', '2016-09-22', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('197', 'ou8VTwqfBP8vjG9h55ihMQ01MRY4', '', '韩聪', null, 'http://wx.qlogo.cn/mmopen/wnCxTeuKa1fA2JEOmZNUcYib2FcwdzJYhpicaUjY7kxTm8boJoDaTMTEG9fs39om9lhib17RwcQIiawNicicCz19B5rNgj0C3vP0zk/0', '2016-09-22', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('198', 'ou8VTwsobQoGHPRsCxIq_m_jk_z8', '', '伍照生', null, 'http://wx.qlogo.cn/mmopen/wnCxTeuKa1fA1FqMZFReSl6AzD0OicDDpmXs9lFdaRbCajsLy5Krx15lZCiajAInteFh85V1bf1aXVrCicR8b5JkNNo2fnxFIyc/0', '2016-09-22', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('199', 'ou8VTwq99JgxdYFlFBn0QS_aOSbQ', '', 'Chen chang qing', null, 'http://wx.qlogo.cn/mmopen/qg6b6KFrM06w0ibaxoKabcDL5c4Cd0NFNncmFGpuiaZOAS1QcVjQRpgPlOiatlU3Sictu2BsScrjMoZWVEQf3YgGIHHeFI331UeQ/0', '2016-09-22', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('200', 'ou8VTwqbP6sY2C6blaA0Vg7BvXrQ', '', '波', null, 'http://wx.qlogo.cn/mmopen/4GwEgiaOAwfl6HpHULs1SvoTsLSGJ6ianYyUibrhapLlZoYDemEE0MYIWqgtqPiaISwqYfsyEVgOLL6VQ0icT0a0tdDw3SluCrn72/0', '2016-09-23', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('201', 'ou8VTwmv8TsZQgPnDiaUFMJtCACE', '', 'Wujy', null, 'http://wx.qlogo.cn/mmopen/wnCxTeuKa1fA2JEOmZNUcT2mabqxZg7e3mAzaezzrWkbo52IbV0nZUzBNNcNBNOdVv1iawaVcVkEgAqdAV3Kicy8VeXlRB2QZo/0', '2016-09-23', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('202', 'ou8VTwua1n88i0M-8HQD3I5CpRJc', '', '小奔', null, 'http://wx.qlogo.cn/mmopen/wnCxTeuKa1fA2JEOmZNUcUwqoMRvVDB8ggJCica2NqpyzVs4icsjHg4GPnBccjNvR7Qs6vONvEr22zialSAkR9vPmL6rNeIwGYp/0', '2016-09-23', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('203', 'ou8VTwqvmbvC70s3zwNfua8yfhLs', '', '我喜欢两个啦啦', null, 'http://wx.qlogo.cn/mmopen/wnCxTeuKa1cI9jbBZrIiasCRWeh0BgXvMDRKVyUoavThJ3PY8e6Clp8ckiaOkmPQCjPsysFCBGz3UplVCQSOxDQPXCy2zq7iblx/0', '2016-09-23', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('204', 'ou8VTwjjeTBoS_83y-GVz_dsULFA', '', 'alo', null, 'http://wx.qlogo.cn/mmopen/4GwEgiaOAwfk2NbCYwMOd2NOLuK6OZqusnaiasyVX5RCZiafueBztmNibk3AERsrzT9c9noWSI27A0BNh9Vbj7XDnTC8zppPrOsD/0', '2016-09-23', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('205', 'ou8VTwsHuNPVYK4tL_VWP9jzqajw', '', 'jiff', null, 'http://wx.qlogo.cn/mmopen/qg6b6KFrM05Jb5WD2BdbQic4phib9cDlcDtH8ea1dVFanQBe5QYhibMibFZy0JwDR52KK2dTEiayHG7c2rAlJdNl1tnf8xjJiccuxV/0', '2016-09-23', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('206', 'ou8VTwg59902of8MBzwj788xKzDw', '', '天空蓝', null, 'http://wx.qlogo.cn/mmopen/wnCxTeuKa1fA1FqMZFReShHll5uQYTSqd19Vx8VehYvvh6qUoPF3h5dzXnbvT0bCIibYxrwxWNTesuPufian3d6QMsYtnnFcM0/0', '2016-09-24', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('207', 'ou8VTwlfDS8UPZqa_kmj5tq1eprk', '', '邯郸市爱尚科技', null, 'http://wx.qlogo.cn/mmopen/6t0VDe9bl5decMZw1o4qXIMwSibpjdMSPZHT3MXBDXG9eFKMAzB0LUM6tEqb9zb494Qcicedu7icfvsibOg8sQlaV8e41nJnKZ0B/0', '2016-09-24', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('208', 'ou8VTwlq0fSMJah4dfXyYfKY5CzQ', '', 'Before The Dawn ', null, 'http://wx.qlogo.cn/mmopen/4GwEgiaOAwfl6HpHULs1SvjTjHOncQej9ISpvtTGOo03uo50zhr2ibeiarYMA0byibC2YKNxSaXI9pdJtwussZvP6CJ0SJQ8IR6ia/0', '2016-09-25', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('209', 'ou8VTwo8q3LhTrJjq7BqEeIxj1T0', '', '我是牛王', null, 'http://wx.qlogo.cn/mmopen/4GwEgiaOAwflZMXELWQ2QcibfXRxdJ8dmPONb1MLhicj2nwwiaNtNGhNcOX4Rr8ggvrAHFVLdB9Zdicug2Wiamepd23sjHibIxHrUeb/0', '2016-09-26', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('210', 'ou8VTwoVbGuhH2GLGAjxjSywXPf0', '', '贱飞', null, 'http://wx.qlogo.cn/mmopen/EU8PpGoNLP347lrEaXGZVagMoRPwg8qJ2zFR72yHo4b6AIqLF6rL1N9V3VGkSXYXYqicRo38m2zNPltDjxG2jrD4KAOA4jtB0/0', '2016-09-26', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('211', 'ou8VTwg-BlQa4CZOB2Ka4JBPXlS4', '', '碌志', null, 'http://wx.qlogo.cn/mmopen/A7eiaCicdqUnZlkrJA5UEibRZzzVRYeoibTBlcFoDCWkLER09bq0zTYB41ics3pmpRlyBst357NQ8QWIHMZMsnNkiaE6uwreRJjYWP/0', '2016-09-27', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('212', 'ou8VTwsEJ4xoCh7qfLcDx9-6tdPw', '', '李泰然', null, 'http://wx.qlogo.cn/mmopen/6t0VDe9bl5decMZw1o4qXKq2SnB1bkFjAKqSN8tnexlymsfB3mlHumWKIeLMH2vB19qQ8rBgXFqHT2Dt4YpVQWFcakRVBHA1/0', '2016-09-27', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('213', 'ou8VTwvABQpyIpJDBFvGnUPJAcmE', '', '丫丫_追逐', null, 'http://wx.qlogo.cn/mmopen/6t0VDe9bl5fiaqMicT0ISptZX41BicKhof0Lyt8Q16HFpvxACc5daiaH93IKkI5icpDoFccVXEn6fNVtHnOt18icF2XgWt1buKPjkR/0', '2016-09-27', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('214', 'ou8VTwoEE7MArX5PFaNqdsYysPwc', '', '小宗', null, 'http://wx.qlogo.cn/mmopen/wnCxTeuKa1fA1FqMZFReSjjcicicKbB3OiaR4jqOYmUe57oKWSUmqBMJwvpYeWKCPMlxET3xKNU5XnddHD1QGDBeQicVNvbtahnt/0', '2016-09-28', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('215', 'ou8VTwpm1_PlXzQ2YA6ZF1I46m6c', '', '小熊', null, 'http://wx.qlogo.cn/mmopen/6t0VDe9bl5eXxLE0m7aYbW49NMl8k64UCQcicTWu81NUkkujXtqvCRQo3d7tkgvkyfI0h7ugDY4KwJUEscqJkWg/0', '2016-09-28', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('216', 'ou8VTwkfzz1iPJyoVW11lHyzoedU', '', '郭鑫', null, 'http://wx.qlogo.cn/mmopen/4GwEgiaOAwfl6HpHULs1SvgB85J3FEcibmBiaRcgQsgvjpib3ibT2BhAb3UHqebzGvibvtc1H8xuJ0W3SUSoWLW5h5e74shaqX3wJu/0', '2016-09-28', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('217', 'ou8VTwq12pw1npBjLu8jqABXSFQo', '', '西门吹雪', null, 'http://wx.qlogo.cn/mmopen/qg6b6KFrM05ehksSibu0SZC7yEE3LyGellJNjanicia94YxkVURnCvweiblLYIt7WpaofeJz7IwwrB1kOwpfn8HAG0McNJ9PHBEZ/0', '2016-09-28', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('218', 'ou8VTwic_nOuiMobj9DJFPuB5ekU', '', '杨尚元', null, '', '2016-09-28', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('219', 'ou8VTwmjJ3r5OctgI-Q9ux_gkrhI', '', '小冷', null, 'http://wx.qlogo.cn/mmopen/4GwEgiaOAwfkDnO8VlibYOiaGjic8EWYibZRVzMswjML5W3J3GkKia12f0vJialDzeibyJAtMOGjmN9pb8RklQsBibCRFKoS5PNYM634W/0', '2016-09-29', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('220', 'ou8VTwtWPTi1kryzSqqes5k8LoBg', '', '潘老师', null, 'http://wx.qlogo.cn/mmopen/EU8PpGoNLP347lrEaXGZVSGGibwMKglVjdet0wuCbjcdB6u68qWCIyOYr3V074caUzC7zsy5lafbXy6bWNBYxTVzS0DicYwvo3/0', '2016-09-29', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('221', 'ou8VTwpyzI2-wB48eaq8VeKyqMHs', '', '叶松', null, 'http://wx.qlogo.cn/mmopen/EU8PpGoNLP347lrEaXGZVd1Zms23r80Beib8q8u8JYDoy4Bib21D5PVc227b4WBn7maSZ0DJ2J7xC3FSesmFvl4icZ3o3f4GkoU/0', '2016-09-29', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('222', 'ou8VTwnjnL5K8tAIPFPGo4MDD9os', '', '肖', null, 'http://wx.qlogo.cn/mmopen/6t0VDe9bl5dqVTQibPw2McgOaQwLmh1PibxNsHs7hvcdGkPVJJ36kH4Mm7agWoyXLKBhdfkEfCO9oib8iblLvmOSic4zichWVf6GTs/0', '2016-09-29', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('223', 'ou8VTwtXee4vzTawUp9dyfUNq7Cc', '', '鹏', null, 'http://wx.qlogo.cn/mmopen/6t0VDe9bl5decMZw1o4qXNK37sPrI9hjJa6zsSWCByRFxDZ3np1orZ08kp4ia5OnEqFwwibr7kYBKSpDrBRTwwWSz90wpUPhEo/0', '2016-09-29', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('224', 'ou8VTwsxLQTCa46WsPLUecPZW02U', '', 'george', null, 'http://wx.qlogo.cn/mmopen/EU8PpGoNLP347lrEaXGZVca5Iy7UWEqoYW5d4wyCHhYVgTW5iaVPymF63JeibcUIntL9pOcjH80SXiaqibbnZf80YUoIa5dMtRJu/0', '2016-09-29', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('225', 'ou8VTwvH7Kozo3gjEl0R9wPa4xjY', '', '袁乐平', null, 'http://wx.qlogo.cn/mmopen/EU8PpGoNLP347lrEaXGZVRWvGVZE54gVF0Ak8S8qbw4kxJaFT6rq7H5wgEv1U4XFCTicXW9O8OI1OiaxP6aIb1HaqaNNpiabrXL/0', '2016-09-30', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('226', 'ou8VTwghow0FxiiKOvezMz2Qng8U', '', '呼噜猫', null, 'http://wx.qlogo.cn/mmopen/4GwEgiaOAwfmf0nkUyftoLYUSWr0Q4BrQ7XfDyXkSSCFZdyz2IFVyib7wXRJ2d0puuxl8ibqRlyzv66l84Xc1wiboA/0', '2016-09-30', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('227', 'ou8VTwi5QeqO9G9Crq5Gxafs6aGA', '', 'TF', null, 'http://wx.qlogo.cn/mmopen/qg6b6KFrM06c81nS8zrGTugayHaO6xXibMicEwn0noDBckGd6iaShlibvPch7FSsxDf9UUnjibytCKqhGvDeORHl2vtHjlrv3tX56/0', '2016-09-30', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('228', 'ou8VTwgagvfC9iYQmQAPRzM4ZeVY', '', '╰　Bear゛', null, 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM6m4ujaNxToy8IYf7O359JK66O5h6icTKLUjDcI1swpaacUOn1G7bO8JXY0cZqaaWhpjYbdiagWRJicg/0', '2016-10-02', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('229', 'ou8VTwjiiL2rg4Gi4smycpkOBwvQ', '', 'A 味丝蔓肉松-阿权', null, 'http://wx.qlogo.cn/mmopen/qg6b6KFrM06c81nS8zrGTg1x5ynMsHqGsYI4Tia0F2qb3sibxatiaV6eWf9l2AzNhicVibVQeIqpvGDUgibfFfibj1oSicBIVNlmaFp5/0', '2016-10-04', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('230', 'ou8VTwtCzmuG1D1T95LN4UwyUY2E', '', '小傑', null, 'http://wx.qlogo.cn/mmopen/4GwEgiaOAwfl6HpHULs1Svtc1myggicN0uiciaOiaubIjxq0I1evzWzzvZfPD5gKwPVWtdQvRpQNWuAH3XIYO8UWYsothKQR64MTV/0', '2016-10-06', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('231', 'ou8VTwvgkqdJZ3Uo8tessAHh9G1M', '', '林子', null, 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEITvcLEPTuWgxqkVcSayo8bqt5iclYHCt93GxIhZhFX76tAyccmSYicwicS9YPckTGt9MAHXAG0YRsSwBGSNNprMo6Xk0Zbhv3BYs/0', '2016-10-07', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('232', 'ou8VTwmhEgoR81Ho_iIdvl4H00ug', '', 'oasis', null, 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEJmrHia4wtgH76gzv5aGKmv1baM1AGBIjicEYloY4ZT5eXDkaYGpX6wHBIrxS1JMFeZPI6SfRflUqcg/0', '2016-10-07', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('233', 'ou8VTwp55m5uav8cLFXsYS48fJmc', '', 'twang', null, 'http://wx.qlogo.cn/mmopen/4GwEgiaOAwfl0VNicZLYgP7ab2YJ6f1MmA76zicJpicbCZ90Ne0XAMrO9OpjDS312RNclBicssKyahtj5e48UYCLibUQ/0', '2016-10-07', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('234', 'ou8VTwo7RcEohkL3mvA1NUZzo_Us', '', 'ice_冰块', null, 'http://wx.qlogo.cn/mmopen/qg6b6KFrM05Jb5WD2BdbQ7hor0dAWaDs9J1hRNV9sZMrd2iaqYzXOzNpN8BuEGn2651r4Uf5SS3J8dHfaXe1icOxawSib1YCIPJ/0', '2016-10-07', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('235', 'ou8VTwl-26Z_Hhz0Bmxsk9ZSRq7U', '', '周亚策', null, 'http://wx.qlogo.cn/mmopen/qg6b6KFrM053fibhPibBrJVm3kYwlqmaAqkdjF0CPZ0NWdm2NnCB2J6nu4eXTQTRl3xOuyIib3xXOj0KpvibBqibF1Xtz7xlMNPaH/0', '2016-10-07', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('236', 'ou8VTwuYXOhkEJkcOrn7_G8Bfr7Q', '', '太阳', null, 'http://wx.qlogo.cn/mmopen/qg6b6KFrM04g56Cu2DE2MTCDt0AHHIM5BMxCOhqh07PveqjuF5lQLAXRcxDZQ36f1bpeodTAibicebnPg9emlRGCLXF8KC66DP/0', '2016-10-08', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('237', 'ou8VTwuUPc9lTvU1La4rqmoNOKRw', '', '戚俊豪', null, 'http://wx.qlogo.cn/mmopen/4GwEgiaOAwfkZZKblxibgOpf8dZaGO1THPTgAsCfcqXtpgATtGP07n1nQ7ibXLSialI83bymkmxF8gIWDJrDfVYicuqYFCZLRU6Jp/0', '2016-10-08', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('238', 'ou8VTwjRniAhbpY7IkzLN_sKaGro', '', '呙呙', null, 'http://wx.qlogo.cn/mmopen/qg6b6KFrM05Jb5WD2BdbQictAgOhtDtmd6WfT3Rw2b5UsnXLVISFGJibRDMoxIluXPdp3FuwpBGK0Qaic4dRUeoiaicp6D07z7Slx/0', '2016-10-08', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('239', 'ou8VTwhOrxREKicoSZhZvrA-_Kvk', '', '美粮公社-冯伟涛', null, 'http://wx.qlogo.cn/mmopen/qg6b6KFrM06c81nS8zrGTme8FD0qZz6aAuLaCLYnndRibsSlIR5M8N6ydUwiazicCiaptNHM7SjtAYSqUuR5jQA0bPicUcrha2zsH/0', '2016-10-08', null, null, '1', '2016-10-13');
INSERT INTO `tb_user` VALUES ('240', 'ou8VTwn8GALAjZc8CTMPIe_G46PI', '', '南海咖啡', null, 'http://wx.qlogo.cn/mmopen/s7R6QvH2B2c1A4418un99mD81MibXaxuICmYceqcXAN0V4D1ZiaCsBh6vBuj4lMFkt0Oo4YMWyYAnEWocBiayhY3oql2iaTvrGW5/0', '2016-10-08', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('241', 'ou8VTwl3REoOyOHqdCoOsI8r-fPI', '', '黄生智', null, 'http://wx.qlogo.cn/mmopen/4GwEgiaOAwfl6HpHULs1Svl12SMweml8eo2ibuMdcvnhCKFsYv5GQjJTX6K9MtAPic7U7fxMXxiaibZGcSkwcgZKhNW3Jx19m9tqX/0', '2016-10-09', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('242', 'ou8VTwnLzglUKwUaohv2KBNf3Fvo', '', '苏兵', null, 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEL8R3JYzBcwpL3rPTUScGfCjlyBsicDUDn2x4ae2QAFcTiaSaW3j3n9ibzIFZxVEibC95u6r6KdejJrnQ/0', '2016-10-09', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('243', 'ou8VTwpFGp_7cX9nIj7yQ1NqAcKg', '', '点点爸', null, 'http://wx.qlogo.cn/mmopen/4GwEgiaOAwfkZZKblxibgOpSmJ1B2s8RE785X9Z5mBbolVyHuMHwgfL56Ht3lpf4fF74lbnBaosAmGF44oorvHmg0bN5eL90m3/0', '2016-10-09', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('244', 'ou8VTwtC9vvMm4TZ_aoMlVwiEn-E', '', '永不言败', null, 'http://wx.qlogo.cn/mmopen/wnCxTeuKa1eF6Y2N13a5IjZy72uK3nJdyoww6teiazDicNL785QSunbWpspp0wp6FpnrPWnuBNWpXFxE5WHkianmgBVulgSxX9N/0', '2016-10-10', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('245', 'ou8VTwvAtQdpsdkLTE7Zq1_8KScE', '', '毛頔', null, 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM7M4R2cRw7AD6fiaXpuqrgVyN2rUo1CsqhmJVWYYic6KXShicibCxLUYDPkbzn70hRIoribRicp34nhhjibw/0', '2016-10-10', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('246', 'ou8VTwgcKKLZgGLkquK8-sSpqMdc', '', '大海无量', null, 'http://wx.qlogo.cn/mmopen/4GwEgiaOAwfl6HpHULs1SvknUB8fz2Y8FRHQyMhxw4XhUYCYiaHB5OHrgzWKfEYR7MEQ3Ke7mAqPicjGJYY6591tLNevicalZdPU/0', '2016-10-10', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('247', 'ou8VTwiy0LiYm5casAiw9NZV5P-E', '', '王进', null, 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM5H2LeU8Ro4tnibU4wKgYc62X3p07uEI9cv51w0Gfjb1GHGlxHLMn2Xx2Yyia1JCkpY1ACxcz6n2VFQ/0', '2016-10-11', null, null, '1', '2016-10-12');
INSERT INTO `tb_user` VALUES ('248', 'ou8VTwlXE--4jVErbh8UhrjiisNE', '', '徐学林', null, 'http://wx.qlogo.cn/mmopen/4GwEgiaOAwfl6HpHULs1SvjbT0nYr2MW3hlrEPian1pJKmiaKEGocRszkIFXXbtRqY3twJDAvLrwgz7TDwzk3D42EFicdmticz2cG/0', '2016-10-11', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('249', 'ou8VTwqeZc3y6_6WzO4pVuzwwXps', '', '小二黑', null, 'http://wx.qlogo.cn/mmopen/A7eiaCicdqUnZlkrJA5UEibRaJzyFJU4JvDJiaU6jVwSu4B4r8mU0ERtib3BfmiaVxFrz9ibGn3M9pRLwcP5kiaYwG9ZwMz1ZKYaffP3/0', '2016-10-11', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('250', 'ou8VTwri7M9MBH8cL-DQ2FVgtaIs', '', '何星', null, 'http://wx.qlogo.cn/mmopen/4GwEgiaOAwfn5yn3HX9FibfPPeazIWkSGiaDrQDsv7iawpUGdyMIAUx5iciaTRnWSJGlQ7icFTymj4cqsYKPG8ibvbhbMw/0', '2016-10-12', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('251', 'ou8VTwnjIDHwW-Mcd3gIXdgkgTeg', '', 'Jepson', null, 'http://wx.qlogo.cn/mmopen/wnCxTeuKa1fA2JEOmZNUcYrVxB9cyoLknmpAIWKGRdApRxg0ibAlfyX6Ficv1jyxQOHhQN6yBkudVozuTXPzm0DXZuRL6ECGyib/0', '2016-10-12', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('252', 'ou8VTwjWRmk_CVfEBiQXOfTly5gI', '', '蒋述江', null, 'http://wx.qlogo.cn/mmopen/wnCxTeuKa1cC6YqWXBrBoE11icgrqVeUJMe00J7Sm8k0Ift7C7EVRjS3rgyLIpYypnI7RU2EibwA0bvUia6OB2bdLyXicNzVecG7/0', '2016-10-12', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('253', 'ou8VTwgF5REv9Jcc2L077FbunN8s', '', '一', null, 'http://wx.qlogo.cn/mmopen/4GwEgiaOAwfn21REoY8ywVaPLVP2nYmbVV0UiaucNOKsrb95BgQNG1lzmHib9f84xh3wNTlIM3nz9V76vL3OXb3tsyoibibibcPuLP/0', '2016-10-12', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('254', 'ou8VTwgAR54rezdb_srBGM3-y8DM', '', '周宗柱', null, 'http://wx.qlogo.cn/mmopen/qg6b6KFrM06c81nS8zrGTtViaXibnZj0KtvnRBOicUkDEUt215tqIrZLALAV5FZCuGzWBn8mNuRbAibwdC3Zj0AEI6XdRnpSZMzn/0', '2016-10-13', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('255', 'ou8VTwlX7U2v-AmokmTT2dMHHu2g', '', '豪', null, 'http://wx.qlogo.cn/mmopen/qg6b6KFrM05Ro63reWkVsHSPah8b2c0VoWTRia1QsvS9vRL43rCyxCb8RDNNsO2L7bcCC4Mbspn1L0wv4VNTkHH9jScl4tQkZ/0', '2016-10-13', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('256', 'ou8VTwqDuRvJxicKvMLadnP8kRNw', '', '快乐的一匹小野驴', null, 'http://wx.qlogo.cn/mmopen/wnCxTeuKa1fA2JEOmZNUcaZSkk4E5iagzP9r8tjBu7c6cFxhK7HRUciae2R5FjytMb0wxiaIFI9VRfX9apicb1ERn2n80gjK4QiaY/0', '2016-10-13', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('257', 'ou8VTwqdZa2rN6nAJM0NTWar8zXk', '', '常乐-京-13164219588', null, 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLBiaZkFYibliaGYdxbCPgdukwI62VdU8qL40IQ8mq5YPFYaZkUiax5kWMsBUrfrYQ1j0kJugbcWTn6UNg/0', '2016-10-13', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('258', 'ou8VTwrSkK02zQAqRVoTLXgKJfKE', '', 'lqz', null, 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEJHty8EpTSVCXWGj82AoPzskaQMYcmFWB4krXJCcoG3LrSibBt1DxVr2pb3bau7djDpGLuCfmia6ibvw/0', '2016-10-15', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('259', 'ou8VTwldmozS2Nk393JoF_EMmsXM', '', '罗网科技_技术_jarry_米哥', null, 'http://wx.qlogo.cn/mmopen/4GwEgiaOAwfl6HpHULs1SvpZavT25dHohB4BiczT720ibk8VarCwgTmaursPmHicMreaSL60JvcSx1NVBGwEd9vvQws4bBcicZkqL/0', '2016-10-15', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('260', 'ou8VTwpz7x-rKxgON3aHJ7-AJBfI', '', '罗网科技（李涛）', null, 'http://wx.qlogo.cn/mmopen/PiajxSqBRaELvOXD4l1tvwFKHO3HAKJ6qKFXy3IicLicVf788Qnfcf5dNzE03w2q6PuzgaGGH2Z8XwRGiaEJiaexTKA/0', '2016-10-15', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('261', 'ou8VTwtFjM0uUz8fNiORllID_EkU', '', '罗网徐工【微信开发】', null, 'http://wx.qlogo.cn/mmopen/4GwEgiaOAwfl6HpHULs1Svgwibp7b5Y8JzpelXicCpXiakXGibeVxpkY5vwsVDTQM8w7naO6icmoypunIN2iaicLGibB6paIF35QHn6Zb/0', '2016-10-15', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('262', 'ou8VTws5C2eCda5UHRN4E_7wA3n8', '', 'Jogan', null, 'http://wx.qlogo.cn/mmopen/6t0VDe9bl5frSlE3sD2ozTnDaRA1VIz41HAUSI9f7feKWNFFibve6Uxdjd2ThjmN7LvrClZUWubiaiabK8DTuTmoA/0', '2016-10-16', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('263', 'ou8VTwtP7bAsgg_VjS6RL26-NbY0', '', '单色不单调.', null, 'http://wx.qlogo.cn/mmopen/qg6b6KFrM07l40lGZqic13AZl4RE21We3WFJm8dlymmia8DTO4VP8QZaZySiamsDw15NVcVD975m42TqvAdYlCc77xTQPq5T08S/0', '2016-10-16', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('264', 'ou8VTwslRd3euDxSpcpCHNg_mZvU', '', 'yan', null, 'http://wx.qlogo.cn/mmopen/wnCxTeuKa1fA2JEOmZNUcSzwdWvITBL2fxDGTMZn9GEzSrIMLvwicI3THfdxiaerXSfiayaT2NlmIovotp1lLM0ibPtoEONN9w2v/0', '2016-10-16', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('265', 'ou8VTwpBC4fvNK-YcaSRnp4aNE7E', '', '.', null, 'http://wx.qlogo.cn/mmopen/wnCxTeuKa1fA2JEOmZNUcQAkdBb0HX2Fs3u0ZRrQloK70X3GnGvP1QiaCOnPQ5iarxdtEaZYTBJfiawdqOlzGBwIJWmQMcm6AXm/0', '2016-10-17', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('266', 'ou8VTwp5Jg2vXpXZOhug01VUyLLw', '', '橙色梦想', null, 'http://wx.qlogo.cn/mmopen/4GwEgiaOAwfl6HpHULs1SvvQbfKW8c1kd10LI6pRFrw2oiatdsjWkia50Dia7pmLwibrWs7fL2lZh8pxpVdMA6pHAESTTaslv1j7B/0', '2016-10-17', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('267', 'ou8VTwsR94cmdcKmp7TNs-nIFRqI', '', '小王', null, 'http://wx.qlogo.cn/mmopen/jgWTLVAQlNSNXMXicy3P4EAW6dooY3Oricv4hnuNEnG21ard1NEPL2l0nGW0yctYm5pVR5kgGnSjzomTCXf438e2Qxh4bohy5l/0', '2016-10-18', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('268', 'ou8VTwsfziZsGMXNyCMWVCtFRvak', '', '啊哈', null, 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEI04pnX02sDIQXOCu5RStYGK4Q5VicUltqv0avNLztd6R75N7HtMz0dWDFNTl4ib1bDtc50ZJNZp1cA/0', '2016-10-19', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('269', 'ou8VTwjqR_GaTbEMnL_QAv5WQ8V4', '', '俞忠鑫', null, 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLBKsA43kTialmJr51Yj25NqDpsBwicHX7ia2aZich8Q8rmWnwbIHQmIU5kia7ZhYaLyTO2GV3lzEhIrD6Q/0', '2016-10-20', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('270', 'ou8VTwrN4op-MSU7n4rA5fV5EcKE', '', '嘿嘿嘿', null, 'http://wx.qlogo.cn/mmopen/6t0VDe9bl5e7mhNJtVv9HoWlsnE2VwQGaJB4CvBjIzhlN62lNXWF4FefYa5ibPAnu1aiaC7NgwF01r6BjG1iaerESByic9uhx97z/0', '2016-10-20', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('271', 'ou8VTwlnJueK5td1NtIGGK2A9kgM', '', 'Roths', null, 'http://wx.qlogo.cn/mmopen/wnCxTeuKa1cj7goUKuPzmJcD5ViaVZ11logTdXjwXxZEVg0PiaNPwLjc7ynVS1j3BbCMgpslj8kQicIkEmoHhUYmzz1bOGR2PLl/0', '2016-10-21', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('272', 'ou8VTwhiWQROhAXw8ghU41ozsTwU', '', '茂林', null, 'http://wx.qlogo.cn/mmopen/wnCxTeuKa1e8ZsicFOsvOtTq6iaLv5vpeGxhOoDkF1L7PsuWcqJA96yugFzzUmEIkVg9c2sxicIUVnT0bveHmPriaDOPg04wgQBw/0', '2016-10-21', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('273', 'ou8VTwk0U1f87cCyUDmUm0tC1i9M', '', 'yosi.*', null, 'http://wx.qlogo.cn/mmopen/qg6b6KFrM06VU1elHwhkfx3B9yzb4b2GH3Jyfib3bGOypibZic0677g9nrcThOWqbV8YlNjnoP0FxlpkNlgP3H9AXPs20wzibA7R/0', '2016-10-22', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('274', 'ou8VTwrBRhpyJ3VjkS1O4qKD46mw', '', '李杨', null, 'http://wx.qlogo.cn/mmopen/wnCxTeuKa1fA2JEOmZNUcTpGk3cP9H9fl2FppAGYOPGUjawd0KVJ5un2TGqwsN4ymaeyiaH68Moiakbh7xZ2tyuI5TItOOV3tu/0', '2016-10-23', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('275', 'ou8VTwpnz5xdB3gmSfLsbOxC849Q', '', '文文', null, 'http://wx.qlogo.cn/mmopen/wnCxTeuKa1f2pwt4FPiaNeINFR6ibkNrTr7iaHwDNoJ7hMcMSXTaeKKtITCz2aGVMybFJGxzue02dClFMltQBibTKuTcjMSFnTg9/0', '2016-10-23', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('276', 'ou8VTwihkxJm9ZYe_FXTFi6lwPaY', '', '快乐', null, 'http://wx.qlogo.cn/mmopen/EU8PpGoNLP347lrEaXGZVcFHw6RhHsuR2H55gPP1RA17A1qZOwITDq6cwduJknaYDg3r0iabY35oNJhokJxuB2KxUkgAlfIcF/0', '2016-10-25', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('277', 'ou8VTwk4FRmIo4cfjRRsr6Q4Dr4k', '', '狼.', null, 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM7eKyNEl6hwRK4DqhFaMM5TNn76iblFYTQxibsFbYQ77z8ib1eg6arvkjCrOddpFXn5iazmpFhuZHia30iaib7CiaaE6V5k2aXyjWFT1Mc/0', '2016-10-26', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('278', 'ou8VTwhft70pRpKFEswvt71ICWHQ', '', 'bdq_', null, 'http://wx.qlogo.cn/mmopen/4GwEgiaOAwfk1VBcjcyOBriaOLicHbOLjcIDP1IuhRc17XGZoB1B2DKYEWm1ff9Jl2FcuXxwSdJQibndib8XrA4TxsKrsvG7cjnha/0', '2016-10-27', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('279', 'ou8VTwhp2TJjEKPDL6vDl3VLUodA', '', '魏源', null, 'http://wx.qlogo.cn/mmopen/4GwEgiaOAwfl6HpHULs1SvhY8FeRP0blPqV8jiaH8szRtxhOlFVPvWa4esFrVHdJXea1HEmyUm1K9RD7ia6Rdy8GrPvtAlFl52Z/0', '2016-10-27', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('280', 'ou8VTwpefG2kauXvtutM_ww6E03o', '', 'SKY', null, 'http://wx.qlogo.cn/mmopen/6t0VDe9bl5decMZw1o4qXP7KZYWmkTicnsP3hkJzHZgxvete44sw2lLTgAvKuf2IPPM2ThopZcTk7YSpKYA3P6xPACfZ6lGDe/0', '2016-10-27', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('281', 'ou8VTwodU1XlPaohbX_YCFSC5jOk', '', '金忠权', null, 'http://wx.qlogo.cn/mmopen/4GwEgiaOAwfl6HpHULs1SvrNeYbCHMYBxy4HsuODiciad8jXoY3iaich9zhXW8SNbvJBFp28HibHkIHGbdeEtEJeicicFtY60BmyzlQc/0', '2016-10-27', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('282', 'ou8VTwpgEHmEsySjb-PuEl3NIhL8', '', '杨', null, 'http://wx.qlogo.cn/mmopen/qg6b6KFrM07bPsU5SOzx9kBNKSXkYmUx7FBE88LCCrlZJfF0ichyYu6kkyQ59loeX3jffpRESjXAibgYWrVauHOfEEmzrNvReA/0', '2016-10-28', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('283', 'ou8VTwqXTCPIlMeo3TYimLlrYU2A', '', '冯延', null, 'http://wx.qlogo.cn/mmopen/wnCxTeuKa1fNWETFE7icFuR93ribibdQ12WeAI0vm7y7zb8WNySibhFxV9Fsiazo58vCSBOt5fA9djD0nz3eGthzlQjfNibAQicltBp/0', '2016-10-28', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('284', 'ou8VTwn-DMCqX4lSh0VwljYMaP9E', '', 'xiaoym', null, 'http://wx.qlogo.cn/mmopen/qg6b6KFrM071XvD50fp9zoNZxXwkG7OaA7RicxiaAoIxxN2ndD4wa0aiauuEqU0mpBydQM5mmE1zKj2Tbk6IyIjMA/0', '2016-10-28', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('285', 'ou8VTwocFG9jP6RHi4wOd1yDp1sM', '', '王煜淇-互联网孵化器', null, 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEIf4kiaic20CDXjmvF7lkkmfLClxmgvbbyoOZC0cfxQWJSXMLM6zDHQzLs6m43s9F3icgmN0J3w4kb6Q/0', '2016-10-28', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('286', 'ou8VTwgXgbjYPJyDyKth8vyaFSjc', '', '果祥园社区鲜生活', null, 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLBqsNQfD9PUwbHM3KgTBVLh0b441g9bibl02gQBhLNY9vJutjUWz3fYmnIjppI79kfM3Myb5Babr2Q/0', '2016-10-29', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('287', 'ou8VTwvYwOYMgm0ossa390RPdLVI', '', '陈渝锋-fzg', null, 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM4GNX45YOXamE1FTan6OcVdVeMFiaOicewwtetyXFbX18UViaKETlWjhJu3jz0BwokqicbKWkLw69bCa3kkv6IzU2nEuBFZTVNYu9Q/0', '2016-10-29', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('288', 'ou8VTwsR0jPYrT5d5WyjJob5Yc4g', '', 'Zippy mouse', null, 'http://wx.qlogo.cn/mmopen/dR5CUptjjlqUMRfwuQCfPSiaibibQ1AOjRPaHPU1k0iabibZhm0V7NSo1UhsPcwYRZsTu9Jo99fZXrLQkW2ofv6PibKYfavKkMktLib/0', '2016-10-29', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('289', 'ou8VTwhJZ98dpwOsgXgFjCwVryiY', '', 'Ryan', null, 'http://wx.qlogo.cn/mmopen/MmnHAH5bibAMzVHViaVrVk7bDTN5Aeib56KfPiaHq0YEwGnIEaBibBthPdU9TmPTddicHowzeVTTw5CRmp53wryzTUNhPtF2l4wQLU/0', '2016-10-29', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('290', 'ou8VTwmaNXULaYHc8jHbO1aeDdPY', '', '♂ 啊鑫～', null, 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLBM4CeyrLic2HhbX8fWgBR3ic3NVZCqet1BIyJxSKGtjojGCXaiaeOrDkxLnQ9PK0Wu0NWqfaBibGlkFw/0', '2016-10-31', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('291', 'ou8VTwrwe4a5ZcBjiLXzF7jmpHgw', '', 'mzjwx', null, 'http://wx.qlogo.cn/mmopen/EU8PpGoNLP347lrEaXGZVWJePDaVichlVOqhUse4QKljgKsWzI47SCrAAjCY1LnFKCN7RcPic7Q20uKVicxrdyNhbltRHf7r1bm/0', '2016-11-01', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('292', 'ou8VTwqLNtliXbHZcYuL0y0ZKUlk', '', 'heckerstone', null, 'http://wx.qlogo.cn/mmopen/4GwEgiaOAwfl6HpHULs1SvnkE7Yv1Gvq63FYxRw6ickh98ztqbzQBSOTT2yzJNOJ7kRyxcrx7dR88lyqFJloj89eOvmx6KAHXf/0', '2016-11-01', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('293', 'ou8VTwl3LM-CjVCDO64fbcJSVtsY', '', '武小星', null, 'http://wx.qlogo.cn/mmopen/wnCxTeuKa1fA2JEOmZNUcV0Dice7PP9Ribps8sRZYicsSPTE4AvWFyd514xBOib7CicT91ZMz0RLhibBSsbvoH1fm9VQaYXHW8NMpE/0', '2016-11-02', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('294', 'ou8VTwl9UCZO4b4rgMdT6H8MoRjc', '', '敬美', null, 'http://wx.qlogo.cn/mmopen/qg6b6KFrM04GovGY9aNtibG6ZIdEKjGzick5vMdMFCjWjajeticibOj4OK26bR8KnDRs57VzwbjUNZMjFcO2EoQU9oCPFBDW8djE/0', '2016-11-02', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('295', 'ou8VTwiJcLkKs8vxLdvS-yBcZ5A4', '', '肖富剑Bruce', null, 'http://wx.qlogo.cn/mmopen/wnCxTeuKa1fAp1RpuQ3ciahrEDicm70SiaKqUn3N9xKIqfaYicfC6PT4x0V4gL69VhVkngaMHLT9KnWnwMsXYgz42NatibWtn0vL6/0', '2016-11-02', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('296', 'ou8VTwinqu0dQ2r5x3nUHnupjJxI', '', '周周', null, 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLAhPFflaFibapsZS160cEpdAf5UCSAPg1OX3ibtVV8PHMXSBNyOzTPnMfTfNJ2ibl5iaS53lTfEZ7z3ulUf7bNvbmSXFz0y5yQahuQ/0', '2016-11-02', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('297', 'ou8VTwlNEh0ZTCR7iFFl_dQFNrBA', '', '半城烟沙 horizon°', null, 'http://wx.qlogo.cn/mmopen/4GwEgiaOAwfl6HpHULs1Svgg4ibGsia2uMqhaxUwUibGiaDQkcb07Q3WUdk143PYqudemR4eg8q7HBr57tB3OSx9G4U8ef1Heua2b/0', '2016-11-02', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('298', 'ou8VTwrYHTsTaCYaKy9t2qOzuns8', '', '付星明', null, 'http://wx.qlogo.cn/mmopen/wnCxTeuKa1fA1FqMZFReSkY78ibV4mWJChRbvR7CTiaAKIyicgUGDAiaufAFbe5yRRKFiclHVmiaKthZjDfNlPx0qAwF2xia9Uiclia6A/0', '2016-11-03', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('299', 'ou8VTwp10jbngeWCWhJKHWxuQ-5I', '', '冒个泡', null, 'http://wx.qlogo.cn/mmopen/qg6b6KFrM05Jb5WD2BdbQ8BF5G2LIMyeUhM8pQwNaiciaDPKiagv7OhMYRA1biczdU9nzOZTXbpU0o4FGsngo8cY06PZl6Z62nPt/0', '2016-11-03', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('300', 'ou8VTwp-Qn4YExm5uwH4c-dgOTSg', '', '一棵树', null, 'http://wx.qlogo.cn/mmopen/4GwEgiaOAwfndvYERp100ibnVllZ5Rd3ytUgicy17HlCqGHMXeIUDbYRKynmllTtL2zt2EibXEtQQIkFah3oPGQmJQ/0', '2016-11-04', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('301', 'ou8VTwtah3OR8Utz-y-mYlPWmfl8', '', '崔理文', null, 'http://wx.qlogo.cn/mmopen/qg6b6KFrM06c81nS8zrGTpHqfPQrgYWBvO2RFFQGmrmty07hrTOZo6zazjmLfSuvTXUj0fRsAAntUPekIR6o6emYo7hEFPf9/0', '2016-11-04', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('302', 'ou8VTwl3l6uGbY0EM4J817DkFCLU', '', '大宋明君', null, 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM7ztSiaKaHkMX8c6xv2CIalNbsGU8ltkm2F8zbzGmG7watuT5xhYuCOzXawyajy0CNudgNYzjsMMfg/0', '2016-11-04', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('303', 'ou8VTwrJZ_i7MC29QC6y4fmazaWI', '', '嘟嘟', null, 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLBwCACRpe0mhnjTMWp0METuwKOn1CBibc4jeiahzuTl9Lib0WLA8AM2aHdv0iarV9hmVVYfuh0b21lUxaLs6w2PRO3GsEJLaibdSSnc/0', '2016-11-04', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('304', 'ou8VTwl7ZK4QQw9S7OxccafulHxM', '', '刘一手 ¦ banker', null, 'http://wx.qlogo.cn/mmopen/4GwEgiaOAwfl6HpHULs1Svtf0UTicA65K1UykHNpGNg7xVkpbeaFlnRS7HynfkFHEC2aPCjlQw58X0Gu7GO4edTNffA69vb562/0', '2016-11-04', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('305', 'ou8VTwsXLxYqYiHzlO63g9ccxyZA', '', '潘伟东', null, 'http://wx.qlogo.cn/mmopen/6t0VDe9bl5decMZw1o4qXCL8eic66HJ8l9CtE5tPVWvuakuJDvKGoKv5QVeqKG8bftIkYNqd0v9zWtxzazWuTTT5iaY2MtaHay/0', '2016-11-04', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('306', 'ou8VTwuGEVXO9eJnHIU0r-QfGB4o', '', '晓峰', null, 'http://wx.qlogo.cn/mmopen/wnCxTeuKa1fA1FqMZFReSjBmySmK7L3d2ibWm6SPPrwne7KxliaibBbukNNDHP3tVLOkfvjJaKfoEFBuEfO7Aro4Z1TD14VNWMg/0', '2016-11-04', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('307', 'ou8VTwuWpLPkwEuAnmdGreneXEnk', '', '绿色童年健康上网平台', null, 'http://wx.qlogo.cn/mmopen/wnCxTeuKa1fA2JEOmZNUcc45efJ33QvVPNTtYywn206HRaibHaAJeOJOydqfsibQWHqgtCRicExm4beiaaemuKjDZbTLkeggrR1c/0', '2016-11-05', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('308', 'ou8VTwpF1VOFV93LWUhO3J4yZNs0', '', 'Blue Mountain', null, 'http://wx.qlogo.cn/mmopen/NQPKMWWCDUdvcSiaZUwjB53Oibd78tBxFbltNTF6m5w9aG9pG7qMynMKsG5k7X01qfMtM5E99kbbLxZia2xZWydv4HBvvPWLsGT/0', '2016-11-05', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('309', 'ou8VTwusUEW3tdzUpHwr05p6aLpA', '', 'TAIDONG`', null, 'http://wx.qlogo.cn/mmopen/A7eiaCicdqUnZlkrJA5UEibRY8Fteszzql9S5WQBNeRJwSuuA5ST46j33YlmLiapVF21pmK6QZdYJ7fEONjpQ9TPef8rANicicVcfA/0', '2016-11-05', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('310', 'ou8VTwrBx9GrY9gN0Wh9jhO6QYCA', '', '眉', null, 'http://wx.qlogo.cn/mmopen/qg6b6KFrM06c81nS8zrGTjSxOqWwU143B4JThlhRsCTlaibQ9RicHiceic19dicKtzTENlLGMryMMSaibgN9wqvHErn45OlZ9fiaBa0/0', '2016-11-05', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('311', 'ou8VTwgNa3khqV-8T2LoVnmXF11Q', '', '夏天的夏', null, 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLB8aEB4GerwUYz1buqNic4ECnCcx5xjXCBeXfn95sW2y78icTRdq6ITGuBcPMynNEUO2A5iapOAajrVA/0', '2016-11-05', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('312', 'ou8VTwk6qvbvzMJOV_NafbEuGH0M', '', '易清海999', null, 'http://wx.qlogo.cn/mmopen/qg6b6KFrM05Jb5WD2BdbQ3TvJRYwQOwsS1lk8vtCxeucauNCcStWKVrxiaoLgNWdPRLvGeMll4FqEOnj7te6mwORr5bdIVts8/0', '2016-11-06', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('313', 'ou8VTwk5M4CwC83kfoGLC4U8DtsA', '', '王明文', null, 'http://wx.qlogo.cn/mmopen/wnCxTeuKa1fA2JEOmZNUcRDSAhkqB1QmeofOyNPBVZSOOUfxYmXFiaEsde0K78TLehom3dQrFJ6f4L6dzhNHvia8WJJN9JT4ck/0', '2016-11-06', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('314', 'ou8VTwrXVM_Pq3OdVJ6SZHsiyUlE', '', '李超', null, 'http://wx.qlogo.cn/mmopen/4GwEgiaOAwflP2ITqFwyqvU6TmXaxgkXiaK4CspNYLCJCu6S3TIKMrC3n4MDulHibeAicq3TvVrHzrJlhHt8qBLV4KkF2RfgibYb8/0', '2016-11-07', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('315', 'ou8VTwm01qAZWG8YaCSx-AWFF8dU', '', 'gary', null, 'http://wx.qlogo.cn/mmopen/6t0VDe9bl5dJjT3P58Ew0amztUqnOw2pMia9oqyNibKJoqGTTCmicwXOQwAN224MunCFuAuwe3Hm8xzqqZEtqbevw/0', '2016-11-08', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('316', 'ou8VTwsY2xE_hdDURNBdlT9aGTlo', '', 'ITry', null, 'http://wx.qlogo.cn/mmopen/6t0VDe9bl5decMZw1o4qXIZDu8CCFljoBZswPichoEVvXicvKiarzdCDvZjlEqwWvkRSpqxw1k0Nib03fDZszgy58ribvIy1KH1VL/0', '2016-11-09', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('317', 'ou8VTwgye2TBios1mhSgWo7Y29Wo', '', '王文波', null, 'http://wx.qlogo.cn/mmopen/PiajxSqBRaELIKibFG05ibyBFvMC1QFYXLPWG6y09zqnqvgjWhib8hl0prTMteFL1qttkZgRVicVLicNibLm6ichw9XnIw/0', '2016-11-09', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('318', 'ou8VTwjLv5bZV_BWYd8DPCBFEt5Q', '', '黃楗樹', null, 'http://wx.qlogo.cn/mmopen/qg6b6KFrM06c81nS8zrGTrxAhxtRHxgH4Vjpc2jObsckgaAQUw5Y2XFzyiaSAs4KatxV56crXh1xDYnZYWhCHsjuM2ZKVnGjV/0', '2016-11-10', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('319', 'ou8VTwjwiR9U04LwmZAKCvJWQBpA', '', '靶场机器人', null, 'http://wx.qlogo.cn/mmopen/6t0VDe9bl5epynOMN87nQsedMxtcfTXlXyTLtPKNZ953t6yptZodgeMLkDlaheyxibFx0VhlgYs329VJJWiaTVT6KF6CUat5Sm/0', '2016-11-10', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('320', 'ou8VTwsRfl7lA6YAuBi7wb_I2NMs', '', 'Alex', null, 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM5z2kW4Aia6lLSCVRKZ5DKN9Xow7lbx4ztJ6ectuQcqviccSgWBIiaxdd1MWa6LwPmNgwISml7JojnHFpkTmsFHXMPeyLLnMiawnAw/0', '2016-11-10', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('321', 'ou8VTwnM1K8APuE39cz33yr9F9Dc', '', '林:-Ixm', null, 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLAGuT8nq1kaIDXCRcAlMkexMicN4k8RicIO0s6c3Q0Kf6HqRoHpfViaGD4icahh4dAJc8icoMvOzuq3kdQ/0', '2016-11-10', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('322', 'ou8VTwmSH1iwxuYRUDc90ZSCkgLw', '', '凯旋', null, 'http://wx.qlogo.cn/mmopen/4GwEgiaOAwfl6HpHULs1SvmbyNIv2YibH84tTicJKicScYKok7xicdCc1RKJMOGJxCricx7383E4jwTHb19YNzwIzTP4E8SbYmBjBy/0', '2016-11-11', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('323', 'ou8VTwupTEPHJBs9dBRiBnmUKdKI', '', '刘小俊:҉҉҉҉҉҉҉҉', null, 'http://wx.qlogo.cn/mmopen/EU8PpGoNLP347lrEaXGZVeqcr1Aqoic1Z1iaibon6vrMxXG7LcdMicIPEf8stoGUyd2EQA2atwQ5yvJFa5AkcR9YQJee3czbsNKN/0', '2016-11-11', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('324', 'ou8VTwlPtDr_S1bp-mXGd7jKmHrI', '', '易扬', null, 'http://wx.qlogo.cn/mmopen/4GwEgiaOAwfl6HpHULs1SvpcwAZULWGzLJGcaWoWIuQiaoCDcRd4NFkEUWrFMgyyDuNnYJcLVlX3ZHdX4CgAk73HjtdXAic7lN1/0', '2016-11-12', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('325', 'ou8VTwh5h-cBYeD_GyiB05pZB7ms', '', 'syt', null, 'http://wx.qlogo.cn/mmopen/4GwEgiaOAwfmu97o5iaUGcmxhLNw6bgMXic8dcrD5JwJogQbMXbfVrDgkw9WcW2mI0qIOAumPP1eWWTrHDOmOyibOAicvMFEqOPBJ/0', '2016-11-13', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('326', 'ou8VTwqgPmbFQvDDLvA7URenpdGE', '', '张飞', null, 'http://wx.qlogo.cn/mmopen/wnCxTeuKa1fA2JEOmZNUcQSotNGBLISVynQ3q9TWEOckYceoPgjuiaHCcprZ22oPkX5JB4AHQYa6BZb7FNLiaO2kPvVK5QCfIp/0', '2016-11-15', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('327', 'ou8VTwqoBgp-K0rU15DhqnCdu9WI', '', '沈浮', null, 'http://wx.qlogo.cn/mmopen/wnCxTeuKa1fA2JEOmZNUcc75icSMtPk818njEeAIzXqlM9wV1FAPn5uQ33Xy4319oChNfVoYP3pR5B5IxSm8iaOMAoMyw485jw/0', '2016-11-15', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('328', 'ou8VTwrCua7FgJpaQ20yKU7WxRA0', '', 'PeterChen', null, 'http://wx.qlogo.cn/mmopen/wnCxTeuKa1ev81AG7iaSCEZB3e9qVGMAxuXAKo7rurSCglK06hTT3FbIr680E2UJM1m1AYIcOJOczJ2a8PnpR7eEFROIiaiajic9/0', '2016-11-15', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('329', 'ou8VTwqeX8pySxBZ2pukb1rMS1bI', '', '当下', null, 'http://wx.qlogo.cn/mmopen/wnCxTeuKa1d8jTeoia7iaqVicbrhgVsibH0wMnvp62KQic814TicD9VISh6ZToia9ulia0gGQ61sicq0PzaUlkHDCLreaSJxJ7b7Oa73M/0', '2016-11-15', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('330', 'ou8VTwnD51W2CP6e6aASowZsA0UI', '', '欧阳文', null, 'http://wx.qlogo.cn/mmopen/6t0VDe9bl5e7HSjicQrM4ejeMZDkTERS1AZDsiaIlS0IvE941OrLMqFp544AhEr3okUmcEQtCndWXDLvzqxGM5SQ/0', '2016-11-16', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('331', 'ou8VTwi8F-8Z09EVUVxgtjPUvc4c', '', '权哥哥', null, 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLCeEgCn44Okvoq2UnaAibKgYmHZw4tUwGJ9vubheokcBkoHTUlIwoW2TbsicAEsNxgdiccgLiargjD0rg/0', '2016-11-16', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('332', 'ou8VTwvlcjYZS90t71g5dZJ1VwQ4', '', 'an@le', null, 'http://wx.qlogo.cn/mmopen/wnCxTeuKa1fA1FqMZFReSkktIwDKkLtHyueGofKIF1k8AdgSkPiagogQqslOhDDxJo5kWrmfj3Fsqq4oSmVHujPH1NWicQsfRu/0', '2016-11-16', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('333', 'ou8VTwt5NriYWu5IffvxxdmUyPV0', '', '患者9527', null, 'http://wx.qlogo.cn/mmopen/wnCxTeuKa1c1tjBsdVD2tSGMx15RmUYILaaCCN2x1giaW9dtuTt32sZapTYicKQqJxWyIDQrfOZnCgJqFgp0zmZy8c5xWDhsLY/0', '2016-11-17', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('334', 'ou8VTwnIPlReqwsTZKS4vpDIe350', '', 'Mir°伟', null, 'http://wx.qlogo.cn/mmopen/4GwEgiaOAwfnrrrD0e7ktWYRJLO91icqSRW8Fn1I0icd1n1cTtvxU26kKSRRq7O9RJc3YYVJ4ibvUrKTadoAuzFHFgkWibv081sZU/0', '2016-11-17', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('335', 'ou8VTwjGT4g4rYZZO9NtpcIVhPxc', '', '江湖', null, 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM5JibA2bKmbQtaY1qAYgXdo1IKATibggkficNqZdd8TdSYlebn6tfk5uth7IRBukHbA8VqTTiczpK4tPwSkhBNeOBibiciaW73uaGdDdY/0', '2016-11-17', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('336', 'ou8VTwvdeCe_WF5F_V18ZFDftFNg', '', '一生痴绝处，无梦到徽州', null, 'http://wx.qlogo.cn/mmopen/4GwEgiaOAwfmhLt1nxXn2cdh6FZYPKJos061UQaHADJ9SzCfBw5cAZTF7ibLic2R3hnK3EZKyz2dOvCAt4Crbwl6A/0', '2016-11-17', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('337', 'ou8VTwtaRjh60nRuE2Hj8rTztbho', '', '大海', null, 'http://wx.qlogo.cn/mmopen/wnCxTeuKa1fA2JEOmZNUcbxEzibEw3ZMafVdibiaMPujCaGQUdHP5JkFgdYrbib9xZvDQ69F4MMWzpv2D3Znq4G0oChHjdepwCiae/0', '2016-11-18', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('338', 'ou8VTwqbId4my2bRTAr1t494aZyY', '', '汪景', null, 'http://wx.qlogo.cn/mmopen/qg6b6KFrM05Jb5WD2BdbQyjMicYmf48A1miabN93WqZhcTpcZveOPmCudgn4AySTSzFG4JPbJ5k5FvPCvuUjCrmo0TgNrdgrKX/0', '2016-11-18', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('339', 'ou8VTwgOFuwxxUdwNTbVemepVZLA', '', '没理想的幻想家', null, 'http://wx.qlogo.cn/mmopen/wnCxTeuKa1fA1FqMZFReSia3yGfK4JunLMA2htbRXGWE1BJSpCZibEDA40dibHARIsZjH8T6a6icbamhzZAHupQreLUWvu3OYNnA/0', '2016-11-19', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('340', 'ou8VTwnDzkmwmYxvCbD02nGD6Jhc', '', '云迁信息 仲凯', null, 'http://wx.qlogo.cn/mmopen/4GwEgiaOAwfl6HpHULs1SvhYJWfldicWwWerUq7kCP9ccLToPFs0zrOZYyjq2TvhMyyQK3QE6CXtoghdcQqE1R0T4bxFVFSpZh/0', '2016-11-19', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('341', 'ou8VTwgUmQPl8xaWgxGvxb2BTYiM', '', '灿', null, 'http://wx.qlogo.cn/mmopen/qg6b6KFrM06iciczQqfEGAhwhwIdTicl2rrD1QhprEoGkdpSejlenxp4QibvhDJX3oU3Ak9znFuic19ibVVzvuBbofVFR61683mS3w/0', '2016-11-19', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('342', 'ou8VTwjG988nVeZIEqdMwlYtEPoQ', '', '橙子 | 网站  微信 电商  APP', null, 'http://wx.qlogo.cn/mmopen/qg6b6KFrM05Jb5WD2BdbQ2YFsT26nkxpm6jOfO7QoYvibq4iagliclzib9sqtBTQPblQcibzuGHbQcbnsAjiaKBZeEezicPDrr50nMG/0', '2016-11-19', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('343', 'ou8VTwmpmt-SUEuBjsG5Kk_buBVY', '', 'A000_小符', null, 'http://wx.qlogo.cn/mmopen/6t0VDe9bl5cDDS6uG9wWkuha3fS8iaG1Djzg4MeHVKfZg6NiclrkX2byr9xzmcyNY1iao9dAMAPEDasecQSDu5yhQ/0', '2016-11-20', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('344', 'ou8VTwkYbPARvzaRjo9tljYcd-KE', '', 'shen hong peter', null, 'http://wx.qlogo.cn/mmopen/wnCxTeuKa1fAp1RpuQ3ciavCUaxpInKypV2y3PopmBEq9ibDTR6KbmXoroNH9VZHRbYueGaUkeE4LyD9LCvlLmu6CmuW1mUPkU/0', '2016-11-20', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('345', 'ou8VTwl1PtN-wuilfv9BEVCAnjCc', '', '道可道非常道', null, 'http://wx.qlogo.cn/mmopen/6t0VDe9bl5fOI2nUj0yOAySQFncQhn2ialkDPZicWWwbqjHvJWd2GKsiboY6OqNHVNyyPViaHPNFibPv4ib5cyricO6hQ/0', '2016-11-21', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('346', 'ou8VTwpEuhexmiV6H6ObNcgNBAQ0', '', '徐維', null, 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEIUJ6m7amW6Q1iaOsdicg5DuQEglbhI6viblH8AUIiaIKampUcwCqg1t6x8Bt6wTdFiaQR9bNZxrTMTytA/0', '2016-11-21', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('347', 'ou8VTwn7v9ukn-pj2ewogKxJpeyk', '', 'Rome', null, 'http://wx.qlogo.cn/mmopen/wnCxTeuKa1d6xia1mPVfJ1yo3EA0TSFLvGGtgwRJP5GfONiatn4pQWZ88P5UgcGtafU7Np9R62qycVXvEvSJK1k1icevaLSPVXB/0', '2016-11-21', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('348', 'ou8VTwor6u_RAjAo1JfGNlOOaAyc', '', '向日葵', null, 'http://wx.qlogo.cn/mmopen/qg6b6KFrM05Jb5WD2BdbQ0GwF1micQn1EB8rKAFO62zOiaJlMJv0JamM8qWAVXh7uLt83bibiarlaKZhWKpKbKWDyhU1JWpKkDMY/0', '2016-11-21', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('349', 'ou8VTwuT1QsPrdr8pkze2WHnDYOs', '', '老虎打秋风', null, 'http://wx.qlogo.cn/mmopen/wnCxTeuKa1c2GvW1ibtP4wQNWYqL3fq6qRTciaib6WrDKmTwQdDxiaibWLLWDGIzOSqnpUnEFFBSkmSkbR7CwYZZia3cALicgFA4ic1j/0', '2016-11-22', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('350', 'ou8VTwlxLDezYOkbnGVqIaxW1pdw', '', '霖先生', null, 'http://wx.qlogo.cn/mmopen/qg6b6KFrM04QuaXVKj7xhG6YhkRsoBRe1QcY7AicSjxohRVtIGjxQKSvicnbCiad0nibmbrqdtjdsqIx9bSREOfIyljiaOLwpMJWR/0', '2016-11-22', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('351', 'ou8VTwqMuV7PWddQY6n0iz24Zp3Y', '', '一正', null, 'http://wx.qlogo.cn/mmopen/4GwEgiaOAwfl6HpHULs1SvtAkN9XSVfO7HqWoiauN3L0bOkIBfOuYHNntdZah7PA4gCxqIxo3IffibibicvekovDEbQdliblQ33WuA/0', '2016-11-23', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('352', 'ou8VTwn8uIif75b_16RYA2h-6WD8', '', '张', null, 'http://wx.qlogo.cn/mmopen/wnCxTeuKa1fA2JEOmZNUcWoyzkkV5hp01icZ0tery6O0dibnOZDFAU8tphBvOSzfZZZicNcoXyNqORSQeE67BaC5sJUqCSEr6icj/0', '2016-11-24', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('353', 'ou8VTwug3z7GxcwYGwLskBH3X0O0', '', 'YanRen', null, 'http://wx.qlogo.cn/mmopen/wnCxTeuKa1fA1FqMZFReSvw5Sy0icopKliaspdl845fhzNlicTDX9EoJMqdqRUaO1lQB7PQFQnPqX992OKIuavaUOVbtSC4F9Tb/0', '2016-11-24', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('354', 'ou8VTwm6dGSoDvn_SmiQrBdNjhP4', '', '督军', null, 'http://wx.qlogo.cn/mmopen/qg6b6KFrM06c81nS8zrGTksz5MCrtWibNbWNLpugpY9XkLI21SSgfxUTA4d9AviaicOLFnM31XUV7ibyDWz6SVIvicyac9ibTU2Zjs/0', '2016-11-24', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('355', 'ou8VTws5qcLub6vGySmEHvDpCtno', '', '光速蜗牛', null, 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM7eKyNEl6hwRK4DqhFaMM5TWvib3ZbK1YGfx8pmnmicHfOfEiaNfSYNlYmO4z076sjPuWUw6EhbSxtiaHZaHWNIpp51UVAJLThSP3Y/0', '2016-11-24', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('356', 'ou8VTwj5K0GQsXTtE_rCxo6Sf5-I', '', '扑克打麻将', null, 'http://wx.qlogo.cn/mmopen/4GwEgiaOAwfkEHZeTibpUQicEKn6X1Ck6AwShb2TEia2SAuzUiakoemE6iaAlzIaicZKcbI112QURIY0RVggNz4OnXo0Q/0', '2016-11-25', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('357', 'ou8VTwkgjaUd3ADTe-c2xLXc4iAw', '', '。', null, 'http://wx.qlogo.cn/mmopen/6t0VDe9bl5decMZw1o4qXH2lyjIFXe3lE5ASwB2JN82jDRsewpKLhCKticSjYOlicmGVEcGf7480MctK6TG7o1zBtz9koLt748/0', '2016-11-25', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('358', 'ou8VTws5MlMC32B1xZ-X6lFc5wFE', '', 'Ahri', null, 'http://wx.qlogo.cn/mmopen/qg6b6KFrM05Jb5WD2BdbQ3nKvlibZXVTicib5xAAQ7o0lpYllu9lLUHbwlklZ16iaVDDKpicac2fiba3ic0Chqj3ic8fIGU983ProFz5/0', '2016-11-25', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('359', 'ou8VTwp8MZyN9I0l-89C9nwlGifA', '', '曾喜斌', null, 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM7eKyNEl6hwRK4DqhFaMM5T8JQ6oicEHtAGzzibDsU9WqaT6SAHhKe6kTrkGX1EQeYdkpt5P6KSVcNgqe2voHibu1HcsicS9ScY0Xo/0', '2016-11-25', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('360', 'ou8VTwp-OUL7J7q87WC4KxUvPtaw', '', '戴明春', null, 'http://wx.qlogo.cn/mmopen/wnCxTeuKa1enCTIgaSH4NYRialo7lIssIqgicibibpvI9O0tBGqYQHibClEFibywjkgo7Z2QJkBbVS7Ea7icfOaB3slUj0HpqQziagL1/0', '2016-11-25', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('361', 'ou8VTwsapaLt2qiTw6rk8PNpWXAA', '', '宋帅', null, 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM5dGcpml6EC1O2KX35gbx2u6dKkuA6lgc6tlibcTe0BUGGgyfJN9XulGBNgcZUtsVlyNXaVSWXOHwQ/0', '2016-11-26', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('362', 'ou8VTwpnY7bImWr3cnw6bjyRl_9U', '', '清风去', null, 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM7PicqxiaEcvYclZMXictFYSxAAmqTzzBoF9ooVD6Ree2abPobVY7C3ARdicN2iclics7gnF6jBcAibDEFww/0', '2016-11-26', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('363', 'ou8VTwumv0a3ftwmieTR_XoOGHp8', '', '刘伯韬', null, 'http://wx.qlogo.cn/mmopen/wnCxTeuKa1fA2JEOmZNUcQNxpibKY8Ciblibwm57VCwMBKSMnAcicPOFwrBlX3qhDCsxdE1zzH7icUrCvrb6rsPaQiaeBJZ8x0h2HR/0', '2016-11-26', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('364', 'ou8VTwnhoVv4oI4mq_u0RThkPq6A', '', '韩(Vernon)', null, 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLBgLl6VdTL2CEZp4OTMbvgnKYHB8GgHU1B71EMZQviaKRusIA3p71iaRh5EsWuXJ1wd7g9eSAMVgViaw/0', '2016-11-28', null, null, '1', '2016-11-23');
INSERT INTO `tb_user` VALUES ('365', 'ou8VTwoQa1RZRIy7OgEicEENwWrI', '', '紫薇', null, 'http://wx.qlogo.cn/mmopen/4GwEgiaOAwfl6HpHULs1SvlEIrSFTedl6mI5DH2zcUEQooFSm03nia419EQxX55sLdkLflgW2GRdvfBaytI3HCVyCwr2cgYyMV/0', '2016-11-28', null, null, '1', '');
INSERT INTO `tb_user` VALUES ('366', 'ou8VTwpViUutDLHYruhhdwhUK28c', '', '教授', null, 'http://wx.qlogo.cn/mmopen/wnCxTeuKa1eKkpKrA5XhqfSic7mUSicbG46lNjw5z4BH4YbA8Tzew8NicLia3qzDfAryYHPNeJY1VBNZaicDRm5GSVQ/0', '2016-11-28', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('367', 'ou8VTwsUvqSeyqysKsPjwRr35ySQ', '', 'LiHu', null, 'http://wx.qlogo.cn/mmopen/6t0VDe9bl5decMZw1o4qXM2XSiboCzfhiaDEUjR70httXfmk0iaHNSib2OqiaDdibNPQp6uLRzK0qQu5uZ8CHafxZI1eOlJQHibfEDj/0', '2016-11-28', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('368', 'ou8VTwuGDs7y4UC6ny-gZiLE_kzY', '', 'van', null, 'http://wx.qlogo.cn/mmopen/wnCxTeuKa1fzMSJKjghs7ibn0auqF7Wb28u1Bxc2ttm42FZKHrSf7JumRCp5ALORd29uakmtftIpY8tdokrHw6hJGywIu5bCN/0', '2016-11-28', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('369', 'ou8VTwv_1jJ8PVkjnk8mBXR73Q3s', '', 'Fish', null, 'http://wx.qlogo.cn/mmopen/PiajxSqBRaELJOl5qdMltFvT3IC7hiaWTWIOZ7anzU5p7qVG9ynNw5oL0KWmiaCTiamAdHK2LxFzAicGLvv2XQA5HHA/0', '2016-11-29', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('370', 'ou8VTwms_HwST3gJ0WSzG7L9Eipw', '', '大口袋', null, 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEIf7icLHLzkEUP221Lb84p2MxC20AzsZp9NqrViatKvhSbNibNBdrGlcOKQkqqSwibSJ0EiampMD4AicwUA/0', '2016-11-29', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('371', 'ou8VTwluWTmRDqllWBNY-z08ADSQ', '', '王银龙', null, 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEI1Rrj6mLSNlHUz9FJgRUZ31YBFibaLew3uicfN52L6C2Mf2qs7ALQicuWibYBrdlB1FL7RBm3xFjGH4g/0', '2016-11-29', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('372', 'ou8VTwrXKlBN5pWYJqPNrJN0mUrw', '', '软件开发-继华', null, 'http://wx.qlogo.cn/mmopen/EU8PpGoNLP347lrEaXGZVbia6NFF9FvibSCniaS3YfawPYb6mf0VK9bzGaMqtK4Ivvenf0YsDxguMYvE2ic8EOzHALxZVhRjiaiaOE/0', '2016-11-30', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('373', 'ou8VTwka0YxLSWS8fYBDbTHVeSZ4', '', '于涛☕️', null, 'http://wx.qlogo.cn/mmopen/qg6b6KFrM066QQbIhrR6A425WxFhCIY4g2MS7jydC6USHeA1FWFoP3woCEhZvAjg0f5LVcS251sM1Phr4ibByEg/0', '2016-11-30', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('374', 'ou8VTwmwAMMAwV3jFADgF0iO5B0A', '', '喜悦在握', null, 'http://wx.qlogo.cn/mmopen/4GwEgiaOAwflZVdTZtmGOFzxoAdUs6GUic0Eq1PPCLS27vGReKA2ROOlAloFZvRkOUlrNOcLr8obV4dMEibRMMMwn9FU1I61pwh/0', '2016-11-30', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('375', 'ou8VTwt6E2Z_KJl_wt1-_8hsweNE', '', 'amumu', null, 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEIjrMbomEOxjtqHKVIE4od2aKBujmcJmLLHFvoBTiaO1HhmIjKPTpI5sOAxL7wuAXVOVf5uP2KL3BA/0', '2016-12-01', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('376', 'ou8VTwnaYuSxaCP1FWnIkqqw_MVY', '', '开心就好', null, 'http://wx.qlogo.cn/mmopen/qg6b6KFrM06c81nS8zrGTsaE8ic6OsibibJD8SCicTib7xbNCtNpDrGtiaxiaLoXHeiaJ4KJibK4VN1qn9I0CHaRIoQia2IFRdNulHrzO2/0', '2016-12-02', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('377', 'ou8VTwnnpkSr-ofaf7yQppEkNwNM', '', 'Meng', null, 'http://wx.qlogo.cn/mmopen/qg6b6KFrM06w0ibaxoKabcAbBQwBonwclrtus5w5VqaXnHniajQAO0wa1Vicf1EsxwiaUgXbLFUIESrS6056SLr1zMJ2rvlzCtsm/0', '2016-12-02', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('378', 'ou8VTwkjDuQsuqUXMW4AujT6JZsY', '', '无伤', null, 'http://wx.qlogo.cn/mmopen/6t0VDe9bl5c7S3G4w21WB3agLdPzNnGSyx0IsAjLb2ibNrib8sDId1INRDdbxxlSRn1TXNQvmyBGMUUUL8TZrNcQ/0', '2016-12-02', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('379', 'ou8VTwuQ2vTDOWRhRTjr1NEvTAEQ', '', '冬济', null, 'http://wx.qlogo.cn/mmopen/qg6b6KFrM07hZdyuVg4icv4UD7siaD8yA5kHY301GLle5ht9tuK4mia3VFbeOEIiaBmkvs6DtYW9D6CARmJUVh573nJ6MibjD3qMf/0', '2016-12-02', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('380', 'ou8VTwhjLR2alkMmhI8_LsPwunJU', '', 'fallasheep', null, 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM5d3xSljWYTYk93o5Yv2vBax6e2RKCphRK1BRiab6NRU9czOybMlqq56H5fWhuKmb2GiaAVLcRwFlSA/0', '2016-12-03', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('381', 'ou8VTwlgORMpr5SsmRgBkhK0A1As', '', 'Dr.一箭', null, 'http://wx.qlogo.cn/mmopen/A7eiaCicdqUnZlkrJA5UEibRRf8YfhP2MXDibDFYG97YcJRepU9jkkD3I8Vqz1lpWnmSJBJsHrI46SqDhxnjdcwWic8hd5shC5zO7/0', '2016-12-03', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('382', 'ou8VTwhWQqufwVkGEYHoOQUMD6IA', '', ':(:→_→:)', null, 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLAtF4fMqwyEebOWQJxTTCGswlzRLQZ2WibqOxgAwSUuWH1Yfx9icrrm5PictcxEpjib5dI9yRY3vBtFdy2KWhUqicGz3KWBppHQjZjo/0', '2016-12-04', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('383', 'ou8VTwo3TLbHyAj5y_GiqaIKZD3c', '', '周致民', null, 'http://wx.qlogo.cn/mmopen/qg6b6KFrM05Jb5WD2BdbQ8LHOc3JpMHBVDiaJlB6l8apcjS4p0rHLy5KWgheHX1YSK27XCsRAfeUz0oMZ8j8mB9yNoUnq0FUc/0', '2016-12-05', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('384', 'ou8VTwn6MKRBkiuNinccs_1fP0Xk', '', '7Sir～', null, 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEISUtNVVrWUkU1g2nPRW27B90siahWl2jGSkC57EtpVkwbadMRzHqOK7eyFexKpUeCETVYoP5kNAicA/0', '2016-12-05', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('385', 'ou8VTwpqCkRzVluw1e6RTaAAYwpw', '', 'Yann', null, 'http://wx.qlogo.cn/mmopen/qg6b6KFrM05Jb5WD2BdbQ3jaiafsu8QERwXKRZTl29iaDe5TlvibrrpKiblIAyo3sbFXIzvBn751iarBkbNGQylbhsaSIjichvd0V4/0', '2016-12-05', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('386', 'ou8VTwip2tCGMcwMGLGrc8l-Un3s', '', '@麦兜的幸福&', null, 'http://wx.qlogo.cn/mmopen/EU8PpGoNLP347lrEaXGZVTXSX5xOMUagSXQ3LbJBqVE8icIbX1yZaNM6gv9CfgwZF1DiciaC0icXIDMPYYiaRUX9mf3GCVSicqMTED/0', '2016-12-05', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('387', 'ou8VTwsKzF4rScQcxpHaNrF8ehMo', '', '侯彬', null, 'http://wx.qlogo.cn/mmopen/6t0VDe9bl5d6c0LWA6hPmp3RlFRRap0kz2TIibMaD3SsPoibpKJ9lNNKlSzU32ptN4OVT9FMCtQE8nlxOkKjib6ibQ/0', '2016-12-05', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('388', 'ou8VTwtCk47MJ8xcFlgTyOSEMBHU', '', '刘军伟_互联网老兵', null, 'http://wx.qlogo.cn/mmopen/4GwEgiaOAwflvqvVMHzJGB3ecVgE0s2dVe8oLkZukBr2IxOzaVyZianeWmicbHZY9icaAA3NoHqibGlibIr0QGuSjmFHh5PRqBicaUa/0', '2016-12-05', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('389', 'ou8VTwsimQEiB9EsTxFSM8od0ung', '', 'YHF', null, 'http://wx.qlogo.cn/mmopen/wnCxTeuKa1fA2JEOmZNUcbH2EDjMpPe9f6Wibfz9icfD3hnyb9Hr4T65jwEsuM7bMDIgIiaebUgotLljKicqEVibsj82Jrayicn9Dd/0', '2016-12-06', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('390', 'ou8VTwuhDNQljU28meQf8PdOn11A', '', '庄子', null, 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEJWI1CNLnI7crT57miaicZt6g2XJeCdPib7SyHNNT3ibexmtjrYDA60aADso0LGB32mpk9k0ytCWNB7Ng/0', '2016-12-06', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('391', 'ou8VTwl-7K0k-wipLH0cIHlwGd6U', '', '释怀', null, 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLDRy8YJLmN23aeHxKUUXOUR4O2SaK2zGyt4EKzZsIeF9B4ZzCM5cPibfmCXkoBJywhq0Pkx2ibpo84w/0', '2016-12-06', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('392', 'ou8VTwnp6NMQFyABTm3lB7tjaAXA', '', 'A罗力@小牛快推APP', null, 'http://wx.qlogo.cn/mmopen/weQcJB2xuicdicaEicqibkrOmlm8fFle6vDq7NUzpF7Pj8ib33Gjt8MoRtUX8ZvqGyzfibiaXGibqCvQKliaGdBLZw4bHU2hutFRMpYXd/0', '2016-12-06', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('393', 'ou8VTwqrubuONoSr7UEqLnfKGfEE', '', '王旭升', null, 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLCweibxAtdiafibhGbg7gKSNdP9jYevFqEIgFLEYAiaTq3kG8S7zDaMSeuhzIeFnYfdrTaJaQs1udJECw/0', '2016-12-07', null, null, '1', '');
INSERT INTO `tb_user` VALUES ('394', 'ou8VTwmrZyejjCvn63guzi_MzaAw', '', '虎虎', null, 'http://wx.qlogo.cn/mmopen/4GwEgiaOAwfl6HpHULs1SvjQkz5Jic0nOBiaYgxd8iciaoyxzWbM0xTMdZdNj0iagWtT7mLp7QBPAIakyEB4ibKSfibDNZMdHloKH0fl/0', '2016-12-07', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('395', 'ou8VTwiU7sThau5sa_w5_56RXhvo', '', '行者', null, 'http://wx.qlogo.cn/mmopen/wnCxTeuKa1falDTklfboSTKffnnRBzXD7DPEcDicgrfbfmlIpc9cDIfZQo1yfIucEZdnibsLCUwqGbmhtpR834usXJMOaMphYZ/0', '2016-12-07', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('396', 'ou8VTwuyBs2tcdc3dmpkBj4gbICA', '', '马卫', null, 'http://wx.qlogo.cn/mmopen/wnCxTeuKa1fA2JEOmZNUcbGcMmnIlx5mW5ZKAeeMMbgibf7DJowfL4cJYayCgF3HdSJibK6DLFV7TzIpAaZtibNeG8R5wvRjOhX/0', '2016-12-07', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('397', 'ou8VTwkYfbPjT64INDLsNZcnMiMo', '', 'Zero', null, 'http://wx.qlogo.cn/mmopen/4GwEgiaOAwfl6HpHULs1Svh7rfJvuZgZU882jnCZVtgwlc6YHgLoHJ2Y8ib0wm2Xdn0zn2HInM9OVNerkgniaOQ0ggnPTqbxgvf/0', '2016-12-07', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('398', 'ou8VTwt3hOSd59Rqq7HjbXNN4wbQ', '', '黄敬生', null, 'http://wx.qlogo.cn/mmopen/qg6b6KFrM07eVsjiaCDHU2JgtTupo19tDO0Th25sibCicEI2qibhibcaD4Y3Oib79EXduBDOfvYiat1FwaIPPfwYC6PRwAKNPtaxnnf/0', '2016-12-07', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('399', 'ou8VTwvUOb41_DHD7TCcfI1XBLQY', '', '。Dexter', null, 'http://wx.qlogo.cn/mmopen/4GwEgiaOAwfl6HpHULs1SvuYxrW8TXezmdXciadTHpFPeqbe1ql5FewOq4bJxYOyvtokeBIp5NVRicO75OicqDIYGEoF7b1yoQ2ib/0', '2016-12-07', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('400', 'ou8VTwneV2yYX3fistDWn2YUPpAo', '', '不明觉厉（nozuonodie）', null, 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM7eKyNEl6hwRK4DqhFaMM5Tgdnk1LBKGPQm8RJ9tMQY3jsO6uH1s9rYD3F1y5yzk50CGia6O6HRkIROUKKprYAQ1xLIwfib5whek/0', '2016-12-08', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('401', 'ou8VTwugFUqywpELAP4xCuy6BfLA', '', '蜻蜓农服～蓬歌', null, 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM5pqOECNPWEiaYe0GDyxy0ZWJwV3jQiaz6b8Eerb5DtWw3w8tqwYA3jQ0pn3MibYlpUPBEgibskMORBaw/0', '2016-12-08', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('402', 'ou8VTwiXqAeu9XyyRH0ZyLuD5D-g', '', '混世皇', null, 'http://wx.qlogo.cn/mmopen/6t0VDe9bl5dDZicjGEM0BULIVTicEWYgKeorghzgelsTKdheiagxrgGSicmZdB08a6pGiald1jcNlFe8ztrdpdCiaSCQ/0', '2016-12-08', null, null, '1', null);

-- ----------------------------
-- Table structure for `tb_wx_setting`
-- ----------------------------
DROP TABLE IF EXISTS `tb_wx_setting`;
CREATE TABLE `tb_wx_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `appid` varchar(255) DEFAULT NULL,
  `appsecret` varchar(255) DEFAULT NULL,
  `partner` varchar(255) DEFAULT NULL,
  `partnerkey` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL COMMENT '域名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_wx_setting
-- ----------------------------
INSERT INTO `tb_wx_setting` VALUES ('1', 'wxe6473058b265185a', 'ce01744dffbe15956d02f95e41776486', '1336186701', 'yqkj1100yqkj1100yqkj1100yqkj1100', 'http://www.7haodian.cc/chihaodian');
