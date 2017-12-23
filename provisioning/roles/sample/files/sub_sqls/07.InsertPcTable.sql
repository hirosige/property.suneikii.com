-- code_bunrui
INSERT INTO codebunrui VALUES (20021,'PC配置振分状況区分');
INSERT INTO codebunrui VALUES (20022,'PC配置状態区分');
INSERT INTO codebunrui VALUES (20023,'PC配置IP変更区分');

-- code
INSERT INTO code VALUES (20021,'d001','確定',10);
INSERT INTO code VALUES (20021,'d002','未確定',20);

INSERT INTO code VALUES (20022,'d001','移動',10);
INSERT INTO code VALUES (20022,'d002','振分確定',20);

INSERT INTO code VALUES (20023,'d001','○',10);
INSERT INTO code VALUES (20023,'d002','×',20);

-- PC配置-制御 : pc_placement_control
-- create
CREATE TABLE pc_placement_control(
  control_number CHARACTER VARYING(10) NOT NULL,
  name CHARACTER VARYING(100) NOT NULL,
  completed_status SMALLINT NOT NULL,
  situation_status SMALLINT NOT NULL,
  action CHARACTER VARYING(255) NOT NULL,
  sort_key SMALLINT NOT NULL,
  button SMALLINT NOT NULL,
  button_activity SMALLINT NOT NULL,
  memo TEXT,
  start_datetime timestamp with time zone,
  end_datetime timestamp with time zone,
  update_datetime timestamp with time zone,
  user_pkey INTEGER,
  user_id CHARACTER VARYING(50),
  sso_user_name CHARACTER VARYING(80)
);

-- comment
COMMENT ON TABLE pc_placement_control IS 'PC配置-制御';
COMMENT ON COLUMN pc_placement_control.control_number IS '制御番号';
COMMENT ON COLUMN pc_placement_control.name IS '名称';
COMMENT ON COLUMN pc_placement_control.completed_status IS '実施済ステータス';
COMMENT ON COLUMN pc_placement_control.situation_status IS '状況ステータス';
COMMENT ON COLUMN pc_placement_control.action IS 'アクション';
COMMENT ON COLUMN pc_placement_control.sort_key IS '表示順';
COMMENT ON COLUMN pc_placement_control.button IS 'ボタン有無';
COMMENT ON COLUMN pc_placement_control.button_activity IS 'ボタン活性';
COMMENT ON COLUMN pc_placement_control.memo IS 'メモ';
COMMENT ON COLUMN pc_placement_control.start_datetime IS '実行開始時間';
COMMENT ON COLUMN pc_placement_control.end_datetime IS '実行終了時間';
COMMENT ON COLUMN pc_placement_control.update_datetime IS '最終更新日';
COMMENT ON COLUMN pc_placement_control.user_pkey IS '最終実行ユーザー内部キー';
COMMENT ON COLUMN pc_placement_control.user_id IS '最終実行ユーザーID';
COMMENT ON COLUMN pc_placement_control.sso_user_name IS '最終実行共通基盤ユーザーID';

-- index
CREATE INDEX pc_placement_control_control_number ON pc_placement_control(control_number);
CREATE INDEX pc_placement_control_completed_status ON pc_placement_control(completed_status);
CREATE INDEX pc_placement_control_situation_status ON pc_placement_control(situation_status);
CREATE INDEX pc_placement_control_sort_key ON pc_placement_control(sort_key);

-- PC配置-期間入力 : pc_placement_date_memo
-- create
CREATE TABLE pc_placement_date_memo(
 id SMALLINT NOT NULL,
 start_datetime timestamp with time zone,
 end_datetime timestamp with time zone
);

-- comment
COMMENT ON TABLE pc_placement_date_memo IS 'PC配置-期間入力';
COMMENT ON COLUMN pc_placement_date_memo.id IS 'ID';
COMMENT ON COLUMN pc_placement_date_memo.start_datetime IS '開始日時';
COMMENT ON COLUMN pc_placement_date_memo.end_datetime IS '終了日時';

-- index
CREATE INDEX pc_placement_date_memo_id ON pc_placement_date_memo(id);

