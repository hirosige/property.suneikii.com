
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
* PC Deployment PC Transfer
*********************/

DELETE FROM code WHERE code_bunrui = '20011';
INSERT INTO code VALUES ('20011','001','ハードウェア管理番号',10);
INSERT INTO code VALUES ('20011','002','所属',20);
INSERT INTO code VALUES ('20011','003','設置地区',30);
INSERT INTO code VALUES ('20011','004','設置場所',40);
INSERT INTO code VALUES ('20011','005','設置階',50);
INSERT INTO code VALUES ('20011','006','設置エリア',60);
INSERT INTO code VALUES ('20011','007','使用形態',70);
INSERT INTO code VALUES ('20011','008','新設置地区',80);
INSERT INTO code VALUES ('20011','009','新設置場所',90);
INSERT INTO code VALUES ('20011','010','新設置階',100);
INSERT INTO code VALUES ('20011','011','新設置エリア',110);
INSERT INTO code VALUES ('20011','012','新使用形態',120);
INSERT INTO code VALUES ('20011','013','PC移動理由',130);
INSERT INTO code VALUES ('20011','014','新所属',140);



/********************
* PC Deployment PC Shortage Status
*********************/

DELETE FROM code WHERE code_bunrui = '20012';
INSERT INTO code VALUES ('20012','001','配布元ハードウェア管理番号',10);
INSERT INTO code VALUES ('20012','002','旧設置地区',20);
INSERT INTO code VALUES ('20012','003','旧設置場所',30);
INSERT INTO code VALUES ('20012','004','旧設置階',40);
INSERT INTO code VALUES ('20012','005','旧設置エリア',50);
INSERT INTO code VALUES ('20012','006','配布元所属',60);
INSERT INTO code VALUES ('20012','007','IPアドレス',70);
INSERT INTO code VALUES ('20012','008','ＩPアドレス2',80);
INSERT INTO code VALUES ('20012','009','ハードウェア管理番号',90);
INSERT INTO code VALUES ('20012','010','新所属',100);
INSERT INTO code VALUES ('20012','011','新設置地区',110);
INSERT INTO code VALUES ('20012','012','新設置場所',120);
INSERT INTO code VALUES ('20012','013','新設置階',130);
INSERT INTO code VALUES ('20012','014','新設置エリア',140);
INSERT INTO code VALUES ('20012','015','新使用形態',150);
INSERT INTO code VALUES ('20012','016','新IPアドレス',160);
INSERT INTO code VALUES ('20012','017','新IPアドレス2',170);
INSERT INTO code VALUES ('20012','018','旧所属',180);
INSERT INTO code VALUES ('20012','019','旧使用形態',190);

/********************
* PC Deployment PC Excess Status
*********************/

DELETE FROM code WHERE code_bunrui = '20013';
INSERT INTO code VALUES ('20013','001','ハードウェア管理番号',10);
INSERT INTO code VALUES ('20013','002','旧設置地区',20);
INSERT INTO code VALUES ('20013','003','旧設置場所',30);
INSERT INTO code VALUES ('20013','004','旧設置階',40);
INSERT INTO code VALUES ('20013','005','旧設置エリア',50);
INSERT INTO code VALUES ('20013','006','配布先所属',60);
INSERT INTO code VALUES ('20013','007','旧所属',70);

/********************
* PC Deployment PC Transfer Status
*********************/

DELETE FROM code WHERE code_bunrui = '20014';
INSERT INTO code VALUES ('20014','001','ハードウェア管理番号',10);
INSERT INTO code VALUES ('20014','002','旧設置地区',20);
INSERT INTO code VALUES ('20014','003','旧設置場所',30);
INSERT INTO code VALUES ('20014','004','旧設置階',40);
INSERT INTO code VALUES ('20014','005','旧設置エリア',50);
INSERT INTO code VALUES ('20014','006','新設置地区',60);
INSERT INTO code VALUES ('20014','007','新設置場所',70);
INSERT INTO code VALUES ('20014','008','新設置階',80);
INSERT INTO code VALUES ('20014','009','新設置エリア',90);
INSERT INTO code VALUES ('20014','010','新IPアドレス',100);
INSERT INTO code VALUES ('20014','011','新IPアドレス2',110);
INSERT INTO code VALUES ('20014','012','新所属', 120);
INSERT INTO code VALUES ('20014','013','新使用形態', 130);
INSERT INTO code VALUES ('20014','014','旧使用形態', 140);

