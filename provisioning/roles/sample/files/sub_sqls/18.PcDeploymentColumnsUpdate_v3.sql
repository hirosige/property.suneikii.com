
/********************
* PC Deployment PC Shortage
*********************/

DELETE FROM code WHERE code_bunrui = '20009';
INSERT INTO code VALUES ('20009','001','所属',10);
INSERT INTO code VALUES ('20009','002','設置地区',20);
INSERT INTO code VALUES ('20009','003','設置場所',30);
INSERT INTO code VALUES ('20009','004','設置階',40);
INSERT INTO code VALUES ('20009','005','設置エリア',50);
INSERT INTO code VALUES ('20009','006','PC不足台数',60);
INSERT INTO code VALUES ('20009','007','PC不足理由',70);
INSERT INTO code VALUES ('20009','008','利用情報',80);
INSERT INTO code VALUES ('20009','009','使用形態',90);


/********************
* PC Deployment PC Excess
*********************/

DELETE FROM code WHERE code_bunrui = '20010';
INSERT INTO code VALUES ('20010','001','所属',10);
INSERT INTO code VALUES ('20010','002','設置地区',20);
INSERT INTO code VALUES ('20010','003','設置場所',30);
INSERT INTO code VALUES ('20010','004','設置階',40);
INSERT INTO code VALUES ('20010','005','設置エリア',50);
INSERT INTO code VALUES ('20010','006','調達形態区分',60);
INSERT INTO code VALUES ('20010','007','購入／リース',70);
INSERT INTO code VALUES ('20010','008','ハードウェア管理番号',80);
INSERT INTO code VALUES ('20010','009','コンピュータ名（収）',90);
INSERT INTO code VALUES ('20010','010','IPアドレス（収）',100);
INSERT INTO code VALUES ('20010','011','使用形態',110);
INSERT INTO code VALUES ('20010','012','IPアドレス',120);
INSERT INTO code VALUES ('20010','013','IPアドレス2',130);
INSERT INTO code VALUES ('20010','014','MACアドレス',140);
INSERT INTO code VALUES ('20010','015','MACアドレス2',150);
INSERT INTO code VALUES ('20010','016','ソフトウェア台帳インストール数（ソ）',160);
INSERT INTO code VALUES ('20010','017','PCベンダー（収）',170);
INSERT INTO code VALUES ('20010','018','PC機種（収）',180);
INSERT INTO code VALUES ('20010','019','使用者によるソフトウェア追加導入・削除（シ）',190);
INSERT INTO code VALUES ('20010','020','調達情報',200);
INSERT INTO code VALUES ('20010','021','ハードウェア備考',210);
INSERT INTO code VALUES ('20010','022','貸出日',220);
INSERT INTO code VALUES ('20010','023','返却予定日',230);
INSERT INTO code VALUES ('20010','024','返却日',240);
INSERT INTO code VALUES ('20010','025','調達日',250);
INSERT INTO code VALUES ('20010','026','廃棄日',260);

/********************
* PC Placement Move
*********************/

DELETE FROM code WHERE code_bunrui = '20011';
INSERT INTO code VALUES ('20011','001','ハードウェア管理番号',10);
INSERT INTO code VALUES ('20011','002','所属',20);
INSERT INTO code VALUES ('20011','003','設置地区',30);
INSERT INTO code VALUES ('20011','004','設置場所',40);
INSERT INTO code VALUES ('20011','005','設置階',50);
INSERT INTO code VALUES ('20011','006','設置エリア',60);
INSERT INTO code VALUES ('20011','007','使用形態',70);
/* ARMS J.Pajaree 2015/12/09 START */
INSERT INTO code VALUES ('20011','008','新所属',80);
INSERT INTO code VALUES ('20011','009','新設置地区',90);
INSERT INTO code VALUES ('20011','010','新設置場所',100);
INSERT INTO code VALUES ('20011','011','新設置階',110);
INSERT INTO code VALUES ('20011','012','新設置エリア',120);
INSERT INTO code VALUES ('20011','013','新使用形態',130);
INSERT INTO code VALUES ('20011','014','PC移動理由',140);
/* ARMS J.Pajaree 2015/12/16 Add new code START */
INSERT INTO code VALUES ('20011','015','利用情報',150);
/* ARMS J.Pajaree 2015/12/16 Add new code END */
/* ARMS J.Pajaree 2015/12/09 END */



/********************
* PC Deployment PC Shortage Status
*********************/