-- PC配置-不足ヘッダ : pc_placement_lack_header
-- create
CREATE TABLE pc_placement_lack_header(
  id SERIAL NOT NULL,
  sosiki_pkey INTEGER,
  sosiki_fullname CHARACTER VARYING(255),
  location_pkey INTEGER,
  lack_number INTEGER,
  provision_number INTEGER,
  provision_remain_number INTEGER,
  memo TEXT
);

-- comment
COMMENT ON TABLE pc_placement_lack_header IS 'PC配置-不足ヘッダ';
COMMENT ON COLUMN pc_placement_lack_header.id IS '不足ヘッダid';
COMMENT ON COLUMN pc_placement_lack_header.sosiki_pkey IS '所属内部キー';
COMMENT ON COLUMN pc_placement_lack_header.sosiki_fullname IS '所属';
COMMENT ON COLUMN pc_placement_lack_header.location_pkey IS '設置場所内部キー';
COMMENT ON COLUMN pc_placement_lack_header.lack_number IS '不足台数';
COMMENT ON COLUMN pc_placement_lack_header.provision_number IS '引当済台数';
COMMENT ON COLUMN pc_placement_lack_header.provision_remain_number IS '引当残数';
COMMENT ON COLUMN pc_placement_lack_header.memo IS 'ハードウェア不足理由';

-- index
CREATE INDEX pc_placement_lack_header_id ON pc_placement_lack_header(id);
CREATE INDEX pc_placement_lack_header_sosiki_pkey ON pc_placement_lack_header(sosiki_pkey);
CREATE INDEX pc_placement_lack_header_location_pkey ON pc_placement_lack_header(location_pkey);
CREATE INDEX pc_placement_lack_header_lack_number ON pc_placement_lack_header(lack_number);
CREATE INDEX pc_placement_lack_header_provision_number ON pc_placement_lack_header(provision_number);
CREATE INDEX pc_placement_lack_header_provision_remain_number ON pc_placement_lack_header(provision_remain_number);

-- PC配置-不足明細 : pc_placement_lack_detail
-- create
CREATE TABLE pc_placement_lack_detail(
  id SERIAL NOT NULL,
  header_id INTEGER,
  provision_status SMALLINT,
  location_change_status SMALLINT,
  hard_pkey INTEGER,
  hard_kanrino CHARACTER VARYING(255),
  old_sosiki_pkey INTEGER,
  old_sosiki_fullname CHARACTER VARYING(255),
  old_ipaddress1 CHARACTER VARYING(255),
  old_ipaddress2 CHARACTER VARYING(255),
  old_location_pkey INTEGER,
  old_use_name CHARACTER VARYING(80),
  new_sosiki_pkey INTEGER,
  new_sosiki_fullname CHARACTER VARYING(255),
  new_ipaddress1 CHARACTER VARYING(255),
  new_ipaddress2 CHARACTER VARYING(255),
  new_location_pkey INTEGER,
  new_use_name CHARACTER VARYING(80)
);

-- comment
COMMENT ON TABLE pc_placement_lack_detail IS 'PC配置-不足明細';
COMMENT ON COLUMN pc_placement_lack_detail.id IS '不足明細id';
COMMENT ON COLUMN pc_placement_lack_detail.header_id IS '不足ヘッダid';
COMMENT ON COLUMN pc_placement_lack_detail.provision_status IS '引当状況';
COMMENT ON COLUMN pc_placement_lack_detail.location_change_status IS '設置場所変更有無';
COMMENT ON COLUMN pc_placement_lack_detail.hard_pkey IS '配布元ハードウェア内部キー';
COMMENT ON COLUMN pc_placement_lack_detail.hard_kanrino IS '配布元ハードウェア管理番号';
COMMENT ON COLUMN pc_placement_lack_detail.old_sosiki_pkey IS '配布元所属内部キー';
COMMENT ON COLUMN pc_placement_lack_detail.old_sosiki_fullname IS '配布元所属';
COMMENT ON COLUMN pc_placement_lack_detail.old_ipaddress1 IS '配布元IPアドレス';
COMMENT ON COLUMN pc_placement_lack_detail.old_ipaddress2 IS '配布元IPアドレス2';
COMMENT ON COLUMN pc_placement_lack_detail.old_location_pkey IS '配布元設置場所内部キー';
COMMENT ON COLUMN pc_placement_lack_detail.old_use_name IS '配布元使用形態';
COMMENT ON COLUMN pc_placement_lack_detail.new_sosiki_pkey IS '配布先所属内部キー';
COMMENT ON COLUMN pc_placement_lack_detail.new_sosiki_fullname IS '配布先所属';
COMMENT ON COLUMN pc_placement_lack_detail.new_ipaddress1 IS '配布先IPアドレス';
COMMENT ON COLUMN pc_placement_lack_detail.new_ipaddress2 IS '配布先IPアドレス2';
COMMENT ON COLUMN pc_placement_lack_detail.new_location_pkey IS '配布先設置場所内部キー';
COMMENT ON COLUMN pc_placement_lack_detail.new_use_name IS '配布先使用形態';

