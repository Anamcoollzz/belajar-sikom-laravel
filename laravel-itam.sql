/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50721
Source Host           : 127.0.0.1:3306
Source Database       : laravel-itam

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2018-11-11 06:08:14
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
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of clients
-- ----------------------------
INSERT INTO `clients` VALUES ('1', 'USR17001', 'Shinta Miranti', 'hrga', 'shintami/Shinta Miranti', 'Ogsjkt_shin', 'shinta@cosco-ogs.com', '6605', 'Resign on 24/08/2018', '0', null, null);
INSERT INTO `clients` VALUES ('2', 'USR17002', 'Wandi Gultom', '25', 'wandigu/Wandi Gultom(coscoid)', 'Ogsjkt_wandi', 'wandi@cosco-ogs.com/wandigu@coscon.com', '6608', null, '1', null, null);
INSERT INTO `clients` VALUES ('3', 'USR17003', 'Taty Tuswandi', 'fin', '', '', '', '6818', null, '1', null, null);
INSERT INTO `clients` VALUES ('4', 'USR17004', 'Agus Adiyanto', '26', 'agusad/Agus Adiyanto', 'Ogsjkt_agus', 'agusad@coscon.com; agusadi@cosco-ogs.com', '6205', null, '1', null, null);
INSERT INTO `clients` VALUES ('5', 'USR17005', 'Rizka Damyati', '27', 'rizkadw/Rizka Dwimyati (CoscoID)', 'Ogsjkt_riz', 'rizka@cosco-ogs.com', '6723', null, '1', null, null);
INSERT INTO `clients` VALUES ('6', 'USR17006', 'Yosep', '28', 'yosep/Yosep (coscoid)', 'Ogsjkt_yos', 'yosep@coscon.com; yosep@cosco-ogs.com', '6202', null, '1', null, null);
INSERT INTO `clients` VALUES ('7', 'USR17007', 'Indrawati', 'hrga', 'indraha/Indrawati Hasan(coscoid)', 'Ogsjkt_wati', 'indraha@coscon.com', '', null, '0', null, null);
INSERT INTO `clients` VALUES ('8', 'USR17008', 'Risya Saffana Yasin', 'hrga', 'risyasy/Risya Saffana Yasin(CoscoID)', 'Ogsjkt_ris', 'risya@cosco-ogs.com', '6881', null, '1', null, null);
INSERT INTO `clients` VALUES ('9', 'USR17009', 'Nurfanida Putri Hikmalia', 'logagn', 'nurfaph/ Nurfanida Putri Hikmalia (Cosco ID)', 'Ogsjkt_put', 'nurfanida@cosco-ogs.com', '6717', null, '1', null, null);
INSERT INTO `clients` VALUES ('10', 'USR17010', 'Teru Weenars', 'logagn', 'teruwe/Teru Wennars', 'Ogsjkt_teru', 'teruwe@coscon.com; teru@cosco-ogs.com', '6203', null, '1', null, null);
INSERT INTO `clients` VALUES ('11', 'USR17011', 'Debby Ariance', 'logagn', '', '', 'debby@cosco-ogs.com', '6204', null, '1', null, null);
INSERT INTO `clients` VALUES ('12', 'USR17012', 'Hendy', 'logagn', 'hendywi/Hendy Widjaja(coscoid)', 'Ogsjkt_hendy', 'hendywi@coscon.com; hendy@cosco-ogs.com', '6006', 'Resign on 1 Feb 2018', '0', null, null);
INSERT INTO `clients` VALUES ('13', 'USR17013', 'Jenny Chandra', 'mng', 'jennych/Jenny Chandra(coscoid)', '', 'jennych@coscon.com; jennych@cosco-ogs.com', '6805', null, '1', null, null);
INSERT INTO `clients` VALUES ('14', 'USR17014', 'Ian Yuliansyah', 'logagn', 'ianyu/Ian Yuliansyah(coscoid)', 'Ogsjkt_ian', 'ianyu@coscon.com; ian@cosco-ogs.com', '6211', null, '1', null, null);
INSERT INTO `clients` VALUES ('15', 'USR17015', 'Ambar Agustina', 'fin', 'ambarag/Ambar Agustina (CoscoID)', '', 'ambarag@coscon.com', '6819', null, '1', null, null);
INSERT INTO `clients` VALUES ('16', 'USR17016', 'Kusretno Wulansari', 'fin', 'kusrewu/Kusretno Wulansari (CoscoID)', '', 'kusrewu@coscon.com', '6819', null, '1', null, null);
INSERT INTO `clients` VALUES ('17', 'USR17017', 'Ovilia Yofina Yunafis', 'hrga', '', '', 'fina@cosco-ogs.com', '6000', null, '1', null, null);
INSERT INTO `clients` VALUES ('18', 'USR17018', 'Johan', 'exp', 'johands/Johan Dwi Satrio (coscoid)', '', 'johands@coscon.com; johan@cosco-ogs.com', '6714', null, '1', null, null);
INSERT INTO `clients` VALUES ('19', 'USR17019', 'Muhamad Muslih Arif', 'ecd', 'musliar/Muhamad Muslih Arif(CoscoID)', 'Ogsjkt_mus', 'musliar@coscon.com; arif@cosco-ogs.com', '6303', 'Resign on 24/08/2018', '0', null, null);
INSERT INTO `clients` VALUES ('20', 'USR17020', 'Novi Zaelani', 'exp', 'noviza/Novi Zaelani(coscoid)', 'Ogsjkt_novi', 'noviza@coscon.com; noviza@cosco-ogs.com', '6714', null, '1', null, null);
INSERT INTO `clients` VALUES ('21', 'USR17021', 'Gatot Bastian', 'imp', 'gatotba/Gatot Bastian (Cosco ID)', 'Ogsjkt_gatot', '', '', null, '0', null, null);
INSERT INTO `clients` VALUES ('22', 'USR17022', 'Riyanti', 'imp', 'riyanti/Riyanti (coscoid)', 'Ogsjkt_yanti', 'riyanti@coscon.com; riyanti@cosco-ogs.com', '6715', null, '1', null, null);
INSERT INTO `clients` VALUES ('23', 'USR17023', 'Suhartini', 'imp', 'suhartin/Suhartini(coscoid)', 'Ogsjkt_tini', 'suhartin@coscon.com; suhartini@cosco-ogs.com', '6715', null, '0', null, null);
INSERT INTO `clients` VALUES ('24', 'USR17024', 'Freddy', 'gm', 'freddych/Freddy Chen', 'Ogsjkt_freddy', 'freddych@coscon.com; freddych@cosco-ogs.com', '6005', null, '1', null, null);
INSERT INTO `clients` VALUES ('25', 'USR17025', 'Hendra ', 'gm', '', '', 'hendra@gpi-g.com', '6002', null, '1', null, null);
INSERT INTO `clients` VALUES ('26', 'USR17026', 'Parikesit Pranajaya', 'imp', 'parikepr/Parikesit Pranajaya (CoscoID)', 'Ogsjkt_par', 'parikepr@coscon.com; parikesit@cosco-ogs.com', '6715', null, '1', null, null);
INSERT INTO `clients` VALUES ('27', 'USR17027', 'Cpt. Shi Peng Fei', 'gm', 'shipf/Shi PengFei (coscoid)', '', 'shipf@coscon.com; shipf@cosco-ogs.com', '6001', null, '1', null, null);
INSERT INTO `clients` VALUES ('28', 'USR17028', 'CGM', 'gm', 'cgm/Chen Gao Ming (Coscoid)', 'Ogsjkt_chen', 'cgm@coscon.com; cgm@cosco-ogs.com', '6008', 'Non Active on March', '0', null, null);
INSERT INTO `clients` VALUES ('29', 'USR17029', 'Silvia Hadiwidjadja', 'mng', 'silviaha/Silvia Hadiwidjaja (coscoid)', 'Ogsjkt_silvi', 'silviaha@coscon.com; silvi@cosco-ogs.com', '6010', null, '1', null, null);
INSERT INTO `clients` VALUES ('30', 'USR17030', 'Pitter', 'mng', 'pitter/Pitter (CoscoID)', 'Ogsjkt_pit', 'pitter@coscon.com; pitter@cosco-ogs.com', '6009', null, '1', null, null);
INSERT INTO `clients` VALUES ('31', 'USR17031', 'Uswanur Rizal', 'mng', 'uswanri/Uswanur Rizal(coscoid)', '', 'uswanri@coscon.com; rizal@cosco-ogs.com', '6011', null, '1', null, null);
INSERT INTO `clients` VALUES ('32', 'USR17032', 'Ibnu Setiawan', 'mng', 'ibnuse/Ibnu Setiawan (Cosco-Cscl)', 'Ogsjkt_ibnu', 'ibnuse@coscon.com; ibnu@cosco-ogs.com', '6560', null, '0', null, null);
INSERT INTO `clients` VALUES ('33', 'USR17033', 'Ronny Rachman', 'mng', 'ronnyra/Ronny Rachman (coscoid)', '', 'ronnyra@coscon.com; ronny@cosco-ogs.com', '6104', 'Resign on 1 Feb 2018', '0', null, null);
INSERT INTO `clients` VALUES ('34', 'USR17034', 'Malik Akbar', 'imp', 'malikak/Malik Akbar(coscoid)', '', 'malikak@coscon.com;malik@cosco-ogs.com', '6036', null, '1', null, null);
INSERT INTO `clients` VALUES ('35', 'USR17035', 'Ryan Heqmawan', 'imp', 'ryanhe/Ryan Heqmawan', '', 'ryanhe@coscon.com; ryan@cosco-ogs.com', '6703', null, '0', null, null);
INSERT INTO `clients` VALUES ('36', 'USR17036', 'Yan Rahman', 'imp', 'yanra/Yan Rahman(Cosco ID)', 'Ogsjkt_rah', 'yanra@coscon.com; yan@cosco-ogs.com', '6704', null, '1', null, null);
INSERT INTO `clients` VALUES ('37', 'USR17037', 'Hariyadi', 'exp', 'hariyadi/Hariyadi(coscoid)', 'Ogsjkt_adi', 'hariyadi@coscon.com; hariyadi@cosco-ogs.com', '6704', null, '1', null, null);
INSERT INTO `clients` VALUES ('38', 'USR17038', 'Semmy Oktaviandi', 'imp', 'semmyok/Semmy Okafindi (Cosco ID)', '', 'semmyok@coscon.com; semmy@cosco-ogs.com', '6816', null, '1', null, null);
INSERT INTO `clients` VALUES ('39', 'USR17039', 'Tri Murtini', 'imp', 'trimu/Tri Murtini(coscoid)', 'Ogsjkt_tri', 'trimu@coscon.com; tri@cosco-ogs.com', '6037', null, '1', null, null);
INSERT INTO `clients` VALUES ('40', 'USR17040', 'Herman Sofyan', 'imp', 'hermanso/Herman Sofian (cosco-cscl)', 'Ogsjkt_herman', 'hermanso@coscon.com; herman@cosco-ogs.com', '6035', null, '0', null, null);
INSERT INTO `clients` VALUES ('41', 'USR17041', 'Mufit Faisal Mubalighin', 'exp', 'mufitfm/Mufit Faisal Mubalighin (coscoid)', 'Ogsjkt_mufit', 'mufitfm@coscon.com; mufit@cosco-ogs.com', '6250', null, '1', null, null);
INSERT INTO `clients` VALUES ('42', 'USR17042', 'Ridho Wahyudi', 'exp', 'ridowaa/Rido Wahyudi Aditia (CoscoID)', '', 'ridowaa@coscon.com; rido@cosco-ogs.com', '6722', 'Resign On 15/08/2018', null, null, null);
INSERT INTO `clients` VALUES ('43', 'USR17043', 'Ryan Wijaya', 'fin', '', '0', null, null, null, null, null, null);
INSERT INTO `clients` VALUES ('44', 'USR17044', 'Agustini', 'exp', 'ryanwi/Ryan Wijaya(CoscoID)', '', 'ryanwi@coscon.com; ryan.wijaya@cosco-ogs.com', '6806', null, '1', null, null);
INSERT INTO `clients` VALUES ('45', 'USR17045', 'Dwi Indah Wahyuni', 'exp', 'agustini/Agustini (CoscoID)', 'Ogsjkt_agu', 'agustini@cosco-ogs.com; agustini@coscon.com', '6713', null, '1', null, null);
INSERT INTO `clients` VALUES ('46', 'USR17046', 'Farid Tontio', 'exp', 'indahwa/Indah Wahyuni(coscoid)', 'Ogsjkt_cntr', 'indahwa@coscon.com; indah@cosco-ogs.com', '6032', null, '1', null, null);
INSERT INTO `clients` VALUES ('47', 'USR17047', 'Muhammad Badrun', 'exp', 'faridto/Farid Tontio(coscoid)', 'Azahra19', 'faridto@coscon.com; farid@cosco-ogs.com', '6033', null, '1', null, null);
INSERT INTO `clients` VALUES ('48', 'USR17048', 'Ginanjar Saputra ', 'exp', 'badrunma/Muhammad Badrun (CoscoID)', 'Ogsjkt_muhammad', 'badrunma@coscon.com; badrun@cosco-ogs.com', '6710', null, '1', null, null);
INSERT INTO `clients` VALUES ('49', 'USR17049', 'Kesuma Dewi', 'exp', 'ginansa/Ginanjar Saputra (coscoid)', 'Ogsjkt_ginan', 'ginansa@coscon.com; ginanjar@cosco-ogs.com', '6711', null, '0', null, null);
INSERT INTO `clients` VALUES ('50', 'USR17050', 'Wulanda Dwi Aryani', 'exp', 'kesumde/Kesuma Dewi(coscoid)', 'Ogsjkt_dewi', 'kesumde@coscon.com; dewikesuma@cosco-ogs.com', '6720', null, '1', null, null);
INSERT INTO `clients` VALUES ('51', 'USR17051', 'Mucahrom Arief Laksono', 'exp', 'wulanda/Wulandari Dwi Aryani(coscoid)', 'Aryani_wulan', 'wulanda@coscon.com; wulan@cosco-ogs.com', '6712', null, '0', null, null);
INSERT INTO `clients` VALUES ('52', 'USR17052', 'Anggit Rezqiatma Putra ', 'it', 'mucharal/Mucharom Arief Laksono (CoscoID)', 'Ogsjkt_romi', 'mucharal@coscon.com; mucharom@cosco-ogs.com', '6713', null, '0', null, null);
INSERT INTO `clients` VALUES ('53', 'USR17053', 'Nurpalah', 'it', 'anggitrp/Anggit Rezqiatma Putra (coscoid)', 'Ogsjkt_anggit', 'anggitrp@coscon.com; anggit@cosco-ogs.com', '6602', null, '1', null, null);
INSERT INTO `clients` VALUES ('54', 'USR17054', 'Jos Petra Manalu', 'it', 'nurfalah/Nurfalah (coscoid)', '', 'nurfalah@coscon.com; falah@cosco-ogs.com', '6602', null, '1', null, null);
INSERT INTO `clients` VALUES ('55', 'USR17055', 'Suci Rachmawati', 'fin', 'jospetra/Jospetra (Cosco ID)', '', 'jospetra@coscon.com; jos.petra@cosco-ogs.com', '6602', null, '1', null, null);
INSERT INTO `clients` VALUES ('56', 'USR17056', 'Tiara Teffany', 'fin', 'sucira/Suci Rachmawati (coscoid)', 'Ogsjkt_suci', 'sucira@coscon.com; suci@cosco-ogs.com', '6810', null, '1', null, null);
INSERT INTO `clients` VALUES ('57', 'USR17057', 'Reni Marlina', 'fin', 'tiara/Tiara (coscoid)', 'Ogsjkt_tiara', 'tiara@coscon.com; tiara@cosco-ogs.com', '6820', null, '1', null, null);
INSERT INTO `clients` VALUES ('58', 'USR17058', 'Rayfan Sanjaya', 'fin', 'renima/Reni Marlina(coscoid)', 'Ogsjkt_reni', 'renima@coscon.com; reni@cosco-ogs.com', '6820', null, '1', null, null);
INSERT INTO `clients` VALUES ('59', 'USR17059', 'Komarudin', 'fin', 'rayfansa/Rayfan sanjaya (CoscoID)', '', 'rayfansa@coscon.com; rayfan@cosco-ogs.com', '6811', null, '1', null, null);
INSERT INTO `clients` VALUES ('60', 'USR17060', 'Jamil', 'fin', 'komaru/Komarudin (CoscoID)', 'Ogsjkt_komar', 'komaru@coscon.com; komar@cosco-ogs.com', '6812', null, '1', null, null);
INSERT INTO `clients` VALUES ('61', 'USR17061', 'Reva Mardiani Putri', '', 'jamil/Jamil(coscoid)', 'Ogsjkt_jam', 'jamil@coscon.com; jamil@cosco-ogs.com', '6807', null, '1', null, null);
INSERT INTO `clients` VALUES ('62', 'USR17062', 'Agnes Retno Utami', 'fin', 'revama/Reva Mardian (CoscoID)', 'Ogsjkt_rev', 'revama@coscon.com; reva@cosco-ogs.com', '6807', null, '0', null, null);
INSERT INTO `clients` VALUES ('63', 'USR17063', 'Dini Fitria', 'fin', 'agnesre/Agnes Retno(coscoid)', 'Ogsjkt_agnes', 'agnesre@coscon.com; agnes@cosco-ogs.com', '6808', null, '1', null, null);
INSERT INTO `clients` VALUES ('64', 'USR17064', 'Handri Prasetya', 'fin', 'dinifit/Dini Fitria (CoscoID)', 'Ogsjkt_din', 'dinifit@coscon.com; dini@cosco-ogs.com', '6808', null, '1', null, null);
INSERT INTO `clients` VALUES ('65', 'USR17065', 'Zang XuanWei', 'gm', 'handripr/Handri Prasetya (CoscoID)', 'Ogsjkt_han', 'handripr@coscon.com; handri@cosco-ogs.com', '6809', null, '1', null, null);
INSERT INTO `clients` VALUES ('66', 'USR17066', 'Fakron Najib', 'fin', 'zangxw/Zang XuanWei (coscoid)', 'Ogsjkt_zang02', 'zangxw@coscon.com; zangxw@cosco-ogs.com', '6003', null, '1', null, null);
INSERT INTO `clients` VALUES ('67', 'USR17067', 'Iwan Setiawan', 'fin', 'fakhrna/Fakhron Najib(coscoid)', 'Ogsjkt_fan', 'fakhrna@coscon.com;najib@cosco-ogs.com', '6804', null, '1', null, null);
INSERT INTO `clients` VALUES ('68', 'USR17068', 'Made Septiami Ariani', 'fin', 'iwanse/Iwan Setiawan (coscoid)', 'Ogsjkt_iwan', 'iwanse@coscon.com; iwan@cosco-ogs.com', '6905', null, '1', null, null);
INSERT INTO `clients` VALUES ('69', 'USR17069', 'Robert Sanjaya', 'fin', 'septear/Made Septiami Ariani(coscoid)', '', 'septear@coscon.com; ami@cosco-ogs.com', '6821', null, '1', null, null);
INSERT INTO `clients` VALUES ('70', 'USR17070', 'Agus Saptono', 'fin', 'robersa/Robert Sanjaya (coscoid)', 'Ogsjkt_robert', 'robersa@coscon.com; sanjaya@cosco-ogs.com', '6707', null, '1', null, null);
INSERT INTO `clients` VALUES ('71', 'USR17071', 'Tauresto Yogo', 'fin', 'agussa/Agus Saptono(coscoid)', 'Ogsjkt_agus7no~', 'agussa@coscon.com; agussaptono', '6801', null, '1', null, null);
INSERT INTO `clients` VALUES ('72', 'USR17072', 'Stefanus Enok', 'fin', 'taureyu/Tauresto Yogo Utomo (Cosco ID)', 'Ogsjkt_t4u', 'taureyu@coscon.com; tauresto@cosco-ogs.com', '6805', null, '1', null, null);
INSERT INTO `clients` VALUES ('73', 'USR17073', 'Saeful Bahri (Ade)', 'fin', 'stefanen/Stefanus Enok (Cosco ID)', '', 'stefanen@coscon.com; stefanus@cosco-ogs.com', '6808', null, '1', null, null);
INSERT INTO `clients` VALUES ('74', 'USR17074', 'Trisno Wibowo', 'fin', 'saefuba/Saeful Bahri(coscoid)', 'Ogsjkt_ade', 'saefuba@coscon.com; saepulbahri@cosco-ogs.com', '6802', null, '1', null, null);
INSERT INTO `clients` VALUES ('75', 'USR17075', 'Aulia Akbar (Pak Oki)', 'mng', 'trisnwi/Trisno Wibowo(coscoid)', 'Ogsjkt_trisno', 'trisnwi@coscon.com; trisno@cosco-ogs.com', '6803', null, '1', null, null);
INSERT INTO `clients` VALUES ('76', 'USR17076', 'Mega Patricia', 'sls', 'auliaha/Aulia Akbar Harahap', 'Ogsjkt_aulia', 'auliaha@coscon.com; oki@cosco-ogs.com', '6859', null, '1', null, null);
INSERT INTO `clients` VALUES ('77', 'USR17077', 'Gilang Syahbana', 'sls', 'megapa/Mega Patricia Kudamassa(CoscoID)', 'Ogsjkt_mega', 'megapa@coscon.com; mega@cosco-ogs.com', '6018', null, '1', null, null);
INSERT INTO `clients` VALUES ('78', 'USR17078', 'Tohonan Winra (Nando)', 'sls', 'gilangsy/gilang syahbana(coscoid)', 'Ogsjkt_syah', 'gilangsy@coscon.com; gilang@cosco-ogs.com', '6019', null, '1', null, null);
INSERT INTO `clients` VALUES ('79', 'USR17079', 'Adi S Chandra', 'sls', 'tohonwi/Tohonan Winra(coscoid)', 'Ogsjkt_nando', 'tohonwi@coscon.com; nando@cosco-ogs.com', '6012', null, '1', null, null);
INSERT INTO `clients` VALUES ('80', 'USR17080', 'Sofian Simanulang', 'exp', 'adisch/Adi S. Chandra (coscoid)', 'Ogsjkt_adi', 'adisch@coscon.com; adi@cosco-ogs.com', '6020', null, '0', null, null);
INSERT INTO `clients` VALUES ('81', 'USR17081', 'Faisal Reza', 'imp', 'sofima/Sofian Manulang (coscoid)', 'Ogsjkt_sofi', 'sofima@coscon.com; sofi@cosco-ogs.com', '6704', null, '1', null, null);
INSERT INTO `clients` VALUES ('82', 'USR17082', 'Hakimi', 'sls', 'faisalre/Faisal Reza(CoscoID)', 'Ogsjkt_faisal', 'faisalre@coscon.com; faisal@cosco-ogs.com', '6718', null, '1', null, null);
INSERT INTO `clients` VALUES ('83', 'USR17083', 'Jenny Lee', 'sls', 'hakimah/Hakimi Ahmad (coscoid)', 'Ogsjkt_hakimi', 'hakimah@coscon.com', '', null, '0', null, null);
INSERT INTO `clients` VALUES ('84', 'USR17084', 'Susanna Oktavia', 'sls', 'jennli/Jenny Lee(CoscoID)', 'Ogsjkt_jenn', 'jennli@coscon.com; jenny@cosco-ogs.com', '6016', null, '1', null, null);
INSERT INTO `clients` VALUES ('85', 'USR17085', 'Sumarni Chia', 'sls', 'susannao/Susanna Oktavia(coscoid)', 'Ogsjkt_susan', 'susannao@coscon.com; octa@cosco-ogs.com', '6015', null, '1', null, null);
INSERT INTO `clients` VALUES ('86', 'USR17086', 'Shelvia Tanmiya', 'mktcomm', 'sumarch/Sumarni Chia (Cosco-Cscl)', 'Ogsjkt_marni', 'sumarch@coscon.com; marni@cosco-ogs.com', '6014', null, '1', null, null);
INSERT INTO `clients` VALUES ('87', 'USR17087', 'Dendi Yahya', 'imp', 'shelvita/Shelvia Tanmiya (CoscoID)', 'Ogsjkt_shel', 'shelvita@coscon.com; shelvia@cosco-ogs.com', '6348', null, '0', null, null);
INSERT INTO `clients` VALUES ('88', 'USR17088', 'Edi Susanto', 'mng', 'dendiya/Dendi Yahya (coscoid)', 'Ogsjkt_dendi', 'dendiya@coscon.com', '', null, '0', null, null);
INSERT INTO `clients` VALUES ('89', 'USR17089', 'Winily Leo', 'mng', 'eddysu/Eddy Susanto (coscoid)', '', 'eddysu@coscon.com; eddytan@cosco-ogs.com', '6767', null, '1', null, null);
INSERT INTO `clients` VALUES ('90', 'USR17090', 'Joy Hicklyn Situmorang', 'sls', 'winily/Winily (cosco-cscl)', 'Ogsjkt_win', 'winily@coscon.com; winily@cosco-ogs.com', '6825', null, '1', null, null);
INSERT INTO `clients` VALUES ('91', 'USR17091', 'Salman Al Farizi', 'sls', 'joysi/Joy Hicklyn Situmorang (CoscoID)', 'Ogsjkt_joy', 'joysi@coscon.com; joy@cosco-ogs.com', '6017', null, '1', null, null);
INSERT INTO `clients` VALUES ('92', 'USR17092', 'Riana Panjaitan', 'sls', 'salmaal/Salman Al Farizi(coscoid)', 'Ogsjkt_salman', 'salmaal@coscon.com; salman@cosco-ogs.com', '6013', null, '1', null, null);
INSERT INTO `clients` VALUES ('93', 'USR17093', 'Wahyu Lestari', 'mng', 'rianapa/Riana Panjaitan (CoscoID)', 'Ogsjkt_ria', 'rianapa@coscon.com; riana@cosco-ogs.com', '6716', null, '1', null, null);
INSERT INTO `clients` VALUES ('94', 'USR17094', 'Arsi Arizal ', 'cs', 'wahyule/Wahyu Lestari (cosco-cscl)', '', 'wahyule@coscon.com; wahyu@cosco-ogs.com', '6791', null, '1', null, null);
INSERT INTO `clients` VALUES ('95', 'USR17095', 'Citra Damayanti', 'cs', 'arsiar/Arsi Arizal (cosco-cscl)', 'Ogsjkt_arsi', 'arsiar@coscon.com; arsi@cosco-ogs.com', '6329', null, '1', null, null);
INSERT INTO `clients` VALUES ('96', 'USR17096', 'Nia Permata Esy', 'cs', 'citrada/Citra Damayanti (Cosco-Cscl)', 'Ogsjkt_citra', 'citrada@coscon.com; citra@cosco-ogs.com', '6330', null, '1', null, null);
INSERT INTO `clients` VALUES ('97', 'USR17097', 'Jeffri Agnes', 'cs', 'niape/Nia Permata Esy', 'Ogsjkt_nia', 'niape@coscon.com; nia@cosco-ogs.com', '6331', null, '1', null, null);
INSERT INTO `clients` VALUES ('98', 'USR17098', 'Dhea Miranti', 'cs', 'jefriag/Jefri Agnes (coscoid)', '', 'jefriag@coscon.com; jefri@cosco-ogs.com', '6031', null, '1', null, null);
INSERT INTO `clients` VALUES ('99', 'USR17099', 'Yulia Fitriani', 'cs', 'dheami/Dhea Miranti(coscoid)', 'Dhea_miranti', 'dheami@coscon.com; dhea@cosco-ogs.com', '6026', null, '1', null, null);
INSERT INTO `clients` VALUES ('100', 'USR17100', 'Yomi Romaelia ', 'cs', 'yuliafi/Yulia Fitriani(coscoid)', 'Ogsjkt_yulia', 'yuliafi@coscon.com; yulia@cosco-ogs.com', '6027', null, '1', null, null);
INSERT INTO `clients` VALUES ('101', 'USR17101', 'Ernando', 'cs', 'yomiro/Yomi Romaelia (cosco-cscl)', '', 'yomiro@coscon.com; yomi@cosco-ogs.com', '6025', null, '1', null, null);
INSERT INTO `clients` VALUES ('102', 'USR17102', 'Tabita Princesia', 'cs', 'ernando/Ernando (cosco-cscl)', 'Ogsjkt_ernan', 'ernando@coscon.com; ernando@cosco-ogs.com', '6028', null, '1', null, null);
INSERT INTO `clients` VALUES ('103', 'USR17103', 'Cindy Isabella Poernama ', 'sls', 'tabitapr/ Tabita Princesia (CoscoID)', 'Ogsjkt_tabi', 'tabitapr@coscon.com; tabita@cosco-ogs.com', '6029', null, '0', null, null);
INSERT INTO `clients` VALUES ('104', 'USR17104', 'Ellen Azwa Safrina', 'cs', 'cindypo/Cindy Poernama (Cosco-Cscl)', 'Ogsjkt_cindy', 'cindypo@coscon.com; cindy@cosco-ogs.com', '6030', null, '1', null, null);
INSERT INTO `clients` VALUES ('105', 'USR17105', 'Ernitta Fransiska ', 'cs', 'ellenas/Ellen Azwa Safrina (Cosco-Cscl)', 'Ogsjkt_ellen', 'ellenas@coscon.com; ellen@cosco-ogs.com', '6327', null, '0', null, null);
INSERT INTO `clients` VALUES ('106', 'USR17106', 'Jully Fransisca', 'mng', 'ernitfr/Ernita Fransiska (Cosco-Cscl)', 'Ogsjkt_erni', 'ernitfr@coscon.com; ernita@cosco-ogs.com', '6328', null, '1', null, null);
INSERT INTO `clients` VALUES ('107', 'USR17107', 'Teuku Rahmad', 'trf', 'jullyfr/Jully Fransisca(coscoid)', 'Cosco_jully', 'jullyfr@coscon.com; jully@cosco-ogs.com', '6345', null, '1', null, null);
INSERT INTO `clients` VALUES ('108', 'USR17108', 'Rima Yapa Perangin-angin', 'trf', 'teukura/Teuku Rahmad(coscoid)', 'Ogsjkt_rahmad', 'teukura@coscon.com; rachmad@cosco-ogs.com', '6038', null, '1', null, null);
INSERT INTO `clients` VALUES ('109', 'USR17109', 'Setyaningsih', 'trf', 'rimayp/Rima Yapa Perangin-angin', 'Ogsjkt_rima', 'rimayp@coscon.com; rima@cosco-ogs.com', '6320', null, '1', null, null);
INSERT INTO `clients` VALUES ('110', 'USR17110', 'Rizki Rachmawati', 'cs', 'setya/Setyaningsih(CoscoID)', 'Ogsjkt_set', 'setya@coscon.com; ningsih@cosco-ogs.com', '6339', null, '0', null, null);
INSERT INTO `clients` VALUES ('111', 'USR17111', 'Dinar Putri Pangestu', 'cs', 'rizkira/Rizki Rachmawati (CoscoID)', 'Ogsjkt_riz', 'rizkira@coscon.com; rizki@cosco-ogs.com', '6609', null, '1', null, null);
INSERT INTO `clients` VALUES ('112', 'USR17112', 'Wispi Migunani', 'cs', 'dinarpu/Dinar Putri(CoscoID)', 'Ogsjkt_din', 'dinarpu@coscon.com; dinar@cosco-ogs.com', '6607', null, '1', null, null);
INSERT INTO `clients` VALUES ('113', 'USR17113', 'Zaenal Muhaidin', 'trf', 'wispimi/Wispi Migunani(CoscoID)', 'Ogsjkt_wis', 'wispimi@coscon.com; wispi@cosco-ogs.com', '6090', null, '1', null, null);
INSERT INTO `clients` VALUES ('114', 'USR17114', 'Ibnul Qoyim', 'trf', 'zaenalmu/Zaenal Muhaidin (cosco-cscl)', 'Ogsjkt_zae', 'zaenalmu@coscon.com; zaenal@cosco-ogs.com', '6039', null, '1', null, null);
INSERT INTO `clients` VALUES ('115', 'USR17115', 'Firman Surya Atmaja', 'trf', 'ibnulqo/Ibnul Qoyim (Cosco ID)', 'Ogsjkt_ibnul', 'ibnulqo@coscon.com; ibnul@cosco-ogs.com', '6317', null, '1', null, null);
INSERT INTO `clients` VALUES ('116', 'USR17116', 'Triagusti Hasturi', 'mktcomm', 'firmansa/Firman Surya Atmaja (coscoid)', 'Ogsjkt_firman', 'firmansa@coscon.com; firman@cosco-ogs.com', '6318', null, '1', null, null);
INSERT INTO `clients` VALUES ('117', 'USR17117', 'I Gede Aldika Novan Adi', 'cs', 'triagha/Triagusti Hasturi', 'tria_Gha', 'triagha@coscon.com; tria@cosco-ogs.com', '6312', null, '1', null, null);
INSERT INTO `clients` VALUES ('118', 'USR17118', 'Aditya Armanu ', 'cs', 'gedeal/I Gede Aldika Novan Adi', 'Ogsjkt_ged', 'gedeal@coscon.com; gede@cosco-ogs.com', '6606', null, '1', null, null);
INSERT INTO `clients` VALUES ('119', 'USR17119', 'Penny Peronika Sipahutar', 'mktcomm', 'adityaar/Aditya Armanu (coscoid)', 'Ogsjkt_adit', 'adityaar@coscon.com; aditya@cosco-ogs.com', '6334', null, '1', null, null);
INSERT INTO `clients` VALUES ('120', 'USR17120', 'Anys Triana', 'mktcomm', 'pennips/Penni Peronika Sipahutar(coscoid)', '', 'pennips@coscon.com; penni@cosco-ogs.com', '6313', null, '1', null, null);
INSERT INTO `clients` VALUES ('121', 'USR17121', 'Sienny Evelyn', 'mktcomm', 'anystr/Anys Triana', 'Ogsjkt_any', 'anystr@coscon.com; anys@cosco-ogs.com', '6314', null, '1', null, null);
INSERT INTO `clients` VALUES ('122', 'USR17122', 'Anang Sukendar', 'mktcomm', 'siennyev/Sienny Evelyn (cosco-cscl)', '', 'siennyev@coscon.com; evelyn@cosco-ogs.com', '6023', null, '0', null, null);
INSERT INTO `clients` VALUES ('123', 'USR17123', 'Clara', 'mktcomm', 'anang/Anang Sukendar', 'Ogsjkt_anang', 'anangsu@coscon.com; anang@cosco-ogs.com', '6022', null, '1', null, null);
INSERT INTO `clients` VALUES ('124', 'USR17124', 'Sumarlan Tarigan', 'mng', 'claraag/Clara Agustine (cosco-cscl)', 'Ogsjkt_clara', 'claraag@coscon.com', '', null, '0', null, null);
INSERT INTO `clients` VALUES ('125', 'USR17125', 'Bekti Yulianto', 'ecd', 'sumarta/Sumarlan Tarigan(coscoid)', 'Ogsjkt_fakhri', 'sumarta@coscon.com; sumarlan@cosco-ogs.com', '6481', null, '1', null, null);
INSERT INTO `clients` VALUES ('126', 'USR17126', 'Laurensia Lulu Inda Yosea ', 'ecd', 'bektiyu/Bekti Yulianto(coscoid)', 'Ogsjkt_bekti', 'bektiyu@coscon.com; bekti@cosco-ogs.com', '6304', null, '1', null, null);
INSERT INTO `clients` VALUES ('127', 'USR17127', 'Dayat', 'ecd', 'laureli/Laurensia Lulu Inda Yosea(CoscoID)', 'Ogsjkt_lau', 'laureli@coscon.com; lauren@cosco-ogs.com', '6305', null, '1', null, null);
INSERT INTO `clients` VALUES ('128', 'USR17128', 'Tony Sukri', 'logagn', 'rahmathi/Rahmat Hidayat (coscoid)', 'Container_cosco', 'rahmathi@coscon.com; hidayat@cosco-ogs.com', '6306', null, '1', null, null);
INSERT INTO `clients` VALUES ('129', 'USR17129', 'Mundir AM', 'logagn', 'tonnysu/Tonny Sukri(coscoid)', 'Ogsjkt_tonny', 'tonnysu@coscon.com; tony@cosco-ogs.com', '6215', null, '1', null, null);
INSERT INTO `clients` VALUES ('130', 'USR17130', 'Kamalail', 'logagn', 'mundiam/Mundir AM(coscoid)', 'Ogsjkt_mundir', 'mundiam@coscon.com mundir@cosco-ogs.com', '6216', null, '1', null, null);
INSERT INTO `clients` VALUES ('131', 'USR17131', 'Idham Mufarid', 'ecd', 'kamalail/Kamalail (coscoid)', 'Ogsjkt_kamal', 'kamalail@coscon.com; kamal@cosco-ogs.com', '6217', null, '1', null, null);
INSERT INTO `clients` VALUES ('132', 'USR17132', 'Evi Naznim', 'mng', 'idhamu/Idham Mufarid(coscoid)', 'Cimohai_6956', 'idhamu@coscon.com; idham@cosco-ogs.com', '6007', null, '1', null, null);
INSERT INTO `clients` VALUES ('133', 'USR17133', 'Alvina Fitri Melinda', 'sls', 'evina/Evi Naznim(coscoid)', 'Ogsjkt_evi', 'evina@coscon.com; evi@cosco-ogs.com', '6232', null, '1', null, null);
INSERT INTO `clients` VALUES ('134', 'USR17134', 'Putri Astri Rahayu', 'hrga', 'Alvinafm/Alvina Fitri Melinda(CoscoID)', 'Ogsjkt_vin', 'vinamelida@cosco-ogs.com; Alvinafm@coscon.com', '6192', null, '1', null, null);
INSERT INTO `clients` VALUES ('135', 'USR17135', 'Edrick Kusuma', 'logagn', 'indraha/Indrawati Hasan(coscoid)', 'Ogsjkt_wati', 'putri.astri@cosco-ogs.com', '6604', 'Resign om 30 April', '0', null, null);
INSERT INTO `clients` VALUES ('136', 'USR17136', 'AlifÂ PrasetiawanÂ Wicaksono', 'exp', 'edricku/Edrick Kusuma (CoscoID)', 'Ogsjkt_edr', 'edrick@cosco-ogs.com', '', null, '1', null, null);
INSERT INTO `clients` VALUES ('137', 'USR17137', 'Yazena Putri Radliya', 'mktcomm', 'alifpw/Alif Prasetiawan Wicaksono (CoscoID)', 'Ogsjkt_ali', 'alif@cosco-ogs.com; alifpw@coscon.com', '', null, '1', null, null);
INSERT INTO `clients` VALUES ('138', 'USR17138', 'Katrin Nurani', 'imp', 'yazenpr/Yazena Putri Radliya (CoscoID)', 'Ogsjkt_yaz', 'yazena@cosco-ogs.com; yazenpr@coscon.com', '6024', null, '0', null, null);
INSERT INTO `clients` VALUES ('139', 'USR17139', 'Sitia Lisa\'Adah', 'exp', 'katrinu/Katrin Nurani (CoscoID)', 'Ogsjkt_kat', 'katrin@cosco-ogs.com; katrinu@coscon.com', '6207', null, '1', null, null);
INSERT INTO `clients` VALUES ('140', 'USR17140', 'RamaÂ KusumaaÂ KurniaÂ Putra', 'exp', 'sitila/Siti Lisa\'Adah (CoscoID)', 'Ogsjkt_sit', 'sitilisa@cosco-ogs.com; sitila@coscon.com', '6708', null, '1', null, null);
INSERT INTO `clients` VALUES ('141', 'USR17141', 'Tegar Ari Sadewo', 'exp', 'ramaku/RamaaÂ KusumaaÂ KurniaaÂ Putra (CoscoID)', 'Ogsjkt_ram', 'ramakusuma@cosco-ogs.com; ramaku@coscon.com', '6250', 'Resign', '0', null, null);
INSERT INTO `clients` VALUES ('142', 'USR17142', 'Listiyono', 'exp', 'tegaras/Tegar Ari Sadewo(CoscoID)', 'Ogsjkt_teg', 'tegaras@coscon.com;tegarari@cosco-ogs.com', '6034', null, '1', null, null);
INSERT INTO `clients` VALUES ('143', 'USR18001', 'Margareta Lillian L. A (Reta)', 'fin', 'AP\\Listiyono(CoscoID)', 'Ogsjkt_lis', 'listiyono@cosco-ogs.com', '', null, '1', null, null);
INSERT INTO `clients` VALUES ('144', 'USR18002', 'Tinajanti Tjandra', 'mng', 'margali/Margareta Lillian L. A(CSLI)', 'Ogsjkt_mar', 'reta@cosco-ogs.com', '6807', null, '1', null, null);
INSERT INTO `clients` VALUES ('145', 'USR18003', 'Lei Zhimin', 'gm', 'tinajtj/Tinajanti Tjandra(CSLI)', 'Ogsjkt_tin', 'tina@cosco-ogs.com', '6800', null, '1', null, null);
INSERT INTO `clients` VALUES ('146', 'USR18004', 'Karthina Metta', 'hrga', 'AP\\leizhm', 'Leizy827502', 'leizhm@cosco-ogs.com; leizhm@coscon.com', '6008', null, '1', null, null);
INSERT INTO `clients` VALUES ('147', 'USR18005', 'Steffani Christie', 'sls', 'karthime', 'Ogsjkt_metta', 'metta@cosco-ogs.com', '6604', null, '1', null, null);
INSERT INTO `clients` VALUES ('148', 'USR18006', 'Richsan Jonnendy', 'logagn', 'steffach/Steffani Christie(CSLI)', 'Ogsjkt_stef', 'christie@cosco-ogs.com', '', null, '1', null, null);
INSERT INTO `clients` VALUES ('149', 'USR18007', 'Deni Rivaldi', 'imp', 'richsjo/Richsan Jonnendy(CSLI)', 'Ogsjkt_ric', 'richsan@cosco-ogs.com', '', null, '1', null, null);
INSERT INTO `clients` VALUES ('150', 'USR18008', 'Hansel Nabawi ', 'ecd', 'deniri/Deni Rivaldi(CSLI)', 'Ogsjkt_den', 'deni@cosco-ogs.com', '', 'Email Password cosco-ogs = ogsjkt_deni', '1', null, null);
INSERT INTO `clients` VALUES ('151', 'USR18009', 'Justine Clarissa Limantoro ', 'mktcomm', 'hanselna', 'Ogsjkt_han', 'hansel@cosco-ogs.com;hanselna@coscon.com', '6021', null, '1', null, null);
INSERT INTO `clients` VALUES ('152', 'USR18010', 'Adelina Setiawati ', 'mktcomm', 'justisa/Justine Clarissa(CSLI)', 'Ogsjkt_jus', 'justine@cosco-ogs.com', '', 'Mutasi user surabaya. Email forward dari justine@sub.cosco-ogs.com ke justine@cosco-ogs.com', '1', null, null);
INSERT INTO `clients` VALUES ('153', 'USR18011', 'M. Haposan D. Siregar', 'exp', 'adelise/Adelinas Setiawati(CSLI)', 'Ogsjkt_ade', 'adelina@cosco-ogs.com', '', null, '1', null, null);
INSERT INTO `clients` VALUES ('154', 'USR18012', 'Aprilia Kristiani', 'cs', 'hapossi/M. Haposan D. Siregar(CSLI)', 'Ogsjkt_hap', 'haposan@cosco-ogs.com;hapossi@coscon.com', '', null, '0', null, null);
INSERT INTO `clients` VALUES ('155', 'USR18013', 'Lina Alvionita', 'cs', 'aprilkr/Aprilia Kristiani(CSLI)', 'Ogsjkt_apr', 'aprilia@cosco-ogs.com;aprilkr@coscon.com', '', null, '1', null, null);
INSERT INTO `clients` VALUES ('156', 'USR18014', 'Randi Kurnia', 'trf', 'linaal', 'Ogsjkt_lin', 'lina-alvionita@cosco-ogs.com', '', null, '1', null, null);
INSERT INTO `clients` VALUES ('157', 'USR18015', 'Laura Raditya', 'hrga', 'randiku', 'Ogsjkt_ran', 'randi-kurnia@cosco-ogs.com; randiku@coscon.com', '', null, '0', null, null);
INSERT INTO `clients` VALUES ('158', 'USR18016', 'Agung Nugroho', 'ecd', 'laurara/Laura Raditya(CSLI)', 'Ogsjkt_lau', 'laura-raditya@cosco-ogs.com', '6605', 'email password: ogsjkt_laura', '1', null, null);
INSERT INTO `clients` VALUES ('159', 'USR18017', 'Stephanie Andrea', 'cs', 'agungnu/Agung Nugroho(CSLI)', 'Ogsjkt_agu', 'agung-nugroho@cosco-ogs.com', '', 'email password : ogsjkt_agung', '1', null, null);
INSERT INTO `clients` VALUES ('160', 'USR18018', 'Idris', 'imp', 'stephaan/Stephanie Andrea(CSLI)', 'Ogsjkt_step', 'stephanie@cosco-ogs.com; stephaan@coscon.com', '', null, '1', null, null);
INSERT INTO `clients` VALUES ('161', 'USR18019', 'Afnan Nur Ikhwan', 'cs', 'idris/Idris(CSLI)', 'Ogsjkt_idr', 'idris@cosco-ogs.com', '6722', null, '1', null, null);
INSERT INTO `clients` VALUES ('162', 'USR18020', 'Wahyu Kurnia Pradana', 'exp', 'afnanni/Afnan Nur Ikhwan(CSLI)', 'Ogsjkt_afn', '', '', null, '1', null, null);
INSERT INTO `clients` VALUES ('163', 'USR18021', 'Galuh Nopianto', 'trf', 'wahyukp/Wahyu Kurnia Pradana(CSLI)', 'Ogsjkt_wah', '', '', null, '1', null, null);
INSERT INTO `clients` VALUES ('164', 'USR18022', 'Arnold Fernando', 'Traffic', 'galuhno/Galuh Nopianto', 'Ogsjkt_gal', 'galuh-nopianto@cosco-ogs.com', '-', 'Email Password: ogsjkt_galuhfff', '1', null, '2018-11-06 12:44:04');
INSERT INTO `clients` VALUES ('165', null, null, null, 'arnolfe/Arnold Fernando(CSLI)', 'Ogsjkt_arn', '', '', null, '2', null, '2018-10-10 09:32:10');
INSERT INTO `clients` VALUES ('166', null, 'Test', 'hrga', 'test', 'test', 'test@test.com', '4455', null, '2', '2018-10-10 09:16:06', '2018-10-10 09:32:03');
INSERT INTO `clients` VALUES ('167', null, 'test lagi', 'hrga', 'asa', 'as', 'admin@test.com', '777', null, '2', '2018-10-10 09:19:08', '2018-10-10 09:32:05');
INSERT INTO `clients` VALUES ('168', null, 'asdad', 'sls', 'asa', 'as', 'admin@test.com', '-', '-', '2', '2018-10-10 09:30:49', '2018-10-10 09:32:08');
INSERT INTO `clients` VALUES ('169', 'USR18023', 'aaa', 'sls', 'aaa', 'aaa', 'aaa@aaa', 'aa', 'aa', '0', '2018-10-10 09:31:29', '2018-10-10 09:31:57');
INSERT INTO `clients` VALUES ('170', 'USR18024', '-', 'Equipment Control', '-', '-', 'hando@cosco-ogs.com', '-', null, '1', '2018-11-06 12:42:59', '2018-11-06 12:42:59');

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
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of computers
-- ----------------------------
INSERT INTO `computers` VALUES ('1', 'PC-17001', 'GA-Wandi', '192.168.6.213', 'Intel Core I3', '4GB DDR3', '500GB', 'Windows7 64bit', 'HP 280 G2 MT', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('2', 'PC-17002', 'Risya-PC', '192.168.6.216', 'Intel Core I3', '4GB DDR3', '1TB SATA', 'Windows7 64bit', 'Lenovo 10132', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('3', 'PC-17003', 'Shinta-PC', '192.168.6.214', 'Intel Core I3 3240 @3.40Ghz', '4GB DDR3', '500GB', 'Windows7 64bit', 'Rakitan', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('4', 'PC-17004', 'Agus-Log-PC', '192.168.6.234', 'Intel Core I3 2100 @3.10Ghz', '2GB DDR3', '500GB', 'Windows 7 32bit', 'Rakitan', null, 'IRIS2 User', '1', null, null);
INSERT INTO `computers` VALUES ('5', 'PC-17005', 'Rizka-PC', '192.168.6.232', 'Intel Core I3', '4GB DDR3', '500GB', 'Windows7 64bit', 'Lenovo 10132', null, 'IRIS2 User', '1', null, null);
INSERT INTO `computers` VALUES ('6', 'PC-17006', 'yosep', '192.168.6.101', 'Intel Core I3 4170 @3.10Ghz', '4GB DDR3', '500GB', 'Windows7 64bit', 'HP 280 G2 MT', null, 'IRIS2 User', '1', null, null);
INSERT INTO `computers` VALUES ('7', 'PC-17007', 'Indrawati-PC', '192.168.6.228', 'Intel Pentium Dual Core', '3GB DDR2', '500GB SATA', 'Windows7 32bit', 'HP g3630 l', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('8', 'PC-17008', 'PC-17008', '192.168.6.237', 'Intel Core I3 3240 @3.40Ghz', '4GB DDR3', '1TB', 'Windows 7 X64 SP1', 'Rakitan', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('9', 'PC-17009', 'LOG-002', '192.168.6.217', 'Intel Pentium Dual Core', '4GB DDR2', '500GB', 'Windows7 32bit', 'HP g3630 l', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('10', 'PC-17010', 'Teru-PC', '192.168.6.251', 'Intel Core I3', '4GB DDR3', '500GB', 'Windows7 64bit', 'HP P2-1350L', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('11', 'PC-17011', 'PC-17011', '192.168.6.221', 'Intel Core I3', '2GB DDR3', '500GB SATA', 'Windows7 64bit', 'HP P2-1350L', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('12', 'PC-17012', '03-MGRAGNCY', '192.168.6.252', 'Intel Core I3', '2GB + 4GB ', '500GB SATA', 'Windows7 64bit', 'HP P2-1350L', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('13', 'PC-17013', 'PC-17013', '172.26.46.252', 'Intel Core I3', '4GB DDR3', '500GB + 50', 'Windows7 64bit', 'HP 3330 MT', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('14', 'PC-17014', 'Wulanda', '172.26.46.166', 'Intel Core I3', '4GB DDR3', '1TB', 'Windows7 64bit', 'HP 280 G2 MT', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('15', 'PC-17015', 'PC-17015', '172.26.46.165', 'Intel Core I3 4170 @3.70 Ghz', '4GB DDR3', '1TB SATA', 'Windows 7 64bit', 'HP 280 G2 MT', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('16', 'PC-17016', '04-SPV-SHIPPING', '172.26.46.145', 'Intel Core I3 3220 @3.30Ghz', '2GB DDR3', '500GB SATA', 'Windows7 64bit', 'HP 3330 MT', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('17', 'PC-17017', 'PC-17017', '172.26.46.167', 'Pentium Dual-Core CPU E5700 @3', '4GB DDR3', '160 + 250 ', 'Windows7 32bit', 'Rakitan', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('18', 'PC-17018', 'PC-17018', '192.168.6.215', 'Intel Core I3-4160', '4GB DDR3', '500GB SATA', 'Windows7 64bit', 'HP Pro 400 GT MT', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('19', 'PC-17019', 'OGS-COSCO-PC', '192.168.6.239', 'Intel Core I3-4160 @3.60Ghz', '2GB DDR3', '500GB DDR3', 'Windows7 64bit', 'HP Pro 400 GT MT', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('20', 'PC-17020', '03-AgencyAssMgr', '192.168.6.240', 'Intel Core I3', '2GB DDR3', '500GB SATA', 'Windows XP', 'HP P2-1350L', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('21', 'PC-17021', '03-Agency1', '192.168.6.248', '', '1.5GB DDR2', '', 'Windows XP', 'HP g3333l', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('22', 'PC-17022', 'Dayat-PC', '172.26.46.108', 'Intel Core I3 4150 @3.50Ghz', '4GB DDR3', '500GB SATA', 'Windows7 64bit', 'Lenovo 10132', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('23', 'PC-17023', 'Lauren-PC', '172.26.46.156', 'Intel Core I3 4160 @3.60Ghz', '2GB DDR3', '1TB SATA', 'Windows7 32bit', 'HP Pro 400 GT MT', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('24', 'PC-17024', 'bektiyu', '172.26.46.213', '', '', '', '', 'HP 280 G2 MT', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('25', 'PC-17025', 'PC-17025', '172.26.46.50', 'Intel Core I3 3220T @2.80Ghz', '4GB DDR3', '500GB', 'Windows7 64bit', 'HP P2-1350L', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('26', 'PC-17026', 'MKT-ANANG', '172.26.46.200', 'Intel Core I3 2120 @3.30Ghz', '4GB DDR3', '500GB SATA', 'Windows7 32bit', 'Rakitan', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('27', 'PC-17027', 'MKT-001', '172.26.46.136', 'Intel Core I3 4150 @3.50Ghz', '4GB DDR3', '1TB SATA', 'Windows7 32bit', 'Lenovo 10132', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('28', 'PC-17028', 'PC-17028', '172.26.46.135', 'Intel Core I3 4150 @3.50Ghz', '4GB DDR3', '1TB SATA', 'Windows7 32bit', 'Lenovo 10132', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('29', 'PC-17029', '02-MRKT-01', '172.26.46.192', 'Intel Core I3-2120T @2.60Ghz', '4GB DDR3', '500GB SATA', 'Windows7 64bit', 'HP P2-1350L', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('30', 'PC-17030', 'pennips', '172.26.46.194', 'Intel Core I3-4170 @3.70Ghz', '4GB DDR3', '500GB SATA', 'Windows7 64bit', 'HP 280 G2 MT', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('31', 'PC-17031', 'PC-17031', '172.26.46.104', 'Intel Pentium Dual E2160 @1.80', '2GB DDR2', '500GB SATA', 'Windows7 64bit', 'HP g3333l', null, null, '2', null, null);
INSERT INTO `computers` VALUES ('32', 'PC-17032', '02-MGRCOM', '172.26.46.51', 'Intel Core I3 3220T @2.80Ghz', '4GB DDR3', '500GB SATA', 'Windows7 64bit', 'HP P2-1350L', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('33', 'PC-17033', 'PC-17033', '172.26.46.144', 'Intel Core I3', '4GB DDR3', '1TB SATA', 'Windows7 32bit SP1', 'Lenovo 10132', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('34', 'PC-17034', 'Shelvia-PC', '172.26.46.152', 'Pentium Dual Core E5700 @3.00 ', '4GB DDR2', '250GB SATA', 'Windows7 32bit', 'Rakitan', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('35', 'PC-17035', 'TRF-001', '172.26.46.217', 'Intel Core I3 2120T @2.60Ghz', '2GB DDR3', '500GB SATA', 'Windows7 X64 SP1', 'HP P2-1350L', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('36', 'PC-17036', 'Ibnul-PC', '172.26.46.124', 'Intel Core I3 2120T @2.60Ghz', '2GB DDR3', '500GB SATA', 'Windows7 32bit', 'HP P2-1350L', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('37', 'PC-17037', 'Zaenal-PC', '172.26.46.153', 'Intel Core I5 2310 @2.90Ghz', '4GB DDR3', '500 + 250 ', 'Windows7 32bit', 'Rakitan', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('38', 'PC-17038', 'PC-17038', '172.26.46.197', 'Intel Core I3 3220 @3.30Ghz', '4GB DDR3', '500GB SATA', 'Windows7 64bit', 'HP 3330 MT', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('39', 'PC-17039', 'PC-17039', '172.26.46.139', 'Pentium Dual Core E5300 @2.60G', '3GB DDR2', '250GB SATA', 'Windows 7 32bit', 'Rakitan', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('40', 'PC-17040', 'Kiki-PC', '172.26.46.102', 'Intel Core I3 2100 @3.10 Ghz', '4GB DDR3', '500GB SATA', 'Windows7 64bit', 'Rakitan', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('41', 'PC-17041', 'Ningsih-PC', '172.26.46.126', 'Intel Core I5 2310 @2.90Ghz', '4GB DDR3', '500GB SATA', 'Windows7 64bit', 'Rakitan', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('42', 'PC-17042', 'Sales-Eko', '172.26.46.159', 'Intel Core I3 4150 @3.50Ghz', '4GB DDR3', '1TB SATA', 'Windows7 64bit', 'Lenovo 10132', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('43', 'PC-17043', '01-Spv-Traffic', '172.26.46.223', 'Intel Core I3 3220 @3.30Ghz', '4GB DDR3', '500GB SATA', 'Windows7 64bit', 'HP', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('44', 'PC-17044', 'PC-17044', '172.26.46.52', 'Intel Core I3 3220 @3.30Ghz', '4GB DDR3', '500GB SATA', 'Windows7 64bit', 'HP 3330 MT', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('45', 'PC-17045', 'PC-17045', '172.26.46.141', 'Intel Core I3 4170 @3.70Ghz', '4GB DDR3', '500GB SATA', 'Windows7 64bit', 'HP 280 G2 MT', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('46', 'PC-17046', 'PC-17046', '172.26.46.193', 'Intel Core I3 4150 @3.50Ghz', '4GB DDR3', '1TB SATA', 'Windows7 32bit', 'Lenovo 10132', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('47', 'PC-17047', 'PC-17047', '172.26.46.158', 'Intel Core I3', '4GB DDR3', '1TB SATA', 'Windows7 64bit', 'HP P2-1350L', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('48', 'PC-17049', 'PC-17049', '172.26.46.190', 'Intel(R) Core(TM) i3-4150 CPU ', '4GB DDR3', '1TB', 'Windows 7 32bit', 'Lenovo 10132', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('49', 'PC-17050', 'PC-17050', '172.26.46.186', 'Intel Core I3-4130 @3.40Ghz', '4GB DDR3', '1TB SATA', 'Windows7 32bit', 'Lenovo 10132', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('50', 'PC-17051', 'Yuliafi', '172.26.46.230', 'Intel Core I3 2120T @2.60Ghz', '4GB DDR3', '1TB SATA', 'Windows7 64bit', 'HP P2-1350L', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('51', 'PC-17052', 'FAD-006', '172.26.46.130', 'Intel Core2 Duo E7500 @2.93Ghz', '4GB DDR2', '80+160 GB ', 'Windows7 32bit', 'Rakitan', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('52', 'PC-17053', 'IT-OGS1', '172.26.46.201', 'Intel Core I3', '', '', '', 'HP Pro 400 GT MT', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('53', 'PC-17054', 'PC-17054', '172.26.46.187', 'Intel Core I3 4160 @3.60Ghz', '4GB DDR3', '1TB SATA', 'Windows7 32bit', 'Lenovo 10132', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('54', 'PC-17055', 'Citra', '172.26.46.146', 'Intel Core I3 6100 @3.70Ghz', '4GB DDR3', '1TB SATA', 'Windows7 64bit', 'HP 280 G2 MT', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('55', 'PC-17056', 'CS-002', '172.26.46.134', 'Intel Core I3', '4GB DDR3', '500GB', 'Windows 7 64bit', 'Rakitan', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('56', 'PC-17057', 'PC-17057', '172.26.46.53', 'Intel Core I3 4160 @3.60Ghz', '4GB DDR3', '1TB', 'Windows7 32bit', 'Lenovo 10132', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('57', 'PC-17058', 'OGS', '172.26.46.205', 'Intel Core I3 6100 @3.70Ghz', '4GB DDR3', '500GB', 'Windows7 64bit', 'HP 280 G2 MT', null, 'Dibawa ke priuk buat pak pendi', '0', null, null);
INSERT INTO `computers` VALUES ('58', 'PC-17059', 'SLS-Riana', '172.26.46.113', 'Intel Core I3', '4GB DDR3', '1TB SATA', 'Windows7 32bit', 'Lenovo 10132', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('59', 'PC-17060', 'Salman-PC', '172.26.46.179', 'Intel Core I3 6100 @3.70Ghz', '4GB DDR3', '1TB', 'Windows7 32bit', 'HP 280 G2 MT', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('60', 'PC-17061', 'MKT-JOY', '172.26.46.150', 'Intel Core I3 4150 @3.50Ghz', '4GB DDR3', '1TB', 'Windows7 64bit', 'Lenovo 10132', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('61', 'PC-17062', 'Sales-Winily', '172.26.46.54', 'Intel Core I3 4150 @3.50Ghz', '4GB DDR3', '1TB', 'Windows7 32bit', 'Lenovo 10132', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('62', 'PC-17063', 'Parikesit-PC', '172.26.46.244', 'Intel Core I3 4160 3.60Ghz', '4GB DDR3', '500GB', 'Windows7 64bit', 'HP Pro 400 GT MT', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('63', 'PC-17064', 'Susannao', '172.26.46.175', '', '', '', '', 'Rakitan', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('64', 'PC-17065', 'Jennli-PC', '172.26.46.218', 'Intel Core 2 Duo E7500 @2.93Gh', '2GB DDR2', '250GB SATA', 'Windows7 32bit', 'Rakitan', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('65', 'PC-17066', 'PC-17066', '172.26.46.147', 'Intel Core I3', '4GB DDR3', '1TB', 'Windows7 32bit', 'Lenovo 10132', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('66', 'PC-17067', '01-Importian', '172.26.46.216', 'Intel Core I3 3220T @2.80Ghz', '2GB DDR3', '500GB SATA', 'Windows7 64bit', 'HP P2-1350L', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('67', 'PC-17068', 'Sofima', '172.26.46.160', 'Intel Core I3', '2GB DDR3', '500GB', 'Windows7 32bit', 'HP Pro 400 GT MT', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('68', 'PC-17069', 'SLS-Adi', '172.26.46.114', 'Intel Pentium Dual E2160 1.80G', '2GB DDR2', '', 'Windows7 32bit', 'HP g3630 l', null, null, '2', null, null);
INSERT INTO `computers` VALUES ('69', 'PC-17070', 'nando', '172.26.46.162', 'Intel Core I3', '2GB DDR3', '500GB SATA', 'Windows7 ', 'Rakitan', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('70', 'PC-17071', 'Gilang-PC', '172.26.46.164', 'Intel Core I5 2500 @3.30Ghz', '4GB DDR3', '500GB SATA', 'Windows7 32bit', 'Rakitan', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('71', 'PC-17072', 'Megapa', '172.26.46.183', 'Intel Core I3 4150 @3.50Ghz', '4GB DDR3', '1TB SATA', 'Windows7 32bit', 'Lenovo 10132', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('72', 'PC-17073', 'PC-17073', '172.26.46.56', 'Intel Core I3 2120T @2.60Ghz', '4GB DDR3', '500GB SATA', 'Windows7 64bit', 'HP P2-1350L', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('73', 'PC-17074', 'Trisno-PC', '172.26.46.174', '', '', '', '', 'HP 280 G2 MT', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('74', 'PC-17075', 'SaefulBahri-PC', '172.26.46.123', 'Intel Core I3', '3GB DDR3', '500GB', 'Windows 7 64bit', 'HP P2-1350L', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('75', 'PC-17076', 'Parulra', '172.26.46.169', 'Intel Core I3', '', '', '', 'Lenovo 10132', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('76', 'PC-17077', '04-Acct-Cntr03', '172.26.46.214', 'Intel Core I3', '', '', '', 'HP 3330 MT', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('77', 'PC-17078', 'Robersa', '172.26.46.106', 'Intel Core I3-4160 @3.60Ghz', '4GB DDR3', '500GB SATA', 'Windows7 64bit', 'Lenovo 10132', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('78', 'PC-17079', 'FAD-002', '172.26.46.209', 'Intel Core I3', '4GB DDR3', '160GB IDE', 'Windows 7 X64', 'Rakitan', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('79', 'PC-17080', '04-ACCT-CNTR01', '172.26.46.128', 'Intel Core I3', '', '', '', 'HP 3330 MT', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('80', 'PC-17081', '04-ACCSPV', '172.26.46.215', 'Intel Core I3', '', '', 'Windows XP', 'HP 110', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('81', 'PC-17082', '02-GM-01', '172.26.46.57', 'Intel Core I3', '2GB+4GB DD', '500GB SATA', 'Windows7 64bit', 'HP 280 G2 MT', null, 'Masuk ke local account 02-GM-01\\ogs-cosco, password \"itguard\"', '1', null, null);
INSERT INTO `computers` VALUES ('82', 'PC-17083', '04-ACCT-01-PC', '172.26.46.202', 'Intel Core I3', '', '', '', 'HP 110', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('83', 'PC-17084', '04-ACCT-CNTR04', '172.26.46.182', 'Intel Core I3', '', '', '', 'HP 3330 MT', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('84', 'PC-17085', '04-ACCT-CNTR02', '172.26.46.203', 'Intel Core I3', '', '', '', 'HP 3330 MT', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('85', 'PC-17086', 'PC-17086', '172.26.46.204', 'Intel Core I3', '', '', '', 'Lenovo 10132', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('86', 'PC-17087', 'Jamil', '172.26.46.100', 'Intel Pentium Dual Core', '2GB DDR2', '160GB', 'Win732bit', 'Rakitan', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('87', 'PC-17088', 'PC-17088', '172.26.46.132', 'Intel(R) Core(TM) i3-2100 CPU ', '2GB DDR3', '250GB', 'Windows 7 64bit', 'Rakitan', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('88', 'PC-17089', 'Fin-jkt', '172.26.46.129', 'Intel(R) Core(TM) i3-4160 CPU ', '4GB DDR3', '1TB', 'Windows7 64bit', 'Lenovo 10132', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('89', 'PC-17090', 'PC-17090', '172.26.46.137', 'Intel(R) Core(TM) i3-2120T CPU', '4GB DDR3', '500GB SATA', 'Windows7 64bit', 'HP P2-1350L', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('90', 'PC-17091', 'PC-17091', '172.26.46.125', 'Intel Core I3', '', '', '', 'HP P2-1350L', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('91', 'PC-17092', 'PC-17092', '172.26.46.236', 'Intel Core I3 4150 @3.50Ghz', '4GB DDR3', '1TB SATA', 'Windows7 32bit', 'Lenovo 10132', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('92', 'PC-17093', 'PC-17093', '172.26.46.163', 'Intel Core I3 4150 @3.50Ghz', '4GB DDR3', '1TB SATA', 'Windows7 32bit', 'Lenovo 10132', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('93', 'PC-17094', 'PC-17094', '172.26.46.234', 'Intel Core I3 4170 3.70Ghz', '4GB DDR3', '500GB', 'Windows7 64bit', 'HP 280 G2 MT', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('94', 'PC-17095', 'DOCEXP-003', '172.26.46.210', 'Intel Core I3', '4GB DDR3', '500GB SATA', 'Windows 7 64bit', 'Lenovo 90B9', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('95', 'PC-17096', 'PC-17096', '172.26.46.111', 'Intel Core I3 4170 3.70Ghz', '4GB DDR3', '500GB', 'Windows7 64bit', 'HP 280 G2 MT', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('96', 'PC-17097', '01-Docexp-001', '172.26.46.226', 'Intel Core I3 3220 3.30Ghz', '6GB DDR3', '500GB + 50', 'Windows7 32bit', 'HP 3330 MT', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('97', 'PC-17098', 'Indah-PC', '172.26.46.211', 'Intel Core I3', '4GB DDR3', '1TB', 'Windows7 64bit', 'HP 280 G2 MT', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('98', 'PC-17099', 'PC-17099', '172.26.46.149', 'Intel Core I5', '4GB DDR4', '1TB SATA', 'Windows 7 64bit', 'HP Slimline 260 P022L', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('99', 'PC-17100', 'PC-17100', '172.26.46.148', 'Intel Core I3', '4GB DDR3', '1TB SATA', 'Windows7 32bit', 'Lenovo 10132', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('100', 'PC-17101', '01-IMPDOC01', '172.26.46.221', 'Intel Core I3 3220T 3.30 Ghz', '2GB DDR3', '500GB SATA', 'Windows7 64bit', 'HP 3330 MT', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('101', 'PC-17102', 'PC-17102', '172.26.46.181', 'Intel Core I3-2100 @3.10Ghz', '4GB DDR3', '500GB SATA', 'Windows 7 X64 SP1', 'Rakitan', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('102', 'PC-17103', 'PC-17103', '172.26.46.233', 'Intel Core I3', '4GB DDR3', '', 'Windows7 32bit', 'Lenovo 10132', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('103', 'PC-17104', 'Mucharal', '172.26.46.131', 'Intel Core I3 4150 @3.50Ghz', '4GB DDR3', '1TB', 'Windows7 32bit', 'Lenovo 10132', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('104', 'PC-17105', 'FAD-003', '172.26.46.118', 'Intel(R) Core(TM) i3-4130 CPU @ 3.40GHz', '4GB DDR3', '500GB SATA', 'Windows 7 X64', 'Lenovo 10132', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('105', 'PC-17106', 'PC-17106', '172.26.46.198', 'Intel Core I3 3240T 2.90Ghz', '4GB DDR3', '500GB SATA', 'Windows 7 64bit', 'HP110', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('106', 'PC-17107', 'Yan-PC', '172.26.46.101', 'Intel Core I3 3220T @2.80Ghz', '3GB DDR3', '500GB', 'Windows7 32bit', 'HP P2-1350L', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('107', 'PC-17108', 'PC-17108', '172.26.46.109', 'Intel Core I3-4160 @3.60Ghz', '4GB DDR3', '1TB SATA', 'Windows7 32bit', 'Lenovo 10132', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('108', 'PC-17109', '01-Malik', '172.26.46.225', 'Intel Core I3', '2GB DDR3', '500GB', 'Windows7 64bit', 'HP 280 G2 MT', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('109', 'PC-17110', 'PC-17110', '172.26.46.140', 'Intel Core I3', '4GB DDR3', '500GB SATA', 'Windows 7X64', 'HP P2-1350L', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('110', 'PC-17111', 'ibnuse', '172.26.46.59', 'Intel Core I5', '8GB DDR3', '', '', 'Rakitan', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('111', 'PC-17112', 'bps-idn', '172.26.46.60/172.26.5.218/172.', '', '', '', '', 'HP A 1218 l', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('112', 'PC-17113', 'FAD_01', '172.26.46.61', 'Intel(R) Core(TM) i5-2310 CPU ', '4GB DDR3', '250GB SATA', 'Windows7 32bit', 'Rakitan', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('113', 'PC-17114', 'Silvia-PC', '172.26.46.62', 'Intel Core I5', '4GB DDR4', '1TB SATA', 'Windows7 64bit', 'HP Slimline 260 P022L', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('114', 'PC-17115', 'chengm-PC', '', '', '', '', '', 'Rakitan', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('115', 'PC-17116', '03-md', '172.26.46.64', '', '', '', '', '', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('116', 'PC-17117', 'PC-GM', '172.26.46.65', '', '', '', '', '', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('117', 'PC-17118', 'DESKTOP-LSIF61R', '172.26.46.66', '', '', '', '', '', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('118', 'PC-17119', 'HRD-FO', '172.26.46.105', 'Intel(R) Core(TM) i3-3240T CPU', '2GB DDR3', '500GB DDR3', 'Windows7 64bit', 'HP P2-1350L', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('119', 'PC-17120', 'PC-17120', '172.26.46.99', 'Intel Core I3-4160 @3.60Ghz', '4GB DDR3', '1TB SATA', 'Windows7 32bit', 'Lenovo 10132', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('120', 'PC-17121', 'PC-17121', '172.26.46.241', 'Intel Core I3-4160 @3.60Ghz', '4GB DDR3', '1TB SATA', 'Windows7 32bit', 'Lenovo 10132', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('121', 'PC-17122', 'PC-17122', '172.26.46.242', 'Intel Core I3-4160 @3.60gHZ', '4GB DDR3', '1TB SATA', 'Windows7 32bit', 'Lenovo 10132', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('122', 'PC-17123', 'PC-17123', '172.26.46.180', 'Intel Core I3', '8GB DDR3', '500GB SATA', 'Windows 7 X64 SP1', 'HP P2-1350L', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('123', 'PC-17124', 'PC-17124', '172.26.46.122', 'Intel(R) Core(TM) i3-4170 CPU ', '4GB DDR3', '500GB SATA', 'Windows7 64bit', 'HP 280 G2 MT', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('124', 'PC-17125', 'PC-17125', '172.26.46.133', 'Intel Core I3', '4GB DDR3', '', '', 'HP P2-1350L', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('125', 'PC-17126', 'PC-17126', '172.26.46.229', 'Intel(R) Core(TM) i3-4150 CPU @ 3.50GHz ', '4GB DDR3', '1TB SATA', 'Windows 7 X64', 'Lenovo 10132', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('126', 'PC-17127', 'QMS-PC', '172.26.46.115', '', '', '', '', '', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('127', 'PC-17128', 'Kusretno-PC', '172.26.46.191', 'Intel(R) Core(TM) i3-4160 CPU ', '4GB DDR3', '1TB SATA', 'Windows7 32bit', 'Lenovo 10132', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('128', 'PC-17129', 'FAD-004', '172.26.46.143', 'Intel(R) Core(TM) i3-4150 CPU @ 3.50GHz', '4GB DDR3', '500GB SATA', 'Windows 7 X64', 'Lenovo 10132', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('129', 'PC-17130', 'Ambar-PC', '172.26.46.112', '', '', '', '', '', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('130', 'PC-17131', 'Marni-PC', '172.26.46.161', 'Intel(R) Core(TM)2 Duo CPU E75', '4GB DDR2', '160 + 250G', 'Windows7 64bit', 'Rakitan', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('131', 'PC-17132', 'dini', '172.26.46.199', 'Intel(R) Core(TM) i3-4160 CPU @ 3.60GHz', '4GB DDR3', '1TB', 'Windows7 X86 SP1', 'Lenovo 10132', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('132', 'PC-17134', 'Anggit-PC', '172.26.46.48', 'Intel(R) Core(TM) i3-3220T CPU', '8GB DDR3', '1TB SATA', 'Windows7 64bit', 'HP P2-1452-l', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('133', 'PC-17135', 'SLS-001', '172.26.46.107', 'Intel(R) Core(TM) i3-4170 CPU ', '4GB DDR3', '500GB', 'Windows7 X64', 'HP280 G1 MT', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('134', 'PC-17137', '04-tia', '172.26.46.120', 'Intel(R) Pentium(R) 4 CPU 3.06GHz', '1GB DDR1', '80GB IDE', 'Windows XP X86 SP2', 'HP-Pavilion 061', null, null, '0', null, null);
INSERT INTO `computers` VALUES ('135', 'PC-17138', 'IT', '172.26.46.47', 'Intel Core I5', '4GB + 4GB ', '1TB', 'Windows 10 64bit', 'HP Slimline', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('136', 'PC-17139', 'ITPROGRAMER-PC', '172.26.46.47', 'Intel Core I5', '8GB', '', 'Windows 7 X64 SP1', 'Rakitan', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('137', 'PC-18006', 'FAD-001', '172.26.46.67', 'Intel(R) Core(TM) i5-2400 CPU @ 3.10GHz', '4GB DDR3', '500GB SATA', 'Windows7 64bit SP1', 'Rakitan', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('138', 'PC-18007', 'GM-FAD01', '172.26.46.69', 'Intel(R) Core(TM) i5-7400 CPU @ 3.00GHz', '4GB DDR4', '1TB SATA', 'Windows 10 Pro X64', 'HP Slimline 270-p017D', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('139', 'PC-18008', 'PC-18008', '172.26.46.138', 'Intel(R) Core(TM) i3-3240T CPU @ 2.90GHz', '2GB X 2', '500GB SATA', 'Windows 7 64bit SP1', 'HP110', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('140', 'PC-18009', 'PC-18009', '172.26.46.176', 'Intel Core I3', '4GB DDR4', '1TB SATA', 'Windows 7X64 SP1', 'HP Pavilion 570-p003d', null, 'Tgl Pembelian: 3/08/2018', '1', null, null);
INSERT INTO `computers` VALUES ('141', 'PC-18010', 'PC-18010', '172.26.46.177', 'Intel Core I3 Gen7', '4GB DDR4', '1TB SATA', 'Windows 7 X64 SP1', 'HP Pavilion 570-p003d', null, null, '1', null, null);
INSERT INTO `computers` VALUES ('142', 'PC-18011', 'PC-18011', '172.26.46.73', 'Intel I5', '4GB DDR4', '1TB SATA', 'Windows 10 Pro X64', 'HP Slim 290 p0034lsss', 'test', null, '1', null, '2018-10-15 02:48:08');
INSERT INTO `computers` VALUES ('143', null, 'aa', null, 'a', 'a', 'a', 'a', 'a', null, 'a', '1', '2018-10-10 10:24:22', '2018-10-10 10:24:22');
INSERT INTO `computers` VALUES ('144', null, 'tyets', null, 'esr', 'e', 'es', 'wse', 'se', null, 'e', '1', '2018-10-10 10:24:44', '2018-10-10 10:24:44');
INSERT INTO `computers` VALUES ('145', 'PC-18012', 'as', 'as', 'as', 'as', 'sa', 'as', 'as', 'test', 'as', '0', '2018-10-10 10:27:53', '2018-10-10 10:30:14');
INSERT INTO `computers` VALUES ('146', 'PC-18013', 'Anggit', '172.26.46.168', 'Intel I3', '4GB', '1000GB', 'WINDOWS 7', 'HP...', 'test', '-', '0', '2018-10-11 01:41:55', '2018-10-11 01:42:13');
INSERT INTO `computers` VALUES ('147', 'PC-18014', 'TOST', 'TOST', 'TOST', 'TOST', 'TOST', 'TOST', 'TOST', 'test', 'TOST', '0', '2018-10-11 01:45:34', '2018-10-11 01:46:45');
INSERT INTO `computers` VALUES ('148', 'PC-18015', 'aaa', '1234', 'sdfd', '4GB', '1000GB', 'as', 'as', 'test', '-', '2', '2018-10-11 01:58:29', '2018-10-11 01:58:33');
INSERT INTO `computers` VALUES ('149', 'PC-18016', '-', '-', '-', '-', '-', '-', '-', 'test', '-', '1', '2018-10-17 06:11:36', '2018-10-17 06:11:36');
INSERT INTO `computers` VALUES ('150', 'PC-18017', '-', '-', '---', '-', '-', '-', '-', 'test', '-', '1', '2018-10-17 07:48:35', '2018-10-17 07:48:35');
INSERT INTO `computers` VALUES ('151', 'PC-18018', 'pio', 'p[', 'op', 'o', 'o', '[', 'o[', 'test', '[', '1', '2018-10-17 08:53:47', '2018-10-17 08:53:47');
INSERT INTO `computers` VALUES ('152', 'PC-18019', 'zx', 'zxzx', 'xz', 'xz', 'zx', 'zx', 'xz', 'test', 'zx', '1', '2018-10-17 09:08:57', '2018-10-17 09:08:57');
INSERT INTO `computers` VALUES ('153', 'PC-18020', 'cfvg', 'cv', 'cv', 'cv', 'cv', 'cv', 'cv', 'test', 'cv', '1', '2018-10-17 09:31:10', '2018-10-17 09:31:10');
INSERT INTO `computers` VALUES ('154', 'PC-18021', 'axz', 'azx', 'axz', 'axz', 'azx', 'axz', 'azx', 'test', 'axz', '0', '2018-11-01 16:28:05', '2018-11-01 16:28:22');

-- ----------------------------
-- Table structure for `detailtables`
-- ----------------------------
DROP TABLE IF EXISTS `detailtables`;
CREATE TABLE `detailtables` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_meja` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_device` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=222 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of detailtables
-- ----------------------------
INSERT INTO `detailtables` VALUES ('220', 'A01', 'PC-18018', '2018-10-24 15:45:51', '2018-10-24 15:45:51');
INSERT INTO `detailtables` VALUES ('221', 'A01', 'PC-18014', '2018-10-24 15:46:10', '2018-10-24 15:46:10');

-- ----------------------------
-- Table structure for `migrations`
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2018_10_10_073751_create_computers_table', '1');
INSERT INTO `migrations` VALUES ('4', '2018_10_10_074955_create_clients_table', '2');
INSERT INTO `migrations` VALUES ('5', '2018_10_10_075059_create_servers_table', '2');
INSERT INTO `migrations` VALUES ('6', '2018_10_10_075119_create_virtualservers_table', '2');
INSERT INTO `migrations` VALUES ('7', '2018_10_10_075155_create_tables_table', '2');
INSERT INTO `migrations` VALUES ('8', '2018_10_10_075206_create_detailtables_table', '2');
INSERT INTO `migrations` VALUES ('9', '2018_10_28_121123_create_settings_dept_table', '3');
INSERT INTO `migrations` VALUES ('10', '2018_11_09_094243_create_settings_processor', '3');
INSERT INTO `migrations` VALUES ('11', '2018_11_09_143539_create_settings_os', '4');

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
  `id_server` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hostname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `proccessor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hardisk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `os` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of servers
-- ----------------------------
INSERT INTO `servers` VALUES ('9', 'SRV-01', 'Test Server', 'TestServer', '172.26.0.1', 'Proccessor', '1', '1000', 'Windows Server', 'HP Test', '12345678', 'ItGuard', '-', '2', '2018-10-15 03:39:30', '2018-10-15 03:39:30');
INSERT INTO `servers` VALUES ('10', 'SRV-02', 'Tost Server', 'Tost Hostname', '172.26.5.158', 'Intel tost I5', '2', '1500', 'Tost Windows Server', 'tost', '1239', 'tost hostname', '-', '0', '2018-10-15 06:51:22', '2018-10-16 09:18:03');
INSERT INTO `servers` VALUES ('11', 'SRV-03', 'Test Serverh', 'TestServerh', '172.26.0.16', 'Intel I5h', '1.5', '1000', 'testh', 'HP Testh', 'testh', 'testh', '-h', '1', '2018-10-15 07:01:31', '2018-10-17 08:02:57');
INSERT INTO `servers` VALUES ('12', 'SRV-04', 'Test Lagi', 'Test Hostname Lagi', '172.26.46.73', 'Test Proccessor', '2.5', '1000', 'Windows Check', 'Test Model', '123456789', 'Test', 'tets', '2', '2018-10-15 09:54:17', '2018-10-18 10:31:29');
INSERT INTO `servers` VALUES ('13', 'SRV-05', 'as', 'HJ', 'H', 'HP Proliant DL 120 G7', '1', '250', 'H', 'HP Pavilion 570-p003d', 'H', 'HJ', '-', '1', '2018-10-17 08:04:11', '2018-10-17 08:04:11');
INSERT INTO `servers` VALUES ('14', 'SRV-06', 'Test Server', 'test', 'test', 'Test Proccessor', '1', '250', 'test', 'Test Model', 'test', 'Test', 'tes', '1', '2018-10-17 08:08:55', '2018-10-17 08:08:55');
INSERT INTO `servers` VALUES ('15', 'SRV-07', 'df', 'df', 'df', 'df', '1', '250', 'df', 'df', 'fd', 'df', 'df', '1', '2018-10-17 08:10:27', '2018-10-17 08:10:27');
INSERT INTO `servers` VALUES ('16', 'SRV-08', 'Test Virtualasas', 'sa', 'sa', 'as', '8', '250', 'as', 'sa', 'as', 'sa', 'as', '1', '2018-10-17 09:11:28', '2018-10-17 09:11:28');
INSERT INTO `servers` VALUES ('17', 'SRV-09', 'we', 'we', 'we', 'we', '1', '250', 'we', 'ew', 'we', 'we', 'we', '1', '2018-10-17 09:11:53', '2018-10-17 09:11:53');
INSERT INTO `servers` VALUES ('18', 'SRV-10', 'gj', 'd', 'wsd', 'ds', '1', '250', 'dfs', 'ef', 'ed', 'ds', 'sfgd', '1', '2018-10-17 09:28:36', '2018-10-17 09:28:36');
INSERT INTO `servers` VALUES ('19', 'SRV-11', null, null, null, null, null, null, null, null, null, null, null, '1', '2018-10-19 02:21:35', '2018-10-19 02:21:35');
INSERT INTO `servers` VALUES ('20', 'SRV-12', 'df', 'df', 'df', 'df', '1', '250', 'fd', 'fd', 'df', 'fd', '-', '1', '2018-10-19 02:32:48', '2018-10-19 02:32:48');

-- ----------------------------
-- Table structure for `settings_dept`
-- ----------------------------
DROP TABLE IF EXISTS `settings_dept`;
CREATE TABLE `settings_dept` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dept` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comments` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of settings_dept
-- ----------------------------
INSERT INTO `settings_dept` VALUES ('1', 'Traffic', '-', '2018-11-09 09:50:57', '2018-11-09 09:50:57');
INSERT INTO `settings_dept` VALUES ('3', 'Document Export', '-', '2018-11-09 09:52:02', '2018-11-09 09:52:02');
INSERT INTO `settings_dept` VALUES ('5', 'Document Import', '-', '2018-11-09 09:52:14', '2018-11-09 09:52:14');
INSERT INTO `settings_dept` VALUES ('6', 'Marketing & Pricing', '-', '2018-11-09 09:52:24', '2018-11-09 09:52:24');

-- ----------------------------
-- Table structure for `settings_os`
-- ----------------------------
DROP TABLE IF EXISTS `settings_os`;
CREATE TABLE `settings_os` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `os` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comments` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of settings_os
-- ----------------------------
INSERT INTO `settings_os` VALUES ('3', 'test', 'test', '2018-11-09 17:52:39', '2018-11-09 17:52:39');

-- ----------------------------
-- Table structure for `settings_processor`
-- ----------------------------
DROP TABLE IF EXISTS `settings_processor`;
CREATE TABLE `settings_processor` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comments` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of settings_processor
-- ----------------------------
INSERT INTO `settings_processor` VALUES ('1', 'Intel Core I3', '-', '2018-11-09 10:23:37', '2018-11-09 10:32:02');
INSERT INTO `settings_processor` VALUES ('2', 'POST', '-', '2018-11-09 10:25:08', '2018-11-09 10:25:08');

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
INSERT INTO `tables` VALUES ('1', 'A01', 'USR18022', '2018-10-23 15:57:14', '2018-10-24 15:45:48');
INSERT INTO `tables` VALUES ('2', 'A02', null, null, '2018-10-24 15:45:40');
INSERT INTO `tables` VALUES ('3', 'A03', null, null, null);
INSERT INTO `tables` VALUES ('4', 'A04', null, null, null);
INSERT INTO `tables` VALUES ('5', 'A05', null, null, null);
INSERT INTO `tables` VALUES ('6', 'A06', null, null, null);
INSERT INTO `tables` VALUES ('7', 'A07', null, null, null);
INSERT INTO `tables` VALUES ('8', 'A08', null, null, null);
INSERT INTO `tables` VALUES ('9', 'A09', null, null, null);
INSERT INTO `tables` VALUES ('10', 'A10', null, null, null);
INSERT INTO `tables` VALUES ('11', 'A11', null, null, null);
INSERT INTO `tables` VALUES ('12', 'A12', null, null, null);
INSERT INTO `tables` VALUES ('13', 'A13', null, null, null);
INSERT INTO `tables` VALUES ('14', 'A14', null, null, null);
INSERT INTO `tables` VALUES ('15', 'B01', null, null, null);
INSERT INTO `tables` VALUES ('16', 'B02', null, null, null);
INSERT INTO `tables` VALUES ('17', 'B03', null, null, null);
INSERT INTO `tables` VALUES ('18', 'B04', null, null, null);
INSERT INTO `tables` VALUES ('19', 'B05', null, null, null);
INSERT INTO `tables` VALUES ('20', 'B06', null, null, null);
INSERT INTO `tables` VALUES ('21', 'B07', null, null, null);
INSERT INTO `tables` VALUES ('22', 'B08', null, null, null);
INSERT INTO `tables` VALUES ('23', 'B09', null, null, null);
INSERT INTO `tables` VALUES ('24', 'B10', null, null, null);
INSERT INTO `tables` VALUES ('25', 'B11', null, null, null);
INSERT INTO `tables` VALUES ('26', 'B12', null, null, null);
INSERT INTO `tables` VALUES ('27', 'B13', null, null, null);
INSERT INTO `tables` VALUES ('28', 'B14', null, null, null);
INSERT INTO `tables` VALUES ('29', 'C01', null, null, null);
INSERT INTO `tables` VALUES ('30', 'C02', null, null, null);
INSERT INTO `tables` VALUES ('31', 'C03', null, null, null);
INSERT INTO `tables` VALUES ('32', 'C04', null, null, null);
INSERT INTO `tables` VALUES ('33', 'C05', null, null, null);
INSERT INTO `tables` VALUES ('34', 'C06', null, null, null);
INSERT INTO `tables` VALUES ('35', 'C07', null, null, null);
INSERT INTO `tables` VALUES ('36', 'C08', null, null, null);
INSERT INTO `tables` VALUES ('37', 'C09', null, null, null);
INSERT INTO `tables` VALUES ('38', 'C10', null, null, null);
INSERT INTO `tables` VALUES ('39', 'D01', null, null, null);
INSERT INTO `tables` VALUES ('40', 'D02', null, null, null);
INSERT INTO `tables` VALUES ('41', 'D03', null, null, null);
INSERT INTO `tables` VALUES ('42', 'D04', null, null, null);
INSERT INTO `tables` VALUES ('43', 'D05', null, null, null);
INSERT INTO `tables` VALUES ('44', 'D06', null, null, null);
INSERT INTO `tables` VALUES ('45', 'D07', null, null, null);
INSERT INTO `tables` VALUES ('46', 'D08', null, null, null);
INSERT INTO `tables` VALUES ('47', 'D09', null, null, null);
INSERT INTO `tables` VALUES ('48', 'D10', null, null, null);
INSERT INTO `tables` VALUES ('49', 'D11', null, null, null);
INSERT INTO `tables` VALUES ('50', 'D12', null, null, null);
INSERT INTO `tables` VALUES ('51', 'D13', null, null, null);
INSERT INTO `tables` VALUES ('52', 'D14', null, null, null);
INSERT INTO `tables` VALUES ('53', 'E01', null, null, null);
INSERT INTO `tables` VALUES ('54', 'E02', null, null, null);
INSERT INTO `tables` VALUES ('55', 'E03', null, null, null);
INSERT INTO `tables` VALUES ('56', 'E04', null, null, null);
INSERT INTO `tables` VALUES ('57', 'E05', null, null, null);
INSERT INTO `tables` VALUES ('58', 'E06', null, null, null);
INSERT INTO `tables` VALUES ('59', 'E07', null, null, null);
INSERT INTO `tables` VALUES ('60', 'E08', null, null, null);
INSERT INTO `tables` VALUES ('61', 'E09', null, null, null);
INSERT INTO `tables` VALUES ('62', 'E10', null, null, null);
INSERT INTO `tables` VALUES ('63', 'E11', null, null, null);
INSERT INTO `tables` VALUES ('64', 'E12', null, null, null);
INSERT INTO `tables` VALUES ('65', 'E13', null, null, null);
INSERT INTO `tables` VALUES ('66', 'E14', null, null, null);
INSERT INTO `tables` VALUES ('67', 'F01', null, null, null);
INSERT INTO `tables` VALUES ('68', 'F02', null, null, null);
INSERT INTO `tables` VALUES ('69', 'F03', null, null, null);
INSERT INTO `tables` VALUES ('70', 'F04', null, null, null);
INSERT INTO `tables` VALUES ('71', 'F05', null, null, null);
INSERT INTO `tables` VALUES ('72', 'F06', null, null, null);
INSERT INTO `tables` VALUES ('73', 'F07', null, null, null);
INSERT INTO `tables` VALUES ('74', 'F08', null, null, null);
INSERT INTO `tables` VALUES ('75', 'F09', null, null, null);
INSERT INTO `tables` VALUES ('76', 'F10', null, null, null);
INSERT INTO `tables` VALUES ('77', 'G01', null, null, null);
INSERT INTO `tables` VALUES ('78', 'G02', null, null, null);
INSERT INTO `tables` VALUES ('79', 'G03', null, null, null);
INSERT INTO `tables` VALUES ('80', 'G04', null, null, null);
INSERT INTO `tables` VALUES ('81', 'G05', null, null, null);
INSERT INTO `tables` VALUES ('82', 'G06', null, null, null);
INSERT INTO `tables` VALUES ('83', 'G07', null, null, null);
INSERT INTO `tables` VALUES ('84', 'G08', null, null, null);
INSERT INTO `tables` VALUES ('85', 'G09', null, null, null);
INSERT INTO `tables` VALUES ('86', 'G10', null, null, null);
INSERT INTO `tables` VALUES ('87', 'G11', null, null, null);
INSERT INTO `tables` VALUES ('88', 'G12', null, null, null);
INSERT INTO `tables` VALUES ('89', 'G13', null, null, null);
INSERT INTO `tables` VALUES ('90', 'G14', null, null, null);
INSERT INTO `tables` VALUES ('91', 'H01', null, null, null);
INSERT INTO `tables` VALUES ('92', 'H02', null, null, null);
INSERT INTO `tables` VALUES ('93', 'H03', null, null, null);
INSERT INTO `tables` VALUES ('94', 'H04', null, null, null);
INSERT INTO `tables` VALUES ('95', 'H05', null, null, null);
INSERT INTO `tables` VALUES ('96', 'H06', null, null, null);
INSERT INTO `tables` VALUES ('97', 'H07', null, null, null);
INSERT INTO `tables` VALUES ('98', 'H08', null, null, null);
INSERT INTO `tables` VALUES ('99', 'H09', null, null, null);
INSERT INTO `tables` VALUES ('100', 'H10', null, null, null);
INSERT INTO `tables` VALUES ('101', 'H11', null, null, null);
INSERT INTO `tables` VALUES ('102', 'H12', null, null, null);
INSERT INTO `tables` VALUES ('103', 'I01', null, null, null);
INSERT INTO `tables` VALUES ('104', 'I02', null, null, null);
INSERT INTO `tables` VALUES ('105', 'I03', null, null, null);
INSERT INTO `tables` VALUES ('106', 'I04', null, null, null);
INSERT INTO `tables` VALUES ('107', 'I05', null, null, null);
INSERT INTO `tables` VALUES ('108', 'I06', null, null, null);
INSERT INTO `tables` VALUES ('109', 'I07', null, null, null);
INSERT INTO `tables` VALUES ('110', 'I08', null, null, null);
INSERT INTO `tables` VALUES ('111', 'I09', null, null, null);
INSERT INTO `tables` VALUES ('112', 'I10', null, null, null);
INSERT INTO `tables` VALUES ('113', 'J01', null, null, null);
INSERT INTO `tables` VALUES ('114', 'J02', null, null, null);
INSERT INTO `tables` VALUES ('115', 'J03', null, null, null);
INSERT INTO `tables` VALUES ('116', 'J04', null, null, null);
INSERT INTO `tables` VALUES ('117', 'J05', null, null, null);
INSERT INTO `tables` VALUES ('118', 'J06', null, null, null);
INSERT INTO `tables` VALUES ('119', 'K01', null, null, null);
INSERT INTO `tables` VALUES ('120', 'K02', null, null, null);
INSERT INTO `tables` VALUES ('121', 'K03', null, null, null);
INSERT INTO `tables` VALUES ('122', 'K04', null, null, null);
INSERT INTO `tables` VALUES ('123', 'K05', null, null, null);
INSERT INTO `tables` VALUES ('124', 'K06', null, null, null);
INSERT INTO `tables` VALUES ('125', 'K07', null, null, null);
INSERT INTO `tables` VALUES ('126', 'K08', null, null, null);
INSERT INTO `tables` VALUES ('127', 'L01', null, null, null);
INSERT INTO `tables` VALUES ('128', 'L02', null, null, null);
INSERT INTO `tables` VALUES ('129', 'L03', null, null, null);
INSERT INTO `tables` VALUES ('130', 'L04', null, null, null);
INSERT INTO `tables` VALUES ('131', 'L05', null, null, null);
INSERT INTO `tables` VALUES ('132', 'L06', null, null, null);
INSERT INTO `tables` VALUES ('133', 'L07', null, null, null);
INSERT INTO `tables` VALUES ('134', 'L08', null, null, null);
INSERT INTO `tables` VALUES ('135', 'L09', null, null, null);
INSERT INTO `tables` VALUES ('136', 'L10', null, null, null);
INSERT INTO `tables` VALUES ('137', 'M01', null, null, null);
INSERT INTO `tables` VALUES ('138', 'M02', null, null, null);
INSERT INTO `tables` VALUES ('139', 'M03', null, null, null);
INSERT INTO `tables` VALUES ('140', 'M04', null, null, null);
INSERT INTO `tables` VALUES ('141', 'M05', null, null, null);
INSERT INTO `tables` VALUES ('142', 'M06', null, null, null);
INSERT INTO `tables` VALUES ('143', 'M07', null, null, null);
INSERT INTO `tables` VALUES ('144', 'M08', null, null, null);
INSERT INTO `tables` VALUES ('145', 'M09', null, null, null);
INSERT INTO `tables` VALUES ('146', 'M10', null, null, null);
INSERT INTO `tables` VALUES ('147', 'M11', null, null, null);
INSERT INTO `tables` VALUES ('148', 'M12', null, null, null);
INSERT INTO `tables` VALUES ('149', 'M13', null, null, null);
INSERT INTO `tables` VALUES ('150', 'M14', null, null, null);
INSERT INTO `tables` VALUES ('151', 'M15', null, null, null);
INSERT INTO `tables` VALUES ('152', 'M16', null, null, null);
INSERT INTO `tables` VALUES ('153', 'M17', null, null, null);
INSERT INTO `tables` VALUES ('154', 'M18', null, null, null);
INSERT INTO `tables` VALUES ('155', 'M19', null, null, null);
INSERT INTO `tables` VALUES ('156', 'M20', null, null, null);
INSERT INTO `tables` VALUES ('157', 'M21', null, null, null);
INSERT INTO `tables` VALUES ('158', 'N01', null, null, null);
INSERT INTO `tables` VALUES ('159', 'N02', null, null, null);
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
INSERT INTO `tables` VALUES ('179', 'Q01', null, null, null);
INSERT INTO `tables` VALUES ('180', 'Q02', null, null, null);
INSERT INTO `tables` VALUES ('181', 'Q03', null, null, null);
INSERT INTO `tables` VALUES ('182', 'Q04', null, null, null);
INSERT INTO `tables` VALUES ('183', 'Q05', null, null, null);
INSERT INTO `tables` VALUES ('184', 'Q06', null, null, null);
INSERT INTO `tables` VALUES ('185', 'Q07', null, null, null);
INSERT INTO `tables` VALUES ('186', 'Q08', null, null, null);
INSERT INTO `tables` VALUES ('187', 'Q09', null, null, null);
INSERT INTO `tables` VALUES ('188', 'Q10', null, null, null);
INSERT INTO `tables` VALUES ('189', 'Q11', null, null, null);
INSERT INTO `tables` VALUES ('190', 'Q12', null, null, null);
INSERT INTO `tables` VALUES ('191', 'Q13', null, null, null);
INSERT INTO `tables` VALUES ('192', 'Q14', null, null, null);
INSERT INTO `tables` VALUES ('193', 'Q15', null, null, null);
INSERT INTO `tables` VALUES ('194', 'Q16', null, null, null);
INSERT INTO `tables` VALUES ('195', 'Q17', null, null, null);
INSERT INTO `tables` VALUES ('196', 'Q18', null, null, null);
INSERT INTO `tables` VALUES ('197', 'Q19', null, null, null);
INSERT INTO `tables` VALUES ('198', 'R01', null, null, null);
INSERT INTO `tables` VALUES ('199', 'R02', null, null, null);
INSERT INTO `tables` VALUES ('200', 'R03', null, null, null);
INSERT INTO `tables` VALUES ('201', 'R04', null, null, null);
INSERT INTO `tables` VALUES ('202', 'R05', null, null, null);
INSERT INTO `tables` VALUES ('203', 'R06', null, null, null);
INSERT INTO `tables` VALUES ('204', 'R07', null, null, null);
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
INSERT INTO `users` VALUES ('1', 'Admin', 'admin@admin.com', null, '$2y$12$2vGbIhJYCzMSNUj9UwFgkOo3inQ6Do6RVGykimeZX4gKckIgvjaze', null, '1', '2018-10-10 16:06:40', '2018-10-10 16:06:43');
INSERT INTO `users` VALUES ('2', 'Guest', 'guest@guest.com', null, '$2y$12$2vGbIhJYCzMSNUj9UwFgkOo3inQ6Do6RVGykimeZX4gKckIgvjaze', null, '0', '2018-10-16 09:27:06', '2018-10-16 09:27:10');

-- ----------------------------
-- Table structure for `virtualservers`
-- ----------------------------
DROP TABLE IF EXISTS `virtualservers`;
CREATE TABLE `virtualservers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_server` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vm_on` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hostname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hardisk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `os` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of virtualservers
-- ----------------------------
INSERT INTO `virtualservers` VALUES ('6', 'VIR-01', 'SRV-03', 'e', 'e', 'e', '2.5', '2250', 'e', 'e', 'e', '0', '2018-10-15 03:40:53', '2018-10-17 08:02:16');
INSERT INTO `virtualservers` VALUES ('7', 'VIR-02', 'SRV-04', 'Test Virtualas', 'Test Virtual Hostnameas', '172.26.0.1sa', '1', '1000', 'Windows Server Virtualas', 'itGuardas', '-sa', '1', '2018-10-15 03:42:25', '2018-10-17 09:10:59');
INSERT INTO `virtualservers` VALUES ('8', 'VIR-03', 'SRV-04', 'Edited Vrtual Server', 'Edited Hostname Virtual Server', '172.26.5.5', '4', '1000', 'Edited OS Virtual Server', 'Edited Password-', 'Edited Remark', '1', '2018-10-15 03:55:06', '2018-10-17 06:29:39');
INSERT INTO `virtualservers` VALUES ('9', 'VIR-04', 'SRV-04', 'wt', 'wt', 'wt', '1.5', '500', '-t', 'wt', '-t', '2', '2018-10-17 06:32:02', '2018-10-17 08:02:11');
INSERT INTO `virtualservers` VALUES ('10', 'VIR-05', 'SRV-07', 'fdgh', 'dfgh', 'fdhg', '1.5', '500', 'dfhg', 'fdgh', 'dfgh', '1', '2018-10-17 08:10:36', '2018-10-17 08:10:47');
INSERT INTO `virtualservers` VALUES ('11', 'VIR-06', 'SRV-10', 'sda', 'SA', 'SDA', '1', '250', 'RFSDG', 'SAD', 'SDFG', '1', '2018-10-17 09:29:10', '2018-10-17 09:29:10');