DELETE FROM code WHERE code_bunrui = '20012';
INSERT INTO code VALUES ('20012','001','ハードウェア管理番号',10);
INSERT INTO code VALUES ('20012','002','新所属',20);
INSERT INTO code VALUES ('20012','003','新設置地区',30);
INSERT INTO code VALUES ('20012','004','新設置場所',40);
INSERT INTO code VALUES ('20012','005','新設置階',50);
INSERT INTO code VALUES ('20012','006','新設置エリア',60);
INSERT INTO code VALUES ('20012','007','新使用形態',70);
INSERT INTO code VALUES ('20012','008','新IPアドレス',80);
INSERT INTO code VALUES ('20012','009','新IPアドレス2',90);
INSERT INTO code VALUES ('20012','010','旧所属',100);
INSERT INTO code VALUES ('20012','011','旧設置地区',110);
INSERT INTO code VALUES ('20012','012','旧設置場所',120);
INSERT INTO code VALUES ('20012','013','旧設置階',130);
INSERT INTO code VALUES ('20012','014','旧設置エリア',140);
INSERT INTO code VALUES ('20012','015','旧使用形態',150);

/********************
* PC Deployment PC Excess Status
*********************/

DELETE FROM code WHERE code_bunrui = '20013';
INSERT INTO code VALUES ('20013','001','ハードウェア管理番号',10);
INSERT INTO code VALUES ('20013','002','旧所属',20);
INSERT INTO code VALUES ('20013','003','旧設置地区',30);
INSERT INTO code VALUES ('20013','004','旧設置場所',40);
INSERT INTO code VALUES ('20013','005','旧設置階',50);
INSERT INTO code VALUES ('20013','006','旧設置エリア',60);
INSERT INTO code VALUES ('20013','007','配布先所属',70);

/********************
* PC Deployment PC Transfer Status
*********************/

DELETE FROM code WHERE code_bunrui = '20014';
INSERT INTO code VALUES ('20014','001','ハードウェア管理番号',10);
INSERT INTO code VALUES ('20014','002','新所属',20);
INSERT INTO code VALUES ('20014','003','新設置地区',30);
INSERT INTO code VALUES ('20014','004','新設置場所',40);
INSERT INTO code VALUES ('20014','005','新設置階',50);
INSERT INTO code VALUES ('20014','006','新設置エリア',60);
INSERT INTO code VALUES ('20014','007','新使用形態',70);
INSERT INTO code VALUES ('20014','008','新IPアドレス',80);
INSERT INTO code VALUES ('20014','009','新IPアドレス2',90);
INSERT INTO code VALUES ('20014','010','旧所属',100);
INSERT INTO code VALUES ('20014','011','旧設置地区',110);
INSERT INTO code VALUES ('20014','012','旧設置場所', 120);
INSERT INTO code VALUES ('20014','013','旧設置階', 130);
INSERT INTO code VALUES ('20014','014','旧設置エリア', 140);
INSERT INTO code VALUES ('20014','015','旧使用形態', 150);

/********************
* PC Deployment PC Distribution Settings
*********************/

DELETE FROM code WHERE code_bunrui = '20015';
-- ARMS T.Sadayu 2015/12/09 sort Start
INSERT INTO code VALUES ('20015','001','配置希望所属',10);
INSERT INTO code VALUES ('20015','002','設置エリア番号',20);
INSERT INTO code VALUES ('20015','003','設置地区',30);
INSERT INTO code VALUES ('20015','004','設置場所',40);
INSERT INTO code VALUES ('20015','005','設置階',50);
INSERT INTO code VALUES ('20015','006','設置エリア',60);
INSERT INTO code VALUES ('20015','007','希望数',70);
INSERT INTO code VALUES ('20015','008','割当数',80);
INSERT INTO code VALUES ('20015','009','希望残数',90);
INSERT INTO code VALUES ('20015','010','振分状況',100);
INSERT INTO code VALUES ('20015','011','配置元所属',110);
INSERT INTO code VALUES ('20015','012','配布元ハードウェア管理番号',120);
INSERT INTO code VALUES ('20015','013','PC余剰数',130);
INSERT INTO code VALUES ('20015','014','PC余剰残数',140);
INSERT INTO code VALUES ('20015','015','設置希望数',150);
INSERT INTO code VALUES ('20015','016','PC配置基本情報',160);
INSERT INTO code VALUES ('20015','017','PC配置情報',170);
INSERT INTO code VALUES ('20015','018','PC余剰情報',180);
INSERT INTO code VALUES ('20015','019','不要設置場所名称',190);
-- ARMS T.Sadayu 2015/12/09 sort END