-- index
CREATE INDEX pc_placement_lack_detail_id ON pc_placement_lack_detail(id);
CREATE INDEX pc_placement_lack_detail_header_id ON pc_placement_lack_detail(header_id);
CREATE INDEX pc_placement_lack_detail_provision_status ON pc_placement_lack_detail(provision_status);
CREATE INDEX pc_placement_lack_detail_location_change_status ON pc_placement_lack_detail(location_change_status);
CREATE INDEX pc_placement_lack_detail_hard_pkey ON pc_placement_lack_detail(hard_pkey);
CREATE INDEX pc_placement_lack_detail_old_sosiki_pkey ON pc_placement_lack_detail(old_sosiki_pkey);
CREATE INDEX pc_placement_lack_detail_old_location_pkey ON pc_placement_lack_detail(old_location_pkey);
CREATE INDEX pc_placement_lack_detail_old_use_name ON pc_placement_lack_detail(old_use_name);
CREATE INDEX pc_placement_lack_detail_new_sosiki_pkey ON pc_placement_lack_detail(new_sosiki_pkey);
CREATE INDEX pc_placement_lack_detail_new_location_pkey ON pc_placement_lack_detail(new_location_pkey);
CREATE INDEX pc_placement_lack_detail_new_use_name ON pc_placement_lack_detail(new_use_name);

-- PC配置-余剰ヘッダ : pc_placement_surplus_header
-- create
CREATE TABLE pc_placement_surplus_header(
  id SERIAL NOT NULL,
  sosiki_pkey INTEGER,
  sosiki_fullname CHARACTER VARYING(255),
  location_pkey INTEGER,
  surplus_number INTEGER,
  provision_number INTEGER,
  provision_remain_number INTEGER
);

-- comment
COMMENT ON TABLE pc_placement_surplus_header IS 'PC配置-余剰ヘッダ';
COMMENT ON COLUMN pc_placement_surplus_header.id IS '余剰ヘッダid';
COMMENT ON COLUMN pc_placement_surplus_header.sosiki_pkey IS '所属内部キー';
COMMENT ON COLUMN pc_placement_surplus_header.sosiki_fullname IS '所属';
COMMENT ON COLUMN pc_placement_surplus_header.location_pkey IS '設置場所内部キー';
COMMENT ON COLUMN pc_placement_surplus_header.surplus_number IS '余剰台数';
COMMENT ON COLUMN pc_placement_surplus_header.provision_number IS '引当済台数';
COMMENT ON COLUMN pc_placement_surplus_header.provision_remain_number IS '引当残数';

-- index
CREATE INDEX pc_placement_surplus_header_id ON pc_placement_surplus_header(id);
CREATE INDEX pc_placement_surplus_header_sosiki_pkey ON pc_placement_surplus_header(sosiki_pkey);
CREATE INDEX pc_placement_surplus_header_location_pkey ON pc_placement_surplus_header(location_pkey);
CREATE INDEX pc_placement_surplus_header_surplus_number ON pc_placement_surplus_header(surplus_number);
CREATE INDEX pc_placement_surplus_header_provision_number ON pc_placement_surplus_header(provision_number);
CREATE INDEX pc_placement_surplus_header_provision_remain_number ON pc_placement_surplus_header(provision_remain_number);

