/*
Navicat MySQL Data Transfer

Source Server         : 172.26.5.203
Source Server Version : 50719
Source Host           : 172.26.5.203:3306
Source Database       : laravel-datakomp

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2018-11-03 20:44:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `clients`
-- ----------------------------
DROP TABLE IF EXISTS `clients`;
CREATE TABLE `clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_client` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dept` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_dir` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=170 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of clients
-- ----------------------------
INSERT INTO `clients` VALUES ('1', 'USR17001', 'Shinta Miranti', '1', 'shintami/Shinta Miranti', 'Ogsjkt_shin', 'shinta@cosco-ogs.com', '6605', 'Resign on 24/08/2018', '0', null, null);
INSERT INTO `clients` VALUES ('2', 'USR17002', 'Wandi Gultom', '1', 'wandigu/Wandi Gultom(coscoid)', 'Ogsjkt_wandi', 'wandi@cosco-ogs.com/wandigu@coscon.com', '6608', null, '1', null, null);
INSERT INTO `clients` VALUES ('3', 'USR17003', 'Taty Tuswandi', '4', '', '', '', '6818', null, '1', null, null);
INSERT INTO `clients` VALUES ('4', 'USR17004', 'Agus Adiyanto', '9', 'agusad/Agus Adiyanto', 'Ogsjkt_agus', 'agusad@coscon.com; agusadi@cosco-ogs.com', '6205', null, '1', null, null);
INSERT INTO `clients` VALUES ('5', 'USR17005', 'Rizka Damyati', '9', 'rizkadw/Rizka Dwimyati (CoscoID)', 'Ogsjkt_riz', 'rizka@cosco-ogs.com', '6723', null, '1', null, null);
INSERT INTO `clients` VALUES ('6', 'USR17006', 'Yosep', '9', 'yosep/Yosep (coscoid)', 'Ogsjkt_yos', 'yosep@coscon.com; yosep@cosco-ogs.com', '6202', null, '1', null, null);
INSERT INTO `clients` VALUES ('7', 'USR17007', 'Indrawati', '1', 'indraha/Indrawati Hasan(coscoid)', 'Ogsjkt_wati', 'indraha@coscon.com', '', null, '0', null, null);
INSERT INTO `clients` VALUES ('8', 'USR17008', 'Risya Saffana Yasin', '1', 'risyasy/Risya Saffana Yasin(CoscoID)', 'Ogsjkt_ris', 'risya@cosco-ogs.com', '6881', null, '1', null, null);
INSERT INTO `clients` VALUES ('9', 'USR17009', 'Nurfanida Putri Hikmalia', '9', 'nurfaph/ Nurfanida Putri Hikmalia (Cosco ID)', 'Ogsjkt_put', 'nurfanida@cosco-ogs.com', '6717', null, '1', null, null);
INSERT INTO `clients` VALUES ('10', 'USR17010', 'Teru Weenars', '9', 'teruwe/Teru Wennars', 'Ogsjkt_teru', 'teruwe@coscon.com; teru@cosco-ogs.com', '6203', null, '1', null, null);
INSERT INTO `clients` VALUES ('11', 'USR17011', 'Debby Ariance', '9', 'debbyar', 'Ogsjkt_deb', 'debby@cosco-ogs.com', '6204', '-', '1', null, '2018-10-24 17:08:36');
INSERT INTO `clients` VALUES ('12', 'USR17012', 'Hendy', '9', 'hendywi/Hendy Widjaja(coscoid)', 'Ogsjkt_hendy', 'hendywi@coscon.com; hendy@cosco-ogs.com', '6006', 'Resign on 1 Feb 2018', '0', null, null);
INSERT INTO `clients` VALUES ('13', 'USR17013', 'Jenny Chandra', '3', 'jennych/Jenny Chandra(coscoid)', '', 'jennych@coscon.com; jennych@cosco-ogs.com', '6805', null, '1', null, null);
INSERT INTO `clients` VALUES ('14', 'USR17014', 'Ian Yuliansyah', '9', 'ianyu/Ian Yuliansyah(coscoid)', 'Ogsjkt_ian', 'ianyu@coscon.com; ian@cosco-ogs.com', '6211', null, '1', null, null);
INSERT INTO `clients` VALUES ('15', 'USR17015', 'Ambar Agustina', '4', 'ambarag/Ambar Agustina (CoscoID)', '', 'ambarag@coscon.com', '6819', null, '1', null, null);
INSERT INTO `clients` VALUES ('16', 'USR17016', 'Kusretno Wulansari', '4', 'kusrewu/Kusretno Wulansari (CoscoID)', 'Ogsjkt_retno', 'kusrewu@coscon.com', '6819', null, '1', null, '2018-10-26 12:54:37');
INSERT INTO `clients` VALUES ('17', 'USR17017', 'Ovilia Yofina Yunafis', '1', '', '', 'fina@cosco-ogs.com', '6000', null, '1', null, null);
INSERT INTO `clients` VALUES ('18', 'USR17018', 'Johan', '7', 'johands/Johan Dwi Satrio (coscoid)', '', 'johands@coscon.com; johan@cosco-ogs.com', '6714', null, '1', null, null);
INSERT INTO `clients` VALUES ('19', 'USR17019', 'Muhamad Muslih Arif', '11', 'musliar/Muhamad Muslih Arif(CoscoID)', 'Ogsjkt_mus', 'musliar@coscon.com; arif@cosco-ogs.com', '6303', 'Resign on 24/08/2018', '0', null, null);
INSERT INTO `clients` VALUES ('20', 'USR17020', 'Novi Zaelani', '7', 'noviza/Novi Zaelani(coscoid)', 'Ogsjkt_novi', 'noviza@coscon.com; noviza@cosco-ogs.com', '6714', null, '1', null, null);
INSERT INTO `clients` VALUES ('21', 'USR17021', 'Gatot Bastian', '8', 'gatotba/Gatot Bastian (Cosco ID)', 'Ogsjkt_gatot', '', '', null, '0', null, null);
INSERT INTO `clients` VALUES ('22', 'USR17022', 'Riyanti', '8', 'riyanti/Riyanti (coscoid)', 'Ogsjkt_yanti', 'riyanti@coscon.com; riyanti@cosco-ogs.com', '6715', null, '1', null, null);
INSERT INTO `clients` VALUES ('23', 'USR17023', 'Suhartini', '8', 'suhartin/Suhartini(coscoid)', 'Ogsjkt_tini', 'suhartin@coscon.com; suhartini@cosco-ogs.com', '6715', null, '0', null, null);
INSERT INTO `clients` VALUES ('24', 'USR17024', 'Freddy', '5', 'freddych/Freddy Chen', 'Ogsjkt_freddy', 'freddych@coscon.com; freddych@cosco-ogs.com', '6005', null, '1', null, null);
INSERT INTO `clients` VALUES ('25', 'USR17025', 'Hendra ', '5', '', '', 'hendra@gpi-g.com', '6002', null, '1', null, null);
INSERT INTO `clients` VALUES ('26', 'USR17026', 'Parikesit Pranajaya', '8', 'parikepr/Parikesit Pranajaya (CoscoID)', 'Ogsjkt_par', 'parikepr@coscon.com; parikesit@cosco-ogs.com', '6715', null, '1', null, null);
INSERT INTO `clients` VALUES ('27', 'USR17027', 'Cpt. Shi Peng Fei', '5', 'shipf/Shi PengFei (coscoid)', '', 'shipf@coscon.com; shipf@cosco-ogs.com', '6001', null, '1', null, null);
INSERT INTO `clients` VALUES ('28', 'USR17028', 'CGM', '5', 'cgm/Chen Gao Ming (Coscoid)', 'Ogsjkt_chen', 'cgm@coscon.com; cgm@cosco-ogs.com', '6008', 'Non Active on March', '0', null, null);
INSERT INTO `clients` VALUES ('29', 'USR17029', 'Silvia Hadiwidjadja', '3', 'silviaha/Silvia Hadiwidjaja (coscoid)', 'Ogsjkt_silvi', 'silviaha@coscon.com; silvi@cosco-ogs.com', '6010', null, '1', null, null);
INSERT INTO `clients` VALUES ('30', 'USR17030', 'Pitter', '3', 'pitter/Pitter (CoscoID)', 'Ogsjkt_pit', 'pitter@coscon.com; pitter@cosco-ogs.com', '6009', null, '1', null, null);
INSERT INTO `clients` VALUES ('31', 'USR17031', 'Uswanur Rizal', '3', 'uswanri/Uswanur Rizal(coscoid)', '', 'uswanri@coscon.com; rizal@cosco-ogs.com', '6011', null, '1', null, null);
INSERT INTO `clients` VALUES ('32', 'USR17032', 'Ibnu Setiawan', '3', 'ibnuse/Ibnu Setiawan (Cosco-Cscl)', 'Ogsjkt_ibnu', 'ibnuse@coscon.com; ibnu@cosco-ogs.com', '6560', null, '0', null, null);
INSERT INTO `clients` VALUES ('33', 'USR17033', 'Ronny Rachman', '3', 'ronnyra/Ronny Rachman (coscoid)', '', 'ronnyra@coscon.com; ronny@cosco-ogs.com', '6104', 'Resign on 1 Feb 2018', '0', null, null);
INSERT INTO `clients` VALUES ('34', 'USR17034', 'Malik Akbar', '8', 'malikak/Malik Akbar(coscoid)', '', 'malikak@coscon.com;malik@cosco-ogs.com', '6036', null, '1', null, null);
INSERT INTO `clients` VALUES ('35', 'USR17035', 'Ryan Heqmawan', '8', 'ryanhe/Ryan Heqmawan', '', 'ryanhe@coscon.com; ryan@cosco-ogs.com', '6703', null, '0', null, null);
INSERT INTO `clients` VALUES ('36', 'USR17036', 'Yan Rahman', '8', 'yanra/Yan Rahman(Cosco ID)', 'Ogsjkt_rah', 'yanra@coscon.com; yan@cosco-ogs.com', '6704', null, '1', null, null);
INSERT INTO `clients` VALUES ('37', 'USR17037', 'Hariyadi', '7', 'hariyadi/Hariyadi(coscoid)', 'Ogsjkt_adi', 'hariyadi@coscon.com; hariyadi@cosco-ogs.com', '6704', null, '1', null, null);
INSERT INTO `clients` VALUES ('38', 'USR17038', 'Semmy Oktaviandi', '4', 'semmyok/Semmy Okafindi (Cosco ID)', 'Ogsjkt_sem', 'semmy@cosco-ogs.com', '6816', 'semmyok@coscon.com;', '1', null, '2018-10-25 16:34:04');
INSERT INTO `clients` VALUES ('39', 'USR17039', 'Tri Murtini', '8', 'trimu/Tri Murtini(coscoid)', 'Ogsjkt_tri', 'trimu@coscon.com; tri@cosco-ogs.com', '6037', null, '1', null, null);
INSERT INTO `clients` VALUES ('40', 'USR17040', 'Herman Sofyan', '8', 'hermanso/Herman Sofian (cosco-cscl)', 'Ogsjkt_herman', 'hermanso@coscon.com; herman@cosco-ogs.com', '6035', null, '0', null, null);
INSERT INTO `clients` VALUES ('41', 'USR17041', 'Mufit Faisal Mubalighin', '7', 'mufitfm/Mufit Faisal Mubalighin (coscoid)', 'Ogsjkt_mufit', 'mufitfm@coscon.com; mufit@cosco-ogs.com', '6250', null, '1', null, null);
INSERT INTO `clients` VALUES ('42', 'USR17042', 'Ridho Wahyudi', '7', 'ridowaa/Rido Wahyudi Aditia (CoscoID)', '', 'ridowaa@coscon.com; rido@cosco-ogs.com', '6722', 'Resign On 15/08/2018', '0', null, null);
INSERT INTO `clients` VALUES ('43', 'USR17043', 'Ryan Wijaya', '4', 'ryanwi/Ryan Wijaya(CoscoID)', '', 'ryanwi@coscon.com; ryan.wijaya@cosco-ogs.com', '6806', null, '1', null, null);
INSERT INTO `clients` VALUES ('44', 'USR17044', 'Agustini', '7', 'agustini/Agustini (CoscoID)', 'Ogsjkt_agu', 'agustini@cosco-ogs.com; agustini@coscon.com', '6713', null, '1', null, null);
INSERT INTO `clients` VALUES ('45', 'USR17045', 'Dwi Indah Wahyuni', '7', 'indahwa/Indah Wahyuni(coscoid)', 'Ogsjkt_cntr', 'indahwa@coscon.com; indah@cosco-ogs.com', '6032', null, '1', null, null);
INSERT INTO `clients` VALUES ('46', 'USR17046', 'Farid Tontio', '7', 'faridto/Farid Tontio(coscoid)', 'Azahra19', 'faridto@coscon.com; farid@cosco-ogs.com', '6033', null, '1', null, null);
INSERT INTO `clients` VALUES ('47', 'USR17047', 'Muhammad Badrun', '7', 'badrunma/Muhammad Badrun (CoscoID)', 'Ogsjkt_muhammad', 'badrunma@coscon.com; badrun@cosco-ogs.com', '6710', null, '1', null, null);
INSERT INTO `clients` VALUES ('48', 'USR17048', 'Ginanjar Saputra ', '7', 'ginansa/Ginanjar Saputra (coscoid)', 'Ogsjkt_ginan', 'ginansa@coscon.com; ginanjar@cosco-ogs.com', '6711', null, '0', null, null);
INSERT INTO `clients` VALUES ('49', 'USR17049', 'Kesuma Dewi', '7', 'kesumde/Kesuma Dewi(coscoid)', 'Ogsjkt_dewi', 'kesumde@coscon.com; dewikesuma@cosco-ogs.com', '6720', null, '1', null, null);
INSERT INTO `clients` VALUES ('50', 'USR17050', 'Wulanda Dwi Aryani', '7', 'wulanda/Wulandari Dwi Aryani(coscoid)', 'Aryani_wulan', 'wulanda@coscon.com; wulan@cosco-ogs.com', '6712', null, '0', null, null);
INSERT INTO `clients` VALUES ('51', 'USR17051', 'Mucahrom Arief Laksono', '7', 'mucharal/Mucharom Arief Laksono (CoscoID)', 'Ogsjkt_romi', 'mucharal@coscon.com; mucharom@cosco-ogs.com', '6713', null, '0', null, null);
INSERT INTO `clients` VALUES ('52', 'USR17052', 'Anggit Rezqiatma Putra ', '6', 'anggitrp/Anggit Rezqiatma Putra (coscoid)', 'Ogsjkt_anggit', 'anggitrp@coscon.com; anggit@cosco-ogs.com', '6602', null, '1', null, null);
INSERT INTO `clients` VALUES ('53', 'USR17053', 'Nurpalah', '6', 'nurfalah/Nurfalah (coscoid)', '', 'nurfalah@coscon.com; falah@cosco-ogs.com', '6602', null, '2', null, '2018-10-16 02:55:08');
INSERT INTO `clients` VALUES ('54', 'USR17054', 'Jos Petra Manalu', '6', 'jospetra/Jospetra (Cosco ID)', '', 'jospetra@coscon.com; jos.petra@cosco-ogs.com', '6602', null, '1', null, null);
INSERT INTO `clients` VALUES ('55', 'USR17055', 'Suci Rachmawati', '4', 'sucira/Suci Rachmawati (coscoid)', 'Ogsjkt_suci', 'sucira@coscon.com; suci@cosco-ogs.com', '6810', null, '1', null, null);
INSERT INTO `clients` VALUES ('56', 'USR17056', 'Tiara Teffany', '4', 'tiara/Tiara (coscoid)', 'Ogsjkt_tiara', 'tiara@coscon.com; tiara@cosco-ogs.com', '6820', null, '1', null, null);
INSERT INTO `clients` VALUES ('57', 'USR17057', 'Reni Marlina', '4', 'renima/Reni Marlina(coscoid)', 'Ogsjkt_reni', 'renima@coscon.com; reni@cosco-ogs.com', '6820', null, '1', null, null);
INSERT INTO `clients` VALUES ('58', 'USR17058', 'Rayfan Sanjaya', '4', 'rayfansa/Rayfan sanjaya (CoscoID)', '', 'rayfansa@coscon.com; rayfan@cosco-ogs.com', '6811', null, '1', null, null);
INSERT INTO `clients` VALUES ('59', 'USR17059', 'Komarudin', '4', 'komaru/Komarudin (CoscoID)', 'Ogsjkt_komar', 'komaru@coscon.com; komar@cosco-ogs.com', '6812', null, '1', null, null);
INSERT INTO `clients` VALUES ('60', 'USR17060', 'Jamil', '4', 'jamil/Jamil(coscoid)', 'Ogsjkt_jam', 'jamil@coscon.com; jamil@cosco-ogs.com', '6807', null, '1', null, null);
INSERT INTO `clients` VALUES ('61', 'USR17061', 'Reva Mardiani Putri', '', 'revama/Reva Mardian (CoscoID)', 'Ogsjkt_rev', 'revama@coscon.com; reva@cosco-ogs.com', '6807', null, '0', null, null);
INSERT INTO `clients` VALUES ('62', 'USR17062', 'Agnes Retno Utami', '4', 'agnesre/Agnes Retno(coscoid)', 'Ogsjkt_agnes', 'agnesre@coscon.com; agnes@cosco-ogs.com', '6808', null, '1', null, null);
INSERT INTO `clients` VALUES ('63', 'USR17063', 'Dini Fitria', '4', 'dinifit/Dini Fitria (CoscoID)', 'Ogsjkt_din', 'dinifit@coscon.com; dini@cosco-ogs.com', '6808', null, '1', null, null);
INSERT INTO `clients` VALUES ('64', 'USR17064', 'Handri Prasetya', '4', 'handripr/Handri Prasetya (CoscoID)', 'Ogsjkt_han', 'handripr@coscon.com; handri@cosco-ogs.com', '6809', null, '1', null, null);
INSERT INTO `clients` VALUES ('65', 'USR17065', 'Zang XuanWei', '5', 'zangxw/Zang XuanWei (coscoid)', 'Ogsjkt_zang02', 'zangxw@coscon.com; zangxw@cosco-ogs.com', '6003', null, '1', null, null);
INSERT INTO `clients` VALUES ('66', 'USR17066', 'Fakron Najib', '4', 'fakhrna/Fakhron Najib(coscoid)', 'Ogsjkt_fan', 'fakhrna@coscon.com;najib@cosco-ogs.com', '6804', null, '1', null, null);
INSERT INTO `clients` VALUES ('67', 'USR17067', 'Iwan Setiawan', '4', 'iwanse/Iwan Setiawan (coscoid)', 'Ogsjkt_iwan', 'iwanse@coscon.com; iwan@cosco-ogs.com', '6905', null, '1', null, null);
INSERT INTO `clients` VALUES ('68', 'USR17068', 'Made Septiami Ariani', '4', 'septear/Made Septiami Ariani(coscoid)', '', 'septear@coscon.com; ami@cosco-ogs.com', '6821', null, '1', null, null);
INSERT INTO `clients` VALUES ('69', 'USR17069', 'Robert Sanjaya', '4', 'robersa/Robert Sanjaya (coscoid)', 'Ogsjkt_robert', 'robersa@coscon.com; sanjaya@cosco-ogs.com', '6707', null, '1', null, null);
INSERT INTO `clients` VALUES ('70', 'USR17070', 'Agus Saptono', '4', 'agussa/Agus Saptono(coscoid)', 'Ogsjkt_agus7no~', 'agussa@coscon.com; agussaptono', '6801', null, '1', null, null);
INSERT INTO `clients` VALUES ('71', 'USR17071', 'Tauresto Yogo', '4', 'taureyu/Tauresto Yogo Utomo (Cosco ID)', 'Ogsjkt_t4u', 'taureyu@coscon.com; tauresto@cosco-ogs.com', '6805', null, '1', null, null);
INSERT INTO `clients` VALUES ('72', 'USR17072', 'Stefanus Enok', '4', 'stefanen/Stefanus Enok (Cosco ID)', '', 'stefanen@coscon.com; stefanus@cosco-ogs.com', '6808', null, '1', null, null);
INSERT INTO `clients` VALUES ('73', 'USR17073', 'Saeful Bahri (Ade)', '4', 'saefuba/Saeful Bahri(coscoid)', 'Ogsjkt_ade', 'saefuba@coscon.com; saepulbahri@cosco-ogs.com', '6802', null, '1', null, null);
INSERT INTO `clients` VALUES ('74', 'USR17074', 'Trisno Wibowo', '4', 'trisnwi/Trisno Wibowo(coscoid)', 'Ogsjkt_trisno', 'trisnwi@coscon.com; trisno@cosco-ogs.com', '6803', null, '1', null, null);
INSERT INTO `clients` VALUES ('75', 'USR17075', 'Aulia Akbar (Pak Oki)', '3', 'auliaha/Aulia Akbar Harahap', 'Ogsjkt_aulia', 'auliaha@coscon.com; oki@cosco-ogs.com', '6859', null, '1', null, null);
INSERT INTO `clients` VALUES ('76', 'USR17076', 'Mega Patricia', '2', 'megapa/Mega Patricia Kudamassa(CoscoID)', 'Ogsjkt_mega', 'megapa@coscon.com; mega@cosco-ogs.com', '6018', null, '1', null, null);
INSERT INTO `clients` VALUES ('77', 'USR17077', 'Gilang Syahbana', '2', 'gilangsy/gilang syahbana(coscoid)', 'Ogsjkt_syah', 'gilangsy@coscon.com; gilang@cosco-ogs.com', '6019', null, '1', null, null);
INSERT INTO `clients` VALUES ('78', 'USR17078', 'Tohonan Winra (Nando)', '2', 'tohonwi/Tohonan Winra(coscoid)', 'Ogsjkt_nando', 'tohonwi@coscon.com; nando@cosco-ogs.com', '6012', null, '1', null, null);
INSERT INTO `clients` VALUES ('79', 'USR17079', 'Adi S Chandra', '2', 'adisch/Adi S. Chandra (coscoid)', 'Ogsjkt_adi', 'adisch@coscon.com; adi@cosco-ogs.com', '6020', null, '0', null, null);
INSERT INTO `clients` VALUES ('80', 'USR17080', 'Sofian Simanulang', '7', 'sofima/Sofian Manulang (coscoid)', 'Ogsjkt_sofi', 'sofima@coscon.com; sofi@cosco-ogs.com', '6704', null, '1', null, null);
INSERT INTO `clients` VALUES ('81', 'USR17081', 'Faisal Reza', '8', 'faisalre/Faisal Reza(CoscoID)', 'Ogsjkt_faisal', 'faisalre@coscon.com; faisal@cosco-ogs.com', '6718', null, '1', null, null);
INSERT INTO `clients` VALUES ('82', 'USR17082', 'Hakimi', '2', 'hakimah/Hakimi Ahmad (coscoid)', 'Ogsjkt_hakimi', 'hakimah@coscon.com', '', null, '0', null, null);
INSERT INTO `clients` VALUES ('83', 'USR17083', 'Jenny Lee', '2', 'jennli/Jenny Lee(CoscoID)', 'Ogsjkt_jenn', 'jennli@coscon.com; jenny@cosco-ogs.com', '6016', null, '1', null, null);
INSERT INTO `clients` VALUES ('84', 'USR17084', 'Susanna Oktavia', '2', 'susannao/Susanna Oktavia(coscoid)', 'Ogsjkt_susan', 'susannao@coscon.com; octa@cosco-ogs.com', '6015', null, '1', null, null);
INSERT INTO `clients` VALUES ('85', 'USR17085', 'Sumarni Chia', '2', 'sumarch/Sumarni Chia (Cosco-Cscl)', 'Ogsjkt_marni', 'sumarch@coscon.com; marni@cosco-ogs.com', '6014', null, '1', null, null);
INSERT INTO `clients` VALUES ('86', 'USR17086', 'Shelvia Tanmiya', '10', 'shelvita/Shelvia Tanmiya (CoscoID)', 'Ogsjkt_shel', 'shelvita@coscon.com; shelvia@cosco-ogs.com', '6348', null, '0', null, null);
INSERT INTO `clients` VALUES ('87', 'USR17087', 'Dendi Yahya', '8', 'dendiya/Dendi Yahya (coscoid)', 'Ogsjkt_dendi', 'dendiya@coscon.com', '', null, '0', null, null);
INSERT INTO `clients` VALUES ('88', 'USR17088', 'Edi Susanto', '3', 'eddysu/Eddy Susanto (coscoid)', '', 'eddysu@coscon.com; eddytan@cosco-ogs.com', '6767', null, '1', null, null);
INSERT INTO `clients` VALUES ('89', 'USR17089', 'Winily Leo', '3', 'winily/Winily (cosco-cscl)', 'Ogsjkt_win', 'winily@coscon.com', '6825', 'winily@cosco-ogs.com', '1', null, '2018-10-25 13:40:39');
INSERT INTO `clients` VALUES ('90', 'USR17090', 'Joy Hicklyn Situmorang', '2', 'joysi/Joy Hicklyn Situmorang (CoscoID)', 'Ogsjkt_joy', 'joysi@coscon.com; joy@cosco-ogs.com', '6017', null, '1', null, null);
INSERT INTO `clients` VALUES ('91', 'USR17091', 'Salman Al Farizi', '2', 'salmaal/Salman Al Farizi(coscoid)', 'Ogsjkt_salman', 'salmaal@coscon.com; salman@cosco-ogs.com', '6013', null, '1', null, null);
INSERT INTO `clients` VALUES ('92', 'USR17092', 'Riana Panjaitan', '2', 'rianapa/Riana Panjaitan (CoscoID)', 'Ogsjkt_ria', 'rianapa@coscon.com; riana@cosco-ogs.com', '6716', null, '1', null, null);
INSERT INTO `clients` VALUES ('93', 'USR17093', 'Wahyu Lestari', '3', 'wahyule/Wahyu Lestari (cosco-cscl)', '', 'wahyule@coscon.com; wahyu@cosco-ogs.com', '6791', null, '1', null, null);
INSERT INTO `clients` VALUES ('94', 'USR17094', 'Arsi Arizal ', '12', 'arsiar/Arsi Arizal (cosco-cscl)', 'Ogsjkt_arsi', 'arsiar@coscon.com; arsi@cosco-ogs.com', '6329', null, '1', null, null);
INSERT INTO `clients` VALUES ('95', 'USR17095', 'Citra Damayanti', '12', 'citrada/Citra Damayanti (Cosco-Cscl)', 'Ogsjkt_citra', 'citrada@coscon.com; citra@cosco-ogs.com', '6330', null, '1', null, null);
INSERT INTO `clients` VALUES ('96', 'USR17096', 'Nia Permata Esy', '12', 'niape/Nia Permata Esy', 'Ogsjkt_nia', 'niape@coscon.com; nia@cosco-ogs.com', '6331', null, '1', null, null);
INSERT INTO `clients` VALUES ('97', 'USR17097', 'Jeffri Agnes', '12', 'jefriag/Jefri Agnes (coscoid)', '', 'jefriag@coscon.com; jefri@cosco-ogs.com', '6031', null, '1', null, null);
INSERT INTO `clients` VALUES ('98', 'USR17098', 'Dhea Miranti', '12', 'dheami/Dhea Miranti(coscoid)', 'Dhea_miranti', 'dheami@coscon.com; dhea@cosco-ogs.com', '6026', null, '2', null, '2018-10-16 02:54:45');
INSERT INTO `clients` VALUES ('99', 'USR17099', 'Yulia Fitriani', '12', 'yuliafi/Yulia Fitriani(coscoid)', 'Ogsjkt_yulia', 'yuliafi@coscon.com; yulia@cosco-ogs.com', '6027', null, '1', null, null);
INSERT INTO `clients` VALUES ('100', 'USR17100', 'Yomi Romaelia ', '12', 'yomiro/Yomi Romaelia (cosco-cscl)', '', 'yomiro@coscon.com; yomi@cosco-ogs.com', '6025', null, '1', null, null);
INSERT INTO `clients` VALUES ('101', 'USR17101', 'Ernando', '12', 'ernando/Ernando (cosco-cscl)', 'Ogsjkt_ernan', 'ernando@coscon.com; ernando@cosco-ogs.com', '6028', null, '1', null, null);
INSERT INTO `clients` VALUES ('102', 'USR17102', 'Tabita Princesia', '12', 'tabitapr/ Tabita Princesia (CoscoID)', 'Ogsjkt_tabi', 'tabitapr@coscon.com; tabita@cosco-ogs.com', '6029', null, '0', null, null);
INSERT INTO `clients` VALUES ('103', 'USR17103', 'Cindy Isabella Poernama ', '2', 'cindypo/Cindy Poernama (Cosco-Cscl)', 'Ogsjkt_cindy', 'cindypo@coscon.com; cindy@cosco-ogs.com', '6030', null, '1', null, null);
INSERT INTO `clients` VALUES ('104', 'USR17104', 'Ellen Azwa Safrina', '12', 'ellenas/Ellen Azwa Safrina (Cosco-Cscl)', 'Ogsjkt_ellen', 'ellenas@coscon.com; ellen@cosco-ogs.com', '6327', null, '0', null, null);
INSERT INTO `clients` VALUES ('105', 'USR17105', 'Ernitta Fransiska ', '12', 'ernitfr/Ernita Fransiska (Cosco-Cscl)', 'Ogsjkt_erni', 'ernitfr@coscon.com; ernita@cosco-ogs.com', '6328', null, '1', null, null);
INSERT INTO `clients` VALUES ('106', 'USR17106', 'Jully Fransisca', '3', 'jullyfr/Jully Fransisca(coscoid)', 'Cosco_jully', 'jullyfr@coscon.com; jully@cosco-ogs.com', '6345', null, '1', null, null);
INSERT INTO `clients` VALUES ('107', 'USR17107', 'Teuku Rahmad', '13', 'teukura/Teuku Rahmad(coscoid)', 'Ogsjkt_rahmad', 'teukura@coscon.com; rachmad@cosco-ogs.com', '6038', null, '1', null, null);
INSERT INTO `clients` VALUES ('108', 'USR17108', 'Rima Yapa Perangin-angin', '13', 'rimayp/Rima Yapa Perangin-angin', 'Ogsjkt_rima', 'rimayp@coscon.com; rima@cosco-ogs.com', '6320', null, '1', null, null);
INSERT INTO `clients` VALUES ('109', 'USR17109', 'Setyaningsih', '13', 'setya/Setyaningsih(CoscoID)', 'Ogsjkt_set', 'setya@coscon.com; ningsih@cosco-ogs.com', '6339', null, '0', null, null);
INSERT INTO `clients` VALUES ('110', 'USR17110', 'Rizki Rachmawati', '12', 'rizkira/Rizki Rachmawati (CoscoID)', 'Ogsjkt_riz', 'rizki@cosco-ogs.com', '6609', 'Resign on 29/10/2018\nrizkira@coscon.com', '2', null, '2018-10-29 08:59:17');
INSERT INTO `clients` VALUES ('111', 'USR17111', 'Dinar Putri Pangestu', '12', 'dinarpu/Dinar Putri(CoscoID)', 'Ogsjkt_din', 'dinarpu@coscon.com; dinar@cosco-ogs.com', '6607', null, '1', null, null);
INSERT INTO `clients` VALUES ('112', 'USR17112', 'Wispi Migunani', '12', 'wispimi/Wispi Migunani(CoscoID)', 'Ogsjkt_wis', 'wispimi@coscon.com; wispi@cosco-ogs.com', '6090', null, '1', null, null);
INSERT INTO `clients` VALUES ('113', 'USR17113', 'Zaenal Muhaidin', '13', 'zaenalmu/Zaenal Muhaidin (cosco-cscl)', 'Ogsjkt_zae', 'zaenalmu@coscon.com; zaenal@cosco-ogs.com', '6039', null, '1', null, null);
INSERT INTO `clients` VALUES ('114', 'USR17114', 'Ibnul Qoyim', '13', 'ibnulqo/Ibnul Qoyim (Cosco ID)', 'Ogsjkt_ibnul', 'ibnulqo@coscon.com; ibnul@cosco-ogs.com', '6317', null, '1', null, null);
INSERT INTO `clients` VALUES ('115', 'USR17115', 'Firman Surya Atmaja', '13', 'firmansa/Firman Surya Atmaja (coscoid)', 'Ogsjkt_firman', 'firmansa@coscon.com; firman@cosco-ogs.com', '6318', null, '1', null, null);
INSERT INTO `clients` VALUES ('116', 'USR17116', 'Triagusti Hasturi', '10', 'triagha/Triagusti Hasturi', 'tria_Gha', 'triagha@coscon.com; tria@cosco-ogs.com', '6312', null, '1', null, null);
INSERT INTO `clients` VALUES ('117', 'USR17117', 'I Gede Aldika Novan Adi', '12', 'gedeal/I Gede Aldika Novan Adi', 'Ogsjkt_ged', 'gedeal@coscon.com; gede@cosco-ogs.com', '6606', null, '1', null, null);
INSERT INTO `clients` VALUES ('118', 'USR17118', 'Aditya Armanu ', '12', 'adityaar/Aditya Armanu (coscoid)', 'Ogsjkt_adit', 'adityaar@coscon.com; aditya@cosco-ogs.com', '6334', null, '1', null, null);
INSERT INTO `clients` VALUES ('119', 'USR17119', 'Penny Peronika Sipahutar', '10', 'pennips/Penni Peronika Sipahutar(coscoid)', '', 'pennips@coscon.com; penni@cosco-ogs.com', '6313', null, '1', null, null);
INSERT INTO `clients` VALUES ('120', 'USR17120', 'Anys Triana', '10', 'anystr/Anys Triana', 'Ogsjkt_any', 'anystr@coscon.com; anys@cosco-ogs.com', '6314', null, '1', null, null);
INSERT INTO `clients` VALUES ('121', 'USR17121', 'Sienny Evelyn', '10', 'siennyev/Sienny Evelyn (cosco-cscl)', '', 'siennyev@coscon.com; evelyn@cosco-ogs.com', '6023', null, '0', null, null);
INSERT INTO `clients` VALUES ('122', 'USR17122', 'Anang Sukendar', '10', 'anang/Anang Sukendar', 'Ogsjkt_anang', 'anangsu@coscon.com; anang@cosco-ogs.com', '6022', null, '1', null, null);
INSERT INTO `clients` VALUES ('123', 'USR17123', 'Clara', '10', 'claraag/Clara Agustine (cosco-cscl)', 'Ogsjkt_clara', 'claraag@coscon.com', '', null, '0', null, null);
INSERT INTO `clients` VALUES ('124', 'USR17124', 'Sumarlan Tarigan', '3', 'sumarta/Sumarlan Tarigan(coscoid)', 'Ogsjkt_fakhri', 'sumarta@coscon.com; sumarlan@cosco-ogs.com', '6481', null, '1', null, null);
INSERT INTO `clients` VALUES ('125', 'USR17125', 'Bekti Yulianto', '11', 'bektiyu/Bekti Yulianto(coscoid)', 'Ogsjkt_bekti', 'bektiyu@coscon.com; bekti@cosco-ogs.com', '6304', null, '1', null, null);
INSERT INTO `clients` VALUES ('126', 'USR17126', 'Laurensia Lulu Inda Yosea ', '11', 'laureli/Laurensia Lulu Inda Yosea(CoscoID)', 'Ogsjkt_lau', 'laureli@coscon.com; lauren@cosco-ogs.com', '6305', null, '2', null, '2018-10-16 02:51:35');
INSERT INTO `clients` VALUES ('127', 'USR17127', 'Rahmat Hidayat', '11', 'rahmathi/Rahmat Hidayat (coscoid)', 'Container_cosco', 'hidayat@cosco-ogs.com', '6306', 'rahmathi@coscon.com', '1', null, '2018-10-19 15:45:37');
INSERT INTO `clients` VALUES ('128', 'USR17128', 'Tony Sukri', '9', 'tonnysu/Tonny Sukri(coscoid)', 'Ogsjkt_tonny', 'tonnysu@coscon.com; tony@cosco-ogs.com', '6215', null, '1', null, null);
INSERT INTO `clients` VALUES ('129', 'USR17129', 'Mundir AM', '9', 'mundiam/Mundir AM(coscoid)', 'Ogsjkt_mundir', 'mundiam@coscon.com mundir@cosco-ogs.com', '6216', null, '1', null, null);
INSERT INTO `clients` VALUES ('130', 'USR17130', 'Kamalail', '9', 'kamalail/Kamalail (coscoid)', 'Ogsjkt_kamal', 'kamalail@coscon.com; kamal@cosco-ogs.com', '6217', null, '1', null, null);
INSERT INTO `clients` VALUES ('131', 'USR17131', 'Idham Mufarid', '11', 'idhamu/Idham Mufarid(coscoid)', 'Cimohai_6956', 'idhamu@coscon.com; idham@cosco-ogs.com', '6007', null, '1', null, null);
INSERT INTO `clients` VALUES ('132', 'USR17132', 'Evi Naznim', '3', 'evina/Evi Naznim(coscoid)', 'Ogsjkt_evi', 'evina@coscon.com; evi@cosco-ogs.com', '6232', null, '1', null, null);
INSERT INTO `clients` VALUES ('133', 'USR17133', 'Alvina Fitri Melinda', '2', 'Alvinafm/Alvina Fitri Melinda(CoscoID)', 'Ogsjkt_vin', 'vinamelida@cosco-ogs.com', '6192', 'Alvinafm@coscon.com\nResign on 31/10/2018', '2', null, '2018-11-01 16:13:11');
INSERT INTO `clients` VALUES ('134', 'USR17134', 'Putri Astri Rahayu', '1', 'indraha/Indrawati Hasan(coscoid)', 'Ogsjkt_wati', 'putri.astri@cosco-ogs.com', '6604', null, '0', null, null);
INSERT INTO `clients` VALUES ('135', 'USR17135', 'Edrick Kusuma', '9', 'edricku/Edrick Kusuma (CoscoID)', 'Ogsjkt_edr', 'edrick@cosco-ogs.com', '-', '-', '1', null, '2018-10-19 15:45:58');
INSERT INTO `clients` VALUES ('136', 'USR17136', 'Alif Prasetiawan Wicaksono', '7', 'alifpw/Alif Prasetiawan Wicaksono (CoscoID)', 'Ogsjkt_ali', 'alif@cosco-ogs.com', '-', '-', '1', null, '2018-10-16 02:53:49');
INSERT INTO `clients` VALUES ('137', 'USR17137', 'Yazena Putri Radliya', '10', 'yazenpr/Yazena Putri Radliya (CoscoID)', 'Ogsjkt_yaz', 'yazena@cosco-ogs.com; yazenpr@coscon.com', '6024', null, '0', null, null);
INSERT INTO `clients` VALUES ('138', 'USR17138', 'Katrin Nurani', '8', 'katrinu/Katrin Nurani (CoscoID)', 'Ogsjkt_kat', 'katrin@cosco-ogs.com; katrinu@coscon.com', '6207', null, '1', null, null);
INSERT INTO `clients` VALUES ('139', 'USR17139', 'Sitia Lisa\'Adah', '7', 'sitila/Siti Lisa\'Adah (CoscoID)', 'Ogsjkt_sit', 'sitilisa@cosco-ogs.com; sitila@coscon.com', '6708', null, '1', null, null);
INSERT INTO `clients` VALUES ('140', 'USR17140', 'RamaÂ KusumaaÂ KurniaÂ Putra', '7', 'ramaku/RamaaÂ KusumaaÂ KurniaaÂ Putra (CoscoID)', 'Ogsjkt_ram', 'ramakusuma@cosco-ogs.com; ramaku@coscon.com', '6250', null, '0', null, null);
INSERT INTO `clients` VALUES ('141', 'USR17141', 'Tegar Ari Sadewo', '7', 'tegaras/Tegar Ari Sadewo(CoscoID)', 'Ogsjkt_teg', 'tegaras@coscon.com;tegarari@cosco-ogs.com', '6034', 'Resign', '1', null, null);
INSERT INTO `clients` VALUES ('142', 'USR17142', 'Listiyono', '7', 'AP\\Listiyono(CoscoID)', 'Ogsjkt_lis', 'listiyono@cosco-ogs.com', '', null, '1', null, null);
INSERT INTO `clients` VALUES ('143', 'USR18001', 'Margareta Lillian L. A (Reta)', '4', 'margali/Margareta Lillian L. A(CSLI)', 'Ogsjkt_mar', 'reta@cosco-ogs.com', '6807', null, '1', null, null);
INSERT INTO `clients` VALUES ('144', 'USR18002', 'Tinajanti Tjandra', '3', 'tinajtj/Tinajanti Tjandra(CSLI)', 'Ogsjkt_tin', 'tina@cosco-ogs.com', '6800', null, '1', null, null);
INSERT INTO `clients` VALUES ('145', 'USR18003', 'Lei Zhimin', '5', 'AP\\leizhm', 'Leizy827502', 'leizhm@cosco-ogs.com', '6008', 'leizhm@coscon.com', '1', null, '2018-11-01 16:07:47');
INSERT INTO `clients` VALUES ('146', 'USR18004', 'Karthina Metta', '1', 'karthime', 'Ogsjkt_metta', 'metta@cosco-ogs.com', '6604', null, '1', null, null);
INSERT INTO `clients` VALUES ('147', 'USR18005', 'Steffani Christie', '2', 'steffach/Steffani Christie(CSLI)', 'Ogsjkt_stef', 'christie@cosco-ogs.com', '', null, '2', null, '2018-10-16 02:55:38');
INSERT INTO `clients` VALUES ('148', 'USR18006', 'Richsan Jonnendy', '9', 'richsjo/Richsan Jonnendy(CSLI)', 'Ogsjkt_ric', 'richsan@cosco-ogs.com', '', null, '1', null, null);
INSERT INTO `clients` VALUES ('149', 'USR18007', 'Deni Rivaldi', '8', 'deniri/Deni Rivaldi(CSLI)', 'Ogsjkt_den', 'deni@cosco-ogs.com', '', null, '1', null, null);
INSERT INTO `clients` VALUES ('150', 'USR18008', 'Hansel Nabawi ', '11', 'hanselna', 'Ogsjkt_han', 'hansel@cosco-ogs.com;hanselna@coscon.com', '6021', 'Email Password cosco-ogs = ogsjkt_deni', '2', null, '2018-10-16 02:52:06');
INSERT INTO `clients` VALUES ('151', 'USR18009', 'Justine Clarissa Limantoro', '10', 'justisa/Justine Clarissa(CSLI)', 'Ogsjkt_jus', 'justine@cosco-ogs.com', '-', 'Mutasi user surabaya. Email forward dari justine@sub.cosco-ogs.com ke justine@cosco-ogs.com', '1', null, '2018-10-19 15:46:54');
INSERT INTO `clients` VALUES ('152', 'USR18010', 'Adelina Setiawati', '10', 'adelise/Adelinas Setiawati(CSLI)', 'Ogsjkt_ade', 'adelina@cosco-ogs.com', '-', '-', '1', null, '2018-10-19 15:46:43');
INSERT INTO `clients` VALUES ('153', 'USR18011', 'M. Haposan D. Siregar', '7', 'hapossi/M. Haposan D. Siregar(CSLI)', 'Ogsjkt_hap', 'haposan@cosco-ogs.com;hapossi@coscon.com', '', null, '0', null, null);
INSERT INTO `clients` VALUES ('154', 'USR18012', 'Aprilia Kristiani', '12', 'aprilkr/Aprilia Kristiani(CSLI)', 'Ogsjkt_apr', 'aprilia@cosco-ogs.com;aprilkr@coscon.com', '', null, '1', null, null);
INSERT INTO `clients` VALUES ('155', 'USR18013', 'Lina Alvionita', '11', 'linaal', 'Ogsjkt_lin', 'lina-alvionita@cosco-ogs.com', '-', '-', '1', null, '2018-10-16 02:50:30');
INSERT INTO `clients` VALUES ('156', 'USR18014', 'Randi Kurnia', '13', 'randiku', 'Ogsjkt_ran', 'randi-kurnia@cosco-ogs.com; randiku@coscon.com', '', null, '0', null, null);
INSERT INTO `clients` VALUES ('157', 'USR18015', 'Laura Raditya', '1', 'laurara/Laura Raditya(CSLI)', 'Ogsjkt_lau', 'laura-raditya@cosco-ogs.com', '6605', null, '1', null, null);
INSERT INTO `clients` VALUES ('158', 'USR18016', 'Agung Nugroho', '11', 'agungnu/Agung Nugroho(CSLI)', 'Ogsjkt_agu', 'agung-nugroho@cosco-ogs.com', '-', '-', '1', null, '2018-10-19 15:46:15');
INSERT INTO `clients` VALUES ('159', 'USR18017', 'Stephanie Andrea', '12', 'stephaan/Stephanie Andrea(CSLI)', 'Ogsjkt_step', 'stephanie@cosco-ogs.com', '-', '-', '1', null, '2018-10-19 15:43:33');
INSERT INTO `clients` VALUES ('160', 'USR18018', 'Idris', '8', 'idris/Idris(CSLI)', 'Ogsjkt_idr', 'idris@cosco-ogs.com', '6722', null, '1', null, null);
INSERT INTO `clients` VALUES ('161', 'USR18019', 'Afnan Nur Ikhwan', '12', 'afnanni/Afnan Nur Ikhwan(CSLI)', 'Ogsjkt_afn', 'afnan@cosco-ogs.com', '-', '-', '1', null, '2018-10-19 11:08:36');
INSERT INTO `clients` VALUES ('162', 'USR18020', 'Wahyu Kurnia Pradana', '7', 'wahyukp/Wahyu Kurnia Pradana(CSLI)', 'Ogsjkt_wah', 'wahyu-kurnia@cosco-ogs.com', '-', '-', '1', null, '2018-10-19 11:08:17');
INSERT INTO `clients` VALUES ('163', 'USR18021', 'Galuh Nopianto', '13', 'galuhno/Galuh Nopianto', 'Ogsjkt_gal', 'galuh-nopianto@cosco-ogs.com', '-', '-', '1', null, '2018-10-19 15:43:14');
INSERT INTO `clients` VALUES ('164', 'USR18022', 'Arnold Fernando', '13', 'arnolfe/Arnold Fernando(CSLI)', 'Ogsjkt_arn', 'arnold@cosco-ogs.com', '-', '-', '1', null, '2018-10-19 11:08:58');
INSERT INTO `clients` VALUES ('165', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `clients` VALUES ('166', 'USR18023', 'Adesha Vuthalova', '11', 'adeshvu', 'Ogsjkt_ade', 'adesha@cosco-ogs.com', '-', '-', '1', '2018-10-17 03:01:06', '2018-10-19 10:57:28');
INSERT INTO `clients` VALUES ('167', 'USR18024', 'Shinta Alatas', '11', 'shintal', 'Ogsjkt_shin', 'shinta-alatas@cosco-ogs.com', '-', '-', '1', '2018-10-19 11:15:10', '2018-10-19 11:15:10');
INSERT INTO `clients` VALUES ('168', 'USR18025', 'Novia Sulistio', '12', 'noviasu', 'Ogsjkt_nov', 'novia@cosco-ogs.com', '-', '-', '1', '2018-10-25 11:07:44', '2018-10-25 11:07:44');
INSERT INTO `clients` VALUES ('169', 'USR18026', 'Rey Hando', '6', '-', '-', 'hando@cosco-ogs.com', '-', '-', '1', '2018-10-26 13:06:21', '2018-10-26 13:06:21');

-- ----------------------------
-- Table structure for `computers`
-- ----------------------------
DROP TABLE IF EXISTS `computers`;
CREATE TABLE `computers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_computer` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hostname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `proccessor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hardisk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `os` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of computers
-- ----------------------------
INSERT INTO `computers` VALUES ('1', 'PC-17001', 'IDJKT-WANDIGU', '192.168.6.213', 'Intel Core I3', '4GB DDR3', '500GB', 'Windows7 64bit', 'HP 280 G2 MT', 'test', null, '1', null, '2018-10-24 16:19:18');
INSERT INTO `computers` VALUES ('2', 'PC-17002', 'IDJKT-RISYA', '192.168.6.216', 'Intel Core I3', '4GB DDR3', '1TB SATA', 'Windows7 64bit', 'Lenovo 10132', 'test', null, '1', null, '2018-10-24 16:19:30');
INSERT INTO `computers` VALUES ('3', 'PC-17003', 'IDJK-LAURARA', '192.168.6.214', 'Intel Core I3 3240 @3.40Ghz', '4GB DDR3', '500GB', 'Windows7 64bit', 'Rakitan', 'test', null, '1', null, '2018-10-24 16:29:25');
INSERT INTO `computers` VALUES ('4', 'PC-17004', 'IDJKT-AGUSAD', '192.168.6.234', 'Intel Core I3 2100 @3.10Ghz', '2GB DDR3', '500GB', 'Windows 7 32bit', 'Rakitan', 'test', null, '1', null, '2018-10-24 16:29:46');
INSERT INTO `computers` VALUES ('5', 'PC-17005', 'IDJKT-RIZKADW', '192.168.6.232', 'Intel Core I3', '4GB DDR3', '500GB', 'Windows7 64bit', 'Lenovo 10132', 'test', '-', '1', null, '2018-10-24 17:02:55');
INSERT INTO `computers` VALUES ('6', 'PC-17006', 'IDJKT-YOSEP', '192.168.6.101', 'Intel Core I3 4170 @3.10Ghz', '4GB DDR3', '500GB', 'Windows7 64bit', 'HP 280 G2 MT', 'test', null, '1', null, '2018-10-24 16:30:08');
INSERT INTO `computers` VALUES ('7', 'PC-17007', 'IDJKT-KARTHIME', '172.26.46.73', 'Intel Pentium Dual Core', '3GB DDR2', '500GB SATA', 'Windows7 32bit', 'HP g3630 l', 'test', null, '1', null, '2018-10-25 16:38:25');
INSERT INTO `computers` VALUES ('8', 'PC-17008', 'IDJKT-DEBBYAR', '192.168.6.237', 'Intel Core I3 3240 @3.40Ghz', '4GB DDR3', '1TB', 'Windows 7 X64 SP1', 'Rakitan', 'test', null, '1', null, '2018-10-24 16:58:29');
INSERT INTO `computers` VALUES ('9', 'PC-17009', 'IDJKT-NURFAPH', '192.168.6.217', 'Intel Pentium Dual Core', '4GB DDR2', '500GB', 'Windows7 32bit', 'HP g3630 l', 'test', null, '1', null, '2018-10-24 16:59:49');
INSERT INTO `computers` VALUES ('10', 'PC-17010', 'IDJKT-TERUWE', '192.168.6.251', 'Intel Core I3', '4GB DDR3', '500GB', 'Windows7 64bit', 'HP P2-1350L', 'test', null, '1', null, '2018-10-24 17:00:06');
INSERT INTO `computers` VALUES ('11', 'PC-17011', 'IDJKT-EDRICKU', '192.168.6.221', 'Intel Core I3', '2GB DDR3', '500GB SATA', 'Windows7 64bit', 'HP P2-1350L', 'test', null, '1', null, '2018-10-24 17:00:26');
INSERT INTO `computers` VALUES ('12', 'PC-17012', 'IDJKT-JENNYCH', '192.168.6.252', 'Intel Core I3', '2GB + 4GB', '500GB SATA', 'Windows7 64bit', 'HP P2-1350L', 'test', null, '1', null, '2018-10-24 17:00:47');
INSERT INTO `computers` VALUES ('13', 'PC-17013', 'IDJKT-KESUMDE', '172.26.46.252', 'Intel Core I3', '4GB DDR3', '500GB + 50', 'Windows7 64bit', 'HP 3330 MT', 'test', null, '1', null, '2018-10-24 17:13:26');
INSERT INTO `computers` VALUES ('14', 'PC-17014', 'IDJKT-RIZKIRA', '172.26.46.166', 'Intel Core I3', '4GB DDR3', '1TB', 'Windows7 64bit', 'HP 280 G2 MT', 'test', null, '2', null, '2018-11-02 10:23:50');
INSERT INTO `computers` VALUES ('15', 'PC-17015', 'IDJKT-ALFIPW', '172.26.46.165', 'Intel Core I3 4170 @3.70 Ghz', '4GB DDR3', '1TB SATA', 'Windows 7 64bit', 'HP 280 G2 MT', 'test', null, '1', null, '2018-10-25 09:37:59');
INSERT INTO `computers` VALUES ('16', 'PC-17016', 'IDJKT-IANYU', '172.26.46.145', 'Intel Core I3 3220 @3.30Ghz', '2GB DDR3', '500GB SATA', 'Windows7 64bit', 'HP 3330 MT', 'test', null, '1', null, '2018-10-25 09:38:46');
INSERT INTO `computers` VALUES ('17', 'PC-17017', 'IDJKT-AGUNGNU', '172.26.46.167', 'Pentium Dual-Core CPU E5700 @3', '4GB DDR3', '160 + 250', 'Windows7 32bit', 'Rakitan', 'test', null, '1', null, '2018-10-24 17:20:39');
INSERT INTO `computers` VALUES ('18', 'PC-17018', 'IDJKT-IDHAMU', '192.168.6.215', 'Intel Core I3-4160', '4GB DDR3', '500GB SATA', 'Windows7 64bit', 'HP Pro 400 GT MT', 'test', null, '1', null, '2018-10-24 17:21:53');
INSERT INTO `computers` VALUES ('19', 'PC-17019', 'IDJKT-KAMALAIL', '192.168.6.239', 'Intel Core I3-4160 @3.60Ghz', '2GB DDR3', '500GB DDR3', 'Windows7 64bit', 'HP Pro 400 GT MT', 'test', null, '1', null, '2018-10-24 17:24:47');
INSERT INTO `computers` VALUES ('20', 'PC-17020', 'IDJKT-MUNDIAM', '192.168.6.240', 'Intel Core I3', '2GB DDR3', '500GB SATA', 'Windows XP', 'HP P2-1350L', 'test', null, '1', null, '2018-10-24 17:25:11');
INSERT INTO `computers` VALUES ('21', 'PC-17021', 'IDJKT-TONNYSU', '192.168.6.212', '-', '1.5GB DDR2', '-', 'Windows XP', 'HP g3333l', 'test', '-', '1', null, '2018-10-25 11:03:56');
INSERT INTO `computers` VALUES ('22', 'PC-17022', 'IDJKT-RAHMATHI', '172.26.46.108', 'Intel Core I3 4150 @3.50Ghz', '4GB DDR3', '500GB SATA', 'Windows7 64bit', 'Lenovo 10132', 'test', null, '1', null, '2018-10-26 13:21:56');
INSERT INTO `computers` VALUES ('23', 'PC-17023', 'IDJKT-ADESHVU', '172.26.46.156', 'Intel Core I3 4160 @3.60Ghz', '2GB DDR3', '1TB SATA', 'Windows7 32bit', 'HP Pro 400 GT MT', 'test', '-', '1', null, '2018-10-24 17:27:21');
INSERT INTO `computers` VALUES ('24', 'PC-17024', 'IDJKT-BEKTIYU', '172.26.46.213', '-', '-', '-', '-', 'HP 280 G2 MT', 'test', '-', '1', null, '2018-10-24 17:28:01');
INSERT INTO `computers` VALUES ('25', 'PC-17025', 'IDJKT-SUMARTA', '172.26.46.50', 'Intel Core I3 3220T @2.80Ghz', '4GB DDR3', '500GB', 'Windows7 64bit', 'HP P2-1350L', 'test', null, '1', null, '2018-10-24 17:29:40');
INSERT INTO `computers` VALUES ('26', 'PC-17026', 'IDJKT-ANANGSU', '172.26.46.200', 'Intel Core I3 2120 @3.30Ghz', '4GB DDR3', '500GB SATA', 'Windows7 32bit', 'Rakitan', 'test', null, '1', null, '2018-10-25 08:37:02');
INSERT INTO `computers` VALUES ('27', 'PC-17027', 'IDJKT-TRIAGHA', '172.26.46.136', 'Intel Core I3 4150 @3.50Ghz', '4GB DDR3', '1TB SATA', 'Windows7 32bit', 'Lenovo 10132', 'test', null, '1', null, '2018-10-25 08:43:09');
INSERT INTO `computers` VALUES ('28', 'PC-17028', 'IDJKT-ADELISE', '172.26.46.135', 'Intel Core I3 4150 @3.50Ghz', '4GB DDR3', '1TB SATA', 'Windows7 32bit', 'Lenovo 10132', 'test', null, '1', null, '2018-10-25 08:39:22');
INSERT INTO `computers` VALUES ('29', 'PC-17029', 'IDJKT-ANYSTR', '172.26.46.192', 'Intel Core I3-2120T @2.60Ghz', '4GB DDR3', '500GB SATA', 'Windows7 64bit', 'HP P2-1350L', 'test', null, '1', null, '2018-10-25 08:38:55');
INSERT INTO `computers` VALUES ('30', 'PC-17030', 'IDJKT-PENNIPS', '172.26.46.194', 'Intel Core I3-4170 @3.70Ghz', '4GB DDR3', '500GB SATA', 'Windows7 64bit', 'HP 280 G2 MT', 'test', null, '1', null, '2018-10-25 08:38:12');
INSERT INTO `computers` VALUES ('31', 'PC-17031', 'PC-17031', '172.26.46.104', 'Intel Pentium Dual E2160 @1.80', '2GB DDR2', '500GB SATA', 'Windows7 64bit', 'HP g3333l', null, null, '2', null, null);
INSERT INTO `computers` VALUES ('32', 'PC-17032', 'IDJKT-EVINA', '172.26.46.51', 'Intel Core I3 3220T @2.80Ghz', '4GB DDR3', '500GB SATA', 'Windows7 64bit', 'HP P2-1350L', 'test', null, '1', null, '2018-10-25 08:41:31');
INSERT INTO `computers` VALUES ('33', 'PC-17033', 'IDJKT-ADITYAAR', '172.26.46.144', 'Intel Core I3', '4GB DDR3', '1TB SATA', 'Windows7 32bit SP1', 'Lenovo 10132', 'test', null, '1', null, '2018-10-25 08:56:48');
INSERT INTO `computers` VALUES ('34', 'PC-17034', 'Shelvia-PC', '172.26.46.152', 'Pentium Dual Core E5700 @3.00 ', '4GB DDR2', '250GB SATA', 'Windows7 32bit', 'Rakitan', null, null, '2', null, '2018-10-25 09:40:34');
INSERT INTO `computers` VALUES ('35', 'PC-17035', 'IDJKT-FIRMANSA', '172.26.46.217', 'Intel Core I3 2120T @2.60Ghz', '2GB DDR3', '500GB SATA', 'Windows7 X64 SP1', 'HP P2-1350L', 'test', '-', '1', null, '2018-10-25 09:05:35');
INSERT INTO `computers` VALUES ('36', 'PC-17036', 'IDJKT-IBNULQO', '172.26.46.124', 'Intel Core I3 2120T @2.60Ghz', '2GB DDR3', '500GB SATA', 'Windows7 32bit', 'HP P2-1350L', 'test', '-', '1', null, '2018-10-25 09:04:56');
INSERT INTO `computers` VALUES ('37', 'PC-17037', 'IDJKT-ZAENALMU', '172.26.46.153', 'Intel Core I5 2310 @2.90Ghz', '4GB DDR3', '500 + 250', 'Windows7 32bit', 'Rakitan', 'test', null, '1', null, '2018-10-25 09:40:44');
INSERT INTO `computers` VALUES ('38', 'PC-17038', 'IDJKT-WISPIMI', '172.26.46.197', 'Intel Core I3 3220 @3.30Ghz', '4GB DDR3', '500GB SATA', 'Windows7 64bit', 'HP 3330 MT', 'test', null, '1', null, '2018-10-25 09:40:57');
INSERT INTO `computers` VALUES ('39', 'PC-17039', 'PC-17039', '172.26.46.139', 'Pentium Dual Core E5300 @2.60G', '3GB DDR2', '250GB SATA', 'Windows 7 32bit', 'Rakitan', null, null, '2', null, '2018-10-25 09:41:23');
INSERT INTO `computers` VALUES ('40', 'PC-17040', 'Kiki-PC', '172.26.46.102', 'Intel Core I3 2100 @3.10 Ghz', '4GB DDR3', '500GB SATA', 'Windows7 64bit', 'Rakitan', null, null, '2', null, '2018-10-25 09:41:52');
INSERT INTO `computers` VALUES ('41', 'PC-17041', 'IDJKT-ARNOLFE', '172.26.46.126', 'Intel Core I5 2310 @2.90Ghz', '4GB DDR3', '500GB SATA', 'Windows7 64bit', 'Rakitan', 'test', null, '1', null, '2018-10-25 09:42:07');
INSERT INTO `computers` VALUES ('42', 'PC-17042', 'IDJKT-RIMAYP', '172.26.46.159', 'Intel Core I3 4150 @3.50Ghz', '4GB DDR3', '1TB SATA', 'Windows7 64bit', 'Lenovo 10132', 'test', null, '1', null, '2018-10-25 09:42:32');
INSERT INTO `computers` VALUES ('43', 'PC-17043', 'IDJKT-TEUKURA', '172.26.46.223', 'Intel Core I3 3220 @3.30Ghz', '4GB DDR3', '500GB SATA', 'Windows7 64bit', 'HP', 'test', null, '1', null, '2018-10-25 09:43:31');
INSERT INTO `computers` VALUES ('44', 'PC-17044', 'IDJKT-JULLYFR', '172.26.46.52', 'Intel Core I3 3220 @3.30Ghz', '4GB DDR3', '500GB SATA', 'Windows7 64bit', 'HP 3330 MT', 'test', null, '1', null, '2018-10-25 14:39:32');
INSERT INTO `computers` VALUES ('45', 'PC-17045', 'IDJKT-ERNITFR', '172.26.46.141', 'Intel Core I3 4170 @3.70Ghz', '4GB DDR3', '500GB SATA', 'Windows7 64bit', 'HP 280 G2 MT', 'test', null, '1', null, '2018-10-25 14:45:38');
INSERT INTO `computers` VALUES ('46', 'PC-17046', 'IDJKT-APRILKR', '172.26.46.193', 'Intel Core I3 4150 @3.50Ghz', '4GB DDR3', '1TB SATA', 'Windows7 32bit', 'Lenovo 10132', 'test', null, '1', null, '2018-10-25 14:46:09');
INSERT INTO `computers` VALUES ('47', 'PC-17047', 'IDJKT-DINARPU', '172.26.46.139', 'Intel Core I3', '4GB DDR3', '1TB SATA', 'Windows7 64bit', 'HP P2-1350L', 'test', null, '1', null, '2018-10-26 13:08:33');
INSERT INTO `computers` VALUES ('48', 'PC-17049', 'IDJKT-ERNANDO', '172.26.46.190', 'Intel(R) Core(TM) i3-4150 CPU', '4GB DDR3', '1TB', 'Windows 7 32bit', 'Lenovo 10132', 'test', null, '1', null, '2018-10-25 14:44:32');
INSERT INTO `computers` VALUES ('49', 'PC-17050', 'IDJKT-YOMIRO', '172.26.46.186', 'Intel Core I3-4130 @3.40Ghz', '4GB DDR3', '1TB SATA', 'Windows7 32bit', 'Lenovo 10132', 'test', null, '1', null, '2018-10-25 14:43:43');
INSERT INTO `computers` VALUES ('50', 'PC-17051', 'IDJKT-YULIAFI', '172.26.46.230', 'Intel Core I3 2120T @2.60Ghz', '4GB DDR3', '1TB SATA', 'Windows7 64bit', 'HP P2-1350L', 'test', null, '1', null, '2018-10-25 14:38:49');
INSERT INTO `computers` VALUES ('51', 'PC-17052', 'IDJKT-SUCIRA', '172.26.46.130', 'Intel Core2 Duo E7500 @2.93Ghz', '4GB DDR2', '80+160 GB', 'Windows7 32bit', 'Rakitan', 'test', null, '1', null, '2018-10-26 13:17:31');
INSERT INTO `computers` VALUES ('52', 'PC-17053', 'IDJKT-JEFRIAG', '172.26.46.201', 'Intel(R) Core(TM) i3-4160 CPU @ 3.60GHz', '4GBDDR3', '500GB', 'Windows 7X64', 'HP Pro 400 GT MT', 'test', null, '1', null, '2018-10-25 16:31:48');
INSERT INTO `computers` VALUES ('53', 'PC-17054', 'IDJKT-NIAPE', '172.26.46.187', 'Intel Core I3 4160 @3.60Ghz', '4GB DDR3', '1TB SATA', 'Windows7 32bit', 'Lenovo 10132', 'test', null, '1', null, '2018-10-25 16:27:51');
INSERT INTO `computers` VALUES ('54', 'PC-17055', 'IDJKT-CITRADA', '172.26.46.146', 'Intel Core I3 6100 @3.70Ghz', '4GB DDR3', '1TB SATA', 'Windows7 64bit', 'HP 280 G2 MT', 'test', null, '1', null, '2018-10-25 14:38:37');
INSERT INTO `computers` VALUES ('55', 'PC-17056', 'IDJKT-JUSTISA', '172.26.46.134', 'Intel Core I3', '4GB DDR3', '500GB', 'Windows 7 64bit', 'Rakitan', 'test', null, '1', null, '2018-10-25 08:37:37');
INSERT INTO `computers` VALUES ('56', 'PC-17057', 'IDJKT-WAHYULE', '172.26.46.53', 'Intel Core I3 4160 @3.60Ghz', '4GB DDR3', '1TB', 'Windows7 32bit', 'Lenovo 10132', 'test', null, '1', null, '2018-10-25 16:33:02');
INSERT INTO `computers` VALUES ('57', 'PC-17058', 'OGS', '172.26.46.205', 'Intel Core I3 6100 @3.70Ghz', '4GB DDR3', '500GB', 'Windows7 64bit', 'HP 280 G2 MT', null, null, '0', null, null);
INSERT INTO `computers` VALUES ('58', 'PC-17059', 'IDJKT-RIANAPA', '172.26.46.113', 'Intel Core I3', '4GB DDR3', '1TB SATA', 'Windows7 32bit', 'Lenovo 10132', 'test', null, '1', null, '2018-10-25 14:38:15');
INSERT INTO `computers` VALUES ('59', 'PC-17060', 'IDJKT-SALMAAL', '172.26.46.179', 'Intel Core I3 6100 @3.70Ghz', '4GB DDR3', '1TB', 'Windows7 32bit', 'HP 280 G2 MT', 'test', null, '1', null, '2018-10-25 14:37:47');
INSERT INTO `computers` VALUES ('60', 'PC-17061', 'IDJKT-JOYSI', '172.26.46.150', 'Intel Core I3 4150 @3.50Ghz', '4GB DDR3', '1TB', 'Windows7 64bit', 'Lenovo 10132', 'test', null, '1', null, '2018-10-25 14:37:56');
INSERT INTO `computers` VALUES ('61', 'PC-17062', 'IDJKT-WINILY', '172.26.46.54', 'Intel Core I3 4150 @3.50Ghz', '4GB DDR3', '1TB', 'Windows7 32bit', 'Lenovo 10132', 'test', null, '1', null, '2018-10-25 14:38:06');
INSERT INTO `computers` VALUES ('62', 'PC-17063', 'IDJKT-PARIKEPR', '172.26.46.244', 'Intel Core I3 4160 3.60Ghz', '4GB DDR3', '500GB', 'Windows7 64bit', 'HP Pro 400 GT MT', 'test', null, '1', null, '2018-10-25 14:42:15');
INSERT INTO `computers` VALUES ('63', 'PC-17064', 'IDJKT-SUSANNAO', '172.26.46.175', 'Intel(R) Core(TM) i3-2100 CPU @ 3.10GHz Add', '4GB', '500GB', 'Windows 7 64 bit', 'Rakitan', 'test', null, '1', null, '2018-10-25 14:41:44');
INSERT INTO `computers` VALUES ('64', 'PC-17065', 'IDJKT-JENNLI', '172.26.46.218', 'Intel Core 2 Duo E7500 @2.93Gh', '2GB DDR2', '250GB SATA', 'Windows7 32bit', 'Rakitan', 'test', null, '1', null, '2018-10-25 14:40:37');
INSERT INTO `computers` VALUES ('65', 'PC-17066', 'IDJKT-CINDYPO', '172.26.46.147', 'Intel Core I3', '4GB DDR3', '1TB', 'Windows7 32bit', 'Lenovo 10132', 'test', null, '1', null, '2018-10-25 14:40:29');
INSERT INTO `computers` VALUES ('66', 'PC-17067', 'IDJKT-FAISALRE', '172.26.46.216', 'Intel Core I3 3220T @2.80Ghz', '2GB DDR3', '500GB SATA', 'Windows7 64bit', 'HP P2-1350L', 'test', null, '1', null, '2018-10-25 14:40:10');
INSERT INTO `computers` VALUES ('67', 'PC-17068', 'IDJKT-SOFIMA', '172.26.46.160', 'Intel Core I3', '2GB DDR3', '500GB', 'Windows7 32bit', 'HP Pro 400 GT MT', 'test', null, '1', null, '2018-10-25 14:40:00');
INSERT INTO `computers` VALUES ('68', 'PC-17069', 'SLS-Adi', '172.26.46.114', 'Intel Pentium Dual E2160 1.80G', '2GB DDR2', '', 'Windows7 32bit', 'HP g3630 l', null, null, '2', null, null);
INSERT INTO `computers` VALUES ('69', 'PC-17070', 'IDJKT-TOHONWI', '172.26.46.162', 'Intel Core I3', '2GB DDR3', '500GB SATA', 'Windows7 32bit', 'Rakitan', 'test', null, '1', null, '2018-10-25 14:43:04');
INSERT INTO `computers` VALUES ('70', 'PC-17071', 'IDJKT-GILANGSY', '172.26.46.164', 'Intel Core I5 2500 @3.30Ghz', '4GB DDR3', '500GB SATA', 'Windows7 32bit', 'Rakitan', 'test', null, '1', null, '2018-10-25 14:37:09');
INSERT INTO `computers` VALUES ('71', 'PC-17072', 'IDJKT-MEGAPA', '172.26.46.183', 'Intel Core I3 4150 @3.50Ghz', '4GB DDR3', '1TB SATA', 'Windows7 32bit', 'Lenovo 10132', 'test', null, '1', null, '2018-10-25 14:36:52');
INSERT INTO `computers` VALUES ('72', 'PC-17073', 'IDJKT-AULIAHA', '172.26.46.56', 'Intel Core I3 2120T @2.60Ghz', '4GB DDR3', '500GB SATA', 'Windows7 64bit', 'HP P2-1350L', 'test', null, '1', null, '2018-10-25 16:34:55');
INSERT INTO `computers` VALUES ('73', 'PC-17074', 'IDJKT-TRISNWI', '172.26.46.174', 'Intel Core I3', '4GB DDR3', '500GB SATA', 'Windows 7 64bit', '-', 'test', null, '1', null, '2018-10-25 16:37:26');
INSERT INTO `computers` VALUES ('74', 'PC-17075', 'IDJKT-SAEFUBA', '172.26.46.123', 'Intel Core I3', '3GB DDR3', '500GB', 'Windows 7 64bit', 'HP P2-1350L', 'test', null, '1', null, '2018-10-25 14:36:41');
INSERT INTO `computers` VALUES ('75', 'PC-17076', 'IDJKT-TAUREYU', '172.26.46.169', 'Intel(R) Core(TM) i3-4160 CPU @ 3.60GHz', '4GB DDR3', '1TB SATA', 'Windows 7 64bit', 'Lenovo 10132', 'test', null, '1', null, '2018-10-25 14:33:44');
INSERT INTO `computers` VALUES ('76', 'PC-17077', 'IDJKT-AGUSSA', '172.26.46.214', 'Intel(R) Core(TM) i3-3220 CPU @ 3.30GHz', '6GB DDR3', '500GB', 'Windows7 64bit', 'HP 3330 MT', 'test', null, '1', null, '2018-10-25 14:32:22');
INSERT INTO `computers` VALUES ('77', 'PC-17078', 'IDJKT-ROBERSA', '172.26.46.106', 'Intel Core I3-4160 @3.60Ghz', '4GB DDR3', '500GB SATA', 'Windows7 64bit', 'Lenovo 10132', 'test', null, '1', null, '2018-10-25 14:29:35');
INSERT INTO `computers` VALUES ('78', 'PC-17079', 'IDJKT-SEPTEAR', '172.26.46.142', 'Intel Core I3', '4GB DDR3', '500GB SATA', 'Windows 7 X64', 'Rakitan', 'test', null, '1', null, '2018-10-26 13:10:20');
INSERT INTO `computers` VALUES ('79', 'PC-17080', 'IDJKT-IWANSE', '172.26.46.128', 'Intel Core I3', '6GB', '500GB', 'Windows7 64bit', 'HP 3330 MT', 'test', '-', '1', null, '2018-10-25 11:02:18');
INSERT INTO `computers` VALUES ('80', 'PC-17081', 'IDJKT-FAKHRNA', '172.26.46.215', 'Intel Core I3', '6GB', '500GB', 'Windows XP', 'HP 110', 'test', '-', '1', null, '2018-10-25 11:01:19');
INSERT INTO `computers` VALUES ('81', 'PC-17082', 'IDJKT-ZANGXW', '172.26.46.57', 'Intel Core I3', '2GB+4GB DD', '500GB SATA', 'Windows7 64bit', 'HP 280 G2 MT', 'test', null, '1', null, '2018-10-26 13:15:57');
INSERT INTO `computers` VALUES ('82', 'PC-17083', 'IDJKT-HANDRIPR', '172.26.46.202', 'Intel Core I3', '2GB DDR3', '500GB SATA', 'Windows7 64bit', 'HP 110', 'test', null, '1', null, '2018-10-25 10:58:34');
INSERT INTO `computers` VALUES ('83', 'PC-17084', 'IDJKT-DINIFIT', '172.26.46.182', 'Intel Core I3', '2GBDDDR3', '500GB', 'Windows 7 64bit', 'HP 3330 MT', 'test', null, '1', null, '2018-10-25 10:56:51');
INSERT INTO `computers` VALUES ('84', 'PC-17085', 'IDJKT-AGNESRE', '172.26.46.203', 'Intel Core I3', '4GB', '500GB SATA', 'Windows 7 64 bit', 'HP 3330 MT', 'test', '-', '1', null, '2018-10-25 10:46:42');
INSERT INTO `computers` VALUES ('85', 'PC-17086', 'IDJKT-MARGALI', '172.26.46.204', 'Intel Core I3', '4GB', '500GB', 'Windows7', 'Lenovo 10132', 'test', '-', '1', null, '2018-10-25 10:13:47');
INSERT INTO `computers` VALUES ('86', 'PC-17087', 'IDJKT-JAMIL', '172.26.46.103', 'Intel Pentium Dual Core', '2GB DDR2', '160GB', 'Win732bit', 'Rakitan', 'test', null, '1', null, '2018-10-25 10:09:36');
INSERT INTO `computers` VALUES ('87', 'PC-17088', 'IDJKT-KOMARU', '172.26.46.132', 'Intel(R) Core(TM) i3-2100 CPU', '2GB DDR3', '250GB', 'Windows 7 64bit', 'Rakitan', 'test', null, '1', null, '2018-10-25 10:09:00');
INSERT INTO `computers` VALUES ('88', 'PC-17089', 'IDJKT-RAYFANSA', '172.26.46.129', 'Intel(R) Core(TM) i3-4160 CPU', '4GB DDR3', '1TB', 'Windows7 64bit', 'Lenovo 10132', 'test', null, '1', null, '2018-10-25 16:25:14');
INSERT INTO `computers` VALUES ('89', 'PC-17090', 'PC-17090', '172.26.46.137', 'Intel(R) Core(TM) i3-2120T CPU', '4GB DDR3', '500GB SATA', 'Windows7 64bit', 'HP P2-1350L', 'test', null, '1', null, '2018-10-25 10:06:51');
INSERT INTO `computers` VALUES ('90', 'PC-17091', 'IDJKT-TIARA', '172.26.46.125', 'Intel Core I3', '4GB DDR3', '500GB', 'Windows7 64bit', 'HP P2-1350L', 'test', null, '1', null, '2018-10-25 10:05:55');
INSERT INTO `computers` VALUES ('91', 'PC-17092', 'IDJKT-MUFITFM', '172.26.46.236', 'Intel Core I3 4150 @3.50Ghz', '4GB DDR3', '1TB SATA', 'Windows7 32bit', 'Lenovo 10132', 'test', null, '1', null, '2018-10-25 10:04:28');
INSERT INTO `computers` VALUES ('92', 'PC-17093', 'IDJKT-HARIYADI', '172.26.46.163', 'Intel Core I3 4150 @3.50Ghz', '4GB DDR3', '1TB SATA', 'Windows7 32bit', 'Lenovo 10132', 'test', null, '1', null, '2018-10-25 10:04:43');
INSERT INTO `computers` VALUES ('93', 'PC-17094', 'IDJKT-TEGARAS', '172.26.46.234', 'Intel Core I3 4170 3.70Ghz', '4GB DDR3', '500GB', 'Windows7 64bit', 'HP 280 G2 MT', 'test', null, '1', null, '2018-10-25 10:04:08');
INSERT INTO `computers` VALUES ('94', 'PC-17095', 'IDJKT-ARSIAR', '172.26.46.210', 'Intel Core I3', '4GB DDR3', '500GB SATA', 'Windows 7 64bit', 'Lenovo 90B9', 'test', null, '1', null, '2018-10-25 10:03:46');
INSERT INTO `computers` VALUES ('95', 'PC-17096', 'IDJKT-BADRUNMA', '172.26.46.111', 'Intel Core I3 4170 3.70Ghz', '4GB DDR3', '500GB', 'Windows7 64bit', 'HP 280 G2 MT', 'test', null, '1', null, '2018-10-25 10:03:24');
INSERT INTO `computers` VALUES ('96', 'PC-17097', 'IDJKT-FARIDTO', '172.26.46.226', 'Intel Core I3 3220 3.30Ghz', '6GB DDR3', '500GB + 50', 'Windows7 32bit', 'HP 3330 MT', 'test', null, '1', null, '2018-10-25 09:32:33');
INSERT INTO `computers` VALUES ('97', 'PC-17098', 'IDJKT-INDAHWA', '172.26.46.211', 'Intel Core I3', '4GB DDR3', '1TB', 'Windows7 64bit', 'HP 280 G2 MT', 'test', null, '1', null, '2018-10-25 09:32:21');
INSERT INTO `computers` VALUES ('98', 'PC-17099', 'IDJKT-SITILA', '172.26.46.149', 'Intel Core I5', '4GB DDR4', '1TB SATA', 'Windows 7 64bit', 'HP Slimline 260 P022L', 'test', null, '1', null, '2018-10-25 09:32:14');
INSERT INTO `computers` VALUES ('99', 'PC-17100', 'IDJKT-RYANWI', '172.26.46.148', 'Intel Core I3', '4GB DDR3', '1TB SATA', 'Windows7 32bit', 'Lenovo 10132', 'test', null, '1', null, '2018-10-25 09:31:59');
INSERT INTO `computers` VALUES ('100', 'PC-17101', 'IDJKT-TRIMU', '172.26.46.221', 'Intel Core I3 3220T 3.30 Ghz', '2GB DDR3', '500GB SATA', 'Windows7 64bit', 'HP 3330 MT', 'test', null, '1', null, '2018-10-25 09:31:44');
INSERT INTO `computers` VALUES ('101', 'PC-17102', 'IDJKT-GEDEAL', '172.26.46.181', 'Intel Core I3-2100 @3.10Ghz', '4GB DDR3', '500GB SATA', 'Windows 7 X64 SP1', 'Rakitan', 'test', null, '1', null, '2018-10-25 09:31:27');
INSERT INTO `computers` VALUES ('102', 'PC-17103', 'IDJKT-IDRIS', '172.26.46.233', 'Intel Core I3', '4GB DDR3', '1TB', 'Windows7 32bit', 'Lenovo 10132', 'test', null, '1', null, '2018-10-25 09:30:37');
INSERT INTO `computers` VALUES ('103', 'PC-17104', 'Mucharal', '172.26.46.131', 'Intel Core I3 4150 @3.50Ghz', '4GB DDR3', '1TB', 'Windows7 32bit', 'Lenovo 10132', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('104', 'PC-17105', 'IDJKT-SEMMYOK', '172.26.46.118', 'Intel(R) Core(TM) i3-4130 CPU @ 3.40GHz', '4GB DDR3', '500GB SATA', 'Windows 7 X64', 'Lenovo 10132', 'test', null, '1', null, '2018-10-25 09:28:34');
INSERT INTO `computers` VALUES ('105', 'PC-17106', 'IDJKT-KATRINU', '172.26.46.198', 'Intel Core I3 3240T 2.90Ghz', '4GB DDR3', '500GB SATA', 'Windows 7 64bit', 'HP110', 'test', null, '1', null, '2018-10-25 09:28:11');
INSERT INTO `computers` VALUES ('106', 'PC-17107', 'IDJKT-YANRA', '172.26.46.101', 'Intel Core I3 3220T @2.80Ghz', '3GB DDR3', '500GB', 'Windows7 32bit', 'HP P2-1350L', 'test', null, '1', null, '2018-10-25 09:27:54');
INSERT INTO `computers` VALUES ('107', 'PC-17108', 'IDJKT-AFNANNI', '172.26.46.109', 'Intel Core I3-4160 @3.60Ghz', '4GB DDR3', '1TB SATA', 'Windows7 32bit', 'Lenovo 10132', 'test', '-', '1', null, '2018-10-25 09:27:43');
INSERT INTO `computers` VALUES ('108', 'PC-17109', 'IDJKT-MALIKAK', '172.26.46.225', 'Intel Core I3', '2GB DDR3', '500GB', 'Windows7 64bit', 'HP 280 G2 MT', 'test', null, '1', null, '2018-10-25 09:27:18');
INSERT INTO `computers` VALUES ('109', 'PC-17110', 'IDJKT-RIYANTI', '172.26.46.140', 'Intel Core I3', '4GB DDR3', '500GB SATA', 'Windows 7X64', 'HP P2-1350L', 'test', null, '1', null, '2018-10-25 09:26:56');
INSERT INTO `computers` VALUES ('110', 'PC-17111', 'ibnuse', '172.26.46.59', 'Intel Core I5', '8GB DDR3', '-', '-', 'Rakitan', 'test', 'PC Dipake Pak Edi dengan ID baru PC-18013', '0', null, '2018-11-02 10:25:01');
INSERT INTO `computers` VALUES ('111', 'PC-17112', 'bps-idn', '172.26.46.60/172.26.5.218/172.', '', '', '', '', 'HP A 1218 l', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('112', 'PC-17113', 'FAD_01', '172.26.46.61', 'Intel(R) Core(TM) i5-2310 CPU ', '4GB DDR3', '250GB SATA', 'Windows7 32bit', 'Rakitan', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('113', 'PC-17114', 'IDJKT-SILVIAHA', '172.26.46.62', 'Intel Core I5', '4GB DDR4', '1TB SATA', 'Windows7 64bit', 'HP Slimline 260 P022L', 'test', null, '1', null, '2018-10-25 09:26:06');
INSERT INTO `computers` VALUES ('114', 'PC-17115', 'chengm-PC', '', '', '', '', '', 'Rakitan', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('115', 'PC-17116', 'IDJKT-GALUHNO', '172.26.46.189', 'Intel(R) Core(TM) i3-2120 CPU @ 3.30GHz', '4GB DDR3', '500GB', 'Windows 7 64 bit', 'HP PRO 3330 MT', 'test', null, '1', null, '2018-10-25 16:00:56');
INSERT INTO `computers` VALUES ('116', 'PC-17117', 'PC-GM', '172.26.46.65', '', '', '', '', '', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('117', 'PC-17118', 'DESKTOP-LSIF61R', '172.26.46.66', '', '', '', '', '', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('118', 'PC-17119', 'PC-17119', '172.26.46.105', 'Pentium Dual Core E5500 2.80Ghz', '2GB DDR2', '500GB sata', 'Windows7 64bit', 'Rakitan', 'test', null, '1', null, '2018-10-26 13:01:22');
INSERT INTO `computers` VALUES ('119', 'PC-17120', 'IDJKT-MEET', '172.26.46.99', 'Intel Core I3-4160 @3.60Ghz', '4GB DDR3', '1TB SATA', 'Windows7 32bit', 'Lenovo 10132', 'test', null, '1', null, '2018-11-01 13:16:36');
INSERT INTO `computers` VALUES ('120', 'PC-17121', 'IDJKT-LISTI', '172.26.46.241', 'Intel Core I3-4160 @3.60Ghz', '4GB DDR3', '1TB SATA', 'Windows7 32bit', 'Lenovo 10132', 'test', null, '1', null, '2018-10-25 09:25:18');
INSERT INTO `computers` VALUES ('121', 'PC-17122', 'IDJKT-RICHSJO', '190.168.6.105', 'Intel Core I3-4160 @3.60gHZ', '4GB DDR3', '1TB SATA', 'Windows7 32bit', 'Lenovo 10132', 'test', '-', '1', null, '2018-10-24 17:16:20');
INSERT INTO `computers` VALUES ('122', 'PC-17123', 'IDJKT-WAHYUKP', '172.26.46.180', 'Intel Core I3', '4GB DDR3', '500GB SATA', 'Windows 7 X64 SP1', 'HP P2-1350L', 'test', null, '1', null, '2018-10-25 16:24:31');
INSERT INTO `computers` VALUES ('123', 'PC-17124', 'IDJKT-AGUSTINI', '172.26.46.122', 'Intel(R) Core(TM) i3-4170 CPU', '4GB DDR3', '500GB SATA', 'Windows7 64bit', 'HP 280 G2 MT', 'test', null, '1', null, '2018-10-25 09:24:21');
INSERT INTO `computers` VALUES ('124', 'PC-17125', 'IDJKT-NOVIZA', '172.26.46.133', 'Intel Core I3', '4GB DDR3', '500GB SATA', 'Windows 7 X64', 'HP P2-1350L', 'test', null, '1', null, '2018-10-25 09:23:23');
INSERT INTO `computers` VALUES ('125', 'PC-17126', 'IDJKT-JOHANDS', '172.26.46.229', 'Intel(R) Core(TM) i3-4150 CPU @ 3.50GHz', '4GB DDR3', '1TB SATA', 'Windows 7 X64', 'Lenovo 10132', 'test', null, '1', null, '2018-10-25 09:22:53');
INSERT INTO `computers` VALUES ('126', 'PC-17127', 'QMS-PC', '172.26.46.115', '', '', '', '', '', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('127', 'PC-17128', 'IDJKT-KUSREWU', '172.26.46.191', 'Intel(R) Core(TM) i3-4160 CPU', '4GB DDR3', '1TB SATA', 'Windows7 32bit', 'Lenovo 10132', 'test', null, '1', null, '2018-10-26 12:56:00');
INSERT INTO `computers` VALUES ('128', 'PC-17129', 'IDJKT-TATYTUSW', '172.26.46.143', 'Intel(R) Core(TM) i3-4150 CPU @ 3.50GHz', '4GB DDR3', '500GB SATA', 'Windows 7 X64', 'Lenovo 10132', 'test', null, '1', null, '2018-10-26 12:56:27');
INSERT INTO `computers` VALUES ('129', 'PC-17130', 'IDJKT-AMBARAG', '172.26.46.112', '-', '-', '-', '-', '-', 'test', '-', '1', null, '2018-11-01 13:16:17');
INSERT INTO `computers` VALUES ('130', 'PC-17131', 'IDJKT-SUMARCH', '172.26.46.161', 'Intel(R) Core(TM)2 Duo CPU E75', '4GB DDR2', '160 + 250G', 'Windows7 64bit', 'Rakitan', 'test', null, '1', null, '2018-10-25 09:22:12');
INSERT INTO `computers` VALUES ('131', 'PC-17132', 'IDJKT-STEFANEN', '172.26.46.199', 'Intel(R) Core(TM) i3-4160 CPU @ 3.60GHz', '4GB DDR3', '1TB', 'Windows7 X86 SP1', 'Lenovo 10132', 'test', null, '1', null, '2018-10-25 09:21:58');
INSERT INTO `computers` VALUES ('132', 'PC-17134', 'IDJKT-ANGGITRP', '172.26.46.48', 'Intel(R) Core(TM) i3-3220T CPU', '8GB DDR3', '1TB SATA', 'Windows7 64bit', 'HP P2-1452-l', 'test', null, '1', null, '2018-11-01 13:15:54');
INSERT INTO `computers` VALUES ('133', 'PC-17135', 'IDJKT-ALVINAFM', '172.26.46.107', 'Intel(R) Core(TM) i3-4170 CPU', '4GB DDR3', '500GB', 'Windows7 X64', 'HP280 G1 MT', 'test', null, '1', null, '2018-10-25 09:21:32');
INSERT INTO `computers` VALUES ('134', 'PC-17137', '04-tia', '172.26.46.120', 'Intel(R) Pentium(R) 4 CPU 3.06GHz', '1GB DDR1', '80GB IDE', 'Windows XP X86 SP2', 'HP-Pavilion 061', null, null, '0', null, null);
INSERT INTO `computers` VALUES ('135', 'PC-17138', 'IT', '172.26.46.47', 'Intel Core I5', '4GB + 4GB ', '1TB', 'Windows 10 64bit', 'HP Slimline', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('136', 'PC-17139', 'ITPROGRAMER-PC', '172.26.46.47', 'Intel Core I5', '8GB', '', 'Windows 7 X64 SP1', 'Rakitan', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('137', 'PC-18006', 'IDJKT-TINAJTJ', '172.26.46.67', 'Intel(R) Core(TM) i5-2400 CPU @ 3.10GHz', '4GB DDR3', '500GB SATA', 'Windows7 64bit SP1', 'Rakitan', 'test', null, '1', null, '2018-10-25 16:43:07');
INSERT INTO `computers` VALUES ('138', 'PC-18007', 'IDJAK-LEIZHM', '172.26.46.69', 'Intel(R) Core(TM) i5-7400 CPU @ 3.00GHz', '4GB DDR4', '1TB SATA', 'Windows 10 Pro X64', 'HP Slimline 270-p017D', 'test', null, '1', null, '2018-10-25 09:20:54');
INSERT INTO `computers` VALUES ('139', 'PC-18008', 'IDJKT-SHINTAL', '172.26.46.138', 'Intel(R) Core(TM) i3-3240T CPU @ 2.90GHz', '2GB X 2', '500GB SATA', 'Windows 7 64bit SP1', 'HP110', 'test', null, '1', null, '2018-10-24 17:19:14');
INSERT INTO `computers` VALUES ('140', 'PC-18009', 'IDJKT-LINAAL', '172.26.46.176', 'Intel Core I3', '4GB DDR4', '1TB SATA', 'Windows 7X64 SP1', 'HP Pavilion 570-p003d', 'test', null, '1', null, '2018-10-24 17:19:53');
INSERT INTO `computers` VALUES ('141', 'PC-18010', 'IDJKT-STEPHAAN', '172.26.46.177', 'Intel Core I3 Gen7', '4GB DDR4', '1TB SATA', 'Windows 7 X64 SP1', 'HP Pavilion 570-p003d', 'test', null, '1', null, '2018-10-25 09:20:35');
INSERT INTO `computers` VALUES ('142', 'PC-18011', 'IDJAD-SHIPF', '172.26.46.64', 'Intel I5', '4GB DDR4', '1TB SATA', 'Windows 10 Pro X64', 'HP Slim 290 p0034l', 'test', null, '1', null, '2018-10-25 09:20:11');
INSERT INTO `computers` VALUES ('143', 'PC-18012', 'IDJKT-NOVIASU', '-', '-', '-', '-', '-', '-', 'test', '-', '1', '2018-11-01 13:17:31', '2018-11-01 13:17:31');
INSERT INTO `computers` VALUES ('144', 'PC-18013', 'IDJKT-EDDYSU', '172.26.46.55', '-', '-', '-', '-', '-', 'test', '-', '1', '2018-11-01 13:17:50', '2018-11-01 16:14:35');

-- ----------------------------
-- Table structure for `detailtables`
-- ----------------------------
DROP TABLE IF EXISTS `detailtables`;
CREATE TABLE `detailtables` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_meja` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_device` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of detailtables
-- ----------------------------
INSERT INTO `detailtables` VALUES ('3', 'A01', 'PC-17001', '2018-10-24 16:16:15', '2018-10-24 16:16:15');
INSERT INTO `detailtables` VALUES ('4', 'A02', 'PC-17002', '2018-10-24 16:18:53', '2018-10-24 16:18:53');
INSERT INTO `detailtables` VALUES ('5', 'A03', 'PC-17003', '2018-10-24 16:29:02', '2018-10-24 16:29:02');
INSERT INTO `detailtables` VALUES ('12', 'A05', 'PC-17004', '2018-10-24 17:04:28', '2018-10-24 17:04:28');
INSERT INTO `detailtables` VALUES ('13', 'A06', 'PC-17006', '2018-10-24 17:04:40', '2018-10-24 17:04:40');
INSERT INTO `detailtables` VALUES ('14', 'A07', 'PC-17007', '2018-10-24 17:04:54', '2018-10-24 17:04:54');
INSERT INTO `detailtables` VALUES ('15', 'A08', 'PC-17008', '2018-10-24 17:05:15', '2018-10-24 17:05:15');
INSERT INTO `detailtables` VALUES ('16', 'A09', 'PC-17009', '2018-10-24 17:05:38', '2018-10-24 17:05:38');
INSERT INTO `detailtables` VALUES ('17', 'A10', 'PC-17010', '2018-10-24 17:06:27', '2018-10-24 17:06:27');
INSERT INTO `detailtables` VALUES ('18', 'A11', 'PC-17011', '2018-10-24 17:06:47', '2018-10-24 17:06:47');
INSERT INTO `detailtables` VALUES ('19', 'A12', 'PC-17005', '2018-10-24 17:07:16', '2018-10-24 17:07:16');
INSERT INTO `detailtables` VALUES ('20', 'A13', 'PC-17012', '2018-10-24 17:07:39', '2018-10-24 17:07:39');
INSERT INTO `detailtables` VALUES ('21', 'B01', 'PC-17122', '2018-10-24 17:17:00', '2018-10-24 17:17:00');
INSERT INTO `detailtables` VALUES ('22', 'B03', 'PC-18008', '2018-10-24 17:20:54', '2018-10-24 17:20:54');
INSERT INTO `detailtables` VALUES ('23', 'B04', 'PC-18009', '2018-10-24 17:21:01', '2018-10-24 17:21:01');
INSERT INTO `detailtables` VALUES ('24', 'B05', 'PC-17017', '2018-10-24 17:21:10', '2018-10-24 17:21:10');
INSERT INTO `detailtables` VALUES ('25', 'B06', 'PC-17018', '2018-10-24 17:22:07', '2018-10-24 17:22:07');
INSERT INTO `detailtables` VALUES ('26', 'B07', 'PC-17019', '2018-10-24 17:28:31', '2018-10-24 17:28:31');
INSERT INTO `detailtables` VALUES ('27', 'B08', 'PC-17020', '2018-10-24 17:28:39', '2018-10-24 17:28:39');
INSERT INTO `detailtables` VALUES ('28', 'B11', 'PC-17023', '2018-10-24 17:29:00', '2018-10-24 17:29:00');
INSERT INTO `detailtables` VALUES ('29', 'B12', 'PC-17024', '2018-10-24 17:29:08', '2018-10-24 17:29:08');
INSERT INTO `detailtables` VALUES ('30', 'B13', 'PC-17025', '2018-10-24 17:30:00', '2018-10-24 17:30:00');
INSERT INTO `detailtables` VALUES ('31', 'C01', 'PC-17026', '2018-10-25 08:39:40', '2018-10-25 08:39:40');
INSERT INTO `detailtables` VALUES ('32', 'C02', 'PC-17056', '2018-10-25 08:39:56', '2018-10-25 08:39:56');
INSERT INTO `detailtables` VALUES ('33', 'C03', 'PC-17030', '2018-10-25 08:40:08', '2018-10-25 08:40:08');
INSERT INTO `detailtables` VALUES ('34', 'C05', 'PC-17028', '2018-10-25 08:40:21', '2018-10-25 08:40:21');
INSERT INTO `detailtables` VALUES ('35', 'C04', 'PC-17029', '2018-10-25 08:40:41', '2018-10-25 08:40:41');
INSERT INTO `detailtables` VALUES ('36', 'C06', 'PC-17027', '2018-10-25 08:43:38', '2018-10-25 08:43:38');
INSERT INTO `detailtables` VALUES ('37', 'C07', 'PC-17032', '2018-10-25 08:43:50', '2018-10-25 08:43:50');
INSERT INTO `detailtables` VALUES ('38', 'B10', 'PC-17022', '2018-10-25 11:04:13', '2018-10-25 11:04:13');
INSERT INTO `detailtables` VALUES ('39', 'B09', 'PC-17021', '2018-10-25 11:04:23', '2018-10-25 11:04:23');
INSERT INTO `detailtables` VALUES ('40', 'D01', 'PC-17033', '2018-10-25 11:05:08', '2018-10-25 11:05:08');
INSERT INTO `detailtables` VALUES ('41', 'D04', 'PC-17035', '2018-10-25 11:05:29', '2018-10-25 11:05:29');
INSERT INTO `detailtables` VALUES ('42', 'D05', 'PC-17036', '2018-10-25 11:05:40', '2018-10-25 11:05:40');
INSERT INTO `detailtables` VALUES ('43', 'D06', 'PC-17037', '2018-10-25 11:05:49', '2018-10-25 11:05:49');
INSERT INTO `detailtables` VALUES ('44', 'D07', 'PC-17108', '2018-10-25 11:06:01', '2018-10-25 11:06:01');
INSERT INTO `detailtables` VALUES ('45', 'D11', 'PC-17042', '2018-10-25 13:33:41', '2018-10-25 13:33:41');
INSERT INTO `detailtables` VALUES ('46', 'D12', 'PC-17043', '2018-10-25 13:34:22', '2018-10-25 13:34:22');
INSERT INTO `detailtables` VALUES ('47', 'E02', 'PC-17038', '2018-10-25 13:34:34', '2018-10-25 13:34:34');
INSERT INTO `detailtables` VALUES ('48', 'E05', 'PC-18010', '2018-10-25 13:34:53', '2018-10-25 13:34:53');
INSERT INTO `detailtables` VALUES ('49', 'F02', 'PC-17015', '2018-10-25 13:35:45', '2018-10-25 13:35:45');
INSERT INTO `detailtables` VALUES ('50', 'F01', 'PC-17092', '2018-10-25 13:35:54', '2018-10-25 13:35:54');
INSERT INTO `detailtables` VALUES ('51', 'F03', 'PC-17135', '2018-10-25 13:36:15', '2018-10-25 13:36:15');
INSERT INTO `detailtables` VALUES ('52', 'F04', 'PC-17097', '2018-10-25 13:36:46', '2018-10-25 13:36:46');
INSERT INTO `detailtables` VALUES ('53', 'F05', 'PC-17014', '2018-10-25 13:37:06', '2018-10-25 13:37:06');
INSERT INTO `detailtables` VALUES ('55', 'D09', 'PC-17046', '2018-10-25 15:36:56', '2018-10-25 15:36:56');
INSERT INTO `detailtables` VALUES ('56', 'D10', 'PC-17041', '2018-10-25 15:37:05', '2018-10-25 15:37:05');
INSERT INTO `detailtables` VALUES ('57', 'D13', 'PC-17044', '2018-10-25 15:37:22', '2018-10-25 15:37:22');
INSERT INTO `detailtables` VALUES ('58', 'E01', 'PC-17045', '2018-10-25 15:37:31', '2018-10-25 15:37:31');
INSERT INTO `detailtables` VALUES ('59', 'E06', 'PC-17050', '2018-10-25 15:37:54', '2018-10-25 15:37:54');
INSERT INTO `detailtables` VALUES ('60', 'E07', 'PC-17051', '2018-10-25 15:38:04', '2018-10-25 15:38:04');
INSERT INTO `detailtables` VALUES ('61', 'E08', 'PC-17102', '2018-10-25 15:38:10', '2018-10-25 15:38:10');
INSERT INTO `detailtables` VALUES ('62', 'E10', 'PC-17049', '2018-10-25 15:38:26', '2018-10-25 15:38:26');
INSERT INTO `detailtables` VALUES ('63', 'E11', 'PC-17055', '2018-10-25 15:38:34', '2018-10-25 15:38:34');
INSERT INTO `detailtables` VALUES ('64', 'E12', 'PC-17095', '2018-10-25 15:38:42', '2018-10-25 15:38:42');
INSERT INTO `detailtables` VALUES ('65', 'F06', 'PC-17061', '2018-10-25 15:39:08', '2018-10-25 15:39:08');
INSERT INTO `detailtables` VALUES ('66', 'F07', 'PC-17062', '2018-10-25 15:39:18', '2018-10-25 15:39:18');
INSERT INTO `detailtables` VALUES ('67', 'G01', 'PC-17060', '2018-10-25 15:39:36', '2018-10-25 15:39:36');
INSERT INTO `detailtables` VALUES ('68', 'G02', 'PC-17059', '2018-10-25 15:39:44', '2018-10-25 15:39:44');
INSERT INTO `detailtables` VALUES ('69', 'G03', 'PC-17131', '2018-10-25 15:44:05', '2018-10-25 15:44:05');
INSERT INTO `detailtables` VALUES ('70', 'G04', 'PC-17064', '2018-10-25 15:44:19', '2018-10-25 15:44:19');
INSERT INTO `detailtables` VALUES ('71', 'G05', 'PC-17065', '2018-10-25 15:44:43', '2018-10-25 15:44:43');
INSERT INTO `detailtables` VALUES ('72', 'G06', 'PC-17066', '2018-10-25 15:45:15', '2018-10-25 15:45:15');
INSERT INTO `detailtables` VALUES ('73', 'G07', 'PC-17105', '2018-10-25 15:45:37', '2018-10-25 15:45:37');
INSERT INTO `detailtables` VALUES ('74', 'G10', 'PC-17070', '2018-10-25 15:46:10', '2018-10-25 15:46:10');
INSERT INTO `detailtables` VALUES ('75', 'G11', 'PC-17071', '2018-10-25 15:47:08', '2018-10-25 15:47:08');
INSERT INTO `detailtables` VALUES ('76', 'G12', 'PC-17072', '2018-10-25 15:47:26', '2018-10-25 15:47:26');
INSERT INTO `detailtables` VALUES ('77', 'H02', 'PC-17075', '2018-10-25 15:48:27', '2018-10-25 15:48:27');
INSERT INTO `detailtables` VALUES ('78', 'H03', 'PC-17132', '2018-10-25 15:48:52', '2018-10-25 15:48:52');
INSERT INTO `detailtables` VALUES ('79', 'H04', 'PC-17076', '2018-10-25 15:52:55', '2018-10-25 15:52:55');
INSERT INTO `detailtables` VALUES ('80', 'H05', 'PC-17077', '2018-10-25 15:53:06', '2018-10-25 15:53:06');
INSERT INTO `detailtables` VALUES ('81', 'H06', 'PC-17078', '2018-10-25 15:53:22', '2018-10-25 15:53:22');
INSERT INTO `detailtables` VALUES ('82', 'H09', 'PC-17081', '2018-10-25 15:53:55', '2018-10-25 15:53:55');
INSERT INTO `detailtables` VALUES ('83', 'H10', 'PC-17080', '2018-10-25 15:54:06', '2018-10-25 15:54:06');
INSERT INTO `detailtables` VALUES ('84', 'I01', 'PC-17083', '2018-10-25 15:55:08', '2018-10-25 15:55:08');
INSERT INTO `detailtables` VALUES ('85', 'I02', 'PC-17084', '2018-10-25 15:55:18', '2018-10-25 15:55:18');
INSERT INTO `detailtables` VALUES ('86', 'I03', 'PC-17085', '2018-10-25 15:55:30', '2018-10-25 15:55:30');
INSERT INTO `detailtables` VALUES ('87', 'I05', 'PC-17087', '2018-10-25 15:55:55', '2018-10-25 15:55:55');
INSERT INTO `detailtables` VALUES ('88', 'I06', 'PC-17088', '2018-10-25 15:56:05', '2018-10-25 15:56:05');
INSERT INTO `detailtables` VALUES ('89', 'I04', 'PC-17086', '2018-10-25 15:56:29', '2018-10-25 15:56:29');
INSERT INTO `detailtables` VALUES ('90', 'J03', 'PC-17139', '2018-10-25 15:57:52', '2018-10-25 15:57:52');
INSERT INTO `detailtables` VALUES ('91', 'J06', 'PC-17134', '2018-10-25 15:58:09', '2018-10-25 15:58:09');
INSERT INTO `detailtables` VALUES ('92', 'D03', 'PC-17116', '2018-10-25 16:01:08', '2018-10-25 16:01:08');
INSERT INTO `detailtables` VALUES ('96', 'K02', 'PC-17096', '2018-10-25 16:04:09', '2018-10-25 16:04:09');
INSERT INTO `detailtables` VALUES ('97', 'K03', 'PC-17094', '2018-10-25 16:04:22', '2018-10-25 16:04:22');
INSERT INTO `detailtables` VALUES ('98', 'K04', 'PC-17013', '2018-10-25 16:04:42', '2018-10-25 16:04:42');
INSERT INTO `detailtables` VALUES ('99', 'K06', 'PC-17099', '2018-10-25 16:05:07', '2018-10-25 16:05:07');
INSERT INTO `detailtables` VALUES ('100', 'K07', 'PC-17098', '2018-10-25 16:05:30', '2018-10-25 16:05:30');
INSERT INTO `detailtables` VALUES ('101', 'K08', 'PC-17093', '2018-10-25 16:05:39', '2018-10-25 16:05:39');
INSERT INTO `detailtables` VALUES ('102', 'L01', 'PC-17121', '2018-10-25 16:06:11', '2018-10-25 16:06:11');
INSERT INTO `detailtables` VALUES ('103', 'L02', 'PC-17103', '2018-10-25 16:06:20', '2018-10-25 16:06:20');
INSERT INTO `detailtables` VALUES ('104', 'L03', 'PC-17063', '2018-10-25 16:06:38', '2018-10-25 16:06:38');
INSERT INTO `detailtables` VALUES ('105', 'L04', 'PC-17109', '2018-10-25 16:07:02', '2018-10-25 16:07:02');
INSERT INTO `detailtables` VALUES ('106', 'L06', 'PC-17100', '2018-10-25 16:07:41', '2018-10-25 16:07:41');
INSERT INTO `detailtables` VALUES ('107', 'L07', 'PC-17107', '2018-10-25 16:07:52', '2018-10-25 16:07:52');
INSERT INTO `detailtables` VALUES ('108', 'L10', 'PC-17101', '2018-10-25 16:08:28', '2018-10-25 16:08:28');
INSERT INTO `detailtables` VALUES ('109', 'I09', 'PC-17091', '2018-10-25 16:08:41', '2018-10-25 16:08:41');
INSERT INTO `detailtables` VALUES ('110', 'M10', 'PC-17114', '2018-10-25 16:09:32', '2018-10-25 16:09:32');
INSERT INTO `detailtables` VALUES ('111', 'Q07', 'PC-17110', '2018-10-25 16:09:57', '2018-10-25 16:09:57');
INSERT INTO `detailtables` VALUES ('112', 'Q14', 'PC-17125', '2018-10-25 16:10:21', '2018-10-25 16:10:21');
INSERT INTO `detailtables` VALUES ('113', 'Q15', 'PC-17126', '2018-10-25 16:10:34', '2018-10-25 16:10:34');
INSERT INTO `detailtables` VALUES ('114', 'M12', 'PC-18007', '2018-10-25 16:23:40', '2018-10-25 16:23:40');
INSERT INTO `detailtables` VALUES ('115', 'K05', 'PC-17123', '2018-10-25 16:24:59', '2018-10-25 16:24:59');
INSERT INTO `detailtables` VALUES ('116', 'E03', 'PC-17054', '2018-10-25 16:29:05', '2018-10-25 16:29:05');
INSERT INTO `detailtables` VALUES ('117', 'E09', 'PC-17053', '2018-10-25 16:32:15', '2018-10-25 16:32:15');
INSERT INTO `detailtables` VALUES ('118', 'E13', 'PC-17057', '2018-10-25 16:32:44', '2018-10-25 16:32:44');
INSERT INTO `detailtables` VALUES ('119', 'G13', 'PC-17073', '2018-10-25 16:35:37', '2018-10-25 16:35:37');
INSERT INTO `detailtables` VALUES ('120', 'L05', 'PC-17124', '2018-10-25 16:38:53', '2018-10-25 16:38:53');
INSERT INTO `detailtables` VALUES ('121', 'L09', 'PC-17106', '2018-10-25 16:39:06', '2018-10-25 16:39:06');
INSERT INTO `detailtables` VALUES ('122', 'H08', 'PC-17016', '2018-10-25 16:39:28', '2018-10-25 16:39:28');
INSERT INTO `detailtables` VALUES ('123', 'I07', 'PC-17089', '2018-10-25 16:39:54', '2018-10-25 16:39:54');
INSERT INTO `detailtables` VALUES ('124', 'M11', 'PC-18006', '2018-10-25 16:43:22', '2018-10-25 16:43:22');
INSERT INTO `detailtables` VALUES ('125', 'M13', 'PC-18011', '2018-10-25 17:06:33', '2018-10-25 17:06:33');
INSERT INTO `detailtables` VALUES ('126', 'Q01', 'PC-17067', '2018-10-25 17:06:57', '2018-10-25 17:06:57');
INSERT INTO `detailtables` VALUES ('127', 'Q04', 'PC-17068', '2018-10-25 17:08:29', '2018-10-25 17:08:29');
INSERT INTO `detailtables` VALUES ('128', 'M06', 'PC-17112', '2018-10-25 17:09:02', '2018-10-25 17:09:02');
INSERT INTO `detailtables` VALUES ('129', 'R02', 'PC-17128', '2018-10-26 12:56:47', '2018-10-26 12:56:47');
INSERT INTO `detailtables` VALUES ('130', 'R05', 'PC-17129', '2018-10-26 12:57:42', '2018-10-26 12:57:42');
INSERT INTO `detailtables` VALUES ('131', 'N02', 'PC-17119', '2018-10-26 13:01:33', '2018-10-26 13:01:33');
INSERT INTO `detailtables` VALUES ('132', 'M19', 'PC-17118', '2018-10-26 13:02:50', '2018-10-26 13:02:50');
INSERT INTO `detailtables` VALUES ('133', 'M16', 'PC-17117', '2018-10-26 13:03:35', '2018-10-26 13:03:35');
INSERT INTO `detailtables` VALUES ('135', 'M12', 'PC-17115', '2018-10-26 13:04:09', '2018-10-26 13:04:09');
INSERT INTO `detailtables` VALUES ('136', 'J01', 'PC-17138', '2018-10-26 13:04:25', '2018-10-26 13:04:25');
INSERT INTO `detailtables` VALUES ('137', 'M09', 'PC-17113', '2018-10-26 13:04:49', '2018-10-26 13:04:49');
INSERT INTO `detailtables` VALUES ('138', 'E04', 'PC-17047', '2018-10-26 13:07:37', '2018-10-26 13:07:37');
INSERT INTO `detailtables` VALUES ('139', 'H07', 'PC-17079', '2018-10-26 13:10:41', '2018-10-26 13:10:41');
INSERT INTO `detailtables` VALUES ('140', 'H01', 'PC-17074', '2018-10-26 13:12:56', '2018-10-26 13:12:56');
INSERT INTO `detailtables` VALUES ('141', 'H11', 'PC-17082', '2018-10-26 13:16:06', '2018-10-26 13:16:06');
INSERT INTO `detailtables` VALUES ('142', 'I08', 'PC-17090', '2018-10-26 13:16:51', '2018-10-26 13:16:51');
INSERT INTO `detailtables` VALUES ('143', 'I10', 'PC-17052', '2018-10-26 13:17:12', '2018-10-26 13:17:12');
INSERT INTO `detailtables` VALUES ('144', 'F09', 'PC-18013', '2018-11-01 13:20:33', '2018-11-01 13:20:33');
INSERT INTO `detailtables` VALUES ('145', 'D08', 'PC-18012', '2018-11-01 13:20:44', '2018-11-01 13:20:44');

-- ----------------------------
-- Table structure for `migrations`
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2018_10_10_073751_create_computers_table', '1');
INSERT INTO `migrations` VALUES ('4', '2018_10_10_074955_create_clients_table', '1');
INSERT INTO `migrations` VALUES ('5', '2018_10_10_075059_create_servers_table', '1');
INSERT INTO `migrations` VALUES ('6', '2018_10_10_075119_create_virtualservers_table', '1');
INSERT INTO `migrations` VALUES ('7', '2018_10_10_075155_create_tables_table', '1');
INSERT INTO `migrations` VALUES ('8', '2018_10_10_075206_create_detailtables_table', '1');

-- ----------------------------
-- Table structure for `password_resets`
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for `servers`
-- ----------------------------
DROP TABLE IF EXISTS `servers`;
CREATE TABLE `servers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_server` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hostname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `proccessor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ram` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hardisk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `os` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serial` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of servers
-- ----------------------------
INSERT INTO `servers` VALUES ('1', 'SRV-01', 'Virtual VM-Ware ESXI 6.5.0', '-', '172.26.5.130', 'Intel Xeon CPU E5-2620 v4 @2.10Ghz', '16', '1000', 'VM-WARE ESXI-6.5.0', 'HP Proliant DL180 Gen9', '-', '(root) #itguard#', '-', '1', '2018-10-16 02:58:39', '2018-10-16 02:58:39');
INSERT INTO `servers` VALUES ('2', 'SRV-02', 'CAMPSII Baru', 'SRV-02', '172.26.5.185', '-', '4', '250', 'Windows Server 2008 R2 Standard', 'HP Proliant DL 120 G7', '-', '(administrator)@itguard52@', '-', '1', '2018-10-16 04:16:11', '2018-10-16 04:16:11');
INSERT INTO `servers` VALUES ('3', 'SRV-03', 'Lokal Sistem', 'LOKALSYSTEM', '172.26.5.237', 'Intel Core 2 Duo CPU E4500 @2.20Ghz', '4', '160', 'Windows Server 2008 R2 Standard', 'PC Rakitan', '-', 'itGuard52', '-', '1', '2018-10-16 04:30:03', '2018-10-16 04:30:03');
INSERT INTO `servers` VALUES ('5', 'SRV-05', 'Exchange Mail Server', 'NTCIDE01', '172.26.5.172', 'Intel Xeon CPU E5-2620 v4  @2.10Ghz', '32', '1000', 'Windows Server 2008 R2 Standard', 'HP Proliant DL 380 Gen9', 'CN7652094Q', '(AP/ntfidbadmin) CSLI@jkt48', '-', '1', '2018-10-17 08:18:55', '2018-10-17 08:24:44');
INSERT INTO `servers` VALUES ('6', 'SRV-06', 'Server ORIS IDN-1', 'Oris-IDN1', '172.26.5.197', 'Intel Xeon CPU E5-2620 v3  @2.40Ghz', '32', '1000', 'Windows Server 2008 64bit', 'HP Proliant DL 380 Gen9', 'SGH513VN8S', '(administrator)itGuard52', '-', '1', '2018-10-17 08:19:30', '2018-10-17 08:26:22');
INSERT INTO `servers` VALUES ('7', 'SRV-07', 'Server ORIS IDN', 'Oris-IDN', '172.26.5.190', 'Intel Xeon CPU E5-2620 v3  @2.40Ghz', '32', '1000', 'Windows Server 2008 64bit', 'HP Proliant DL 380 Gen9', 'SGH513VN8P', '(administrator)itGuard52', '-', '1', '2018-10-17 08:30:32', '2018-10-17 08:31:38');
INSERT INTO `servers` VALUES ('9', 'SRV-09', 'Server Hyper-V', 'VM_NTCIDD01', '172.26.5.132', 'Intel Xeon CPU E31220 @3.10Ghz', '8', '250', 'Windows Server 2008 64bit', 'HP Proliant DL 120 G7', 'SGH309NKJKT', '(administrator) itguard', '-', '1', '2018-10-17 10:10:39', '2018-10-17 10:10:39');
INSERT INTO `servers` VALUES ('10', 'SRV-11', 'SQL Local System', 'dblocalsystem', '172.26.5.178', 'Intel Xeon CPU E31220 @3.10Ghz', '16', '1250', 'Windows Server 2008 64bit', 'Windows Server 2008 64bit', 'SGH307MVHV', '(administrator) itGuard52', 'Server yang berfungsi sebagai Database Aplikasi GP\nMenggunakan MS SQL 2008 Sebagai Aplikasi\nFile Database berada pada:', '1', '2018-10-17 10:14:31', '2018-10-17 10:14:31');
INSERT INTO `servers` VALUES ('11', 'SRV-12', 'Zimbra Mail Server', 'mail.cosco-ogs.com', '10.10.10.8', 'Intel Xeon CPU E31220 @3.10Ghz', '10', '1000', 'Linux Centos 6.4', 'HP Proliant DL 120 G7', 'SGH2257P9X', '@$oGSjKT$@', 'Server yang berfungsi sebagai mail server untuk MX cosco-ogs.com dan gtmjkt.co.id\nMenggunakan zimbra open source 8 sebagai aplikasi nya\nFile konfigurasi berada:\n	/opt/zimbra/\n\nAkses Webmail https://10.10.10.8:7071\nUsername :    admin\nPassword  :    $%jktOGS%$', '1', '2018-10-19 02:44:33', '2018-10-19 02:44:33');
INSERT INTO `servers` VALUES ('12', 'SRV-13', 'VM-Ware ESXI-6.0.0', '-', '172.26.5.147', 'Intel Xeon CPU E31220 @3.10Ghz', '4', '1000', 'VM-Ware ESXI-6.0.0', 'HP ProLiant DL120 G7', 'SGH639VBNN', '(root) CSLI@jkt48', '-', '1', '2018-10-19 02:46:42', '2018-11-01 16:16:09');
INSERT INTO `servers` VALUES ('13', 'SRV-14', 'Server GP SQL', 'DB-GP', '172.26.5.158', 'Intel Xeon CPU E31270 @3.40Ghz', '32', '1000', 'Windows Server 2008 64bit', 'IBM System x3250 M4', '06WPA29', 'itguard', '-', '1', '2018-10-19 02:49:14', '2018-10-19 02:49:14');
INSERT INTO `servers` VALUES ('14', 'SRV-15', 'Virtual Proxmox', 'pve', '172.26.5.148', 'Intel(R) Xeon(R) CPU E3-1240 v5 @ 3.50GHz', '16', '1000', 'PROXMOX 4.4', 'HP Proliant DL20Gen9', 'SGH701TDEA', '(root) itGuard52', 'Sebagai server untuk virtualisasi dengan proxmox sebagai aplikasinya\nAkses via web browser di https://172.26.5.148:8006\nUsername : root\nPassword : itGuard52', '1', '2018-10-19 03:04:01', '2018-10-19 03:04:01');
INSERT INTO `servers` VALUES ('15', 'SRV-23', 'Virtual VM-Ware ESXI 6.5.0', '-', '172.26.5.134(iLo);172.26.5.135(VmWare)', 'Intel Xeon CPU E5-2630 v4 @2.20 Ghz', '16', '2000', '-', 'HP Proliant DL120Gen9', '-', 'iLo(administrator);VmWare(root) @itGuard52@', '-', '1', '2018-10-19 10:53:48', '2018-10-23 09:13:51');
INSERT INTO `servers` VALUES ('16', 'SRV-24', '-', '-', '-', '-', '16', '2000', '-', 'HP Proliant DL120Gen9', '-', '-', '-', '1', '2018-10-19 10:57:12', '2018-10-19 10:57:12');
INSERT INTO `servers` VALUES ('17', 'SRV-25', 'Proxy Server', 'prxy', '192.168.88.88', '-', '4', '500', 'Debian 3.16', 'Rakitan', '-', 'Ogsjkt_edp', '-', '1', '2018-10-20 16:15:24', '2018-10-20 16:15:24');
INSERT INTO `servers` VALUES ('18', 'SRV-26', 'File Server', 'fileserver', '10.200.10.3', '-', '4', '1000', 'TurnkeyFile Server', '-', '-', '(root) @itGuard52@', '-', '1', '2018-10-22 09:06:44', '2018-10-22 09:06:44');

-- ----------------------------
-- Table structure for `settings_dept`
-- ----------------------------
DROP TABLE IF EXISTS `settings_dept`;
CREATE TABLE `settings_dept` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dept` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comments` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of settings_dept
-- ----------------------------
INSERT INTO `settings_dept` VALUES ('1', 'HRD/GA', 'Human Resource and General Affair Department', '1', '2018-11-01 15:58:21', '2018-11-01 15:58:21');
INSERT INTO `settings_dept` VALUES ('2', 'Sales', '-', '1', '2018-11-01 15:58:32', '2018-11-01 15:58:32');
INSERT INTO `settings_dept` VALUES ('3', 'Manager', '-', '1', '2018-11-01 15:58:44', '2018-11-01 15:58:44');
INSERT INTO `settings_dept` VALUES ('4', 'Finance & Accounting', 'Finance & Accounting Department', '1', '2018-11-01 15:59:06', '2018-11-01 15:59:06');
INSERT INTO `settings_dept` VALUES ('5', 'Management/GM', 'Management & General Manager', '1', '2018-11-01 15:59:27', '2018-11-01 15:59:27');
INSERT INTO `settings_dept` VALUES ('6', 'IT', 'Information Technology Department', '1', '2018-11-01 15:59:49', '2018-11-01 15:59:49');
INSERT INTO `settings_dept` VALUES ('7', 'Document Import', '-', '1', '2018-11-01 15:59:59', '2018-11-01 15:59:59');
INSERT INTO `settings_dept` VALUES ('8', 'Document Export', '-', '1', '2018-11-01 16:00:04', '2018-11-01 16:00:04');
INSERT INTO `settings_dept` VALUES ('9', 'Agency & Logistic', '-', '1', '2018-11-01 16:01:53', '2018-11-01 16:01:53');
INSERT INTO `settings_dept` VALUES ('10', 'Marketing & Pricing', 'Marketing/Commercial Department', '1', '2018-11-01 16:02:35', '2018-11-01 16:02:35');
INSERT INTO `settings_dept` VALUES ('11', 'Equipment Control', '-', '1', '2018-11-01 16:02:45', '2018-11-01 16:02:45');
INSERT INTO `settings_dept` VALUES ('12', 'Customer Service', '-', '1', '2018-11-01 16:02:53', '2018-11-01 16:02:53');
INSERT INTO `settings_dept` VALUES ('13', 'Traffic', 'Traffic/Operation Department', '1', '2018-11-01 16:03:16', '2018-11-01 16:03:16');

-- ----------------------------
-- Table structure for `tables`
-- ----------------------------
DROP TABLE IF EXISTS `tables`;
CREATE TABLE `tables` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_meja` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_client` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=212 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of tables
-- ----------------------------
INSERT INTO `tables` VALUES ('1', 'A01', 'USR17002', null, '2018-10-24 16:16:00');
INSERT INTO `tables` VALUES ('2', 'A02', 'USR17008', null, '2018-10-24 16:18:46');
INSERT INTO `tables` VALUES ('3', 'A03', 'USR18015', null, '2018-10-24 16:28:29');
INSERT INTO `tables` VALUES ('4', 'A04', null, null, '2018-10-24 17:03:57');
INSERT INTO `tables` VALUES ('5', 'A05', 'USR17004', null, '2018-10-24 17:04:29');
INSERT INTO `tables` VALUES ('6', 'A06', 'USR17006', null, '2018-10-24 17:04:40');
INSERT INTO `tables` VALUES ('7', 'A07', 'USR18004', null, '2018-10-24 17:04:49');
INSERT INTO `tables` VALUES ('8', 'A08', 'USR17011', null, '2018-10-24 17:05:15');
INSERT INTO `tables` VALUES ('9', 'A09', 'USR17009', null, '2018-10-24 17:05:39');
INSERT INTO `tables` VALUES ('10', 'A10', 'USR17010', null, '2018-10-24 17:06:28');
INSERT INTO `tables` VALUES ('11', 'A11', 'USR17135', null, '2018-10-24 17:06:42');
INSERT INTO `tables` VALUES ('12', 'A12', 'USR17005', null, '2018-10-24 17:07:17');
INSERT INTO `tables` VALUES ('13', 'A13', 'USR17013', null, '2018-10-24 17:07:40');
INSERT INTO `tables` VALUES ('14', 'A14', null, null, null);
INSERT INTO `tables` VALUES ('15', 'B01', 'USR18006', null, '2018-10-24 17:16:53');
INSERT INTO `tables` VALUES ('16', 'B02', null, null, null);
INSERT INTO `tables` VALUES ('17', 'B03', 'USR18024', null, '2018-10-24 17:17:11');
INSERT INTO `tables` VALUES ('18', 'B04', 'USR18013', null, '2018-10-24 17:18:03');
INSERT INTO `tables` VALUES ('19', 'B05', 'USR18016', null, '2018-10-24 17:18:10');
INSERT INTO `tables` VALUES ('20', 'B06', 'USR17131', null, '2018-10-24 17:18:17');
INSERT INTO `tables` VALUES ('21', 'B07', 'USR17130', null, '2018-10-24 17:22:40');
INSERT INTO `tables` VALUES ('22', 'B08', 'USR17129', null, '2018-10-24 17:22:53');
INSERT INTO `tables` VALUES ('23', 'B09', 'USR17128', null, '2018-10-24 17:23:04');
INSERT INTO `tables` VALUES ('24', 'B10', 'USR17127', null, '2018-10-24 17:23:12');
INSERT INTO `tables` VALUES ('25', 'B11', 'USR18023', null, '2018-10-24 17:23:23');
INSERT INTO `tables` VALUES ('26', 'B12', 'USR17125', null, '2018-10-24 17:23:35');
INSERT INTO `tables` VALUES ('27', 'B13', 'USR17124', null, '2018-10-24 17:23:43');
INSERT INTO `tables` VALUES ('28', 'B14', null, null, null);
INSERT INTO `tables` VALUES ('29', 'C01', 'USR17122', null, '2018-10-24 17:23:52');
INSERT INTO `tables` VALUES ('30', 'C02', 'USR18009', null, '2018-10-24 17:24:01');
INSERT INTO `tables` VALUES ('31', 'C03', 'USR17119', null, '2018-10-25 08:34:02');
INSERT INTO `tables` VALUES ('32', 'C04', 'USR17120', null, '2018-10-25 08:34:11');
INSERT INTO `tables` VALUES ('33', 'C05', 'USR18010', null, '2018-10-25 08:34:19');
INSERT INTO `tables` VALUES ('34', 'C06', 'USR17116', null, '2018-10-25 08:34:32');
INSERT INTO `tables` VALUES ('35', 'C07', 'USR17132', null, '2018-10-25 08:35:11');
INSERT INTO `tables` VALUES ('36', 'C08', null, null, null);
INSERT INTO `tables` VALUES ('37', 'C09', null, null, null);
INSERT INTO `tables` VALUES ('38', 'C10', null, null, null);
INSERT INTO `tables` VALUES ('39', 'D01', 'USR17118', null, '2018-10-25 08:44:20');
INSERT INTO `tables` VALUES ('40', 'D02', null, null, null);
INSERT INTO `tables` VALUES ('41', 'D03', 'USR18021', null, '2018-10-25 08:44:57');
INSERT INTO `tables` VALUES ('42', 'D04', 'USR17115', null, '2018-10-25 08:45:04');
INSERT INTO `tables` VALUES ('43', 'D05', 'USR17114', null, '2018-10-25 08:45:15');
INSERT INTO `tables` VALUES ('44', 'D06', 'USR17113', null, '2018-10-25 08:45:22');
INSERT INTO `tables` VALUES ('45', 'D07', 'USR18019', null, '2018-10-25 08:46:15');
INSERT INTO `tables` VALUES ('46', 'D08', 'USR18025', null, '2018-10-25 11:08:05');
INSERT INTO `tables` VALUES ('47', 'D09', 'USR18012', null, '2018-10-25 11:08:29');
INSERT INTO `tables` VALUES ('48', 'D10', 'USR18022', null, '2018-10-25 11:08:43');
INSERT INTO `tables` VALUES ('49', 'D11', 'USR17108', null, '2018-10-25 11:08:52');
INSERT INTO `tables` VALUES ('50', 'D12', 'USR17107', null, '2018-10-25 11:08:59');
INSERT INTO `tables` VALUES ('51', 'D13', 'USR17106', null, '2018-10-25 11:09:12');
INSERT INTO `tables` VALUES ('52', 'D14', null, null, null);
INSERT INTO `tables` VALUES ('53', 'E01', 'USR17105', null, '2018-10-25 11:09:35');
INSERT INTO `tables` VALUES ('54', 'E02', 'USR17112', null, '2018-10-25 11:09:49');
INSERT INTO `tables` VALUES ('55', 'E03', 'USR17096', null, '2018-10-25 11:11:19');
INSERT INTO `tables` VALUES ('56', 'E04', 'USR17111', null, '2018-10-25 11:11:25');
INSERT INTO `tables` VALUES ('57', 'E05', 'USR18017', null, '2018-10-25 11:11:41');
INSERT INTO `tables` VALUES ('58', 'E06', 'USR17100', null, '2018-10-25 11:11:54');
INSERT INTO `tables` VALUES ('59', 'E07', 'USR17099', null, '2018-10-25 11:12:10');
INSERT INTO `tables` VALUES ('60', 'E08', 'USR17117', null, '2018-10-25 11:12:23');
INSERT INTO `tables` VALUES ('61', 'E09', 'USR17097', null, '2018-10-25 11:12:31');
INSERT INTO `tables` VALUES ('62', 'E10', 'USR17101', null, '2018-10-25 11:12:40');
INSERT INTO `tables` VALUES ('63', 'E11', 'USR17095', null, '2018-10-25 11:12:47');
INSERT INTO `tables` VALUES ('64', 'E12', 'USR17094', null, '2018-10-25 11:12:52');
INSERT INTO `tables` VALUES ('65', 'E13', 'USR17093', null, '2018-10-25 11:12:59');
INSERT INTO `tables` VALUES ('66', 'E14', null, null, null);
INSERT INTO `tables` VALUES ('67', 'F01', 'USR17041', null, '2018-10-25 13:35:32');
INSERT INTO `tables` VALUES ('68', 'F02', 'USR17136', null, '2018-10-25 13:35:40');
INSERT INTO `tables` VALUES ('69', 'F03', 'USR17133', null, '2018-10-25 13:36:10');
INSERT INTO `tables` VALUES ('70', 'F04', 'USR17046', null, '2018-10-25 13:36:38');
INSERT INTO `tables` VALUES ('71', 'F05', 'USR17110', null, '2018-10-25 13:37:01');
INSERT INTO `tables` VALUES ('72', 'F06', 'USR17090', null, '2018-10-25 13:38:58');
INSERT INTO `tables` VALUES ('73', 'F07', 'USR17089', null, '2018-10-25 13:39:09');
INSERT INTO `tables` VALUES ('74', 'F08', null, null, null);
INSERT INTO `tables` VALUES ('75', 'F09', 'USR17088', null, '2018-10-25 13:39:26');
INSERT INTO `tables` VALUES ('76', 'F10', null, null, null);
INSERT INTO `tables` VALUES ('77', 'G01', 'USR17091', null, '2018-10-25 14:22:34');
INSERT INTO `tables` VALUES ('78', 'G02', 'USR17092', null, '2018-10-25 14:22:45');
INSERT INTO `tables` VALUES ('79', 'G03', 'USR17085', null, '2018-10-25 15:43:58');
INSERT INTO `tables` VALUES ('80', 'G04', 'USR17084', null, '2018-10-25 15:44:19');
INSERT INTO `tables` VALUES ('81', 'G05', 'USR17083', null, '2018-10-25 15:44:44');
INSERT INTO `tables` VALUES ('82', 'G06', 'USR17103', null, '2018-10-25 15:45:16');
INSERT INTO `tables` VALUES ('83', 'G07', 'USR17038', null, '2018-10-25 15:45:31');
INSERT INTO `tables` VALUES ('84', 'G08', null, null, null);
INSERT INTO `tables` VALUES ('85', 'G09', null, null, null);
INSERT INTO `tables` VALUES ('86', 'G10', 'USR17078', null, '2018-10-25 15:46:11');
INSERT INTO `tables` VALUES ('87', 'G11', 'USR17077', null, '2018-10-25 15:47:09');
INSERT INTO `tables` VALUES ('88', 'G12', 'USR17076', null, '2018-10-25 15:47:26');
INSERT INTO `tables` VALUES ('89', 'G13', 'USR17075', null, '2018-10-25 15:47:42');
INSERT INTO `tables` VALUES ('90', 'G14', null, null, null);
INSERT INTO `tables` VALUES ('91', 'H01', 'USR17074', null, '2018-10-25 15:48:04');
INSERT INTO `tables` VALUES ('92', 'H02', 'USR17073', null, '2018-10-25 15:48:27');
INSERT INTO `tables` VALUES ('93', 'H03', 'USR17072', null, '2018-10-25 15:48:46');
INSERT INTO `tables` VALUES ('94', 'H04', 'USR17071', null, '2018-10-25 15:52:55');
INSERT INTO `tables` VALUES ('95', 'H05', 'USR17070', null, '2018-10-25 15:53:07');
INSERT INTO `tables` VALUES ('96', 'H06', 'USR17069', null, '2018-10-25 15:53:22');
INSERT INTO `tables` VALUES ('97', 'H07', 'USR17068', null, '2018-10-25 15:53:33');
INSERT INTO `tables` VALUES ('98', 'H08', 'USR17014', null, '2018-10-25 16:39:29');
INSERT INTO `tables` VALUES ('99', 'H09', 'USR17066', null, '2018-10-25 15:53:49');
INSERT INTO `tables` VALUES ('100', 'H10', 'USR17067', null, '2018-10-25 15:54:07');
INSERT INTO `tables` VALUES ('101', 'H11', 'USR17065', null, '2018-10-25 15:54:43');
INSERT INTO `tables` VALUES ('102', 'H12', null, null, null);
INSERT INTO `tables` VALUES ('103', 'I01', 'USR17064', null, '2018-10-25 15:55:04');
INSERT INTO `tables` VALUES ('104', 'I02', 'USR17063', null, '2018-10-25 15:55:15');
INSERT INTO `tables` VALUES ('105', 'I03', 'USR17062', null, '2018-10-25 15:55:31');
INSERT INTO `tables` VALUES ('106', 'I04', 'USR18001', null, '2018-10-25 15:55:43');
INSERT INTO `tables` VALUES ('107', 'I05', 'USR17060', null, '2018-10-25 15:55:50');
INSERT INTO `tables` VALUES ('108', 'I06', 'USR17059', null, '2018-10-25 15:56:06');
INSERT INTO `tables` VALUES ('109', 'I07', 'USR17058', null, '2018-10-25 15:56:21');
INSERT INTO `tables` VALUES ('110', 'I08', 'USR17057', null, '2018-10-25 15:56:37');
INSERT INTO `tables` VALUES ('111', 'I09', 'USR17056', null, '2018-10-25 15:56:54');
INSERT INTO `tables` VALUES ('112', 'I10', 'USR17055', null, '2018-10-25 15:57:00');
INSERT INTO `tables` VALUES ('113', 'J01', 'USR17054', null, '2018-10-25 15:57:22');
INSERT INTO `tables` VALUES ('114', 'J02', null, null, null);
INSERT INTO `tables` VALUES ('115', 'J03', null, null, null);
INSERT INTO `tables` VALUES ('116', 'J04', null, null, null);
INSERT INTO `tables` VALUES ('117', 'J05', null, null, null);
INSERT INTO `tables` VALUES ('118', 'J06', 'USR17052', null, '2018-10-25 15:58:09');
INSERT INTO `tables` VALUES ('119', 'K01', null, null, '2018-10-25 16:03:41');
INSERT INTO `tables` VALUES ('120', 'K02', 'USR17047', null, '2018-10-25 16:04:05');
INSERT INTO `tables` VALUES ('121', 'K03', 'USR17141', null, '2018-10-25 16:04:23');
INSERT INTO `tables` VALUES ('122', 'K04', 'USR17049', null, '2018-10-25 16:04:42');
INSERT INTO `tables` VALUES ('123', 'K05', 'USR18020', null, '2018-10-25 16:04:55');
INSERT INTO `tables` VALUES ('124', 'K06', 'USR17139', null, '2018-10-25 16:05:02');
INSERT INTO `tables` VALUES ('125', 'K07', 'USR17045', null, '2018-10-25 16:05:30');
INSERT INTO `tables` VALUES ('126', 'K08', 'USR17037', null, '2018-10-25 16:05:39');
INSERT INTO `tables` VALUES ('127', 'L01', 'USR17142', null, '2018-10-25 16:06:06');
INSERT INTO `tables` VALUES ('128', 'L02', 'USR18018', null, '2018-10-25 16:06:21');
INSERT INTO `tables` VALUES ('129', 'L03', 'USR17026', null, '2018-10-25 16:06:39');
INSERT INTO `tables` VALUES ('130', 'L04', 'USR17034', null, '2018-10-25 16:07:03');
INSERT INTO `tables` VALUES ('131', 'L05', 'USR17044', null, '2018-10-25 16:07:10');
INSERT INTO `tables` VALUES ('132', 'L06', 'USR17043', null, '2018-10-25 16:07:42');
INSERT INTO `tables` VALUES ('133', 'L07', 'USR17036', null, '2018-10-25 16:07:52');
INSERT INTO `tables` VALUES ('134', 'L08', 'USR18007', null, '2018-10-25 16:08:08');
INSERT INTO `tables` VALUES ('135', 'L09', 'USR17138', null, '2018-10-25 16:08:15');
INSERT INTO `tables` VALUES ('136', 'L10', 'USR17039', null, '2018-10-25 16:08:20');
INSERT INTO `tables` VALUES ('137', 'M01', null, null, null);
INSERT INTO `tables` VALUES ('138', 'M02', null, null, null);
INSERT INTO `tables` VALUES ('139', 'M03', null, null, null);
INSERT INTO `tables` VALUES ('140', 'M04', null, null, null);
INSERT INTO `tables` VALUES ('141', 'M05', null, null, null);
INSERT INTO `tables` VALUES ('142', 'M06', 'USR17031', null, '2018-10-25 16:08:59');
INSERT INTO `tables` VALUES ('143', 'M07', null, null, null);
INSERT INTO `tables` VALUES ('144', 'M08', null, null, null);
INSERT INTO `tables` VALUES ('145', 'M09', 'USR17030', null, '2018-10-25 17:12:37');
INSERT INTO `tables` VALUES ('146', 'M10', 'USR17029', null, '2018-10-25 16:09:33');
INSERT INTO `tables` VALUES ('147', 'M11', 'USR18002', null, '2018-10-25 16:42:35');
INSERT INTO `tables` VALUES ('148', 'M12', 'USR18003', null, '2018-10-25 16:23:40');
INSERT INTO `tables` VALUES ('149', 'M13', 'USR17027', null, '2018-10-25 17:06:30');
INSERT INTO `tables` VALUES ('150', 'M14', null, null, null);
INSERT INTO `tables` VALUES ('151', 'M15', null, null, null);
INSERT INTO `tables` VALUES ('152', 'M16', 'USR17024', null, '2018-10-26 13:03:30');
INSERT INTO `tables` VALUES ('153', 'M17', null, null, null);
INSERT INTO `tables` VALUES ('154', 'M18', null, null, null);
INSERT INTO `tables` VALUES ('155', 'M19', 'USR17025', null, '2018-10-25 17:07:56');
INSERT INTO `tables` VALUES ('156', 'M20', null, null, null);
INSERT INTO `tables` VALUES ('157', 'M21', null, null, null);
INSERT INTO `tables` VALUES ('158', 'N01', null, null, null);
INSERT INTO `tables` VALUES ('159', 'N02', 'USR17017', null, '2018-10-26 12:59:38');
INSERT INTO `tables` VALUES ('160', 'N03', null, null, null);
INSERT INTO `tables` VALUES ('161', 'N04', null, null, null);
INSERT INTO `tables` VALUES ('162', 'N05', null, null, null);
INSERT INTO `tables` VALUES ('163', 'N06', null, null, null);
INSERT INTO `tables` VALUES ('164', 'N07', null, null, null);
INSERT INTO `tables` VALUES ('165', 'N08', null, null, null);
INSERT INTO `tables` VALUES ('166', 'N09', null, null, null);
INSERT INTO `tables` VALUES ('167', 'N10', null, null, null);
INSERT INTO `tables` VALUES ('168', 'N11', null, null, null);
INSERT INTO `tables` VALUES ('169', 'N12', null, null, null);
INSERT INTO `tables` VALUES ('170', 'N13', null, null, null);
INSERT INTO `tables` VALUES ('171', 'N14', null, null, null);
INSERT INTO `tables` VALUES ('172', 'N15', null, null, null);
INSERT INTO `tables` VALUES ('173', 'P01', null, null, null);
INSERT INTO `tables` VALUES ('174', 'P02', null, null, null);
INSERT INTO `tables` VALUES ('175', 'P03', null, null, null);
INSERT INTO `tables` VALUES ('176', 'P04', null, null, null);
INSERT INTO `tables` VALUES ('177', 'P05', null, null, null);
INSERT INTO `tables` VALUES ('178', 'P06', null, null, null);
INSERT INTO `tables` VALUES ('179', 'Q01', 'USR17081', null, '2018-10-25 17:06:52');
INSERT INTO `tables` VALUES ('180', 'Q02', null, null, null);
INSERT INTO `tables` VALUES ('181', 'Q03', null, null, null);
INSERT INTO `tables` VALUES ('182', 'Q04', 'USR17080', null, '2018-10-25 17:08:29');
INSERT INTO `tables` VALUES ('183', 'Q05', null, null, null);
INSERT INTO `tables` VALUES ('184', 'Q06', null, null, null);
INSERT INTO `tables` VALUES ('185', 'Q07', 'USR17022', null, '2018-10-25 16:09:52');
INSERT INTO `tables` VALUES ('186', 'Q08', null, null, null);
INSERT INTO `tables` VALUES ('187', 'Q09', null, null, null);
INSERT INTO `tables` VALUES ('188', 'Q10', null, null, null);
INSERT INTO `tables` VALUES ('189', 'Q11', null, null, null);
INSERT INTO `tables` VALUES ('190', 'Q12', null, null, null);
INSERT INTO `tables` VALUES ('191', 'Q13', null, null, null);
INSERT INTO `tables` VALUES ('192', 'Q14', 'USR17020', null, '2018-10-25 16:10:22');
INSERT INTO `tables` VALUES ('193', 'Q15', 'USR17018', null, '2018-10-25 16:10:34');
INSERT INTO `tables` VALUES ('194', 'Q16', null, null, null);
INSERT INTO `tables` VALUES ('195', 'Q17', null, null, null);
INSERT INTO `tables` VALUES ('196', 'Q18', null, null, null);
INSERT INTO `tables` VALUES ('197', 'Q19', null, null, null);
INSERT INTO `tables` VALUES ('198', 'R01', null, null, '2018-10-26 12:55:18');
INSERT INTO `tables` VALUES ('199', 'R02', 'USR17016', null, '2018-10-26 12:56:40');
INSERT INTO `tables` VALUES ('200', 'R03', null, null, null);
INSERT INTO `tables` VALUES ('201', 'R04', null, null, null);
INSERT INTO `tables` VALUES ('202', 'R05', 'USR17003', null, '2018-10-26 12:57:36');
INSERT INTO `tables` VALUES ('203', 'R06', null, null, null);
INSERT INTO `tables` VALUES ('204', 'R07', null, null, '2018-10-26 12:55:37');
INSERT INTO `tables` VALUES ('205', 'R08', null, null, null);
INSERT INTO `tables` VALUES ('206', 'R09', null, null, null);
INSERT INTO `tables` VALUES ('207', 'R10', null, null, null);
INSERT INTO `tables` VALUES ('208', 'R11', null, null, null);
INSERT INTO `tables` VALUES ('209', 'R12', null, null, null);
INSERT INTO `tables` VALUES ('210', 'R13', null, null, null);
INSERT INTO `tables` VALUES ('211', 'R14', null, null, null);

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'Admin', 'admin@admin.com', null, '$2y$12$2vGbIhJYCzMSNUj9UwFgkOo3inQ6Do6RVGykimeZX4gKckIgvjaze', null, '1', '2018-10-15 22:26:29', '2018-10-15 22:26:35');
INSERT INTO `users` VALUES ('2', 'Guest', 'guest@cosco-ogs.com', null, '$12$2vGbIhJYCzMSNUj9UwFgkOo3inQ6Do6RVGykimeZX4gKckIgvjaze', null, '0', '2018-10-19 11:19:49', '2018-10-19 11:19:52');

-- ----------------------------
-- Table structure for `virtualservers`
-- ----------------------------
DROP TABLE IF EXISTS `virtualservers`;
CREATE TABLE `virtualservers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_server` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vm_on` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hostname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ram` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hardisk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `os` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of virtualservers
-- ----------------------------
INSERT INTO `virtualservers` VALUES ('1', 'VIR-01', 'SRV-26', 'Active Directory', 'NTCIDD01', '172.26.5.131', '2', '130', 'Windows Server 2008 R2 Standard', '(AP/ntfidbadmin) CSLI@jkt48', 'Server diupgrade 29/10/2018 ke Windows Server 2016 Standard', '2', '2018-10-17 08:33:13', '2018-10-29 09:04:17');
INSERT INTO `virtualservers` VALUES ('2', 'VIR-02', 'SRV-15', 'Open Fire 4.2.3', '-', '172.26.5.149', '3', '100', 'Ubuntu Server 16.04', '(root) @itguard52@', '-', '1', '2018-10-19 10:15:01', '2018-10-19 10:15:01');
INSERT INTO `virtualservers` VALUES ('3', 'VIR-03', 'SRV-15', 'Server Remote GP', 'VM-REMOTEGP', '172.26.5.195', '4', '80', 'Windows Server 2008 R2 Standard', '(administrator) itGuard52', '1. Username : gtm1\n    Password  : Ogsjkt_987\n2. Username : gtm2\n    Password  : Ogsjkt_987\n3. Username : sby1', '1', '2018-10-19 10:18:31', '2018-10-19 10:18:31');
INSERT INTO `virtualservers` VALUES ('4', 'VIR-04', 'SRV-15', 'Symantec Antivirus Server', 'SRV-17', '172.26.5.163', '3', '100', 'Windows Server 2008 R2 Standard', '(administrator) @itGuard52@', 'Sudah tidak digunakan, antivirus ditarik ke cina semua.', '2', '2018-10-19 10:23:04', '2018-10-22 12:08:54');
INSERT INTO `virtualservers` VALUES ('5', 'VIR-05', 'SRV-01', 'E-Shipping Logistic Server', 'LogisticServer', '172.26.5.217', '8', '500', 'Windows Server 2008 R2 Standard', '-', '-', '1', '2018-10-22 11:59:31', '2018-10-22 11:59:31');
INSERT INTO `virtualservers` VALUES ('6', 'VIR-06', 'SRV-01', 'Web Server coscoshipping.id', 'development', '172.26.5.210', '2', '20', 'Linux Debian 9', 'Ogsjkt_edp', '-', '1', '2018-10-22 12:02:30', '2018-10-22 12:06:58');
INSERT INTO `virtualservers` VALUES ('7', 'VIR-07', 'SRV-23', 'Active Directory', 'NTCIDD01', '172.26.5.131', '4', '160', 'Windows Server 2016 Standard', '(ntfidbadmin)CSLI@jkt48', '-', '1', '2018-10-24 09:49:28', '2018-10-29 09:26:08');