/********************
* PC Deployment PC Distribution Confirmation
*********************/
-- ARMS J.Pajaree 2015/12/09 sort START
DELETE FROM code WHERE code_bunrui = '20016';
INSERT INTO code VALUES ('20016','001','状態',10);
INSERT INTO code VALUES ('20016','002','IP変更',20);
INSERT INTO code VALUES ('20016','003','ハードウェア管理番号',30);
INSERT INTO code VALUES ('20016','004','配置希望所属',40);
INSERT INTO code VALUES ('20016','005','設置エリア番号',50);
INSERT INTO code VALUES ('20016','006','設置地区',60);
INSERT INTO code VALUES ('20016','007','設置場所',70);
INSERT INTO code VALUES ('20016','008','設置階',80);
INSERT INTO code VALUES ('20016','009','設置エリア',90);
INSERT INTO code VALUES ('20016','010','IPアドレス',100);
INSERT INTO code VALUES ('20016','011','IPアドレス2',110);
INSERT INTO code VALUES ('20016','012','旧所属',120);
INSERT INTO code VALUES ('20016','013','旧設置エリア番号',130);
INSERT INTO code VALUES ('20016','014','旧設置地区',140);
INSERT INTO code VALUES ('20016','015','旧設置場所',150);
INSERT INTO code VALUES ('20016','016','旧設置階',160);
INSERT INTO code VALUES ('20016','017','旧設置エリア',170);
INSERT INTO code VALUES ('20016','018','旧IPアドレス',180);
INSERT INTO code VALUES ('20016','019','旧IPアドレス2',190);
INSERT INTO code VALUES ('20016','020','振分状況',200);
INSERT INTO code VALUES ('20016','021','CSVデータ',210);
-- ARMS J.Pajaree 2015/12/09 sort END

/********************
* PC Deployment PC Returns Confirmation
*********************/

DELETE FROM code WHERE code_bunrui = '20017';
INSERT INTO code VALUES ('20017','001','ハードウェア管理番号',10);
INSERT INTO code VALUES ('20017','002','旧所属',20);
INSERT INTO code VALUES ('20017','003','旧設置地区',30);
INSERT INTO code VALUES ('20017','004','旧設置場所',40);
INSERT INTO code VALUES ('20017','005','旧設置階',50);
INSERT INTO code VALUES ('20017','006','旧設置エリア',60);
INSERT INTO code VALUES ('20017','007','旧IPアドレス',70);
INSERT INTO code VALUES ('20017','008','旧IPアドレス2',80);
INSERT INTO code VALUES ('20017','009','配置希望所属',90);
INSERT INTO code VALUES ('20017','010','配置地区',100);
INSERT INTO code VALUES ('20017','011','配置場所',110);
INSERT INTO code VALUES ('20017','012','配置階',120);
INSERT INTO code VALUES ('20017','013','配置エリア',130);

/********************
* PC allocation execution
*********************/
-- ARMS J.Pajaree 2015/12/14 Modify sql sort START
DELETE FROM code WHERE code_bunrui = '20018';
INSERT INTO code VALUES ('20018','001','状態',10);
INSERT INTO code VALUES ('20018','002','IP変更',20);
INSERT INTO code VALUES ('20018','003','ハードウェア管理番号',30);
INSERT INTO code VALUES ('20018','004','配置希望所属',40);
INSERT INTO code VALUES ('20018','005','設置エリア番号',50);
INSERT INTO code VALUES ('20018','006','設置地区',60);
INSERT INTO code VALUES ('20018','007','設置場所',70);
INSERT INTO code VALUES ('20018','008','設置階',80);
INSERT INTO code VALUES ('20018','009','設置エリア',90);
INSERT INTO code VALUES ('20018','010','ＩPアドレス',100);
INSERT INTO code VALUES ('20018','011','ＩPアドレス2',110);
INSERT INTO code VALUES ('20018','012','旧所属',120);
INSERT INTO code VALUES ('20018','013','旧設置エリア番号',130);
INSERT INTO code VALUES ('20018','014','旧設置地区',140);
INSERT INTO code VALUES ('20018','015','旧設置場所',150);
INSERT INTO code VALUES ('20018','016','旧設置階',160);
INSERT INTO code VALUES ('20018','017','旧設置エリア',170);
INSERT INTO code VALUES ('20018','018','旧ＩPアドレス',180);
INSERT INTO code VALUES ('20018','019','旧IPアドレス2',190);
INSERT INTO code VALUES ('20018','020','振分状況',200);
-- ARMS J.Pajaree 2015/12/14 Modify sql sort END

-- ARMS T.Sadayu 2015/12/09 new sql Start
/********************
* PC Placement Controller
*********************/

DELETE FROM code WHERE code_bunrui = '20024';
DELETE FROM codebunrui WHERE code_bunrui = '20024';
INSERT INTO codebunrui VALUES ('20024', '計画開始設定');
INSERT INTO code VALUES ('20024','001','入力期間情報',10);
INSERT INTO code VALUES ('20024','002','PC配置情報入力期間',20);
INSERT INTO code VALUES ('20024','003','振分期間',30);
INSERT INTO code VALUES ('20024','004','PC配置情報確認期間',40);
INSERT INTO code VALUES ('20024','005','PC配置関連台帳反映日',50);
INSERT INTO code VALUES ('20024','006','状況',60);
-- ARMS T.Sadayu 2015/12/09 new sql END