-- PC配置-余剰明細 : pc_placement_surplus_detail
-- create
CREATE TABLE pc_placement_surplus_detail(
  id SERIAL NOT NULL,
  header_id INTEGER,
  provision_status SMALLINT,
  location_change_status SMALLINT,
  return_status SMALLINT,
  hard_pkey INTEGER,
  hard_kanrino CHARACTER VARYING(255),
  old_sosiki_pkey INTEGER,
  old_sosiki_fullname CHARACTER VARYING(255),
  old_ipaddress1 CHARACTER VARYING(255),
  old_ipaddress2 CHARACTER VARYING(255),
  old_location_pkey INTEGER,
  old_use_name CHARACTER VARYING(80),
  new_sosiki_pkey INTEGER,
  new_sosiki_fullname CHARACTER VARYING(255),
  new_ipaddress1 CHARACTER VARYING(255),
  new_ipaddress2 CHARACTER VARYING(255),
  new_location_pkey INTEGER,
  new_use_name CHARACTER VARYING(80)
);

-- comment
COMMENT ON TABLE pc_placement_surplus_detail IS 'PC配置-余剰明細';
COMMENT ON COLUMN pc_placement_surplus_detail.id IS '余剰明細id';
COMMENT ON COLUMN pc_placement_surplus_detail.header_id IS '余剰ヘッダid';
COMMENT ON COLUMN pc_placement_surplus_detail.provision_status IS '引当状況';
COMMENT ON COLUMN pc_placement_surplus_detail.location_change_status IS '設置場所変更有無';
COMMENT ON COLUMN pc_placement_surplus_detail.return_status IS '返却状況';
COMMENT ON COLUMN pc_placement_surplus_detail.hard_pkey IS '配布元ハードウェア内部キー';
COMMENT ON COLUMN pc_placement_surplus_detail.hard_kanrino IS '配布元ハードウェア管理番号';
COMMENT ON COLUMN pc_placement_surplus_detail.old_sosiki_pkey IS '配布元所属内部キー';
COMMENT ON COLUMN pc_placement_surplus_detail.old_sosiki_fullname IS '配布元所属';
COMMENT ON COLUMN pc_placement_surplus_detail.old_ipaddress1 IS '配布元IPアドレス';
COMMENT ON COLUMN pc_placement_surplus_detail.old_ipaddress2 IS '配布元IPアドレス2';
COMMENT ON COLUMN pc_placement_surplus_detail.old_location_pkey IS '配布元設置場所内部キー';
COMMENT ON COLUMN pc_placement_surplus_detail.old_use_name IS '配布元使用形態';
COMMENT ON COLUMN pc_placement_surplus_detail.new_sosiki_pkey IS '配布先所属内部キー';
COMMENT ON COLUMN pc_placement_surplus_detail.new_sosiki_fullname IS '配布先所属';
COMMENT ON COLUMN pc_placement_surplus_detail.new_ipaddress1 IS '配布先IPアドレス';
COMMENT ON COLUMN pc_placement_surplus_detail.new_ipaddress2 IS '配布先IPアドレス2';
COMMENT ON COLUMN pc_placement_surplus_detail.new_location_pkey IS '配布先設置場所内部キー';
COMMENT ON COLUMN pc_placement_surplus_detail.new_use_name IS '配布先使用形態';


-- index
CREATE INDEX pc_placement_surplus_detail_id ON pc_placement_surplus_detail(id);
CREATE INDEX pc_placement_surplus_detail_header_id ON pc_placement_surplus_detail(header_id);
CREATE INDEX pc_placement_surplus_detail_provision_status ON pc_placement_surplus_detail(provision_status);
CREATE INDEX pc_placement_surplus_detail_location_change_status ON pc_placement_surplus_detail(location_change_status);
CREATE INDEX pc_placement_surplus_detail_return_status ON pc_placement_surplus_detail(return_status);
CREATE INDEX pc_placement_surplus_detail_hard_pkey ON pc_placement_surplus_detail(hard_pkey);
CREATE INDEX pc_placement_surplus_detail_old_sosiki_pkey ON pc_placement_surplus_detail(old_sosiki_pkey);
CREATE INDEX pc_placement_surplus_detail_old_location_pkey ON pc_placement_surplus_detail(old_location_pkey);
CREATE INDEX pc_placement_surplus_detail_old_use_name ON pc_placement_surplus_detail(old_use_name);
CREATE INDEX pc_placement_surplus_detail_new_sosiki_pkey ON pc_placement_surplus_detail(new_sosiki_pkey);
CREATE INDEX pc_placement_surplus_detail_new_location_pkey ON pc_placement_surplus_detail(new_location_pkey);
CREATE INDEX pc_placement_surplus_detail_new_use_name ON pc_placement_surplus_detail(new_use_name);