/********************
* PC Deployment PC Distribution Settings
*********************/

DELETE FROM code WHERE code_bunrui = '20015';
INSERT INTO code VALUES ('20015','001','配置希望所属',10);
INSERT INTO code VALUES ('20015','002','配置元所属',20);
INSERT INTO code VALUES ('20015','003','設置地区',30);
INSERT INTO code VALUES ('20015','004','設置場所',40);
INSERT INTO code VALUES ('20015','005','設置階',50);
INSERT INTO code VALUES ('20015','006','設置エリア',60);
INSERT INTO code VALUES ('20015','007','配布元ハードウェア管理番号',70);
INSERT INTO code VALUES ('20015','008','希望数',80);
INSERT INTO code VALUES ('20015','009','割当数',90);
INSERT INTO code VALUES ('20015','010','希望残数',100);
INSERT INTO code VALUES ('20015','011','振分状況',110);
INSERT INTO code VALUES ('20015','012','PC余剰数',120);
INSERT INTO code VALUES ('20015','013','PC余剰残数',130);
INSERT INTO code VALUES ('20015','014','設置エリア番号',140);
INSERT INTO code VALUES ('20015','015','設置希望数',150);

/********************
* PC Deployment PC Distribution Confirmation
*********************/

DELETE FROM code WHERE code_bunrui = '20016';
INSERT INTO code VALUES ('20016','001','振分状況',10);
INSERT INTO code VALUES ('20016','002','ハードウェア管理番号',20);
INSERT INTO code VALUES ('20016','003','旧所属',30);
INSERT INTO code VALUES ('20016','004','旧設置地区',40);
INSERT INTO code VALUES ('20016','005','旧設置場所',50);
INSERT INTO code VALUES ('20016','006','旧設置階',60);
INSERT INTO code VALUES ('20016','007','旧設置エリア',70);
INSERT INTO code VALUES ('20016','008','旧IPアドレス',80);
INSERT INTO code VALUES ('20016','009','旧IPアドレス2',90);
INSERT INTO code VALUES ('20016','010','配置希望所属',100);
INSERT INTO code VALUES ('20016','011','設置地区',110);
INSERT INTO code VALUES ('20016','012','設置場所',120);
INSERT INTO code VALUES ('20016','013','設置階',130);
INSERT INTO code VALUES ('20016','014','設置エリア',140);
INSERT INTO code VALUES ('20016','015','IPアドレス',150);
INSERT INTO code VALUES ('20016','016','IPアドレス2',160);
INSERT INTO code VALUES ('20016','017','設置エリア番号',170);
INSERT INTO code VALUES ('20016','018','旧設置エリア番号',180);
INSERT INTO code VALUES ('20016','019','状態',190);
INSERT INTO code VALUES ('20016','020','IP変更',200);
INSERT INTO code VALUES ('20016','021','CSVデータ',210);


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
* PC Deployment PC Distribution Carryout
*********************/

DELETE FROM code WHERE code_bunrui = '20018';
INSERT INTO code VALUES ('20018','001','振分状況',10);
INSERT INTO code VALUES ('20018','002','ハードウェア管理番号',20);
INSERT INTO code VALUES ('20018','003','旧所属',30);
INSERT INTO code VALUES ('20018','004','旧設置地区',40);
INSERT INTO code VALUES ('20018','005','旧設置場所',50);
INSERT INTO code VALUES ('20018','006','旧設置階',60);
INSERT INTO code VALUES ('20018','007','旧設置エリア',70);
INSERT INTO code VALUES ('20018','008','旧ＩPアドレス',80);
INSERT INTO code VALUES ('20018','009','旧IPアドレス2',90);
INSERT INTO code VALUES ('20018','010','配置希望所属',100);
INSERT INTO code VALUES ('20018','011','設置地区',110);
INSERT INTO code VALUES ('20018','012','設置場所',120);
INSERT INTO code VALUES ('20018','013','設置階',130);
INSERT INTO code VALUES ('20018','014','設置エリア',140);
INSERT INTO code VALUES ('20018','015','ＩPアドレス',150);
INSERT INTO code VALUES ('20018','016','ＩPアドレス2',160);
INSERT INTO code VALUES ('20018','017','設置エリア番号',170);
INSERT INTO code VALUES ('20018','018','旧設置エリア番号',180);
INSERT INTO code VALUES ('20018','019','状態',190);
INSERT INTO code VALUES ('20018','020','IP変更',200);