-- PC配置-移動明細 : pc_placement_move_detail
-- create
CREATE TABLE pc_placement_move_detail(
  id SERIAL NOT NULL,
  provision_status SMALLINT,
  location_change_status SMALLINT,
  memo TEXT,
  hard_pkey INTEGER,
  hard_kanrino CHARACTER VARYING(255),
  old_sosiki_pkey INTEGER,
  old_sosiki_fullname CHARACTER VARYING(255),
  old_ipaddress1 CHARACTER VARYING(255),
  old_ipaddress2 CHARACTER VARYING(255),
  old_location_pkey INTEGER,
  old_use_name CHARACTER VARYING(80),
  new_sosiki_pkey INTEGER,
  new_sosiki_fullname CHARACTER VARYING(255),
  new_ipaddress1 CHARACTER VARYING(255),
  new_ipaddress2 CHARACTER VARYING(255),
  new_location_pkey INTEGER,
  new_use_name CHARACTER VARYING(80)
);

-- comment
COMMENT ON TABLE pc_placement_move_detail IS 'PC配置-移動明細';
COMMENT ON COLUMN pc_placement_move_detail.id IS '移動明細id';
COMMENT ON COLUMN pc_placement_move_detail.provision_status IS '引当状況';
COMMENT ON COLUMN pc_placement_move_detail.location_change_status IS '設置場所変更有無';
COMMENT ON COLUMN pc_placement_move_detail.memo IS '移動理由';
COMMENT ON COLUMN pc_placement_move_detail.hard_pkey IS '配布元ハードウェア内部キー';
COMMENT ON COLUMN pc_placement_move_detail.hard_kanrino IS '配布元ハードウェア管理番号';
COMMENT ON COLUMN pc_placement_move_detail.old_sosiki_pkey IS '配布元所属内部キー';
COMMENT ON COLUMN pc_placement_move_detail.old_sosiki_fullname IS '配布元所属';
COMMENT ON COLUMN pc_placement_move_detail.old_ipaddress1 IS '配布元IPアドレス';
COMMENT ON COLUMN pc_placement_move_detail.old_ipaddress2 IS '配布元IPアドレス2';
COMMENT ON COLUMN pc_placement_move_detail.old_location_pkey IS '配布元設置場所内部キー';
COMMENT ON COLUMN pc_placement_move_detail.old_use_name IS '配布元使用形態';
COMMENT ON COLUMN pc_placement_move_detail.new_sosiki_pkey IS '配布先所属内部キー';
COMMENT ON COLUMN pc_placement_move_detail.new_sosiki_fullname IS '配布先所属';
COMMENT ON COLUMN pc_placement_move_detail.new_ipaddress1 IS '配布先IPアドレス';
COMMENT ON COLUMN pc_placement_move_detail.new_ipaddress2 IS '配布先IPアドレス2';
COMMENT ON COLUMN pc_placement_move_detail.new_location_pkey IS '配布先設置場所内部キー';
COMMENT ON COLUMN pc_placement_move_detail.new_use_name IS '配布先使用形態';

-- index
CREATE INDEX pc_placement_move_detail_id ON pc_placement_move_detail(id);
CREATE INDEX pc_placement_move_detail_provision_status ON pc_placement_move_detail(provision_status);
CREATE INDEX pc_placement_move_detail_location_change_status ON pc_placement_move_detail(location_change_status);
CREATE INDEX pc_placement_move_detail_hard_pkey ON pc_placement_move_detail(hard_pkey);
CREATE INDEX pc_placement_move_detail_old_sosiki_pkey ON pc_placement_move_detail(old_sosiki_pkey);
CREATE INDEX pc_placement_move_detail_old_location_pkey ON pc_placement_move_detail(old_location_pkey);
CREATE INDEX pc_placement_move_detail_old_use_name ON pc_placement_move_detail(old_use_name);
CREATE INDEX pc_placement_move_detail_new_sosiki_pkey ON pc_placement_move_detail(new_sosiki_pkey);
CREATE INDEX pc_placement_move_detail_new_location_pkey ON pc_placement_move_detail(new_location_pkey);
CREATE INDEX pc_placement_move_detail_new_use_name ON pc_placement_move_detail(new_use_name);