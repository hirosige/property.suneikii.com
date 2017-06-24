--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

--
-- Name: pgstattuple_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE pgstattuple_type AS (
	table_len bigint,
	tuple_count bigint,
	tuple_len bigint,
	tuple_percent double precision,
	dead_tuple_count bigint,
	dead_tuple_len bigint,
	dead_tuple_percent double precision,
	free_space bigint,
	free_percent double precision
);


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: code; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE code (
    code_bunrui character varying(5) NOT NULL,
    code character varying(6) NOT NULL,
    code_name character varying(100) NOT NULL,
    code_sort smallint NOT NULL
);


--
-- Name: TABLE code; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE code IS 'コード';


--
-- Name: codebunrui; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE codebunrui (
    code_bunrui character varying(5) NOT NULL,
    code_bunruimei character varying(100) NOT NULL
);


--
-- Name: TABLE codebunrui; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE codebunrui IS 'コード分類';


--
-- Name: control; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE control (
    control_id character varying(20) NOT NULL,
    control_name character varying(50),
    settei character varying(20) NOT NULL
);


--
-- Name: TABLE control; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE control IS 'コントロール';


--
-- Name: errmsg; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE errmsg (
    err_pkey character varying(4) NOT NULL,
    err_msg text
);


--
-- Name: TABLE errmsg; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE errmsg IS 'エラーメッセージ';


--
-- Name: exclusion_program; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE exclusion_program (
    program_name character varying(255)
);


--
-- Name: TABLE exclusion_program; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE exclusion_program IS '除外リスト';


--
-- Name: hard; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE hard (
    hard_pkey integer NOT NULL,
    sosiki_pkey integer,
    hard_kanrino character varying(255),
    soft_installdel character varying(6),
    use_name character varying(80),
    tyoutatu text,
    bikou text,
    location_pkey integer,
    lease_or_purchase character varying(6),
    procurement_form character varying(6),
    ip_address1 character varying(255),
    ip_address2 text,
    mac_address1 character varying(255),
    mac_address2 text,
    checkout_date date,
    return_due_date date,
    return_date date,
    tyoutatu_date date,
    haiki_date date,
    version smallint NOT NULL,
    newkbn smallint
);


--
-- Name: TABLE hard; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE hard IS 'ハードウェア台帳';


--
-- Name: COLUMN hard.hard_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hard.hard_pkey IS '内部キー';


--
-- Name: COLUMN hard.sosiki_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hard.sosiki_pkey IS '組織テーブルの内部キー';


--
-- Name: COLUMN hard.hard_kanrino; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hard.hard_kanrino IS 'ハードウェア管理番号';


--
-- Name: COLUMN hard.soft_installdel; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hard.soft_installdel IS '使用者によるソフトウェア追加導入・削除';


--
-- Name: COLUMN hard.use_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hard.use_name IS '使用形態';


--
-- Name: COLUMN hard.tyoutatu; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hard.tyoutatu IS '調達情報';


--
-- Name: COLUMN hard.bikou; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hard.bikou IS '備考';


--
-- Name: COLUMN hard.location_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hard.location_pkey IS '設置場所コード';


--
-- Name: COLUMN hard.lease_or_purchase; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hard.lease_or_purchase IS '購入／リース';


--
-- Name: COLUMN hard.procurement_form; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hard.procurement_form IS '調達形態区分';


--
-- Name: COLUMN hard.ip_address1; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hard.ip_address1 IS 'IPアドレス';


--
-- Name: COLUMN hard.ip_address2; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hard.ip_address2 IS 'IPアドレス２';


--
-- Name: COLUMN hard.mac_address1; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hard.mac_address1 IS 'MACアドレス';


--
-- Name: COLUMN hard.mac_address2; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hard.mac_address2 IS 'MACアドレス２';


--
-- Name: COLUMN hard.checkout_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hard.checkout_date IS '貸出日';


--
-- Name: COLUMN hard.return_due_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hard.return_due_date IS '返却予定日';


--
-- Name: COLUMN hard.return_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hard.return_date IS '返却日';


--
-- Name: COLUMN hard.tyoutatu_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hard.tyoutatu_date IS '調達日';


--
-- Name: COLUMN hard.haiki_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hard.haiki_date IS '廃棄日';


--
-- Name: COLUMN hard.version; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hard.version IS 'バージョン';


--
-- Name: COLUMN hard.newkbn; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hard.newkbn IS '新規区分';


--
-- Name: hard_delete; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE hard_delete (
    id integer NOT NULL,
    hard_pkey integer NOT NULL,
    sosiki_pkey integer,
    hard_kanrino character varying(255),
    soft_installdel character varying(6),
    use_name character varying(80),
    tyoutatu text,
    bikou text,
    location_pkey integer,
    lease_or_purchase character varying(6),
    procurement_form character varying(6),
    ip_address1 character varying(255),
    ip_address2 text,
    mac_address1 character varying(255),
    mac_address2 text,
    checkout_date date,
    return_due_date date,
    return_date date,
    tyoutatu_date date,
    haiki_date date,
    version smallint NOT NULL,
    newkbn smallint,
    delete_user_id character varying(50) NOT NULL,
    delete_user_name character varying(80) NOT NULL,
    delete_datetime timestamp with time zone NOT NULL
);


--
-- Name: COLUMN hard_delete.id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hard_delete.id IS '内部キー';


--
-- Name: COLUMN hard_delete.hard_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hard_delete.hard_pkey IS '旧内部キー';


--
-- Name: COLUMN hard_delete.sosiki_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hard_delete.sosiki_pkey IS '組織テーブルの内部キー';


--
-- Name: COLUMN hard_delete.hard_kanrino; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hard_delete.hard_kanrino IS 'ハードウェア管理番号';


--
-- Name: COLUMN hard_delete.soft_installdel; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hard_delete.soft_installdel IS '使用者によるソフトウェア追加導入・削除';


--
-- Name: COLUMN hard_delete.use_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hard_delete.use_name IS '使用者名';


--
-- Name: COLUMN hard_delete.tyoutatu; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hard_delete.tyoutatu IS '調達情報';


--
-- Name: COLUMN hard_delete.bikou; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hard_delete.bikou IS '備考';


--
-- Name: COLUMN hard_delete.location_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hard_delete.location_pkey IS '設置場所コード';


--
-- Name: COLUMN hard_delete.lease_or_purchase; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hard_delete.lease_or_purchase IS '購入／リース';


--
-- Name: COLUMN hard_delete.procurement_form; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hard_delete.procurement_form IS '調達形態区分';


--
-- Name: COLUMN hard_delete.ip_address1; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hard_delete.ip_address1 IS 'IPアドレス';


--
-- Name: COLUMN hard_delete.ip_address2; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hard_delete.ip_address2 IS 'IPアドレス２';


--
-- Name: COLUMN hard_delete.mac_address1; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hard_delete.mac_address1 IS 'MACアドレス';


--
-- Name: COLUMN hard_delete.mac_address2; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hard_delete.mac_address2 IS 'MACアドレス２';


--
-- Name: COLUMN hard_delete.checkout_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hard_delete.checkout_date IS '貸出日';


--
-- Name: COLUMN hard_delete.return_due_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hard_delete.return_due_date IS '返却予定日';


--
-- Name: COLUMN hard_delete.return_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hard_delete.return_date IS '返却日';


--
-- Name: COLUMN hard_delete.tyoutatu_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hard_delete.tyoutatu_date IS '調達日';


--
-- Name: COLUMN hard_delete.haiki_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hard_delete.haiki_date IS '廃棄日';


--
-- Name: COLUMN hard_delete.version; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hard_delete.version IS 'バージョン';


--
-- Name: COLUMN hard_delete.newkbn; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hard_delete.newkbn IS '新規区分';


--
-- Name: COLUMN hard_delete.delete_user_id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hard_delete.delete_user_id IS '削除ユーザーID';


--
-- Name: COLUMN hard_delete.delete_user_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hard_delete.delete_user_name IS '削除ユーザー名';


--
-- Name: COLUMN hard_delete.delete_datetime; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hard_delete.delete_datetime IS '削除日時';


--
-- Name: hardrireki; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE hardrireki (
    hardhistory_pkey integer NOT NULL,
    hard_pkey integer,
    sosiki_pkey integer,
    sosiki_fullname character varying(255),
    hard_kanrino character varying(255),
    soft_installdel character varying(6),
    soft_installdel_name character varying(100),
    use_name character varying(80),
    use_name_name character varying(100),
    tyoutatu text,
    bikou text,
    location_code integer,
    location_code_name character varying(100),
    district character varying(255),
    site character varying(255),
    floor character varying(255),
    area character varying(255),
    lease_or_purchase character varying(6),
    lease_or_purchase_name character varying(100),
    procurement_form character varying(6),
    procurement_form_name character varying(100),
    ip_address1 character varying(255),
    ip_address2 text,
    mac_address1 character varying(255),
    mac_address2 text,
    checkout_date date,
    return_due_date date,
    return_date date,
    tyoutatu_date date,
    haiki_date date,
    version smallint NOT NULL,
    sinsei_date timestamp with time zone,
    sinseisya character varying(80),
    soft_qty bigint,
    syonin_kbn character varying(6),
    syonin_kbn_name character varying(100),
    syoninsya character varying(80),
    syonin_date timestamp with time zone,
    email_ad text,
    note text,
    rireki_no character varying(100)
);


--
-- Name: TABLE hardrireki; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE hardrireki IS 'ハードウェア台帳履歴';


--
-- Name: COLUMN hardrireki.hardhistory_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hardrireki.hardhistory_pkey IS '履歴内部ｷｰ';


--
-- Name: COLUMN hardrireki.hard_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hardrireki.hard_pkey IS '内部キー';


--
-- Name: COLUMN hardrireki.sosiki_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hardrireki.sosiki_pkey IS '組織テーブルの内部キー';


--
-- Name: COLUMN hardrireki.sosiki_fullname; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hardrireki.sosiki_fullname IS '組織_フル名称';


--
-- Name: COLUMN hardrireki.hard_kanrino; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hardrireki.hard_kanrino IS 'ハードウェア管理番号';


--
-- Name: COLUMN hardrireki.soft_installdel; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hardrireki.soft_installdel IS '使用者によるソフトウェア追加導入・削除';


--
-- Name: COLUMN hardrireki.soft_installdel_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hardrireki.soft_installdel_name IS '使用者によるソフトウェア追加導入・削除_名称';


--
-- Name: COLUMN hardrireki.use_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hardrireki.use_name IS '使用形態';


--
-- Name: COLUMN hardrireki.use_name_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hardrireki.use_name_name IS '使用形態_名称';


--
-- Name: COLUMN hardrireki.tyoutatu; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hardrireki.tyoutatu IS '調達情報';


--
-- Name: COLUMN hardrireki.bikou; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hardrireki.bikou IS '備考';


--
-- Name: COLUMN hardrireki.location_code; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hardrireki.location_code IS '設置場所コード';


--
-- Name: COLUMN hardrireki.location_code_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hardrireki.location_code_name IS '設置場所コード_名称';


--
-- Name: COLUMN hardrireki.lease_or_purchase; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hardrireki.lease_or_purchase IS '購入／リース';


--
-- Name: COLUMN hardrireki.lease_or_purchase_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hardrireki.lease_or_purchase_name IS '購入／リース_名称';


--
-- Name: COLUMN hardrireki.procurement_form; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hardrireki.procurement_form IS '調達形態区分';


--
-- Name: COLUMN hardrireki.procurement_form_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hardrireki.procurement_form_name IS '調達形態区分_名称';


--
-- Name: COLUMN hardrireki.ip_address1; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hardrireki.ip_address1 IS 'IPアドレス';


--
-- Name: COLUMN hardrireki.ip_address2; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hardrireki.ip_address2 IS 'IPアドレス２';


--
-- Name: COLUMN hardrireki.mac_address1; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hardrireki.mac_address1 IS 'MACアドレス';


--
-- Name: COLUMN hardrireki.mac_address2; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hardrireki.mac_address2 IS 'MACアドレス２';


--
-- Name: COLUMN hardrireki.checkout_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hardrireki.checkout_date IS '貸出日';


--
-- Name: COLUMN hardrireki.return_due_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hardrireki.return_due_date IS '返却予定日';


--
-- Name: COLUMN hardrireki.return_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hardrireki.return_date IS '返却日';


--
-- Name: COLUMN hardrireki.tyoutatu_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hardrireki.tyoutatu_date IS '調達日';


--
-- Name: COLUMN hardrireki.haiki_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hardrireki.haiki_date IS '廃棄日';


--
-- Name: COLUMN hardrireki.version; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hardrireki.version IS 'バージョン';


--
-- Name: COLUMN hardrireki.sinsei_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hardrireki.sinsei_date IS '申請日';


--
-- Name: COLUMN hardrireki.sinseisya; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hardrireki.sinseisya IS '申請者';


--
-- Name: COLUMN hardrireki.soft_qty; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hardrireki.soft_qty IS 'インストール数';


--
-- Name: COLUMN hardrireki.syonin_kbn; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hardrireki.syonin_kbn IS '承認区分';


--
-- Name: COLUMN hardrireki.syonin_kbn_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hardrireki.syonin_kbn_name IS '承認区分_名称';


--
-- Name: COLUMN hardrireki.syoninsya; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hardrireki.syoninsya IS '承認者';


--
-- Name: COLUMN hardrireki.syonin_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hardrireki.syonin_date IS '承認日';


--
-- Name: COLUMN hardrireki.email_ad; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hardrireki.email_ad IS 'メールアドレス';


--
-- Name: COLUMN hardrireki.note; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hardrireki.note IS '承認コメント';


--
-- Name: COLUMN hardrireki.rireki_no; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hardrireki.rireki_no IS '申請書番号';


--
-- Name: inventory; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE inventory (
    inventory_pkey integer NOT NULL,
    collectsource character varying(100),
    idkey character varying(255),
    invtraprecvdate timestamp with time zone,
    hardwareno character varying(255),
    group1 character varying(255),
    jyotai character varying(6),
    hikaku character varying(6),
    hsyubetu character varying(6),
    macaddress character varying(255),
    ipaddress character varying(255),
    subnetmask character varying(255),
    defaultgateway character varying(255),
    dnsserver character varying(255),
    secondarydns character varying(255),
    computername character varying(255),
    domainname character varying(255),
    workgroup character varying(255),
    userid character varying(255),
    hyoujimei character varying(255),
    yakusyoku character varying(255),
    syozoku character varying(255),
    machinevendor character varying(255),
    machinename character varying(255),
    cpuname character varying(255),
    memorysize character varying(255),
    osversion character varying(255),
    windowsservicepack character varying(255),
    ieversion character varying(255),
    virussoftname character varying(100),
    enginever character varying(20),
    patternver character varying(255),
    misiyou1 character varying(255),
    misiyou2 character varying(255),
    misiyou3 character varying(255),
    mukou_date date,
    toolversion character varying(255)
);


--
-- Name: TABLE inventory; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE inventory IS '収集情報';


--
-- Name: COLUMN inventory.inventory_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN inventory.inventory_pkey IS '内部キー';


--
-- Name: COLUMN inventory.collectsource; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN inventory.collectsource IS '収集情報ソース';


--
-- Name: COLUMN inventory.idkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN inventory.idkey IS 'クライアントツール内部管理キー';


--
-- Name: COLUMN inventory.invtraprecvdate; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN inventory.invtraprecvdate IS '収集情報更新日時';


--
-- Name: COLUMN inventory.hardwareno; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN inventory.hardwareno IS 'ハードウェア管理番号';


--
-- Name: COLUMN inventory.group1; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN inventory.group1 IS '部局';


--
-- Name: COLUMN inventory.jyotai; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN inventory.jyotai IS '現用';


--
-- Name: COLUMN inventory.hikaku; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN inventory.hikaku IS '台帳比較';


--
-- Name: COLUMN inventory.hsyubetu; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN inventory.hsyubetu IS 'ハードウェア種別';


--
-- Name: COLUMN inventory.macaddress; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN inventory.macaddress IS 'MACアドレス';


--
-- Name: COLUMN inventory.ipaddress; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN inventory.ipaddress IS 'IPアドレス';


--
-- Name: COLUMN inventory.subnetmask; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN inventory.subnetmask IS 'サブネットマスク';


--
-- Name: COLUMN inventory.defaultgateway; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN inventory.defaultgateway IS 'デフォルトゲートウェイ';


--
-- Name: COLUMN inventory.dnsserver; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN inventory.dnsserver IS 'DNSサーバー';


--
-- Name: COLUMN inventory.secondarydns; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN inventory.secondarydns IS 'セカンダリDNSサーバー';


--
-- Name: COLUMN inventory.computername; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN inventory.computername IS 'コンピュータ名';


--
-- Name: COLUMN inventory.domainname; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN inventory.domainname IS 'ドメイン名';


--
-- Name: COLUMN inventory.workgroup; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN inventory.workgroup IS 'ワークグループ';


--
-- Name: COLUMN inventory.userid; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN inventory.userid IS 'ログオンユーザーID';


--
-- Name: COLUMN inventory.hyoujimei; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN inventory.hyoujimei IS 'ログオンユーザー表示名';


--
-- Name: COLUMN inventory.yakusyoku; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN inventory.yakusyoku IS 'ログオンユーザー役職';


--
-- Name: COLUMN inventory.syozoku; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN inventory.syozoku IS 'ログオンユーザー所属';


--
-- Name: COLUMN inventory.machinevendor; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN inventory.machinevendor IS 'PCベンダー';


--
-- Name: COLUMN inventory.machinename; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN inventory.machinename IS 'PC機種';


--
-- Name: COLUMN inventory.cpuname; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN inventory.cpuname IS 'CPUタイプ';


--
-- Name: COLUMN inventory.memorysize; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN inventory.memorysize IS 'メモリサイズ';


--
-- Name: COLUMN inventory.osversion; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN inventory.osversion IS 'OS';


--
-- Name: COLUMN inventory.windowsservicepack; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN inventory.windowsservicepack IS 'Windowsサービスパック';


--
-- Name: COLUMN inventory.ieversion; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN inventory.ieversion IS 'InternetExporer';


--
-- Name: COLUMN inventory.virussoftname; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN inventory.virussoftname IS 'ウイルス対策ソフト';


--
-- Name: COLUMN inventory.enginever; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN inventory.enginever IS 'ウイルス対策ソフトエンジン';


--
-- Name: COLUMN inventory.patternver; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN inventory.patternver IS 'ウイルス対策ソフトパターン';


--
-- Name: COLUMN inventory.misiyou1; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN inventory.misiyou1 IS '未使用１';


--
-- Name: COLUMN inventory.misiyou2; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN inventory.misiyou2 IS '未使用２';


--
-- Name: COLUMN inventory.misiyou3; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN inventory.misiyou3 IS '未使用３';


--
-- Name: COLUMN inventory.mukou_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN inventory.mukou_date IS '無効登録日';


--
-- Name: COLUMN inventory.toolversion; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN inventory.toolversion IS 'ツールバージョン';


--
-- Name: location; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE location (
    location_pkey integer NOT NULL,
    district character varying(255),
    site character varying(255),
    floor character varying(255),
    area character varying(255),
    group_id character varying(100),
    site_id character varying(100),
    area_id character varying(100),
    display_flag smallint
);


--
-- Name: TABLE location; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE location IS '設置場所';


--
-- Name: COLUMN location.location_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN location.location_pkey IS '内部キー';


--
-- Name: COLUMN location.district; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN location.district IS '地区';


--
-- Name: COLUMN location.site; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN location.site IS '拠点名';


--
-- Name: COLUMN location.floor; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN location.floor IS '設置階';


--
-- Name: COLUMN location.area; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN location.area IS '設置エリア';


--
-- Name: COLUMN location.group_id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN location.group_id IS 'グループ番号';


--
-- Name: COLUMN location.site_id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN location.site_id IS '拠点番号';


--
-- Name: COLUMN location.area_id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN location.area_id IS '設置エリア番号';


--
-- Name: COLUMN location.display_flag; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN location.display_flag IS '各所属での表示フラグ';


--
-- Name: rireki; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rireki (
    history_pkey integer NOT NULL,
    history_type character varying(16) NOT NULL,
    history_type_name character varying,
    sinsei_date timestamp with time zone,
    sinseisya character varying(80),
    sinseisyozoku character varying(255),
    syozoku_name character varying(80),
    sosiki_fullname character varying(255),
    sosiki_sortkey smallint,
    syonin_kbn character varying(6),
    syonin_kbn_name character varying,
    syonin_date timestamp with time zone,
    syoninsya character varying(80),
    email_ad text,
    note character varying,
    rireki_no character varying,
    ledger_manager_number character varying(255)
);


--
-- Name: TABLE rireki; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE rireki IS '履歴テーブル';


--
-- Name: COLUMN rireki.history_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN rireki.history_pkey IS '履歴内部ｷｰ';


--
-- Name: COLUMN rireki.history_type; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN rireki.history_type IS 'テーブル名';


--
-- Name: COLUMN rireki.history_type_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN rireki.history_type_name IS 'テーブル名_名称';


--
-- Name: COLUMN rireki.sinsei_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN rireki.sinsei_date IS '申請日';


--
-- Name: COLUMN rireki.sinseisya; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN rireki.sinseisya IS '申請者';


--
-- Name: COLUMN rireki.sinseisyozoku; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN rireki.sinseisyozoku IS '申請者所属';


--
-- Name: COLUMN rireki.syozoku_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN rireki.syozoku_name IS '組織名称';


--
-- Name: COLUMN rireki.sosiki_fullname; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN rireki.sosiki_fullname IS '組織フル名称';


--
-- Name: COLUMN rireki.sosiki_sortkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN rireki.sosiki_sortkey IS '組織ソートキー';


--
-- Name: COLUMN rireki.syonin_kbn; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN rireki.syonin_kbn IS '承認区分';


--
-- Name: COLUMN rireki.syonin_kbn_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN rireki.syonin_kbn_name IS '承認区分_名称';


--
-- Name: COLUMN rireki.syonin_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN rireki.syonin_date IS '承認日';


--
-- Name: COLUMN rireki.syoninsya; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN rireki.syoninsya IS '承認者';


--
-- Name: COLUMN rireki.email_ad; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN rireki.email_ad IS '申請者メールアドレス';


--
-- Name: COLUMN rireki.note; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN rireki.note IS '承認・却下の理由';


--
-- Name: COLUMN rireki.rireki_no; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN rireki.rireki_no IS '申請書番号';


--
-- Name: COLUMN rireki.ledger_manager_number; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN rireki.ledger_manager_number IS '管理番号';


--
-- Name: soft; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE soft (
    soft_pkey integer NOT NULL,
    hard_pkey integer,
    licence_pkey integer,
    bikou text,
    install_date date,
    uninstall_date date,
    version smallint NOT NULL,
    newkbn smallint,
    downgrade character varying(6)
);


--
-- Name: TABLE soft; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE soft IS 'ソフトウェア台帳';


--
-- Name: sosiki; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE sosiki (
    sosiki_pkey integer NOT NULL,
    sosiki_onpkey integer,
    sosiki_sortkey smallint NOT NULL,
    syozoku_name character varying(80) NOT NULL,
    yukou character varying(6),
    syozoku_fullname character varying(255),
    station_code character varying(255),
    syozoku_code character varying(255),
    disp_full_sosiki_name character varying(255) NOT NULL
);


--
-- Name: TABLE sosiki; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE sosiki IS '組織';


--
-- Name: hard_delete_detail; Type: VIEW; Schema: public; Owner: -
--

CREATE VIEW hard_delete_detail AS
 SELECT inventory.inventory_pkey,
    hard_delete.hard_pkey,
    hard_delete.sosiki_pkey,
    sosiki.syozoku_name AS sosiki_name,
    sosiki.syozoku_fullname AS sosiki_fullname,
    hard_delete.hard_kanrino,
    inventory.computername,
    inventory.ipaddress,
    hard_delete.soft_installdel,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '00022'::text) AND ((code.code)::text = (hard_delete.soft_installdel)::text))) AS soft_installdel_name,
    hard_delete.use_name,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '20003'::text) AND ((code.code)::text = (hard_delete.use_name)::text))) AS use_name_name,
    ( SELECT count(*) AS count
           FROM soft
          WHERE (((hard_delete.hard_pkey = soft.hard_pkey) AND (soft.newkbn = 0)) AND ((soft.uninstall_date > ('now'::text)::date) OR (soft.uninstall_date IS NULL)))) AS soft_qty,
    inventory.machinevendor,
    inventory.machinename,
    hard_delete.tyoutatu,
    hard_delete.bikou,
    hard_delete.location_pkey,
    location.district,
    location.site,
    location.floor,
    location.area,
    hard_delete.lease_or_purchase,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '20002'::text) AND ((code.code)::text = (hard_delete.lease_or_purchase)::text))) AS lease_or_purchase_name,
    hard_delete.procurement_form,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '20001'::text) AND ((code.code)::text = (hard_delete.procurement_form)::text))) AS procurement_form_name,
    hard_delete.ip_address1,
    hard_delete.ip_address2,
    hard_delete.mac_address1,
    hard_delete.mac_address2,
    hard_delete.checkout_date,
    hard_delete.return_due_date,
    hard_delete.return_date,
    hard_delete.tyoutatu_date,
    hard_delete.haiki_date,
    hard_delete.version,
    hard_delete.newkbn,
    hard_delete.delete_user_id,
    hard_delete.delete_user_name,
    hard_delete.delete_datetime,
    ( SELECT max(rireki.syonin_date) AS max
           FROM (hardrireki
             LEFT JOIN rireki ON (((((hardrireki.hardhistory_pkey)::text = (rireki.history_pkey)::text) AND ((rireki.history_type)::text = 'd001'::text)) AND ((rireki.syonin_kbn)::text = 'd001'::text))))
          WHERE ((hardrireki.hard_pkey)::text = (hard_delete.hard_pkey)::text)
          GROUP BY hardrireki.hard_pkey) AS syonin_date
   FROM (((hard_delete
     LEFT JOIN inventory ON (((hard_delete.hard_kanrino)::text = (inventory.hardwareno)::text)))
     LEFT JOIN sosiki ON ((hard_delete.sosiki_pkey = sosiki.sosiki_pkey)))
     LEFT JOIN location ON ((hard_delete.location_pkey = location.location_pkey)));


--
-- Name: hard_delete_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE hard_delete_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: hard_delete_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE hard_delete_id_seq OWNED BY hard_delete.id;


--
-- Name: hard_detail; Type: VIEW; Schema: public; Owner: -
--

CREATE VIEW hard_detail AS
 SELECT inventory.inventory_pkey,
    hard.hard_pkey,
    hard.sosiki_pkey,
    sosiki.syozoku_fullname AS sosiki_fullname,
    hard.hard_kanrino,
    inventory.computername,
    inventory.ipaddress,
    hard.soft_installdel,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '00022'::text) AND ((code.code)::text = (hard.soft_installdel)::text))) AS soft_installdel_name,
    hard.use_name,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '20003'::text) AND ((code.code)::text = (hard.use_name)::text))) AS use_name_name,
    ( SELECT count(*) AS count
           FROM soft
          WHERE (((hard.hard_pkey = soft.hard_pkey) AND (soft.newkbn = 0)) AND ((soft.uninstall_date > ('now'::text)::date) OR (soft.uninstall_date IS NULL)))) AS soft_qty,
    inventory.machinevendor,
    inventory.machinename,
    hard.tyoutatu,
    hard.bikou,
    hard.location_pkey,
    location.district,
    location.site,
    location.floor,
    location.area,
    hard.lease_or_purchase,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '20002'::text) AND ((code.code)::text = (hard.lease_or_purchase)::text))) AS lease_or_purchase_name,
    hard.procurement_form,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '20001'::text) AND ((code.code)::text = (hard.procurement_form)::text))) AS procurement_form_name,
    hard.ip_address1,
    hard.ip_address2,
    hard.mac_address1,
    hard.mac_address2,
    hard.checkout_date,
    hard.return_due_date,
    hard.return_date,
    hard.tyoutatu_date,
    hard.haiki_date,
    hard.version,
    hard.newkbn,
    COALESCE((sosiki.sosiki_sortkey)::integer, 0) AS sosiki_sortkey
   FROM (((hard
     LEFT JOIN inventory ON (((hard.hard_kanrino)::text = (inventory.hardwareno)::text)))
     LEFT JOIN sosiki ON ((hard.sosiki_pkey = sosiki.sosiki_pkey)))
     LEFT JOIN location ON ((hard.location_pkey = location.location_pkey)));


--
-- Name: hard_hard_pkey_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE hard_hard_pkey_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: hard_hard_pkey_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE hard_hard_pkey_seq OWNED BY hard.hard_pkey;


--
-- Name: rireki_numbering; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rireki_numbering (
    id bigint NOT NULL,
    rireki_no character varying(100) NOT NULL,
    history_pkey integer,
    history_type character varying(16)
);


--
-- Name: TABLE rireki_numbering; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE rireki_numbering IS '台帳申請書No採番';


--
-- Name: COLUMN rireki_numbering.id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN rireki_numbering.id IS '内部キー';


--
-- Name: COLUMN rireki_numbering.rireki_no; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN rireki_numbering.rireki_no IS '申請書No';


--
-- Name: COLUMN rireki_numbering.history_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN rireki_numbering.history_pkey IS '履歴テーブル内部キー';


--
-- Name: COLUMN rireki_numbering.history_type; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN rireki_numbering.history_type IS 'テーブル名';


--
-- Name: hard_rireki_detail; Type: VIEW; Schema: public; Owner: -
--

CREATE VIEW hard_rireki_detail AS
 SELECT hardrireki.hardhistory_pkey,
    hardrireki.hard_pkey,
    hardrireki.sosiki_pkey,
    sosiki.syozoku_fullname,
    hardrireki.hard_kanrino,
    hardrireki.soft_installdel,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '00022'::text) AND ((code.code)::text = (hardrireki.soft_installdel)::text))) AS soft_installdel_name,
    hardrireki.use_name,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '20003'::text) AND ((code.code)::text = (hardrireki.use_name)::text))) AS use_name_name,
    hardrireki.tyoutatu,
    hardrireki.bikou,
    hardrireki.location_code,
    location.district,
    location.site,
    location.floor,
    location.area,
    hardrireki.lease_or_purchase,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '20002'::text) AND ((code.code)::text = (hardrireki.lease_or_purchase)::text))) AS lease_or_purchase_name,
    hardrireki.procurement_form,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '20001'::text) AND ((code.code)::text = (hardrireki.procurement_form)::text))) AS procurement_form_name,
    hardrireki.ip_address1,
    hardrireki.ip_address2,
    hardrireki.mac_address1,
    hardrireki.mac_address2,
    hardrireki.checkout_date,
    hardrireki.return_due_date,
    hardrireki.return_date,
    hardrireki.tyoutatu_date,
    hardrireki.haiki_date,
    hardrireki.version,
    rireki.sinsei_date,
    rireki.sinseisya,
    ( SELECT count(*) AS count
           FROM soft
          WHERE (((hardrireki.hard_pkey = soft.hard_pkey) AND (soft.newkbn = 0)) AND ((soft.uninstall_date > ('now'::text)::date) OR (soft.uninstall_date IS NULL)))) AS soft_qty,
    rireki.syonin_kbn,
    rireki.syonin_kbn_name,
    rireki.syoninsya,
    rireki.syonin_date,
    rireki.email_ad,
    rireki.note,
    rireki_numbering.rireki_no
   FROM ((((hardrireki
     LEFT JOIN rireki ON (((hardrireki.hardhistory_pkey = rireki.history_pkey) AND ((rireki.history_type)::text = 'd001'::text))))
     LEFT JOIN sosiki ON ((hardrireki.sosiki_pkey = sosiki.sosiki_pkey)))
     LEFT JOIN rireki_numbering ON (((rireki.history_pkey = rireki_numbering.history_pkey) AND ((rireki.history_type)::text = (rireki_numbering.history_type)::text))))
     LEFT JOIN location ON ((hardrireki.location_code = location.location_pkey)));


--
-- Name: hardrireki_hardhistory_pkey_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE hardrireki_hardhistory_pkey_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: hardrireki_hardhistory_pkey_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE hardrireki_hardhistory_pkey_seq OWNED BY hardrireki.hardhistory_pkey;


--
-- Name: hardware_kanrino_numbering; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE hardware_kanrino_numbering (
    id bigint NOT NULL,
    workflow_id integer NOT NULL,
    hard_kanrino character varying(100) NOT NULL,
    hard_pkey integer,
    hardhistory_pkey integer
);


--
-- Name: TABLE hardware_kanrino_numbering; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE hardware_kanrino_numbering IS 'ハードウェア管理番号採番';


--
-- Name: COLUMN hardware_kanrino_numbering.id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hardware_kanrino_numbering.id IS '内部キー';


--
-- Name: COLUMN hardware_kanrino_numbering.workflow_id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hardware_kanrino_numbering.workflow_id IS 'ワークフロー内部キー';


--
-- Name: COLUMN hardware_kanrino_numbering.hard_kanrino; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hardware_kanrino_numbering.hard_kanrino IS 'ハードウェア管理番号';


--
-- Name: COLUMN hardware_kanrino_numbering.hard_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hardware_kanrino_numbering.hard_pkey IS 'ハードウェア台帳の内部キー';


--
-- Name: COLUMN hardware_kanrino_numbering.hardhistory_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hardware_kanrino_numbering.hardhistory_pkey IS 'ハードウェア台帳履歴の内部キー';


--
-- Name: hardware_kanrino_numbering_alternative; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE hardware_kanrino_numbering_alternative (
    id bigint NOT NULL,
    workflow_id integer NOT NULL,
    hard_kanrino character varying(100) NOT NULL,
    hard_pkey integer,
    hardhistory_pkey integer
);


--
-- Name: TABLE hardware_kanrino_numbering_alternative; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE hardware_kanrino_numbering_alternative IS 'ハードウェア管理番号採番代替';


--
-- Name: COLUMN hardware_kanrino_numbering_alternative.id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hardware_kanrino_numbering_alternative.id IS '内部キー';


--
-- Name: COLUMN hardware_kanrino_numbering_alternative.workflow_id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hardware_kanrino_numbering_alternative.workflow_id IS 'ワークフロー内部キー';


--
-- Name: COLUMN hardware_kanrino_numbering_alternative.hard_kanrino; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hardware_kanrino_numbering_alternative.hard_kanrino IS 'ハードウェア管理番号';


--
-- Name: COLUMN hardware_kanrino_numbering_alternative.hard_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hardware_kanrino_numbering_alternative.hard_pkey IS 'ハードウェア台帳の内部キー';


--
-- Name: COLUMN hardware_kanrino_numbering_alternative.hardhistory_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN hardware_kanrino_numbering_alternative.hardhistory_pkey IS 'ハードウェア台帳履歴の内部キー';


--
-- Name: hardware_kanrino_numbering_alternative_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE hardware_kanrino_numbering_alternative_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: hardware_kanrino_numbering_alternative_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE hardware_kanrino_numbering_alternative_id_seq OWNED BY hardware_kanrino_numbering_alternative.id;


--
-- Name: hardware_kanrino_numbering_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE hardware_kanrino_numbering_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: hardware_kanrino_numbering_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE hardware_kanrino_numbering_id_seq OWNED BY hardware_kanrino_numbering.id;


--
-- Name: import_moniter; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE import_moniter (
    import_pkey integer NOT NULL,
    user_id character varying(50),
    import_qty bigint,
    start_date timestamp with time zone
);


--
-- Name: COLUMN import_moniter.user_id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN import_moniter.user_id IS 'ユーザーID';


--
-- Name: import_moniter_import_pkey_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE import_moniter_import_pkey_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: import_moniter_import_pkey_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE import_moniter_import_pkey_seq OWNED BY import_moniter.import_pkey;


--
-- Name: info_system_code; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE info_system_code (
    spe_record_no bigint NOT NULL,
    special_sys_cd character varying(5),
    special_sys_nm character varying(255),
    netwk_kb character varying(255),
    developer character varying(255),
    organize_cd character varying(4),
    remarks character varying(255),
    upd_ymd date,
    inc_data_ins_ymd date,
    inc_data_upd_ymd date
);


--
-- Name: TABLE info_system_code; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE info_system_code IS '情報システム';


--
-- Name: COLUMN info_system_code.spe_record_no; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN info_system_code.spe_record_no IS '情報システム内部管理番号';


--
-- Name: COLUMN info_system_code.special_sys_cd; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN info_system_code.special_sys_cd IS '情報システムコード（ユーザー管理用）';


--
-- Name: COLUMN info_system_code.special_sys_nm; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN info_system_code.special_sys_nm IS '情報システム名称';


--
-- Name: COLUMN info_system_code.netwk_kb; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN info_system_code.netwk_kb IS '使用するネットワーク';


--
-- Name: COLUMN info_system_code.developer; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN info_system_code.developer IS '開発業者';


--
-- Name: COLUMN info_system_code.organize_cd; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN info_system_code.organize_cd IS '所属コード（システム管理者）';


--
-- Name: COLUMN info_system_code.remarks; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN info_system_code.remarks IS '備考';


--
-- Name: COLUMN info_system_code.upd_ymd; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN info_system_code.upd_ymd IS 'データ更新日';


--
-- Name: COLUMN info_system_code.inc_data_ins_ymd; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN info_system_code.inc_data_ins_ymd IS '取り込みデータ生成日';


--
-- Name: COLUMN info_system_code.inc_data_upd_ymd; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN info_system_code.inc_data_upd_ymd IS '取り込みデータ更新日';


--
-- Name: info_system_code_detail; Type: VIEW; Schema: public; Owner: -
--

CREATE VIEW info_system_code_detail AS
 SELECT isc.spe_record_no,
    isc.special_sys_cd,
    isc.special_sys_nm,
    isc.netwk_kb,
    isc.developer,
    isc.organize_cd,
    isc.remarks,
    isc.upd_ymd,
    isc.inc_data_ins_ymd,
    isc.inc_data_upd_ymd,
    s.syozoku_fullname
   FROM (info_system_code isc
     LEFT JOIN sosiki s ON (((isc.organize_cd)::text = (s.syozoku_code)::text)));


--
-- Name: inventorysoft; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE inventorysoft (
    hardwareno character varying(255) NOT NULL,
    insapname character varying(255),
    insapno bigint NOT NULL,
    licence_type character varying(6)
);


--
-- Name: TABLE inventorysoft; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE inventorysoft IS '収集情報ソフトウェア';


--
-- Name: COLUMN inventorysoft.licence_type; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN inventorysoft.licence_type IS 'ライセンス種別';


--
-- Name: inventory_detail; Type: VIEW; Schema: public; Owner: -
--

CREATE VIEW inventory_detail AS
 SELECT inventory.inventory_pkey,
    inventory.collectsource,
    inventory.idkey,
    inventory.invtraprecvdate,
    inventory.hardwareno,
    inventory.group1,
    inventory.jyotai,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '00002'::text) AND ((code.code)::text = (inventory.jyotai)::text))) AS jyotai_name,
    inventory.hikaku,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '00007'::text) AND ((code.code)::text = (inventory.hikaku)::text))) AS hikaku_name,
    inventory.hsyubetu,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '00001'::text) AND ((code.code)::text = (inventory.hsyubetu)::text))) AS hsyubetu_name,
    inventory.macaddress,
    inventory.ipaddress,
    inventory.subnetmask,
    inventory.defaultgateway,
    inventory.dnsserver,
    inventory.secondarydns,
    inventory.computername,
    inventory.domainname,
    inventory.workgroup,
    inventory.userid,
    inventory.hyoujimei,
    inventory.yakusyoku,
    inventory.syozoku,
    inventory.machinevendor,
    inventory.machinename,
    inventory.cpuname,
    inventory.memorysize,
    inventory.osversion,
    inventory.windowsservicepack,
    inventory.ieversion,
    inventory.virussoftname,
    inventory.enginever,
    inventory.patternver,
    inventory.misiyou1,
    inventory.misiyou2,
    inventory.misiyou3,
    inventory.mukou_date,
    array_to_string(ARRAY( SELECT s.insapname
           FROM inventorysoft s
          WHERE (((s.hardwareno)::text = (inventory.hardwareno)::text) AND (s.insapname IS NOT NULL))
          ORDER BY lower((s.insapname)::text)), '
'::text) AS program_add_del,
    array_to_string(ARRAY( SELECT ((((s.insapname)::text || '（'::text) || (( SELECT code.code_name
                   FROM code
                  WHERE (((code.code_bunrui)::text = '10022'::text) AND ((code.code)::text = (s.licence_type)::text))))::text) || '）'::text)
           FROM inventorysoft s
          WHERE (((s.hardwareno)::text = (inventory.hardwareno)::text) AND ((s.licence_type)::text > '0'::text))
          ORDER BY lower((s.insapname)::text)), '
'::text) AS licence_type_name,
    inventory.toolversion
   FROM inventory;


--
-- Name: inventory_inventory_pkey_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE inventory_inventory_pkey_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: inventory_inventory_pkey_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE inventory_inventory_pkey_seq OWNED BY inventory.inventory_pkey;


--
-- Name: inventorydate; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE inventorydate (
    invbunrui integer NOT NULL,
    invbunruimei character varying(100),
    invstart timestamp with time zone,
    invend timestamp with time zone
);


--
-- Name: TABLE inventorydate; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE inventorydate IS '収集情報更新日時';


--
-- Name: inventorysoft_ext; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE inventorysoft_ext (
    insapno bigint NOT NULL,
    inv_soft_reg boolean,
    inv_soft_exempt boolean,
    inv_licence_type_validate boolean,
    inv_licence_type_exempt boolean
);


--
-- Name: COLUMN inventorysoft_ext.inv_licence_type_validate; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN inventorysoft_ext.inv_licence_type_validate IS 'ライセンス種別整合性フラグ';


--
-- Name: COLUMN inventorysoft_ext.inv_licence_type_exempt; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN inventorysoft_ext.inv_licence_type_exempt IS 'ライセンス種別確認免除フラグ';


--
-- Name: inventorysoft_csv; Type: VIEW; Schema: public; Owner: -
--

CREATE VIEW inventorysoft_csv AS
 SELECT inventory.inventory_pkey,
    inventory.group1,
    inventory.jyotai,
    inventory.hikaku,
    inventory.invtraprecvdate,
    inventory.hardwareno,
    inventorysoft.insapname,
    inventorysoft.licence_type,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '10022'::text) AND ((code.code)::text = (inventorysoft.licence_type)::text))) AS licence_type_name,
    inventorysoft_ext.inv_soft_reg,
    inventorysoft_ext.inv_soft_exempt,
    inventorysoft_ext.inv_licence_type_validate,
    inventorysoft_ext.inv_licence_type_exempt,
    inventory.collectsource,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '00002'::text) AND ((code.code)::text = (inventory.jyotai)::text))) AS jyotai_name,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '00007'::text) AND ((code.code)::text = (inventory.hikaku)::text))) AS hikaku_name,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '00001'::text) AND ((code.code)::text = (inventory.hsyubetu)::text))) AS hsyubetu_name,
    inventory.ipaddress,
    inventory.computername,
    inventory.userid,
    inventory.hyoujimei,
    inventory.machinevendor,
    inventory.machinename,
    inventory.macaddress,
    inventory.osversion,
    array_to_string(ARRAY( SELECT s.insapname
           FROM inventorysoft s
          WHERE ((s.hardwareno)::text = (inventory.hardwareno)::text)
          ORDER BY lower((s.insapname)::text)), '
'::text) AS program_add_del,
    array_to_string(ARRAY( SELECT ((((s.insapname)::text || '（'::text) || (( SELECT code.code_name
                   FROM code
                  WHERE (((code.code_bunrui)::text = '10022'::text) AND ((code.code)::text = (s.licence_type)::text))))::text) || '）'::text)
           FROM inventorysoft s
          WHERE (((s.hardwareno)::text = (inventory.hardwareno)::text) AND ((s.licence_type)::text > (0)::text))
          ORDER BY lower((s.insapname)::text)), '
'::text) AS program_add_del_licence_type
   FROM ((inventorysoft
     LEFT JOIN inventory ON (((inventorysoft.hardwareno)::text = (inventory.hardwareno)::text)))
     LEFT JOIN inventorysoft_ext ON ((inventorysoft.insapno = inventorysoft_ext.insapno)));


--
-- Name: inventorysoft_detail; Type: VIEW; Schema: public; Owner: -
--

CREATE VIEW inventorysoft_detail AS
 SELECT inventory.inventory_pkey,
    inventory.collectsource,
    inventory.invtraprecvdate,
    inventory.hardwareno,
    inventory.group1,
    inventory.jyotai,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '00002'::text) AND ((code.code)::text = (inventory.jyotai)::text))) AS jyotai_name,
    inventory.hikaku,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '00007'::text) AND ((code.code)::text = (inventory.hikaku)::text))) AS hikaku_name,
    inventory.hsyubetu,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '00001'::text) AND ((code.code)::text = (inventory.hsyubetu)::text))) AS hsyubetu_name,
    inventory.ipaddress,
    inventory.computername,
    inventory.userid,
    inventory.hyoujimei,
    inventory.machinevendor,
    inventory.machinename,
    inventory.macaddress,
    inventory.osversion,
    array_to_string(ARRAY( SELECT s.insapname
           FROM inventorysoft s
          WHERE ((s.hardwareno)::text = (inventory.hardwareno)::text)
          ORDER BY lower((s.insapname)::text)), '
'::text) AS program_add_del,
    array_to_string(ARRAY( SELECT ((((s.insapname)::text || '（'::text) || (( SELECT code.code_name
                   FROM code
                  WHERE (((code.code_bunrui)::text = '10022'::text) AND ((code.code)::text = (s.licence_type)::text))))::text) || '）'::text)
           FROM inventorysoft s
          WHERE (((s.hardwareno)::text = (inventory.hardwareno)::text) AND ((s.licence_type)::text > '0'::text))
          ORDER BY lower((s.insapname)::text)), '
'::text) AS licence_type_name,
    inventorysoft.hardwareno AS s_hardwareno,
    inventorysoft.insapname
   FROM (inventory
     LEFT JOIN inventorysoft ON (((inventory.hardwareno)::text = (inventorysoft.hardwareno)::text)));


--
-- Name: inventorysoft_insapno_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE inventorysoft_insapno_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: inventorysoft_insapno_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE inventorysoft_insapno_seq OWNED BY inventorysoft.insapno;


--
-- Name: licence; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE licence (
    licence_pkey integer NOT NULL,
    sosiki_pkey integer,
    licencelist_pkey integer,
    licence_kanrino character varying(255),
    install_su integer,
    hard_pkey integer,
    licence_pkey2 integer,
    licence_no text,
    tyoutatu text,
    hokan_baitai text,
    hokan_basyo text,
    bikou text,
    tyoutatu_date date,
    haiki_date date,
    version smallint NOT NULL,
    newkbn smallint,
    kanri_sosiki_pkey integer,
    holdings_number integer,
    kanri_sosiki_flg smallint,
    license_limit_date date
);


--
-- Name: TABLE licence; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE licence IS 'ライセンス台帳';


--
-- Name: COLUMN licence.licence_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence.licence_pkey IS '内部キー';


--
-- Name: COLUMN licence.sosiki_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence.sosiki_pkey IS '組織テーブルの内部キー';


--
-- Name: COLUMN licence.licencelist_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence.licencelist_pkey IS 'ライセンス一覧表の内部キー';


--
-- Name: COLUMN licence.licence_kanrino; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence.licence_kanrino IS 'ライセンス管理番号';


--
-- Name: COLUMN licence.install_su; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence.install_su IS 'インストール可能数';


--
-- Name: COLUMN licence.hard_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence.hard_pkey IS 'ハードウェア台帳の内部キー';


--
-- Name: COLUMN licence.licence_pkey2; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence.licence_pkey2 IS 'ライセンス台帳の内部キー';


--
-- Name: COLUMN licence.licence_no; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence.licence_no IS 'ライセンス証書番号';


--
-- Name: COLUMN licence.tyoutatu; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence.tyoutatu IS '調達情報';


--
-- Name: COLUMN licence.hokan_baitai; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence.hokan_baitai IS '保管媒体';


--
-- Name: COLUMN licence.hokan_basyo; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence.hokan_basyo IS '保管場所';


--
-- Name: COLUMN licence.bikou; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence.bikou IS '備考';


--
-- Name: COLUMN licence.tyoutatu_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence.tyoutatu_date IS '調達日';


--
-- Name: COLUMN licence.haiki_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence.haiki_date IS '廃棄日';


--
-- Name: COLUMN licence.version; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence.version IS 'バージョン';


--
-- Name: COLUMN licence.newkbn; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence.newkbn IS '新規区分';


--
-- Name: COLUMN licence.kanri_sosiki_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence.kanri_sosiki_pkey IS '管理組織の組織テーブル内部キー';


--
-- Name: COLUMN licence.holdings_number; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence.holdings_number IS '管理組織のライセンス保有数';


--
-- Name: COLUMN licence.kanri_sosiki_flg; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence.kanri_sosiki_flg IS '管理所属フラグ';


--
-- Name: COLUMN licence.license_limit_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence.license_limit_date IS 'ライセンス使用期限';


--
-- Name: licence_attached_file; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE licence_attached_file (
    licence_attached_pkey integer NOT NULL,
    licence_pkey integer,
    file_path character varying(255),
    before_filename character varying(255),
    after_filename character varying(255),
    file_sortkey smallint
);


--
-- Name: TABLE licence_attached_file; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE licence_attached_file IS 'ライセンス添付ファイル';


--
-- Name: COLUMN licence_attached_file.licence_attached_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_attached_file.licence_attached_pkey IS '内部キー';


--
-- Name: COLUMN licence_attached_file.licence_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_attached_file.licence_pkey IS 'ライセンス台帳内部キー';


--
-- Name: COLUMN licence_attached_file.file_path; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_attached_file.file_path IS 'CSV格納場所';


--
-- Name: COLUMN licence_attached_file.before_filename; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_attached_file.before_filename IS '変換前ファイル名';


--
-- Name: COLUMN licence_attached_file.after_filename; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_attached_file.after_filename IS '変換後ファイル名';


--
-- Name: COLUMN licence_attached_file.file_sortkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_attached_file.file_sortkey IS 'ファイル表示順';


--
-- Name: licence_attached_file_delete; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE licence_attached_file_delete (
    id integer NOT NULL,
    licence_attached_pkey integer,
    licence_pkey integer,
    file_path character varying(255),
    before_filename character varying(255),
    after_filename character varying(255),
    file_sortkey smallint,
    delete_user_id character varying(50) NOT NULL,
    delete_user_name character varying(80) NOT NULL,
    delete_datetime timestamp with time zone NOT NULL
);


--
-- Name: TABLE licence_attached_file_delete; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE licence_attached_file_delete IS 'ライセンス添付ファイル削除';


--
-- Name: COLUMN licence_attached_file_delete.id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_attached_file_delete.id IS '内部キー';


--
-- Name: COLUMN licence_attached_file_delete.licence_attached_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_attached_file_delete.licence_attached_pkey IS 'ライセンス添付ファイル内部キー';


--
-- Name: COLUMN licence_attached_file_delete.licence_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_attached_file_delete.licence_pkey IS 'ライセンス台帳内部キー';


--
-- Name: COLUMN licence_attached_file_delete.file_path; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_attached_file_delete.file_path IS 'CSV格納場所';


--
-- Name: COLUMN licence_attached_file_delete.before_filename; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_attached_file_delete.before_filename IS '変換前ファイル名';


--
-- Name: COLUMN licence_attached_file_delete.after_filename; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_attached_file_delete.after_filename IS '変換後ファイル名';


--
-- Name: COLUMN licence_attached_file_delete.file_sortkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_attached_file_delete.file_sortkey IS 'ファイル表示順';


--
-- Name: COLUMN licence_attached_file_delete.delete_user_id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_attached_file_delete.delete_user_id IS '削除ユーザーID';


--
-- Name: COLUMN licence_attached_file_delete.delete_user_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_attached_file_delete.delete_user_name IS '削除ユーザー名';


--
-- Name: COLUMN licence_attached_file_delete.delete_datetime; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_attached_file_delete.delete_datetime IS '削除日時';


--
-- Name: licence_attached_file_delete_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE licence_attached_file_delete_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: licence_attached_file_delete_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE licence_attached_file_delete_id_seq OWNED BY licence_attached_file_delete.id;


--
-- Name: licence_attached_file_licence_attached_pkey_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE licence_attached_file_licence_attached_pkey_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: licence_attached_file_licence_attached_pkey_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE licence_attached_file_licence_attached_pkey_seq OWNED BY licence_attached_file.licence_attached_pkey;


--
-- Name: licence_attached_file_rireki; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE licence_attached_file_rireki (
    licence_attached_history_pkey integer NOT NULL,
    licence_attached_pkey integer,
    licencehistory_pkey integer,
    licence_pkey integer,
    file_path character varying(255),
    before_filename character varying(255),
    after_filename character varying(255),
    file_sortkey smallint
);


--
-- Name: TABLE licence_attached_file_rireki; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE licence_attached_file_rireki IS 'ライセンス添付ファイル履歴';


--
-- Name: COLUMN licence_attached_file_rireki.licence_attached_history_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_attached_file_rireki.licence_attached_history_pkey IS '内部キー';


--
-- Name: COLUMN licence_attached_file_rireki.licence_attached_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_attached_file_rireki.licence_attached_pkey IS 'ライセンス添付ファイル内部キー';


--
-- Name: COLUMN licence_attached_file_rireki.licencehistory_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_attached_file_rireki.licencehistory_pkey IS 'ライセンス台帳内部キー';


--
-- Name: COLUMN licence_attached_file_rireki.licence_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_attached_file_rireki.licence_pkey IS 'ライセンス台帳履歴内部キー';


--
-- Name: COLUMN licence_attached_file_rireki.file_path; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_attached_file_rireki.file_path IS 'CSV格納場所';


--
-- Name: COLUMN licence_attached_file_rireki.before_filename; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_attached_file_rireki.before_filename IS '変換前ファイル名';


--
-- Name: COLUMN licence_attached_file_rireki.after_filename; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_attached_file_rireki.after_filename IS '変換後ファイル名';


--
-- Name: COLUMN licence_attached_file_rireki.file_sortkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_attached_file_rireki.file_sortkey IS 'ファイル表示順';


--
-- Name: licence_attached_file_rireki_licence_attached_history_pkey_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE licence_attached_file_rireki_licence_attached_history_pkey_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: licence_attached_file_rireki_licence_attached_history_pkey_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE licence_attached_file_rireki_licence_attached_history_pkey_seq OWNED BY licence_attached_file_rireki.licence_attached_history_pkey;


--
-- Name: licence_delete; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE licence_delete (
    id integer NOT NULL,
    licence_pkey integer NOT NULL,
    sosiki_pkey integer,
    licencelist_pkey integer,
    licence_kanrino character varying(255),
    install_su integer,
    hard_pkey integer,
    licence_pkey2 integer,
    licence_no text,
    tyoutatu text,
    hokan_baitai text,
    hokan_basyo text,
    bikou text,
    tyoutatu_date date,
    haiki_date date,
    version smallint NOT NULL,
    newkbn smallint,
    kanri_sosiki_pkey integer,
    holdings_number integer,
    kanri_sosiki_flg smallint,
    license_limit_date date,
    delete_user_id character varying(50) NOT NULL,
    delete_user_name character varying(80) NOT NULL,
    delete_datetime timestamp with time zone NOT NULL
);


--
-- Name: TABLE licence_delete; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE licence_delete IS 'ライセンス台帳削除';


--
-- Name: COLUMN licence_delete.id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_delete.id IS '内部キー';


--
-- Name: COLUMN licence_delete.licence_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_delete.licence_pkey IS '旧内部キー';


--
-- Name: COLUMN licence_delete.sosiki_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_delete.sosiki_pkey IS '組織テーブルの内部キー';


--
-- Name: COLUMN licence_delete.licencelist_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_delete.licencelist_pkey IS 'ライセンス一覧表の内部キー';


--
-- Name: COLUMN licence_delete.licence_kanrino; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_delete.licence_kanrino IS 'ライセンス管理番号';


--
-- Name: COLUMN licence_delete.install_su; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_delete.install_su IS 'インストール可能数';


--
-- Name: COLUMN licence_delete.hard_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_delete.hard_pkey IS 'ハードウェア台帳の内部キー';


--
-- Name: COLUMN licence_delete.licence_pkey2; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_delete.licence_pkey2 IS 'ライセンス台帳の内部キー';


--
-- Name: COLUMN licence_delete.licence_no; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_delete.licence_no IS 'ライセンス証書番号';


--
-- Name: COLUMN licence_delete.tyoutatu; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_delete.tyoutatu IS '調達情報';


--
-- Name: COLUMN licence_delete.hokan_baitai; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_delete.hokan_baitai IS '保管媒体';


--
-- Name: COLUMN licence_delete.hokan_basyo; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_delete.hokan_basyo IS '保管場所';


--
-- Name: COLUMN licence_delete.bikou; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_delete.bikou IS '備考';


--
-- Name: COLUMN licence_delete.tyoutatu_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_delete.tyoutatu_date IS '調達日';


--
-- Name: COLUMN licence_delete.haiki_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_delete.haiki_date IS '廃棄日';


--
-- Name: COLUMN licence_delete.version; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_delete.version IS 'バージョン';


--
-- Name: COLUMN licence_delete.newkbn; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_delete.newkbn IS '新規区分';


--
-- Name: COLUMN licence_delete.kanri_sosiki_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_delete.kanri_sosiki_pkey IS '管理組織の組織テーブル内部キー';


--
-- Name: COLUMN licence_delete.holdings_number; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_delete.holdings_number IS '管理組織のライセンス保有数';


--
-- Name: COLUMN licence_delete.kanri_sosiki_flg; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_delete.kanri_sosiki_flg IS '管理所属フラグ';


--
-- Name: COLUMN licence_delete.license_limit_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_delete.license_limit_date IS 'ライセンス使用期限';


--
-- Name: COLUMN licence_delete.delete_user_id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_delete.delete_user_id IS '削除ユーザーID';


--
-- Name: COLUMN licence_delete.delete_user_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_delete.delete_user_name IS '削除ユーザー名';


--
-- Name: COLUMN licence_delete.delete_datetime; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_delete.delete_datetime IS '削除日時';


--
-- Name: licencelist; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE licencelist (
    licencelist_pkey integer NOT NULL,
    soft_name character varying(255),
    licence_keitai character varying(6),
    brand character varying(50),
    hard_kotei character varying(6),
    upgrade character varying(6),
    useproposal_kakunin character varying(6),
    tokusitu_useproposal text,
    useproposal_youken text,
    bikou text,
    upd_date date,
    upd_name character varying(80),
    yukou character varying(6),
    version smallint NOT NULL,
    upd_syozoku integer,
    newkbn smallint,
    permit character varying(6)
);


--
-- Name: TABLE licencelist; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE licencelist IS 'ライセンス一覧表';


--
-- Name: COLUMN licencelist.licencelist_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencelist.licencelist_pkey IS '内部キー';


--
-- Name: COLUMN licencelist.soft_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencelist.soft_name IS 'ソフトウェア名';


--
-- Name: COLUMN licencelist.licence_keitai; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencelist.licence_keitai IS '種類';


--
-- Name: COLUMN licencelist.brand; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencelist.brand IS 'メーカー';


--
-- Name: COLUMN licencelist.hard_kotei; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencelist.hard_kotei IS 'ハードウェア固定';


--
-- Name: COLUMN licencelist.upgrade; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencelist.upgrade IS 'アップグレード版';


--
-- Name: COLUMN licencelist.useproposal_kakunin; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencelist.useproposal_kakunin IS '使用許諾条件の確認';


--
-- Name: COLUMN licencelist.tokusitu_useproposal; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencelist.tokusitu_useproposal IS '特筆すべき使用許諾条件';


--
-- Name: COLUMN licencelist.useproposal_youken; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencelist.useproposal_youken IS '使用許諾証明要件';


--
-- Name: COLUMN licencelist.bikou; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencelist.bikou IS '備考';


--
-- Name: COLUMN licencelist.upd_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencelist.upd_date IS '更新日';


--
-- Name: COLUMN licencelist.upd_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencelist.upd_name IS '更新者氏名';


--
-- Name: COLUMN licencelist.yukou; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencelist.yukou IS '有効';


--
-- Name: COLUMN licencelist.version; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencelist.version IS 'バージョン';


--
-- Name: COLUMN licencelist.upd_syozoku; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencelist.upd_syozoku IS '更新者所属';


--
-- Name: COLUMN licencelist.newkbn; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencelist.newkbn IS '新規区分';


--
-- Name: COLUMN licencelist.permit; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencelist.permit IS 'ライセンス台帳での表示';


--
-- Name: licencelistprogram; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE licencelistprogram (
    licencelist_pkey integer NOT NULL,
    program_add_del character varying(255) NOT NULL
);


--
-- Name: TABLE licencelistprogram; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE licencelistprogram IS 'ライセンス一覧プログラム表示';


--
-- Name: licencelistprogram_down; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE licencelistprogram_down (
    licencelist_pkey integer NOT NULL,
    program_add_del character varying(255) NOT NULL
);


--
-- Name: licence_delete_detail; Type: VIEW; Schema: public; Owner: -
--

CREATE VIEW licence_delete_detail AS
 SELECT licence_delete.licence_pkey,
    licence_delete.licencelist_pkey,
    licence_delete.sosiki_pkey,
    sosiki.syozoku_name AS sosiki_name,
    sosiki.syozoku_fullname AS sosiki_fullname,
    licence_delete.licence_kanrino,
    licencelist.soft_name,
    licencelist.licence_keitai,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '00005'::text) AND ((code.code)::text = (licencelist.licence_keitai)::text))) AS licence_keitai_name,
    licencelist.brand,
    licence_delete.install_su,
    ( SELECT count(*) AS count
           FROM soft
          WHERE (((licence_delete.licence_pkey = soft.licence_pkey) AND (soft.uninstall_date IS NULL)) AND (soft.newkbn = 0))) AS install_qty,
    licencelist.hard_kotei,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '00004'::text) AND ((code.code)::text = (licencelist.hard_kotei)::text))) AS hard_kotei_name,
    licence_delete.hard_pkey,
    hard.hard_kanrino,
    licencelist.upgrade,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '00004'::text) AND ((code.code)::text = (licencelist.upgrade)::text))) AS upgrade_name,
    licence_delete.licence_pkey2,
    up.licence_kanrino AS up_licence_kanrino,
    licence_delete.licence_no,
    licence_delete.tyoutatu,
    licencelist.tokusitu_useproposal,
    licencelist.useproposal_youken,
    licence_delete.hokan_baitai,
    licence_delete.hokan_basyo,
    array_to_string(ARRAY( SELECT regexp_replace((p.program_add_del)::text, '
'::text, '(RETURN)'::text) AS regexp_replace
           FROM licencelistprogram p
          WHERE (p.licencelist_pkey = licence_delete.licencelist_pkey)
          ORDER BY p.program_add_del), '
'::text) AS program_add_del,
    array_to_string(ARRAY( SELECT regexp_replace((p.program_add_del)::text, '
'::text, '(RETURN)'::text) AS regexp_replace
           FROM licencelistprogram_down p
          WHERE (p.licencelist_pkey = licence_delete.licencelist_pkey)
          ORDER BY p.program_add_del), '
'::text) AS program_add_del_down,
    licence_delete.bikou,
    licence_delete.tyoutatu_date,
    licence_delete.haiki_date,
    licence_delete.version,
    licence_delete.newkbn,
    COALESCE((sosiki.sosiki_sortkey)::integer, 0) AS sosiki_sortkey,
    licence_delete.kanri_sosiki_pkey,
    kanri.syozoku_name AS kanri_sosiki_name,
    kanri.syozoku_fullname AS kanri_sosiki_fullname,
    COALESCE((kanri.sosiki_sortkey)::integer, 0) AS kanri_sosiki_sortkey,
    licence_delete.holdings_number,
    licence_delete.kanri_sosiki_flg,
    licence_delete.license_limit_date,
    ( SELECT
                CASE
                    WHEN (count(f.licence_pkey) = 0) THEN '×'::text
                    ELSE '○'::text
                END AS "case"
           FROM licence_attached_file_delete f
          WHERE (f.licence_pkey = licence_delete.licence_pkey)) AS attached_file,
    licence_delete.delete_user_id,
    licence_delete.delete_user_name,
    licence_delete.delete_datetime
   FROM (((((licence_delete
     LEFT JOIN licencelist ON ((licence_delete.licencelist_pkey = licencelist.licencelist_pkey)))
     LEFT JOIN sosiki ON ((licence_delete.sosiki_pkey = sosiki.sosiki_pkey)))
     LEFT JOIN hard ON ((licence_delete.hard_pkey = hard.hard_pkey)))
     LEFT JOIN licence up ON ((licence_delete.licence_pkey2 = up.licence_pkey)))
     LEFT JOIN sosiki kanri ON ((licence_delete.kanri_sosiki_pkey = kanri.sosiki_pkey)));


--
-- Name: licence_delete_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE licence_delete_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: licence_delete_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE licence_delete_id_seq OWNED BY licence_delete.id;


--
-- Name: licence_detail; Type: VIEW; Schema: public; Owner: -
--

CREATE VIEW licence_detail AS
 SELECT licence.licence_pkey,
    licence.licencelist_pkey,
    licence.sosiki_pkey,
    sosiki.syozoku_name AS sosiki_name,
    sosiki.syozoku_fullname AS sosiki_fullname,
    licence.licence_kanrino,
    licencelist.soft_name,
    licencelist.licence_keitai,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '00005'::text) AND ((code.code)::text = (licencelist.licence_keitai)::text))) AS licence_keitai_name,
    licencelist.brand,
    licence.install_su,
    ( SELECT count(*) AS count
           FROM soft
          WHERE (((licence.licence_pkey = soft.licence_pkey) AND (soft.uninstall_date IS NULL)) AND (soft.newkbn = 0))) AS install_qty,
    licencelist.hard_kotei,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '00004'::text) AND ((code.code)::text = (licencelist.hard_kotei)::text))) AS hard_kotei_name,
    licence.hard_pkey,
    hard.hard_kanrino,
    licencelist.upgrade,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '00004'::text) AND ((code.code)::text = (licencelist.upgrade)::text))) AS upgrade_name,
    licence.licence_pkey2,
    up.licence_kanrino AS up_licence_kanrino,
    licence.licence_no,
    licence.tyoutatu,
    licencelist.tokusitu_useproposal,
    licencelist.useproposal_youken,
    licence.hokan_baitai,
    licence.hokan_basyo,
    array_to_string(ARRAY( SELECT regexp_replace((p.program_add_del)::text, '
'::text, '(RETURN)'::text) AS regexp_replace
           FROM licencelistprogram p
          WHERE (p.licencelist_pkey = licence.licencelist_pkey)
          ORDER BY p.program_add_del), '
'::text) AS program_add_del,
    array_to_string(ARRAY( SELECT regexp_replace((p.program_add_del)::text, '
'::text, '(RETURN)'::text) AS regexp_replace
           FROM licencelistprogram_down p
          WHERE (p.licencelist_pkey = licence.licencelist_pkey)
          ORDER BY p.program_add_del), '
'::text) AS program_add_del_down,
    licence.bikou,
    licence.tyoutatu_date,
    licence.haiki_date,
    licence.version,
    licence.newkbn,
    COALESCE((sosiki.sosiki_sortkey)::integer, 0) AS sosiki_sortkey,
    licence.kanri_sosiki_pkey,
    kanri.syozoku_name AS kanri_sosiki_name,
    kanri.syozoku_fullname AS kanri_sosiki_fullname,
    COALESCE((kanri.sosiki_sortkey)::integer, 0) AS kanri_sosiki_sortkey,
    licence.holdings_number,
    licence.kanri_sosiki_flg,
    licence.license_limit_date,
    ( SELECT
                CASE
                    WHEN (count(f.licence_pkey) = 0) THEN '×'::text
                    ELSE '○'::text
                END AS "case"
           FROM licence_attached_file f
          WHERE (f.licence_pkey = licence.licence_pkey)) AS attached_file
   FROM (((((licence
     LEFT JOIN licencelist ON ((licence.licencelist_pkey = licencelist.licencelist_pkey)))
     LEFT JOIN sosiki ON ((licence.sosiki_pkey = sosiki.sosiki_pkey)))
     LEFT JOIN hard ON ((licence.hard_pkey = hard.hard_pkey)))
     LEFT JOIN licence up ON ((licence.licence_pkey2 = up.licence_pkey)))
     LEFT JOIN sosiki kanri ON ((licence.kanri_sosiki_pkey = kanri.sosiki_pkey)));


--
-- Name: licence_kanrino_numbering; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE licence_kanrino_numbering (
    id bigint NOT NULL,
    workflow_id integer NOT NULL,
    licence_kanrino character varying(100) NOT NULL,
    licence_pkey integer,
    licencehistory_pkey integer,
    create_datetime timestamp with time zone
);


--
-- Name: TABLE licence_kanrino_numbering; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE licence_kanrino_numbering IS 'ライセンス管理番号採番';


--
-- Name: COLUMN licence_kanrino_numbering.id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_kanrino_numbering.id IS '内部キー';


--
-- Name: COLUMN licence_kanrino_numbering.workflow_id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_kanrino_numbering.workflow_id IS 'ワークフロー内部キー';


--
-- Name: COLUMN licence_kanrino_numbering.licence_kanrino; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_kanrino_numbering.licence_kanrino IS 'ライセンス管理番号';


--
-- Name: COLUMN licence_kanrino_numbering.licence_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_kanrino_numbering.licence_pkey IS 'ライセンス台帳の内部キー';


--
-- Name: COLUMN licence_kanrino_numbering.licencehistory_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_kanrino_numbering.licencehistory_pkey IS 'ライセンス台帳履歴の内部キー';


--
-- Name: COLUMN licence_kanrino_numbering.create_datetime; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_kanrino_numbering.create_datetime IS '登録日時';


--
-- Name: licence_kanrino_numbering_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE licence_kanrino_numbering_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: licence_kanrino_numbering_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE licence_kanrino_numbering_id_seq OWNED BY licence_kanrino_numbering.id;


--
-- Name: licence_licence_pkey_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE licence_licence_pkey_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: licence_licence_pkey_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE licence_licence_pkey_seq OWNED BY licence.licence_pkey;


--
-- Name: licence_media; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE licence_media (
    licence_media_pkey integer NOT NULL,
    licence_pkey integer NOT NULL,
    licence_media_kanrino character varying(255) NOT NULL,
    install_key character varying(255),
    admin_name character varying(80),
    original character varying(6) NOT NULL,
    source_media_kanrino character varying(255),
    set_number integer,
    storage_location character varying(255) NOT NULL,
    supplementary_information character varying(255),
    borrower_sosiki_pkey integer,
    borrower_name character varying(80),
    rental_reason character varying(255),
    contact_phone_number character varying(50),
    rental_date date,
    return_due_date date,
    return_date date,
    haiki_date date
);


--
-- Name: TABLE licence_media; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE licence_media IS 'ライセンス台帳媒体';


--
-- Name: COLUMN licence_media.licence_media_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_media.licence_media_pkey IS '内部キー';


--
-- Name: COLUMN licence_media.licence_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_media.licence_pkey IS 'ライセンス台帳の内部キー';


--
-- Name: COLUMN licence_media.licence_media_kanrino; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_media.licence_media_kanrino IS 'ライセンス媒体管理番号';


--
-- Name: COLUMN licence_media.install_key; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_media.install_key IS 'インストールキー';


--
-- Name: COLUMN licence_media.admin_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_media.admin_name IS '現管理者名';


--
-- Name: COLUMN licence_media.original; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_media.original IS '原本区分';


--
-- Name: COLUMN licence_media.source_media_kanrino; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_media.source_media_kanrino IS '複製元媒体管理番号';


--
-- Name: COLUMN licence_media.set_number; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_media.set_number IS 'セット枚数';


--
-- Name: COLUMN licence_media.storage_location; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_media.storage_location IS '保管場所';


--
-- Name: COLUMN licence_media.supplementary_information; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_media.supplementary_information IS '補足情報';


--
-- Name: COLUMN licence_media.borrower_sosiki_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_media.borrower_sosiki_pkey IS '貸出先所属課名';


--
-- Name: COLUMN licence_media.borrower_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_media.borrower_name IS '貸出先担当者名';


--
-- Name: COLUMN licence_media.rental_reason; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_media.rental_reason IS '貸出理由';


--
-- Name: COLUMN licence_media.contact_phone_number; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_media.contact_phone_number IS '連絡先番号';


--
-- Name: COLUMN licence_media.rental_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_media.rental_date IS '貸与日';


--
-- Name: COLUMN licence_media.return_due_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_media.return_due_date IS '返却予定日';


--
-- Name: COLUMN licence_media.return_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_media.return_date IS '返却日';


--
-- Name: COLUMN licence_media.haiki_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_media.haiki_date IS '廃棄日';


--
-- Name: licence_media_delete; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE licence_media_delete (
    id integer NOT NULL,
    licence_media_pkey integer NOT NULL,
    licence_pkey integer NOT NULL,
    licence_media_kanrino character varying(255) NOT NULL,
    install_key character varying(255),
    admin_name character varying(80),
    original character varying(6) NOT NULL,
    source_media_kanrino character varying(255),
    set_number integer,
    storage_location character varying(255) NOT NULL,
    supplementary_information character varying(255),
    borrower_sosiki_pkey integer,
    borrower_name character varying(80),
    rental_reason character varying(255),
    contact_phone_number character varying(50),
    rental_date date,
    return_due_date date,
    return_date date,
    haiki_date date,
    delete_user_id character varying(50) NOT NULL,
    delete_user_name character varying(80) NOT NULL,
    delete_datetime timestamp with time zone NOT NULL
);


--
-- Name: TABLE licence_media_delete; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE licence_media_delete IS 'ライセンス台帳媒体削除';


--
-- Name: COLUMN licence_media_delete.id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_media_delete.id IS '内部キー';


--
-- Name: COLUMN licence_media_delete.licence_media_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_media_delete.licence_media_pkey IS 'ライセンス台帳媒体の内部キー';


--
-- Name: COLUMN licence_media_delete.licence_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_media_delete.licence_pkey IS 'ライセンス台帳の内部キー';


--
-- Name: COLUMN licence_media_delete.licence_media_kanrino; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_media_delete.licence_media_kanrino IS 'ライセンス媒体管理番号';


--
-- Name: COLUMN licence_media_delete.install_key; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_media_delete.install_key IS 'インストールキー';


--
-- Name: COLUMN licence_media_delete.admin_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_media_delete.admin_name IS '現管理者名';


--
-- Name: COLUMN licence_media_delete.original; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_media_delete.original IS '原本区分';


--
-- Name: COLUMN licence_media_delete.source_media_kanrino; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_media_delete.source_media_kanrino IS '複製元媒体管理番号';


--
-- Name: COLUMN licence_media_delete.set_number; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_media_delete.set_number IS 'セット枚数';


--
-- Name: COLUMN licence_media_delete.storage_location; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_media_delete.storage_location IS '保管場所';


--
-- Name: COLUMN licence_media_delete.supplementary_information; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_media_delete.supplementary_information IS '補足情報';


--
-- Name: COLUMN licence_media_delete.borrower_sosiki_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_media_delete.borrower_sosiki_pkey IS '貸出先所属課名';


--
-- Name: COLUMN licence_media_delete.borrower_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_media_delete.borrower_name IS '貸出先担当者名';


--
-- Name: COLUMN licence_media_delete.rental_reason; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_media_delete.rental_reason IS '貸出理由';


--
-- Name: COLUMN licence_media_delete.contact_phone_number; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_media_delete.contact_phone_number IS '連絡先番号';


--
-- Name: COLUMN licence_media_delete.rental_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_media_delete.rental_date IS '貸与日';


--
-- Name: COLUMN licence_media_delete.return_due_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_media_delete.return_due_date IS '返却予定日';


--
-- Name: COLUMN licence_media_delete.return_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_media_delete.return_date IS '返却日';


--
-- Name: COLUMN licence_media_delete.haiki_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_media_delete.haiki_date IS '廃棄日';


--
-- Name: COLUMN licence_media_delete.delete_user_id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_media_delete.delete_user_id IS '削除ユーザーID';


--
-- Name: COLUMN licence_media_delete.delete_user_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_media_delete.delete_user_name IS '削除ユーザー名';


--
-- Name: COLUMN licence_media_delete.delete_datetime; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_media_delete.delete_datetime IS '削除日時';


--
-- Name: licence_media_delete_detail; Type: VIEW; Schema: public; Owner: -
--

CREATE VIEW licence_media_delete_detail AS
 SELECT licence_media_delete.licence_media_pkey,
    licence_media_delete.licence_pkey,
    licence_media_delete.licence_media_kanrino,
    licence_media_delete.install_key,
    licence_media_delete.admin_name,
    licence_media_delete.original,
    licence_media_delete.source_media_kanrino,
    licence_media_delete.set_number,
    licence_media_delete.storage_location,
    licence_media_delete.supplementary_information,
    licence_media_delete.borrower_sosiki_pkey,
    licence_media_delete.borrower_name,
    licence_media_delete.rental_reason,
    licence_media_delete.contact_phone_number,
    licence_media_delete.rental_date,
    licence_media_delete.return_due_date,
    licence_media_delete.return_date,
    licence_media_delete.haiki_date,
    licence_media_delete.delete_user_id,
    licence_media_delete.delete_user_name,
    licence_media_delete.delete_datetime,
    licence.licence_kanrino,
    licence.sosiki_pkey,
    sosiki1.syozoku_fullname AS sosiki_fullname,
    licence_delete.licence_kanrino AS licence_kanrino_delete,
    licence_delete.sosiki_pkey AS sosiki_pkey_delete,
    sosiki_delete.syozoku_fullname AS sosiki_fullname_delete,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '10003'::text) AND ((code.code)::text = (licence_media_delete.original)::text))) AS original_name,
    sosiki2.syozoku_fullname AS borrower_sosiki_fullname
   FROM (((((licence_media_delete
     LEFT JOIN licence ON ((licence_media_delete.licence_pkey = licence.licence_pkey)))
     LEFT JOIN licence_delete ON ((licence_media_delete.licence_pkey = licence_delete.licence_pkey)))
     LEFT JOIN sosiki sosiki1 ON ((licence.sosiki_pkey = sosiki1.sosiki_pkey)))
     LEFT JOIN sosiki sosiki_delete ON ((licence_delete.sosiki_pkey = sosiki_delete.sosiki_pkey)))
     LEFT JOIN sosiki sosiki2 ON ((licence_media_delete.borrower_sosiki_pkey = sosiki2.sosiki_pkey)));


--
-- Name: licence_media_delete_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE licence_media_delete_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: licence_media_delete_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE licence_media_delete_id_seq OWNED BY licence_media_delete.id;


--
-- Name: licence_media_detail; Type: VIEW; Schema: public; Owner: -
--

CREATE VIEW licence_media_detail AS
 SELECT licence_media.licence_media_pkey,
    licence_media.licence_pkey,
    licence_media.licence_media_kanrino,
    licence_media.install_key,
    licence_media.admin_name,
    licence_media.original,
    licence_media.source_media_kanrino,
    licence_media.set_number,
    licence_media.storage_location,
    licence_media.supplementary_information,
    licence_media.borrower_sosiki_pkey,
    licence_media.borrower_name,
    licence_media.rental_reason,
    licence_media.contact_phone_number,
    licence_media.rental_date,
    licence_media.return_due_date,
    licence_media.return_date,
    licence_media.haiki_date,
    licence.licence_kanrino,
    licence.sosiki_pkey,
    sosiki1.syozoku_fullname AS sosiki_fullname,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '10003'::text) AND ((code.code)::text = (licence_media.original)::text))) AS original_name,
    sosiki2.syozoku_fullname AS borrower_sosiki_fullname,
    sosiki2.sosiki_sortkey AS borrower_sosiki_sortkey
   FROM (((licence_media
     LEFT JOIN licence ON ((licence_media.licence_pkey = licence.licence_pkey)))
     LEFT JOIN sosiki sosiki1 ON ((licence.sosiki_pkey = sosiki1.sosiki_pkey)))
     LEFT JOIN sosiki sosiki2 ON ((licence_media.borrower_sosiki_pkey = sosiki2.sosiki_pkey)));


--
-- Name: licence_media_kanrino_numbering; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE licence_media_kanrino_numbering (
    id bigint NOT NULL,
    workflow_id integer NOT NULL,
    licence_kanrino character varying(100) NOT NULL,
    licence_media_kanrino character varying(100) NOT NULL,
    licence_pkey integer,
    licencehistory_pkey integer,
    licence_media_pkey integer,
    licence_media_history_pkey integer
);


--
-- Name: TABLE licence_media_kanrino_numbering; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE licence_media_kanrino_numbering IS 'ライセンス媒体管理番号採番';


--
-- Name: COLUMN licence_media_kanrino_numbering.id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_media_kanrino_numbering.id IS '内部キー';


--
-- Name: COLUMN licence_media_kanrino_numbering.workflow_id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_media_kanrino_numbering.workflow_id IS 'ワークフロー内部キー';


--
-- Name: COLUMN licence_media_kanrino_numbering.licence_kanrino; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_media_kanrino_numbering.licence_kanrino IS 'ライセンス管理番号';


--
-- Name: COLUMN licence_media_kanrino_numbering.licence_media_kanrino; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_media_kanrino_numbering.licence_media_kanrino IS 'ライセンス媒体管理番号';


--
-- Name: COLUMN licence_media_kanrino_numbering.licence_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_media_kanrino_numbering.licence_pkey IS 'ライセンス台帳の内部キー';


--
-- Name: COLUMN licence_media_kanrino_numbering.licencehistory_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_media_kanrino_numbering.licencehistory_pkey IS 'ライセンス台帳履歴の内部キー';


--
-- Name: COLUMN licence_media_kanrino_numbering.licence_media_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_media_kanrino_numbering.licence_media_pkey IS 'ライセンス媒体管理の内部キー';


--
-- Name: COLUMN licence_media_kanrino_numbering.licence_media_history_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_media_kanrino_numbering.licence_media_history_pkey IS 'ライセンス媒体管理の内部キー';


--
-- Name: licence_media_kanrino_numbering_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE licence_media_kanrino_numbering_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: licence_media_kanrino_numbering_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE licence_media_kanrino_numbering_id_seq OWNED BY licence_media_kanrino_numbering.id;


--
-- Name: licence_media_licence_media_pkey_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE licence_media_licence_media_pkey_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: licence_media_licence_media_pkey_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE licence_media_licence_media_pkey_seq OWNED BY licence_media.licence_media_pkey;


--
-- Name: licence_media_rireki; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE licence_media_rireki (
    licence_media_history_pkey integer NOT NULL,
    licencehistory_pkey integer NOT NULL,
    licence_pkey integer NOT NULL,
    licence_kanrino character varying(255),
    sosiki_pkey integer,
    sosiki_fullname character varying(255),
    licence_media_kanrino character varying(255) NOT NULL,
    install_key character varying(255),
    admin_name character varying(80),
    original character varying(6) NOT NULL,
    original_name character varying,
    source_media_kanrino character varying(255),
    set_number integer,
    storage_location character varying(255) NOT NULL,
    supplementary_information character varying(255),
    borrower_sosiki_pkey integer,
    borrower_sosiki_fullname character varying(255),
    borrower_name character varying(80),
    rental_reason character varying(255),
    contact_phone_number character varying(50),
    rental_date date,
    return_due_date date,
    return_date date,
    haiki_date date,
    sinsei_date timestamp with time zone,
    sinseisya character varying(80),
    syonin_kbn character varying(6),
    syonin_kbn_name character varying,
    syoninsya character varying(80),
    syonin_date timestamp with time zone,
    email_ad text
);


--
-- Name: TABLE licence_media_rireki; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE licence_media_rireki IS 'ライセンス台帳媒体履歴';


--
-- Name: COLUMN licence_media_rireki.licence_media_history_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_media_rireki.licence_media_history_pkey IS '履歴内部キー';


--
-- Name: COLUMN licence_media_rireki.licencehistory_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_media_rireki.licencehistory_pkey IS 'ライセンス台帳履歴内部ｷｰ';


--
-- Name: COLUMN licence_media_rireki.licence_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_media_rireki.licence_pkey IS 'ライセンス台帳の内部キー';


--
-- Name: COLUMN licence_media_rireki.licence_kanrino; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_media_rireki.licence_kanrino IS 'ライセンス管理番号';


--
-- Name: COLUMN licence_media_rireki.sosiki_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_media_rireki.sosiki_pkey IS '組織内部キー';


--
-- Name: COLUMN licence_media_rireki.sosiki_fullname; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_media_rireki.sosiki_fullname IS '組織フル名称';


--
-- Name: COLUMN licence_media_rireki.licence_media_kanrino; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_media_rireki.licence_media_kanrino IS 'ライセンス媒体管理番号';


--
-- Name: COLUMN licence_media_rireki.install_key; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_media_rireki.install_key IS 'インストールキー';


--
-- Name: COLUMN licence_media_rireki.admin_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_media_rireki.admin_name IS '現管理者名';


--
-- Name: COLUMN licence_media_rireki.original; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_media_rireki.original IS '原本区分';


--
-- Name: COLUMN licence_media_rireki.original_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_media_rireki.original_name IS '原本区分_名称';


--
-- Name: COLUMN licence_media_rireki.source_media_kanrino; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_media_rireki.source_media_kanrino IS '複製元媒体管理番号';


--
-- Name: COLUMN licence_media_rireki.set_number; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_media_rireki.set_number IS 'セット枚数';


--
-- Name: COLUMN licence_media_rireki.storage_location; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_media_rireki.storage_location IS '保管場所';


--
-- Name: COLUMN licence_media_rireki.supplementary_information; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_media_rireki.supplementary_information IS '補足情報';


--
-- Name: COLUMN licence_media_rireki.borrower_sosiki_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_media_rireki.borrower_sosiki_pkey IS '貸出先所属課名';


--
-- Name: COLUMN licence_media_rireki.borrower_sosiki_fullname; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_media_rireki.borrower_sosiki_fullname IS '貸出先所属課名_フル名称';


--
-- Name: COLUMN licence_media_rireki.borrower_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_media_rireki.borrower_name IS '貸出先担当者名';


--
-- Name: COLUMN licence_media_rireki.rental_reason; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_media_rireki.rental_reason IS '貸出理由';


--
-- Name: COLUMN licence_media_rireki.contact_phone_number; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_media_rireki.contact_phone_number IS '連絡先番号';


--
-- Name: COLUMN licence_media_rireki.rental_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_media_rireki.rental_date IS '貸与日';


--
-- Name: COLUMN licence_media_rireki.return_due_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_media_rireki.return_due_date IS '返却予定日';


--
-- Name: COLUMN licence_media_rireki.return_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_media_rireki.return_date IS '返却日';


--
-- Name: COLUMN licence_media_rireki.haiki_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_media_rireki.haiki_date IS '廃棄日';


--
-- Name: COLUMN licence_media_rireki.sinsei_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_media_rireki.sinsei_date IS '申請日';


--
-- Name: COLUMN licence_media_rireki.sinseisya; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_media_rireki.sinseisya IS '申請者';


--
-- Name: COLUMN licence_media_rireki.syonin_kbn; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_media_rireki.syonin_kbn IS '承認区分';


--
-- Name: COLUMN licence_media_rireki.syonin_kbn_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_media_rireki.syonin_kbn_name IS '承認区分_名称';


--
-- Name: COLUMN licence_media_rireki.syoninsya; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_media_rireki.syoninsya IS '承認者';


--
-- Name: COLUMN licence_media_rireki.syonin_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_media_rireki.syonin_date IS '承認日';


--
-- Name: COLUMN licence_media_rireki.email_ad; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licence_media_rireki.email_ad IS 'メールアドレス';


--
-- Name: licencerireki; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE licencerireki (
    licencehistory_pkey integer NOT NULL,
    licence_pkey integer,
    sosiki_pkey integer,
    sosiki_fullname character varying(255),
    sosiki_sortkey smallint,
    licencelist_pkey integer,
    licence_kanrino character varying(255),
    soft_name character varying(255),
    licence_keitai character varying(6),
    licence_keitai_name character varying,
    brand character varying(50),
    install_su integer,
    hard_kotei character varying(6),
    hard_kotei_name character varying,
    hard_pkey integer,
    hard_kanrino character varying(255),
    upgrade character varying(6),
    upgrade_name character varying,
    licence_pkey2 integer,
    up_licence_kanrino character varying(255),
    licence_no text,
    tyoutatu text,
    tokusitu_useproposal text,
    useproposal_youken text,
    hokan_baitai text,
    hokan_basyo text,
    program_add_del text,
    program_add_del_down text,
    bikou text,
    tyoutatu_date date,
    haiki_date date,
    version smallint NOT NULL,
    kanri_sosiki_pkey integer,
    kanri_sosiki_name character varying(80),
    kanri_sosiki_fullname character varying(255),
    kanri_sosiki_sortkey smallint,
    holdings_number integer,
    kanri_sosiki_flg smallint,
    license_limit_date date,
    sinsei_date timestamp with time zone,
    sinseisya character varying(80),
    syonin_kbn character varying(6),
    syonin_kbn_name character varying,
    syoninsya character varying(80),
    syonin_date timestamp with time zone,
    email_ad text,
    note text,
    rireki_no character varying(255)
);


--
-- Name: COLUMN licencerireki.licencehistory_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencerireki.licencehistory_pkey IS '履歴内部ｷｰ';


--
-- Name: COLUMN licencerireki.licence_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencerireki.licence_pkey IS '内部キー';


--
-- Name: COLUMN licencerireki.sosiki_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencerireki.sosiki_pkey IS '使用組織組織テーブルの内部キー';


--
-- Name: COLUMN licencerireki.sosiki_fullname; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencerireki.sosiki_fullname IS '使用組織組織フル名称';


--
-- Name: COLUMN licencerireki.sosiki_sortkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencerireki.sosiki_sortkey IS '使用組織組織ソートキー';


--
-- Name: COLUMN licencerireki.licencelist_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencerireki.licencelist_pkey IS 'ライセンス一覧表の内部キー';


--
-- Name: COLUMN licencerireki.licence_kanrino; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencerireki.licence_kanrino IS 'ライセンス管理番号';


--
-- Name: COLUMN licencerireki.soft_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencerireki.soft_name IS 'ライセンス名';


--
-- Name: COLUMN licencerireki.licence_keitai; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencerireki.licence_keitai IS '種類';


--
-- Name: COLUMN licencerireki.licence_keitai_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencerireki.licence_keitai_name IS '種類_名称';


--
-- Name: COLUMN licencerireki.brand; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencerireki.brand IS 'メーカー';


--
-- Name: COLUMN licencerireki.install_su; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencerireki.install_su IS 'インストール可能数';


--
-- Name: COLUMN licencerireki.hard_kotei; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencerireki.hard_kotei IS 'ハードウェア固定';


--
-- Name: COLUMN licencerireki.hard_kotei_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencerireki.hard_kotei_name IS 'ハードウェア固定_名称';


--
-- Name: COLUMN licencerireki.hard_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencerireki.hard_pkey IS 'ハードウェア台帳の内部キー';


--
-- Name: COLUMN licencerireki.hard_kanrino; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencerireki.hard_kanrino IS 'ハードウェア管理番号';


--
-- Name: COLUMN licencerireki.upgrade; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencerireki.upgrade IS 'アップグレード版';


--
-- Name: COLUMN licencerireki.upgrade_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencerireki.upgrade_name IS 'アップグレード版_名称';


--
-- Name: COLUMN licencerireki.licence_pkey2; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencerireki.licence_pkey2 IS 'アップグレード元ラインセス内部キー';


--
-- Name: COLUMN licencerireki.up_licence_kanrino; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencerireki.up_licence_kanrino IS 'アップグレード元ライセンス管理番号';


--
-- Name: COLUMN licencerireki.licence_no; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencerireki.licence_no IS 'ライセンス証書番号';


--
-- Name: COLUMN licencerireki.tyoutatu; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencerireki.tyoutatu IS '調達情報';


--
-- Name: COLUMN licencerireki.tokusitu_useproposal; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencerireki.tokusitu_useproposal IS '特筆すべき使用許諾条件';


--
-- Name: COLUMN licencerireki.useproposal_youken; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencerireki.useproposal_youken IS '使用許諾証明要件';


--
-- Name: COLUMN licencerireki.hokan_baitai; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencerireki.hokan_baitai IS '保管媒体';


--
-- Name: COLUMN licencerireki.hokan_basyo; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencerireki.hokan_basyo IS '保管場所';


--
-- Name: COLUMN licencerireki.program_add_del; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencerireki.program_add_del IS 'プログラムと機能';


--
-- Name: COLUMN licencerireki.program_add_del_down; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencerireki.program_add_del_down IS 'ダウングレード使用時のプログラムと機能';


--
-- Name: COLUMN licencerireki.bikou; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencerireki.bikou IS '備考';


--
-- Name: COLUMN licencerireki.tyoutatu_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencerireki.tyoutatu_date IS '調達日';


--
-- Name: COLUMN licencerireki.haiki_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencerireki.haiki_date IS '廃棄日';


--
-- Name: COLUMN licencerireki.version; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencerireki.version IS 'バージョン';


--
-- Name: COLUMN licencerireki.kanri_sosiki_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencerireki.kanri_sosiki_pkey IS '管理組織の組織テーブル内部キー';


--
-- Name: COLUMN licencerireki.kanri_sosiki_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencerireki.kanri_sosiki_name IS '管理組織の組織名称';


--
-- Name: COLUMN licencerireki.kanri_sosiki_fullname; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencerireki.kanri_sosiki_fullname IS '管理組織の組織フル名称';


--
-- Name: COLUMN licencerireki.kanri_sosiki_sortkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencerireki.kanri_sosiki_sortkey IS '管理組織組織ソートキー';


--
-- Name: COLUMN licencerireki.holdings_number; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencerireki.holdings_number IS '管理組織のライセンス保有数';


--
-- Name: COLUMN licencerireki.kanri_sosiki_flg; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencerireki.kanri_sosiki_flg IS '管理所属フラグ';


--
-- Name: COLUMN licencerireki.license_limit_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencerireki.license_limit_date IS 'ライセンス使用期限';


--
-- Name: COLUMN licencerireki.sinsei_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencerireki.sinsei_date IS '申請日';


--
-- Name: COLUMN licencerireki.sinseisya; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencerireki.sinseisya IS '申請者';


--
-- Name: COLUMN licencerireki.syonin_kbn; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencerireki.syonin_kbn IS '承認区分';


--
-- Name: COLUMN licencerireki.syonin_kbn_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencerireki.syonin_kbn_name IS '承認区分_名称';


--
-- Name: COLUMN licencerireki.syoninsya; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencerireki.syoninsya IS '承認者';


--
-- Name: COLUMN licencerireki.syonin_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencerireki.syonin_date IS '承認日';


--
-- Name: COLUMN licencerireki.email_ad; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencerireki.email_ad IS 'メールアドレス';


--
-- Name: COLUMN licencerireki.note; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencerireki.note IS '承認コメント';


--
-- Name: COLUMN licencerireki.rireki_no; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencerireki.rireki_no IS '申請書番号';


--
-- Name: licence_media_rireki_detail; Type: VIEW; Schema: public; Owner: -
--

CREATE VIEW licence_media_rireki_detail AS
 SELECT licence_media_rireki.licence_media_history_pkey,
    licence_media_rireki.licencehistory_pkey,
    licence_media_rireki.licence_pkey,
    licencerireki.licence_kanrino,
    licencerireki.sosiki_pkey,
    sosiki1.syozoku_fullname AS sosiki_fullname,
    licence_media_rireki.licence_media_kanrino,
    licence_media_rireki.install_key,
    licence_media_rireki.admin_name,
    licence_media_rireki.original,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '10003'::text) AND ((code.code)::text = (licence_media_rireki.original)::text))) AS original_name,
    licence_media_rireki.source_media_kanrino,
    licence_media_rireki.set_number,
    licence_media_rireki.storage_location,
    licence_media_rireki.supplementary_information,
    licence_media_rireki.borrower_sosiki_pkey,
    sosiki2.syozoku_fullname AS borrower_sosiki_fullname,
    licence_media_rireki.borrower_name,
    licence_media_rireki.rental_reason,
    licence_media_rireki.contact_phone_number,
    licence_media_rireki.rental_date,
    licence_media_rireki.return_due_date,
    licence_media_rireki.return_date,
    licence_media_rireki.haiki_date,
    rireki.sinsei_date,
    rireki.sinseisya,
    rireki.syonin_kbn,
    rireki.syonin_kbn_name,
    rireki.syoninsya,
    rireki.syonin_date,
    rireki.email_ad
   FROM ((((licence_media_rireki
     LEFT JOIN licencerireki ON ((licence_media_rireki.licencehistory_pkey = licencerireki.licencehistory_pkey)))
     LEFT JOIN rireki ON (((licencerireki.licencehistory_pkey = rireki.history_pkey) AND ((rireki.history_type)::text = 'd003'::text))))
     LEFT JOIN sosiki sosiki1 ON ((licencerireki.sosiki_pkey = sosiki1.sosiki_pkey)))
     LEFT JOIN sosiki sosiki2 ON ((licence_media_rireki.borrower_sosiki_pkey = sosiki2.sosiki_pkey)));


--
-- Name: licence_media_rireki_licence_media_history_pkey_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE licence_media_rireki_licence_media_history_pkey_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: licence_media_rireki_licence_media_history_pkey_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE licence_media_rireki_licence_media_history_pkey_seq OWNED BY licence_media_rireki.licence_media_history_pkey;


--
-- Name: licence_rireki_detail; Type: VIEW; Schema: public; Owner: -
--

CREATE VIEW licence_rireki_detail AS
 SELECT licencerireki.licencehistory_pkey,
    licencerireki.licence_pkey,
    licencerireki.sosiki_pkey,
    sosiki.syozoku_fullname AS sosiki_fullname,
    sosiki.sosiki_sortkey,
    licencerireki.licencelist_pkey,
    licencerireki.licence_kanrino,
    licencelist.soft_name,
    licencelist.licence_keitai,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '00005'::text) AND ((code.code)::text = (licencelist.licence_keitai)::text))) AS licence_keitai_name,
    licencelist.brand,
    licencerireki.install_su,
    licencelist.hard_kotei,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '00004'::text) AND ((code.code)::text = (licencelist.hard_kotei)::text))) AS hard_kotei_name,
    licencerireki.hard_pkey,
    hard.hard_kanrino,
    licencelist.upgrade,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '00004'::text) AND ((code.code)::text = (licencelist.upgrade)::text))) AS upgrade_name,
    licencerireki.licence_pkey2,
    up.licence_kanrino AS up_licence_kanrino,
    licencerireki.licence_no,
    licencerireki.tyoutatu,
    licencelist.tokusitu_useproposal,
    licencelist.useproposal_youken,
    licencerireki.hokan_baitai,
    licencerireki.hokan_basyo,
    array_to_string(ARRAY( SELECT regexp_replace((p.program_add_del)::text, '
'::text, '(RETURN)'::text) AS regexp_replace
           FROM licencelistprogram p
          WHERE (p.licencelist_pkey = licencerireki.licencelist_pkey)
          ORDER BY p.program_add_del), '
'::text) AS program_add_del,
    array_to_string(ARRAY( SELECT regexp_replace((p.program_add_del)::text, '
'::text, '(RETURN)'::text) AS regexp_replace
           FROM licencelistprogram_down p
          WHERE (p.licencelist_pkey = licencerireki.licencelist_pkey)
          ORDER BY p.program_add_del), '
'::text) AS program_add_del_down,
    licencerireki.bikou,
    licencerireki.tyoutatu_date,
    licencerireki.haiki_date,
    licencerireki.version,
    licencerireki.kanri_sosiki_pkey,
    kanri.syozoku_name AS kanri_sosiki_name,
    kanri.syozoku_fullname AS kanri_sosiki_fullname,
    kanri.sosiki_sortkey AS kanri_sosiki_sortkey,
    licencerireki.holdings_number,
    licencerireki.kanri_sosiki_flg,
    licencerireki.license_limit_date,
    ( SELECT
                CASE
                    WHEN (count(f.licence_pkey) = 0) THEN '×'::text
                    ELSE '○'::text
                END AS "case"
           FROM licence_attached_file_rireki f
          WHERE (f.licencehistory_pkey = licencerireki.licencehistory_pkey)) AS attached_file,
    rireki.sinsei_date,
    rireki.sinseisya,
    rireki.syonin_kbn,
    rireki.syonin_kbn_name,
    rireki.syoninsya,
    rireki.syonin_date,
    rireki.email_ad,
    rireki.note,
    rireki_numbering.rireki_no
   FROM (((((((licencerireki
     LEFT JOIN rireki ON (((licencerireki.licencehistory_pkey = rireki.history_pkey) AND ((rireki.history_type)::text = 'd003'::text))))
     LEFT JOIN licencelist ON ((licencerireki.licencelist_pkey = licencelist.licencelist_pkey)))
     LEFT JOIN sosiki ON ((licencerireki.sosiki_pkey = sosiki.sosiki_pkey)))
     LEFT JOIN hard ON ((licencerireki.hard_pkey = hard.hard_pkey)))
     LEFT JOIN licence up ON ((licencerireki.licence_pkey2 = up.licence_pkey)))
     LEFT JOIN rireki_numbering ON (((rireki.history_pkey = rireki_numbering.history_pkey) AND ((rireki.history_type)::text = (rireki_numbering.history_type)::text))))
     LEFT JOIN sosiki kanri ON ((licencerireki.kanri_sosiki_pkey = kanri.sosiki_pkey)));


--
-- Name: licencelist_delete; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE licencelist_delete (
    id integer NOT NULL,
    licencelist_pkey integer NOT NULL,
    soft_name character varying(255),
    licence_keitai character varying(6),
    brand character varying(50),
    hard_kotei character varying(6),
    upgrade character varying(6),
    useproposal_kakunin character varying(6),
    tokusitu_useproposal text,
    useproposal_youken text,
    bikou text,
    upd_date date,
    upd_name character varying(80),
    yukou character varying(6),
    version smallint NOT NULL,
    upd_syozoku integer,
    newkbn smallint,
    permit character varying(6),
    delete_user_id character varying(50) NOT NULL,
    delete_user_name character varying(80) NOT NULL,
    delete_datetime timestamp with time zone NOT NULL
);


--
-- Name: TABLE licencelist_delete; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE licencelist_delete IS 'ライセンス一覧表';


--
-- Name: COLUMN licencelist_delete.licencelist_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencelist_delete.licencelist_pkey IS '内部キー';


--
-- Name: COLUMN licencelist_delete.soft_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencelist_delete.soft_name IS 'ソフトウェア名';


--
-- Name: COLUMN licencelist_delete.licence_keitai; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencelist_delete.licence_keitai IS '種類';


--
-- Name: COLUMN licencelist_delete.brand; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencelist_delete.brand IS 'メーカー';


--
-- Name: COLUMN licencelist_delete.hard_kotei; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencelist_delete.hard_kotei IS 'ハードウェア固定';


--
-- Name: COLUMN licencelist_delete.upgrade; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencelist_delete.upgrade IS 'アップグレード版';


--
-- Name: COLUMN licencelist_delete.useproposal_kakunin; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencelist_delete.useproposal_kakunin IS '使用許諾条件の確認';


--
-- Name: COLUMN licencelist_delete.tokusitu_useproposal; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencelist_delete.tokusitu_useproposal IS '特筆すべき使用許諾条件';


--
-- Name: COLUMN licencelist_delete.useproposal_youken; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencelist_delete.useproposal_youken IS '使用許諾証明要件';


--
-- Name: COLUMN licencelist_delete.bikou; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencelist_delete.bikou IS '備考';


--
-- Name: COLUMN licencelist_delete.upd_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencelist_delete.upd_date IS '更新日';


--
-- Name: COLUMN licencelist_delete.upd_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencelist_delete.upd_name IS '更新者氏名';


--
-- Name: COLUMN licencelist_delete.yukou; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencelist_delete.yukou IS '有効';


--
-- Name: COLUMN licencelist_delete.version; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencelist_delete.version IS 'バージョン';


--
-- Name: COLUMN licencelist_delete.upd_syozoku; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencelist_delete.upd_syozoku IS '更新者所属';


--
-- Name: COLUMN licencelist_delete.newkbn; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencelist_delete.newkbn IS '新規区分';


--
-- Name: COLUMN licencelist_delete.permit; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencelist_delete.permit IS 'ライセンス台帳での表示';


--
-- Name: COLUMN licencelist_delete.delete_user_id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencelist_delete.delete_user_id IS '削除ユーザーID';


--
-- Name: COLUMN licencelist_delete.delete_user_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencelist_delete.delete_user_name IS '削除ユーザー名';


--
-- Name: COLUMN licencelist_delete.delete_datetime; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencelist_delete.delete_datetime IS '削除日時';


--
-- Name: licencelistprogram_delete; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE licencelistprogram_delete (
    id integer NOT NULL,
    licencelist_pkey integer NOT NULL,
    program_add_del character varying(255) NOT NULL
);


--
-- Name: TABLE licencelistprogram_delete; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE licencelistprogram_delete IS 'ライセンス一覧表プログラム削除';


--
-- Name: COLUMN licencelistprogram_delete.id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencelistprogram_delete.id IS '内部キー';


--
-- Name: COLUMN licencelistprogram_delete.licencelist_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencelistprogram_delete.licencelist_pkey IS 'ライセンス一覧表旧内部キー';


--
-- Name: COLUMN licencelistprogram_delete.program_add_del; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencelistprogram_delete.program_add_del IS 'プログラムの追加と削除での表示';


--
-- Name: licencelistprogram_down_delete; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE licencelistprogram_down_delete (
    id integer NOT NULL,
    licencelist_pkey integer NOT NULL,
    program_add_del character varying(255) NOT NULL,
    delete_user_id character varying(50) NOT NULL,
    delete_user_name character varying(80) NOT NULL,
    delete_datetime timestamp with time zone NOT NULL
);


--
-- Name: TABLE licencelistprogram_down_delete; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE licencelistprogram_down_delete IS 'ライセンス一覧表プログラムダウングレード削除';


--
-- Name: COLUMN licencelistprogram_down_delete.id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencelistprogram_down_delete.id IS '内部キー';


--
-- Name: COLUMN licencelistprogram_down_delete.licencelist_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencelistprogram_down_delete.licencelist_pkey IS '旧内部キー';


--
-- Name: COLUMN licencelistprogram_down_delete.program_add_del; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencelistprogram_down_delete.program_add_del IS 'プログラムの追加と削除での表示';


--
-- Name: COLUMN licencelistprogram_down_delete.delete_user_id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencelistprogram_down_delete.delete_user_id IS '削除ユーザーID';


--
-- Name: COLUMN licencelistprogram_down_delete.delete_user_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencelistprogram_down_delete.delete_user_name IS '削除ユーザー名';


--
-- Name: COLUMN licencelistprogram_down_delete.delete_datetime; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencelistprogram_down_delete.delete_datetime IS '削除日時';


--
-- Name: licencelist_delete_detail; Type: VIEW; Schema: public; Owner: -
--

CREATE VIEW licencelist_delete_detail AS
 SELECT l.licencelist_pkey,
    l.soft_name,
    l.licence_keitai,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '00005'::text) AND ((code.code)::text = (l.licence_keitai)::text))) AS licence_keitai_name,
    l.hard_kotei,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '00004'::text) AND ((code.code)::text = (l.hard_kotei)::text))) AS hard_kotei_name,
    l.upgrade,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '00004'::text) AND ((code.code)::text = (l.upgrade)::text))) AS upgrade_name,
    l.brand,
    array_to_string(ARRAY( SELECT regexp_replace((p.program_add_del)::text, '
'::text, '(RETURN)'::text) AS regexp_replace
           FROM licencelistprogram_delete p
          WHERE (p.licencelist_pkey = l.licencelist_pkey)
          ORDER BY p.program_add_del), '
'::text) AS program_add_del,
    array_to_string(ARRAY( SELECT regexp_replace((p.program_add_del)::text, '
'::text, '(RETURN)'::text) AS regexp_replace
           FROM licencelistprogram_down_delete p
          WHERE (p.licencelist_pkey = l.licencelist_pkey)
          ORDER BY p.program_add_del), '
'::text) AS program_add_del_down,
    l.tokusitu_useproposal,
    l.useproposal_youken,
    l.bikou,
    l.upd_syozoku,
    l.upd_name,
    l.upd_date,
    l.useproposal_kakunin,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '00006'::text) AND ((code.code)::text = (l.useproposal_kakunin)::text))) AS useproposal_kakunin_name,
    l.yukou,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '00007'::text) AND ((code.code)::text = (l.yukou)::text))) AS yukou_name,
    l.permit,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '10001'::text) AND ((code.code)::text = (l.permit)::text))) AS permit_name,
    l.version,
    l.newkbn,
    COALESCE((sosiki.sosiki_sortkey)::integer, 0) AS sosiki_sortkey,
    sosiki.syozoku_name AS sosiki_name,
    sosiki.syozoku_fullname AS sosiki_fullname,
    l.delete_user_id,
    l.delete_user_name,
    l.delete_datetime
   FROM (licencelist_delete l
     LEFT JOIN sosiki ON ((l.upd_syozoku = sosiki.sosiki_pkey)));


--
-- Name: licencelist_delete_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE licencelist_delete_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: licencelist_delete_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE licencelist_delete_id_seq OWNED BY licencelist_delete.id;


--
-- Name: licencelist_detail; Type: VIEW; Schema: public; Owner: -
--

CREATE VIEW licencelist_detail AS
 SELECT l.licencelist_pkey,
    l.soft_name,
    l.licence_keitai,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '00005'::text) AND ((code.code)::text = (l.licence_keitai)::text))) AS licence_keitai_name,
    l.brand,
    l.hard_kotei,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '00004'::text) AND ((code.code)::text = (l.hard_kotei)::text))) AS hard_kotei_name,
    l.upgrade,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '00004'::text) AND ((code.code)::text = (l.upgrade)::text))) AS upgrade_name,
    l.useproposal_kakunin,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '00006'::text) AND ((code.code)::text = (l.useproposal_kakunin)::text))) AS useproposal_kakunin_name,
    l.tokusitu_useproposal,
    l.useproposal_youken,
    l.bikou,
    l.upd_date,
    l.upd_name,
    l.yukou,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '00007'::text) AND ((code.code)::text = (l.yukou)::text))) AS yukou_name,
    l.version,
    l.upd_syozoku,
    l.newkbn,
    l.permit,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '10001'::text) AND ((code.code)::text = (l.permit)::text))) AS permit_name,
    array_to_string(ARRAY( SELECT regexp_replace((p.program_add_del)::text, '
'::text, '(RETURN)'::text) AS regexp_replace
           FROM licencelistprogram p
          WHERE (p.licencelist_pkey = l.licencelist_pkey)
          ORDER BY p.program_add_del), '
'::text) AS program_add_del,
    array_to_string(ARRAY( SELECT regexp_replace((p.program_add_del)::text, '
'::text, '(RETURN)'::text) AS regexp_replace
           FROM licencelistprogram_down p
          WHERE (p.licencelist_pkey = l.licencelist_pkey)
          ORDER BY p.program_add_del), '
'::text) AS program_add_del_down,
    COALESCE((sosiki.sosiki_sortkey)::integer, 0) AS sosiki_sortkey,
    sosiki.syozoku_name AS sosiki_name,
    sosiki.syozoku_fullname AS sosiki_fullname
   FROM (licencelist l
     LEFT JOIN sosiki ON ((l.upd_syozoku = sosiki.sosiki_pkey)));


--
-- Name: licencelist_licencelist_pkey_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE licencelist_licencelist_pkey_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: licencelist_licencelist_pkey_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE licencelist_licencelist_pkey_seq OWNED BY licencelist.licencelist_pkey;


--
-- Name: licencelist_program_detail; Type: VIEW; Schema: public; Owner: -
--

CREATE VIEW licencelist_program_detail AS
 SELECT llp.licencelist_pkey,
    array_to_string(ARRAY( SELECT regexp_replace((p.program_add_del)::text, '
'::text, '(RETURN)'::text) AS regexp_replace
           FROM licencelistprogram p
          WHERE (p.licencelist_pkey = l.licencelist_pkey)), '
'::text) AS program_add_del,
    llp.program_add_del AS program_name,
    l.soft_name,
    l.licence_keitai,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '00005'::text) AND ((code.code)::text = (l.licence_keitai)::text))) AS licence_keitai_name,
    l.brand,
    l.hard_kotei,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '00004'::text) AND ((code.code)::text = (l.hard_kotei)::text))) AS hard_kotei_name,
    l.upgrade,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '00004'::text) AND ((code.code)::text = (l.upgrade)::text))) AS upgrade_name,
    l.useproposal_kakunin,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '00006'::text) AND ((code.code)::text = (l.useproposal_kakunin)::text))) AS useproposal_kakunin_name,
    l.tokusitu_useproposal,
    l.useproposal_youken,
    l.bikou,
    l.upd_date,
    l.upd_syozoku,
    l.upd_name,
    l.yukou,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '00007'::text) AND ((code.code)::text = (l.yukou)::text))) AS yukou_name,
    l.permit,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '10001'::text) AND ((code.code)::text = (l.permit)::text))) AS permit_name,
    l.version,
    l.newkbn,
    array_to_string(ARRAY( SELECT regexp_replace((p.program_add_del)::text, '
'::text, '(RETURN)'::text) AS regexp_replace
           FROM licencelistprogram_down p
          WHERE (p.licencelist_pkey = l.licencelist_pkey)), '
'::text) AS program_add_del_down,
    COALESCE((sosiki.sosiki_sortkey)::integer, 0) AS sosiki_sortkey,
    sosiki.syozoku_name AS sosiki_name
   FROM ((licencelistprogram llp
     LEFT JOIN licencelist l ON ((llp.licencelist_pkey = l.licencelist_pkey)))
     LEFT JOIN sosiki ON ((l.upd_syozoku = sosiki.sosiki_pkey)));


--
-- Name: licencelist_program_down_detail; Type: VIEW; Schema: public; Owner: -
--

CREATE VIEW licencelist_program_down_detail AS
 SELECT llp.licencelist_pkey,
    array_to_string(ARRAY( SELECT regexp_replace((p.program_add_del)::text, '
'::text, '(RETURN)'::text) AS regexp_replace
           FROM licencelistprogram p
          WHERE (p.licencelist_pkey = l.licencelist_pkey)), '
'::text) AS program_add_del,
    llp.program_add_del AS program_name,
    l.soft_name,
    l.licence_keitai,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '00005'::text) AND ((code.code)::text = (l.licence_keitai)::text))) AS licence_keitai_name,
    l.brand,
    l.hard_kotei,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '00004'::text) AND ((code.code)::text = (l.hard_kotei)::text))) AS hard_kotei_name,
    l.upgrade,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '00004'::text) AND ((code.code)::text = (l.upgrade)::text))) AS upgrade_name,
    l.useproposal_kakunin,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '00006'::text) AND ((code.code)::text = (l.useproposal_kakunin)::text))) AS useproposal_kakunin_name,
    l.tokusitu_useproposal,
    l.useproposal_youken,
    l.bikou,
    l.upd_date,
    l.upd_syozoku,
    l.upd_name,
    l.yukou,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '00007'::text) AND ((code.code)::text = (l.yukou)::text))) AS yukou_name,
    l.permit,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '10001'::text) AND ((code.code)::text = (l.permit)::text))) AS permit_name,
    l.version,
    l.newkbn,
    array_to_string(ARRAY( SELECT regexp_replace((p.program_add_del)::text, '
'::text, '(RETURN)'::text) AS regexp_replace
           FROM licencelistprogram_down p
          WHERE (p.licencelist_pkey = l.licencelist_pkey)), '
'::text) AS program_add_del_down,
    COALESCE((sosiki.sosiki_sortkey)::integer, 0) AS sosiki_sortkey,
    sosiki.syozoku_name AS sosiki_name
   FROM ((licencelistprogram_down llp
     LEFT JOIN licencelist l ON ((llp.licencelist_pkey = l.licencelist_pkey)))
     LEFT JOIN sosiki ON ((l.upd_syozoku = sosiki.sosiki_pkey)));


--
-- Name: licencelistprogram_down_rireki; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE licencelistprogram_down_rireki (
    licencehistory_pkey integer NOT NULL,
    program_add_del character varying(255) NOT NULL
);


--
-- Name: licencelistprogramrireki; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE licencelistprogramrireki (
    licencehistory_pkey integer NOT NULL,
    program_add_del character varying(255) NOT NULL
);


--
-- Name: TABLE licencelistprogramrireki; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE licencelistprogramrireki IS 'ライセンス一覧プログラム表示履歴';


--
-- Name: licencelistrireki; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE licencelistrireki (
    licencehistory_pkey integer NOT NULL,
    licencelist_pkey integer,
    soft_name character varying(255),
    licence_keitai character varying(6),
    licence_keitai_name character varying,
    brand character varying(50),
    hard_kotei character varying(6),
    hard_kotei_name character varying,
    upgrade character varying(6),
    upgrade_name character varying,
    useproposal_kakunin character varying(6),
    useproposal_kakunin_name character varying(6),
    tokusitu_useproposal text,
    useproposal_youken text,
    bikou text,
    upd_date date,
    upd_syozoku character varying(255),
    upd_name character varying(80),
    yukou character varying(6),
    yukou_name character varying,
    version smallint NOT NULL,
    permit character varying(6),
    permit_name character varying
);


--
-- Name: TABLE licencelistrireki; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE licencelistrireki IS 'ライセンス一覧表履歴';


--
-- Name: COLUMN licencelistrireki.licencehistory_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencelistrireki.licencehistory_pkey IS '履歴内部ｷｰ';


--
-- Name: COLUMN licencelistrireki.licencelist_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencelistrireki.licencelist_pkey IS '内部キー';


--
-- Name: COLUMN licencelistrireki.soft_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencelistrireki.soft_name IS 'ソフトウェア名';


--
-- Name: COLUMN licencelistrireki.licence_keitai; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencelistrireki.licence_keitai IS '種類';


--
-- Name: COLUMN licencelistrireki.licence_keitai_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencelistrireki.licence_keitai_name IS '種類_名称';


--
-- Name: COLUMN licencelistrireki.brand; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencelistrireki.brand IS 'メーカー';


--
-- Name: COLUMN licencelistrireki.hard_kotei; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencelistrireki.hard_kotei IS 'ハードウェア固定';


--
-- Name: COLUMN licencelistrireki.hard_kotei_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencelistrireki.hard_kotei_name IS 'ハードウェア固定_名称';


--
-- Name: COLUMN licencelistrireki.upgrade; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencelistrireki.upgrade IS 'アップグレード版';


--
-- Name: COLUMN licencelistrireki.upgrade_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencelistrireki.upgrade_name IS 'アップグレード版_名称';


--
-- Name: COLUMN licencelistrireki.useproposal_kakunin; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencelistrireki.useproposal_kakunin IS '使用許諾条件の確認';


--
-- Name: COLUMN licencelistrireki.useproposal_kakunin_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencelistrireki.useproposal_kakunin_name IS '使用許諾条件の確認_名称';


--
-- Name: COLUMN licencelistrireki.tokusitu_useproposal; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencelistrireki.tokusitu_useproposal IS '特筆すべき使用許諾条件';


--
-- Name: COLUMN licencelistrireki.useproposal_youken; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencelistrireki.useproposal_youken IS '使用許諾証明要件';


--
-- Name: COLUMN licencelistrireki.bikou; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencelistrireki.bikou IS '備考';


--
-- Name: COLUMN licencelistrireki.upd_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencelistrireki.upd_date IS '更新日';


--
-- Name: COLUMN licencelistrireki.upd_syozoku; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencelistrireki.upd_syozoku IS '更新者所属';


--
-- Name: COLUMN licencelistrireki.upd_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencelistrireki.upd_name IS '更新者氏名';


--
-- Name: COLUMN licencelistrireki.yukou; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencelistrireki.yukou IS '有効';


--
-- Name: COLUMN licencelistrireki.yukou_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencelistrireki.yukou_name IS '有効_名称';


--
-- Name: COLUMN licencelistrireki.version; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencelistrireki.version IS 'バージョン';


--
-- Name: COLUMN licencelistrireki.permit; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencelistrireki.permit IS 'ライセンス台帳での表示';


--
-- Name: COLUMN licencelistrireki.permit_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN licencelistrireki.permit_name IS 'ライセンス台帳での表示_名称';


--
-- Name: licencelist_rireki_detail; Type: VIEW; Schema: public; Owner: -
--

CREATE VIEW licencelist_rireki_detail AS
 SELECT licencelistrireki.licencehistory_pkey,
    licencelistrireki.licencelist_pkey,
    licencelistrireki.soft_name,
    licencelistrireki.licence_keitai,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '00005'::text) AND ((code.code)::text = (licencelistrireki.licence_keitai)::text))) AS licence_keitai_name,
    licencelistrireki.brand,
    licencelistrireki.hard_kotei,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '00004'::text) AND ((code.code)::text = (licencelistrireki.hard_kotei)::text))) AS hard_kotei_name,
    licencelistrireki.upgrade,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '00004'::text) AND ((code.code)::text = (licencelistrireki.upgrade)::text))) AS upgrade_name,
    licencelistrireki.useproposal_kakunin,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '00006'::text) AND ((code.code)::text = (licencelistrireki.useproposal_kakunin)::text))) AS useproposal_kakunin_name,
    licencelistrireki.tokusitu_useproposal,
    licencelistrireki.useproposal_youken,
    licencelistrireki.bikou,
    licencelistrireki.upd_date,
    licencelistrireki.upd_syozoku,
    licencelistrireki.upd_name,
    licencelistrireki.yukou,
    licencelistrireki.yukou_name,
    licencelistrireki.version,
    licencelistrireki.permit,
    licencelistrireki.permit_name,
    array_to_string(ARRAY( SELECT regexp_replace((p.program_add_del)::text, '
'::text, '(RETURN)'::text) AS regexp_replace
           FROM licencelistprogramrireki p
          WHERE (p.licencehistory_pkey = licencelistrireki.licencehistory_pkey)
          ORDER BY p.program_add_del), '
'::text) AS program_add_del,
    array_to_string(ARRAY( SELECT regexp_replace((p.program_add_del)::text, '
'::text, '(RETURN)'::text) AS regexp_replace
           FROM licencelistprogram_down_rireki p
          WHERE (p.licencehistory_pkey = licencelistrireki.licencehistory_pkey)
          ORDER BY p.program_add_del), '
'::text) AS program_add_del_down,
    rireki.sinseisyozoku,
    rireki.sinsei_date,
    rireki.sinseisya,
    rireki.syonin_kbn,
    rireki.syonin_date,
    rireki.syoninsya,
    COALESCE((sosiki.sosiki_sortkey)::integer, 0) AS sosiki_sortkey,
    sosiki.syozoku_name AS sosiki_name,
    rireki.email_ad,
    rireki.note,
    rireki_numbering.rireki_no
   FROM (((licencelistrireki
     LEFT JOIN rireki ON (((licencelistrireki.licencehistory_pkey = rireki.history_pkey) AND ((rireki.history_type)::text = 'd004'::text))))
     LEFT JOIN sosiki ON (((licencelistrireki.upd_syozoku)::text = (sosiki.sosiki_pkey)::text)))
     LEFT JOIN rireki_numbering ON (((rireki.history_pkey = rireki_numbering.history_pkey) AND ((rireki.history_type)::text = (rireki_numbering.history_type)::text))));


--
-- Name: licencelistprogram_delete_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE licencelistprogram_delete_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: licencelistprogram_delete_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE licencelistprogram_delete_id_seq OWNED BY licencelistprogram_delete.id;


--
-- Name: licencelistprogram_down_delete_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE licencelistprogram_down_delete_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: licencelistprogram_down_delete_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE licencelistprogram_down_delete_id_seq OWNED BY licencelistprogram_down_delete.id;


--
-- Name: licencelistrireki_licencehistory_pkey_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE licencelistrireki_licencehistory_pkey_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: licencelistrireki_licencehistory_pkey_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE licencelistrireki_licencehistory_pkey_seq OWNED BY licencelistrireki.licencehistory_pkey;


--
-- Name: licencerireki_licencehistory_pkey_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE licencerireki_licencehistory_pkey_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: licencerireki_licencehistory_pkey_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE licencerireki_licencehistory_pkey_seq OWNED BY licencerireki.licencehistory_pkey;


--
-- Name: location_code; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE location_code (
    place_cd character varying(8) NOT NULL,
    change_ymd date NOT NULL,
    bureau character varying(30),
    department character varying(30),
    division character varying(30),
    subsection character varying(30),
    intra_k character varying(255),
    addr character varying(255),
    organize_cd character varying(4),
    remarks character varying(255)
);


--
-- Name: TABLE location_code; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE location_code IS '設置場所';


--
-- Name: COLUMN location_code.place_cd; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN location_code.place_cd IS '設置場所コード';


--
-- Name: COLUMN location_code.change_ymd; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN location_code.change_ymd IS '改正日';


--
-- Name: COLUMN location_code.bureau; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN location_code.bureau IS '局';


--
-- Name: COLUMN location_code.department; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN location_code.department IS '部';


--
-- Name: COLUMN location_code.division; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN location_code.division IS '課';


--
-- Name: COLUMN location_code.subsection; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN location_code.subsection IS '係';


--
-- Name: COLUMN location_code.intra_k; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN location_code.intra_k IS 'イントラ回線有無';


--
-- Name: COLUMN location_code.addr; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN location_code.addr IS '住所';


--
-- Name: COLUMN location_code.organize_cd; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN location_code.organize_cd IS '所属コード';


--
-- Name: COLUMN location_code.remarks; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN location_code.remarks IS '備考';


--
-- Name: location_code_detail; Type: VIEW; Schema: public; Owner: -
--

CREATE VIEW location_code_detail AS
 SELECT lc.place_cd,
    lc.change_ymd,
    lc.bureau,
    lc.department,
    lc.division,
    lc.subsection,
    lc.intra_k,
    lc.addr,
    lc.organize_cd,
    s.syozoku_fullname,
    lc.remarks
   FROM (location_code lc
     LEFT JOIN sosiki s ON (((lc.organize_cd)::text = (s.syozoku_code)::text)));


--
-- Name: login_key; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE login_key (
    user_id character varying(50) NOT NULL,
    key character varying(50) NOT NULL,
    expire timestamp with time zone NOT NULL
);


--
-- Name: TABLE login_key; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE login_key IS '認証キー';


--
-- Name: COLUMN login_key.user_id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN login_key.user_id IS 'ユーザーID';


--
-- Name: message; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE message (
    msg_pkey bigint NOT NULL,
    value text NOT NULL,
    start_date timestamp with time zone,
    end_date timestamp with time zone,
    start_time time with time zone,
    end_time time with time zone,
    sort integer
);


--
-- Name: TABLE message; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE message IS 'メッセージ';


--
-- Name: message_msg_pkey_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE message_msg_pkey_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: message_msg_pkey_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE message_msg_pkey_seq OWNED BY message.msg_pkey;


--
-- Name: mt_auth; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE mt_auth (
    authority_id character varying(20) NOT NULL,
    authority_name character varying(50) NOT NULL
);


--
-- Name: TABLE mt_auth; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE mt_auth IS '権限テーブル';


--
-- Name: mt_menu; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE mt_menu (
    menu_code integer NOT NULL,
    menu_name character varying(30) NOT NULL,
    menu_url character varying(100) NOT NULL,
    menu_action text,
    menu_hierarchy smallint NOT NULL,
    menu_sort integer NOT NULL,
    menu_display_flag smallint NOT NULL
);


--
-- Name: TABLE mt_menu; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE mt_menu IS 'メニューテーブル';


--
-- Name: COLUMN mt_menu.menu_code; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN mt_menu.menu_code IS 'メニューコード';


--
-- Name: COLUMN mt_menu.menu_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN mt_menu.menu_name IS 'メニュー名';


--
-- Name: COLUMN mt_menu.menu_url; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN mt_menu.menu_url IS 'メニューURL';


--
-- Name: COLUMN mt_menu.menu_action; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN mt_menu.menu_action IS 'メニューアクション';


--
-- Name: COLUMN mt_menu.menu_hierarchy; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN mt_menu.menu_hierarchy IS 'メニュー階層';


--
-- Name: COLUMN mt_menu.menu_sort; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN mt_menu.menu_sort IS 'メニュー表示順';


--
-- Name: COLUMN mt_menu.menu_display_flag; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN mt_menu.menu_display_flag IS '表示フラグ';


--
-- Name: mt_menu_menu_code_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE mt_menu_menu_code_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: mt_menu_menu_code_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE mt_menu_menu_code_seq OWNED BY mt_menu.menu_code;


--
-- Name: program; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE program (
    program_add_del character varying(255) NOT NULL
);


--
-- Name: TABLE program; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE program IS 'プログラムの追加と削除での表示

';


--
-- Name: prohibited_software; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE prohibited_software (
    id integer NOT NULL,
    prohibited_soft_name character varying(100) NOT NULL,
    sosiki_pkey integer NOT NULL,
    delete_flag integer DEFAULT 0 NOT NULL,
    create_user_id character varying(50) NOT NULL,
    create_datetime timestamp with time zone NOT NULL,
    update_user_id character varying(50) NOT NULL,
    update_datetime timestamp with time zone NOT NULL
);


--
-- Name: COLUMN prohibited_software.create_user_id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN prohibited_software.create_user_id IS '登録ユーザーID';


--
-- Name: COLUMN prohibited_software.update_user_id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN prohibited_software.update_user_id IS '更新ユーザーID';


--
-- Name: prohibited_software_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE prohibited_software_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: prohibited_software_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE prohibited_software_id_seq OWNED BY prohibited_software.id;


--
-- Name: rireki_detail; Type: VIEW; Schema: public; Owner: -
--

CREATE VIEW rireki_detail AS
 SELECT rireki.history_pkey,
    rireki.history_type,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '00026'::text) AND ((code.code)::text = (rireki.history_type)::text))) AS history_type_name,
    rireki.sinsei_date,
    rireki.sinseisya,
    rireki.sinseisyozoku,
    sosiki.syozoku_name,
    sosiki.syozoku_fullname AS sosiki_fullname,
    sosiki.sosiki_sortkey,
    rireki.syonin_kbn,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '00008'::text) AND ((code.code)::text = (rireki.syonin_kbn)::text))) AS syonin_kbn_name,
    rireki.syonin_date,
    rireki.syoninsya,
    rireki.email_ad,
    rireki.note,
    rireki_numbering.rireki_no,
    rireki.ledger_manager_number
   FROM ((rireki
     LEFT JOIN sosiki ON (((rireki.sinseisyozoku)::text = (sosiki.sosiki_pkey)::text)))
     LEFT JOIN rireki_numbering ON (((rireki.history_pkey = rireki_numbering.history_pkey) AND ((rireki.history_type)::text = (rireki_numbering.history_type)::text))));


--
-- Name: softrireki; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE softrireki (
    softhistory_pkey integer NOT NULL,
    soft_pkey integer,
    sosiki_pkey integer,
    sosiki_fullname character varying,
    hard_pkey integer,
    hard_kanrino character varying(255),
    use_name character varying(100),
    use_name_name character varying,
    licence_pkey integer,
    licence_kanrino character varying(255),
    soft_name character varying(255),
    licence_keitai character varying(6),
    licence_keitai_name character varying,
    hard_kotei character varying(6),
    hard_kotei_name character varying,
    hard_pkey2 integer,
    hard_kanrino2 character varying(255),
    upgrade character varying(6),
    upgrade_name character varying,
    licence_pkey2 integer,
    up_licence_kanrino character varying(255),
    tokusitu_useproposal text,
    downgrade character varying(6),
    downgrade_name character varying,
    bikou text,
    tyoutatu_date date,
    haiki_date date,
    version smallint NOT NULL,
    sinsei_date timestamp with time zone,
    sinseisya character varying(80),
    syonin_kbn character varying(6),
    syonin_kbn_name character varying,
    syoninsya character varying(80),
    syonin_date timestamp with time zone,
    email_ad text,
    note text,
    rireki_no character varying(255)
);


--
-- Name: TABLE softrireki; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE softrireki IS 'ソフトウェア台帳履歴';


--
-- Name: COLUMN softrireki.softhistory_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN softrireki.softhistory_pkey IS '履歴内部ｷｰ';


--
-- Name: COLUMN softrireki.soft_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN softrireki.soft_pkey IS '内部キー';


--
-- Name: COLUMN softrireki.sosiki_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN softrireki.sosiki_pkey IS '組織内部キー';


--
-- Name: COLUMN softrireki.sosiki_fullname; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN softrireki.sosiki_fullname IS '組織_フル名称';


--
-- Name: COLUMN softrireki.hard_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN softrireki.hard_pkey IS 'ハードウェア台帳の内部キー';


--
-- Name: COLUMN softrireki.hard_kanrino; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN softrireki.hard_kanrino IS 'ハードウェア管理番号';


--
-- Name: COLUMN softrireki.use_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN softrireki.use_name IS '使用形態';


--
-- Name: COLUMN softrireki.use_name_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN softrireki.use_name_name IS '使用形態名称';


--
-- Name: COLUMN softrireki.licence_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN softrireki.licence_pkey IS 'ライセンス内部キー';


--
-- Name: COLUMN softrireki.licence_kanrino; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN softrireki.licence_kanrino IS 'ライセンス管理番号';


--
-- Name: COLUMN softrireki.soft_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN softrireki.soft_name IS 'ライセンス名';


--
-- Name: COLUMN softrireki.licence_keitai; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN softrireki.licence_keitai IS '種類';


--
-- Name: COLUMN softrireki.licence_keitai_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN softrireki.licence_keitai_name IS '種類_名称';


--
-- Name: COLUMN softrireki.hard_kotei; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN softrireki.hard_kotei IS 'ハードウェア固定';


--
-- Name: COLUMN softrireki.hard_kotei_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN softrireki.hard_kotei_name IS 'ハードウェア固定_名称';


--
-- Name: COLUMN softrireki.hard_pkey2; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN softrireki.hard_pkey2 IS '固定先ハードウェア_ハードウェア内部キー';


--
-- Name: COLUMN softrireki.hard_kanrino2; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN softrireki.hard_kanrino2 IS '固定先ハードウェア_ハードウェア管理番号';


--
-- Name: COLUMN softrireki.upgrade; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN softrireki.upgrade IS 'アップグレード版';


--
-- Name: COLUMN softrireki.upgrade_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN softrireki.upgrade_name IS 'アップグレード版_該当';


--
-- Name: COLUMN softrireki.licence_pkey2; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN softrireki.licence_pkey2 IS 'アップグレード元ライセンス内部キー';


--
-- Name: COLUMN softrireki.up_licence_kanrino; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN softrireki.up_licence_kanrino IS 'アップグレード元ライセンス管理番号';


--
-- Name: COLUMN softrireki.tokusitu_useproposal; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN softrireki.tokusitu_useproposal IS '特筆すべき使用許諾条件';


--
-- Name: COLUMN softrireki.downgrade; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN softrireki.downgrade IS 'ダウングレード';


--
-- Name: COLUMN softrireki.downgrade_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN softrireki.downgrade_name IS 'ダウングレード区分_名称';


--
-- Name: COLUMN softrireki.bikou; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN softrireki.bikou IS '備考';


--
-- Name: COLUMN softrireki.tyoutatu_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN softrireki.tyoutatu_date IS '調達日';


--
-- Name: COLUMN softrireki.haiki_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN softrireki.haiki_date IS '削除日';


--
-- Name: COLUMN softrireki.version; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN softrireki.version IS 'バージョン';


--
-- Name: COLUMN softrireki.sinsei_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN softrireki.sinsei_date IS '申請日';


--
-- Name: COLUMN softrireki.sinseisya; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN softrireki.sinseisya IS '申請者';


--
-- Name: COLUMN softrireki.syonin_kbn; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN softrireki.syonin_kbn IS '承認区分';


--
-- Name: COLUMN softrireki.syonin_kbn_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN softrireki.syonin_kbn_name IS '承認区分_名称';


--
-- Name: COLUMN softrireki.syoninsya; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN softrireki.syoninsya IS '承認者';


--
-- Name: COLUMN softrireki.syonin_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN softrireki.syonin_date IS '承認日';


--
-- Name: COLUMN softrireki.email_ad; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN softrireki.email_ad IS 'メールアドレス';


--
-- Name: COLUMN softrireki.note; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN softrireki.note IS '承認コメント';


--
-- Name: COLUMN softrireki.rireki_no; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN softrireki.rireki_no IS '申請書番号';


--
-- Name: rireki_detail_group; Type: VIEW; Schema: public; Owner: -
--

CREATE VIEW rireki_detail_group AS
 SELECT min(main.history_pkey) AS history_pkey,
    main.history_type,
    main.history_type_name,
        CASE main.history_type
            WHEN 'd001'::text THEN ( SELECT h1.hard_kanrino
               FROM hardrireki h1
              WHERE ((h1.hardhistory_pkey)::text = (min(main.history_pkey))::text))
            WHEN 'd002'::text THEN ( SELECT s1.hard_kanrino
               FROM softrireki s1
              WHERE ((s1.softhistory_pkey)::text = (min(main.history_pkey))::text))
            WHEN 'd003'::text THEN ( SELECT l1.licence_kanrino
               FROM licencerireki l1
              WHERE ((l1.licencehistory_pkey)::text = (min(main.history_pkey))::text))
            WHEN 'd004'::text THEN (( SELECT (ll1.licencelist_pkey)::text AS licencelist_pkey
               FROM licencelistrireki ll1
              WHERE ((ll1.licencehistory_pkey)::text = (min(main.history_pkey))::text)))::character varying
            ELSE NULL::character varying
        END AS history_kanrino,
    main.sinseisyozoku,
    main.syozoku_name,
    main.sosiki_fullname,
    main.sinseisya,
    main.sinsei_date,
    main.syonin_kbn,
    main.syonin_kbn_name,
    main.syoninsya,
    main.syonin_date,
    main.sosiki_sortkey,
    main.email_ad,
    main.rireki_no,
    main.note
   FROM ( SELECT rireki.history_pkey,
            rireki.history_type,
            ( SELECT code.code_name
                   FROM code
                  WHERE (((code.code_bunrui)::text = '00026'::text) AND ((code.code)::text = (rireki.history_type)::text))) AS history_type_name,
            rireki.sinseisyozoku,
            sosiki.syozoku_name,
            sosiki.syozoku_fullname AS sosiki_fullname,
            rireki.sinseisya,
            rireki.sinsei_date,
            rireki.syonin_kbn,
            ( SELECT code.code_name
                   FROM code
                  WHERE (((code.code_bunrui)::text = '00008'::text) AND ((code.code)::text = (rireki.syonin_kbn)::text))) AS syonin_kbn_name,
            rireki.syoninsya,
            rireki.syonin_date,
            sosiki.sosiki_sortkey,
            rireki.email_ad,
            rireki_numbering.rireki_no,
            rireki.note
           FROM ((rireki
             LEFT JOIN sosiki ON (((rireki.sinseisyozoku)::text = (sosiki.sosiki_pkey)::text)))
             LEFT JOIN rireki_numbering ON (((rireki.history_pkey = rireki_numbering.history_pkey) AND ((rireki.history_type)::text = (rireki_numbering.history_type)::text))))) main
  GROUP BY main.history_type, main.history_type_name, main.sinseisyozoku, main.syozoku_name, main.sosiki_fullname, main.sinseisya, main.sinsei_date, main.syonin_kbn, main.syonin_kbn_name, main.syoninsya, main.syonin_date, main.sosiki_sortkey, main.email_ad, main.rireki_no, main.note;


--
-- Name: rireki_numbering_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE rireki_numbering_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: rireki_numbering_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE rireki_numbering_id_seq OWNED BY rireki_numbering.id;


--
-- Name: soft_delete; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE soft_delete (
    id integer NOT NULL,
    soft_pkey integer NOT NULL,
    hard_pkey integer,
    licence_pkey integer,
    bikou text,
    install_date date,
    uninstall_date date,
    version smallint NOT NULL,
    newkbn smallint,
    delete_user_id character varying(50) NOT NULL,
    delete_user_name character varying(80) NOT NULL,
    delete_datetime timestamp with time zone NOT NULL,
    downgrade character varying(6)
);


--
-- Name: TABLE soft_delete; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE soft_delete IS 'ソフトウェア台帳削除';


--
-- Name: COLUMN soft_delete.id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN soft_delete.id IS '内部キー';


--
-- Name: COLUMN soft_delete.soft_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN soft_delete.soft_pkey IS '旧内部キー';


--
-- Name: COLUMN soft_delete.hard_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN soft_delete.hard_pkey IS 'ハードウェア台帳の内部キー';


--
-- Name: COLUMN soft_delete.licence_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN soft_delete.licence_pkey IS 'ライセンス台帳の内部キー';


--
-- Name: COLUMN soft_delete.bikou; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN soft_delete.bikou IS '備考';


--
-- Name: COLUMN soft_delete.install_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN soft_delete.install_date IS '導入日';


--
-- Name: COLUMN soft_delete.uninstall_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN soft_delete.uninstall_date IS '削除日';


--
-- Name: COLUMN soft_delete.version; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN soft_delete.version IS 'バージョン';


--
-- Name: COLUMN soft_delete.newkbn; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN soft_delete.newkbn IS '新規区分';


--
-- Name: COLUMN soft_delete.delete_user_id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN soft_delete.delete_user_id IS '削除ユーザーID';


--
-- Name: COLUMN soft_delete.delete_user_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN soft_delete.delete_user_name IS '削除ユーザー名';


--
-- Name: COLUMN soft_delete.delete_datetime; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN soft_delete.delete_datetime IS '削除日時';


--
-- Name: COLUMN soft_delete.downgrade; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN soft_delete.downgrade IS 'ダウングレード区分';


--
-- Name: soft_delete_detail; Type: VIEW; Schema: public; Owner: -
--

CREATE VIEW soft_delete_detail AS
 SELECT soft_delete.soft_pkey,
    hard.sosiki_pkey,
    sosiki.syozoku_name AS sosiki_name,
    sosiki.syozoku_fullname AS sosiki_fullname,
    soft_delete.hard_pkey,
    hard.hard_kanrino,
    hard.use_name,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '20003'::text) AND ((code.code)::text = (hard.use_name)::text))) AS use_name_name,
    soft_delete.licence_pkey,
    licence.licence_kanrino,
    licencelist.soft_name,
    licencelist.licence_keitai,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '00005'::text) AND ((code.code)::text = (licencelist.licence_keitai)::text))) AS licence_keitai_name,
    licencelist.hard_kotei,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '00004'::text) AND ((code.code)::text = (licencelist.hard_kotei)::text))) AS hard_kotei_name,
    licence.hard_pkey AS hard_pkey2,
    hard2.hard_kanrino AS hard_kanrino2,
    licencelist.upgrade,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '00004'::text) AND ((code.code)::text = (licencelist.upgrade)::text))) AS upgrade_name,
    licence.licence_pkey2,
    up.licence_kanrino AS up_licence_kanrino,
    licencelist.tokusitu_useproposal,
    soft_delete.downgrade,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '00004'::text) AND ((code.code)::text = (soft_delete.downgrade)::text))) AS downgrade_name,
    soft_delete.bikou,
    soft_delete.install_date AS tyoutatu_date,
    soft_delete.uninstall_date AS haiki_date,
    soft_delete.version,
    soft_delete.newkbn,
    hard.haiki_date AS hard_haiki_date,
    COALESCE((sosiki.sosiki_sortkey)::integer, 0) AS sosiki_sortkey,
    licence.sosiki_pkey AS licence_sosiki_pkey,
    soft_delete.delete_user_id,
    soft_delete.delete_user_name,
    soft_delete.delete_datetime,
    ( SELECT max(rireki.syonin_date) AS max
           FROM (softrireki
             LEFT JOIN rireki ON (((((softrireki.softhistory_pkey)::text = (rireki.history_pkey)::text) AND ((rireki.history_type)::text = 'd002'::text)) AND ((rireki.syonin_kbn)::text = 'd001'::text))))
          WHERE ((softrireki.soft_pkey)::text = (soft_delete.soft_pkey)::text)
          GROUP BY softrireki.soft_pkey) AS syonin_date
   FROM ((((((soft_delete
     LEFT JOIN hard ON ((soft_delete.hard_pkey = hard.hard_pkey)))
     LEFT JOIN licence ON ((soft_delete.licence_pkey = licence.licence_pkey)))
     LEFT JOIN licencelist ON ((licence.licencelist_pkey = licencelist.licencelist_pkey)))
     LEFT JOIN sosiki ON ((hard.sosiki_pkey = sosiki.sosiki_pkey)))
     LEFT JOIN hard hard2 ON ((licence.hard_pkey = hard2.hard_pkey)))
     LEFT JOIN licence up ON ((licence.licence_pkey2 = up.licence_pkey)));


--
-- Name: soft_delete_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE soft_delete_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: soft_delete_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE soft_delete_id_seq OWNED BY soft_delete.id;


--
-- Name: soft_detail; Type: VIEW; Schema: public; Owner: -
--

CREATE VIEW soft_detail AS
 SELECT soft.soft_pkey,
    hard.sosiki_pkey,
    sosiki.syozoku_name AS sosiki_name,
    sosiki.syozoku_fullname AS sosiki_fullname,
    soft.hard_pkey,
    hard.hard_kanrino,
    hard.use_name,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '20003'::text) AND ((code.code)::text = (hard.use_name)::text))) AS use_name_name,
    soft.licence_pkey,
    licence.licence_kanrino,
    licencelist.soft_name,
    licencelist.licence_keitai,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '00005'::text) AND ((code.code)::text = (licencelist.licence_keitai)::text))) AS licence_keitai_name,
    licencelist.hard_kotei,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '00004'::text) AND ((code.code)::text = (licencelist.hard_kotei)::text))) AS hard_kotei_name,
    licence.hard_pkey AS hard_pkey2,
    hard2.hard_kanrino AS hard_kanrino2,
    licencelist.upgrade,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '00004'::text) AND ((code.code)::text = (licencelist.upgrade)::text))) AS upgrade_name,
    licence.licence_pkey2,
    up.licence_kanrino AS up_licence_kanrino,
    licencelist.tokusitu_useproposal,
    soft.downgrade,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '00004'::text) AND ((code.code)::text = (soft.downgrade)::text))) AS downgrade_name,
    soft.bikou,
    soft.install_date AS tyoutatu_date,
    soft.uninstall_date AS haiki_date,
    soft.version,
    soft.newkbn,
    hard.haiki_date AS hard_haiki_date,
    COALESCE((sosiki.sosiki_sortkey)::integer, 0) AS sosiki_sortkey,
    licence.sosiki_pkey AS licence_sosiki_pkey,
    licencelist.brand
   FROM ((((((soft
     LEFT JOIN hard ON ((soft.hard_pkey = hard.hard_pkey)))
     LEFT JOIN licence ON ((soft.licence_pkey = licence.licence_pkey)))
     LEFT JOIN licencelist ON ((licence.licencelist_pkey = licencelist.licencelist_pkey)))
     LEFT JOIN sosiki ON ((hard.sosiki_pkey = sosiki.sosiki_pkey)))
     LEFT JOIN hard hard2 ON ((licence.hard_pkey = hard2.hard_pkey)))
     LEFT JOIN licence up ON ((licence.licence_pkey2 = up.licence_pkey)));


--
-- Name: soft_rireki_detail; Type: VIEW; Schema: public; Owner: -
--

CREATE VIEW soft_rireki_detail AS
 SELECT softrireki.softhistory_pkey,
    softrireki.soft_pkey,
    hard.sosiki_pkey,
    sosiki.syozoku_fullname AS sosiki_fullname,
    softrireki.hard_pkey,
    hard.hard_kanrino,
    hard.use_name,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '20003'::text) AND ((code.code)::text = (hard.use_name)::text))) AS use_name_name,
    softrireki.licence_pkey,
    licence.licence_kanrino,
    licencelist.soft_name,
    licencelist.licence_keitai,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '00005'::text) AND ((code.code)::text = (licencelist.licence_keitai)::text))) AS licence_keitai_name,
    licencelist.hard_kotei,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '00004'::text) AND ((code.code)::text = (licencelist.hard_kotei)::text))) AS hard_kotei_name,
    licence.hard_pkey AS hard_pkey2,
    hard2.hard_kanrino AS hard_kanrino2,
    licencelist.upgrade,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '00004'::text) AND ((code.code)::text = (licencelist.upgrade)::text))) AS upgrade_name,
    licence.licence_pkey2,
    up.licence_kanrino AS up_licence_kanrino,
    licencelist.tokusitu_useproposal,
    softrireki.downgrade,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '00004'::text) AND ((code.code)::text = (softrireki.downgrade)::text))) AS downgrade_name,
    softrireki.bikou,
    softrireki.tyoutatu_date,
    softrireki.haiki_date,
    softrireki.version,
    rireki.sinsei_date,
    rireki.sinseisya,
    rireki.syonin_kbn,
    rireki.syonin_kbn_name,
    rireki.syoninsya,
    rireki.syonin_date,
    rireki.email_ad,
    rireki.note,
    rireki_numbering.rireki_no
   FROM ((((((((softrireki
     LEFT JOIN rireki ON (((softrireki.softhistory_pkey = rireki.history_pkey) AND ((rireki.history_type)::text = 'd002'::text))))
     LEFT JOIN hard ON ((softrireki.hard_pkey = hard.hard_pkey)))
     LEFT JOIN licence ON ((softrireki.licence_pkey = licence.licence_pkey)))
     LEFT JOIN licencelist ON ((licence.licencelist_pkey = licencelist.licencelist_pkey)))
     LEFT JOIN sosiki ON ((hard.sosiki_pkey = sosiki.sosiki_pkey)))
     LEFT JOIN hard hard2 ON ((licence.hard_pkey = hard2.hard_pkey)))
     LEFT JOIN licence up ON ((licence.licence_pkey2 = up.licence_pkey)))
     LEFT JOIN rireki_numbering ON (((rireki.history_pkey = rireki_numbering.history_pkey) AND ((rireki.history_type)::text = (rireki_numbering.history_type)::text))));


--
-- Name: soft_soft_pkey_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE soft_soft_pkey_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: soft_soft_pkey_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE soft_soft_pkey_seq OWNED BY soft.soft_pkey;


--
-- Name: softrireki_softhistory_pkey_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE softrireki_softhistory_pkey_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: softrireki_softhistory_pkey_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE softrireki_softhistory_pkey_seq OWNED BY softrireki.softhistory_pkey;


--
-- Name: sogo_count; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE sogo_count (
    sosiki_pkey integer NOT NULL,
    syozoku_fullname character varying(255),
    d_count bigint,
    i_count bigint,
    all_count bigint,
    sosiki_sortkey smallint,
    end_sosiki boolean
);


--
-- Name: sogo_count_self; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE sogo_count_self (
    sosiki_pkey integer,
    syozoku_fullname character varying(255),
    d_count bigint,
    i_count bigint,
    all_count bigint,
    sosiki_sortkey smallint
);


--
-- Name: sogo_type; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE sogo_type (
    sogo_pkey character varying(4) NOT NULL,
    sogo_type smallint NOT NULL
);


--
-- Name: TABLE sogo_type; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE sogo_type IS '齟齬種別（1:台帳齟齬　2:インベントリ齟齬）';


--
-- Name: sogocheck; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE sogocheck (
    sogochk_pkey integer NOT NULL,
    sogochk_type smallint NOT NULL,
    err_pkey character varying(4),
    inv_list character varying(255),
    inv_detail character varying(255),
    hard_hardno character varying(255),
    soft_hardno character varying(255),
    soft_licenceno character varying(255),
    soft_program character varying(255),
    licence_licenceno character varying(255),
    licence_program character varying(255),
    licencelist_program character varying(255),
    sosiki1 integer,
    sosiki2 integer,
    sysyem_user boolean,
    start_date timestamp with time zone,
    check_date timestamp with time zone,
    msg_val1 character varying(255),
    msg_val2 character varying(255),
    msg_val3 character varying(255),
    msg_val4 character varying(255),
    msg_val5 character varying(255),
    msg_val6 character varying(255),
    msg_val7 character varying(255),
    spt_val1 character varying(255),
    spt_val2 character varying(255),
    spt_val3 character varying(255),
    spt_val4 character varying(255),
    spt_val5 character varying(255),
    mail_val1 character varying(255),
    mail_val2 character varying(255),
    mail_val3 character varying(255),
    mail_val4 character varying(255),
    mail_val5 character varying(255),
    mail_val6 character varying(255),
    mail_val7 character varying(255)
);


--
-- Name: TABLE sogocheck; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE sogocheck IS '齟齬チェック';


--
-- Name: sogo_count_view; Type: VIEW; Schema: public; Owner: -
--

CREATE VIEW sogo_count_view AS
 SELECT sosiki.sosiki_pkey,
    sosiki.syozoku_fullname,
    ( SELECT count(*) AS count
           FROM (sogocheck
             LEFT JOIN sogo_type ON (((sogocheck.err_pkey)::text = (sogo_type.sogo_pkey)::text)))
          WHERE ((sogo_type.sogo_type = 1) AND ((sogocheck.sosiki1 = sosiki.sosiki_pkey) OR (sogocheck.sosiki2 = sosiki.sosiki_pkey)))) AS d_count,
    ( SELECT count(*) AS count
           FROM (sogocheck
             LEFT JOIN sogo_type ON (((sogocheck.err_pkey)::text = (sogo_type.sogo_pkey)::text)))
          WHERE ((sogo_type.sogo_type = 2) AND ((sogocheck.sosiki1 = sosiki.sosiki_pkey) OR (sogocheck.sosiki2 = sosiki.sosiki_pkey)))) AS i_count,
    ( SELECT count(*) AS count
           FROM sogocheck
          WHERE ((sogocheck.sosiki1 = sosiki.sosiki_pkey) OR (sogocheck.sosiki2 = sosiki.sosiki_pkey))) AS all_count,
    sosiki.sosiki_sortkey
   FROM sosiki
  ORDER BY sosiki.sosiki_sortkey;


--
-- Name: sogo_mail_message; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE sogo_mail_message (
    sogo_mail_pkey character varying(4) NOT NULL,
    sogo_mail_msg text
);


--
-- Name: sogo_msg; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE sogo_msg (
    sogo_pkey character varying(4) NOT NULL,
    sogo_msg text,
    sogo_spt text,
    sogo_mail text
);


--
-- Name: TABLE sogo_msg; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE sogo_msg IS '齟齬メッセージ';


--
-- Name: sogo_view; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE sogo_view (
    sogochk_pkey integer NOT NULL,
    sosiki_sortkey smallint,
    sosiki_fullname character varying(550),
    check_date date,
    err_pkey character varying(4),
    inventory text,
    hardware text,
    software text,
    licence text,
    licence_list text,
    message text,
    support text,
    sosiki_pkey1 integer,
    sosiki_pkey2 integer
);


--
-- Name: TABLE sogo_view; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE sogo_view IS '齟齬表示用';


--
-- Name: sogocheck_sogochk_pkey_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE sogocheck_sogochk_pkey_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: sogocheck_sogochk_pkey_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE sogocheck_sogochk_pkey_seq OWNED BY sogocheck.sogochk_pkey;


--
-- Name: sogocheck_tmp; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE sogocheck_tmp (
    sogochk_pkey integer NOT NULL,
    sogochk_type smallint NOT NULL,
    err_pkey character varying(4),
    inv_list character varying(255),
    inv_detail character varying(255),
    hard_hardno character varying(255),
    soft_hardno character varying(255),
    soft_licenceno character varying(255),
    soft_program character varying(255),
    licence_licenceno character varying(255),
    licence_program character varying(255),
    licencelist_program character varying(255),
    sosiki1 integer,
    sosiki2 integer,
    sysyem_user boolean,
    start_date timestamp with time zone,
    check_date timestamp with time zone,
    msg_val1 character varying(255),
    msg_val2 character varying(255),
    msg_val3 character varying(255),
    msg_val4 character varying(255),
    msg_val5 character varying(255),
    msg_val6 character varying(255),
    msg_val7 character varying(255),
    spt_val1 character varying(255),
    spt_val2 character varying(255),
    spt_val3 character varying(255),
    spt_val4 character varying(255),
    spt_val5 character varying(255),
    mail_val1 character varying(255),
    mail_val2 character varying(255),
    mail_val3 character varying(255),
    mail_val4 character varying(255),
    mail_val5 character varying(255),
    mail_val6 character varying(255),
    mail_val7 character varying(255)
);


--
-- Name: sogocheck_tmp_sogochk_pkey_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE sogocheck_tmp_sogochk_pkey_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: sogocheck_tmp_sogochk_pkey_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE sogocheck_tmp_sogochk_pkey_seq OWNED BY sogocheck_tmp.sogochk_pkey;


--
-- Name: sosiki_detail; Type: VIEW; Schema: public; Owner: -
--

CREATE VIEW sosiki_detail AS
 SELECT mtr.sosiki_pkey,
    mtr.sosiki_sortkey,
    mtr.syozoku_name,
    mtr.yukou,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '00007'::text) AND ((code.code)::text = (mtr.yukou)::text))) AS yukou_name,
    mtr.sosiki_onpkey,
    mtr.station_code,
    mtr.syozoku_code,
    mtr.disp_full_sosiki_name,
    slv.syozoku_name AS s_syozoku_name,
    slv.syozoku_fullname AS s_syozoku_fullname,
    COALESCE((slv.sosiki_sortkey)::integer, 0) AS s_sosiki_sortkey
   FROM (sosiki mtr
     LEFT JOIN sosiki slv ON ((mtr.sosiki_onpkey = slv.sosiki_pkey)));


--
-- Name: sosiki_path; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE sosiki_path (
    sosiki_pkey integer NOT NULL,
    parent_sosiki text,
    child_sosiki text
);


--
-- Name: TABLE sosiki_path; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE sosiki_path IS '組織パス';


--
-- Name: sosiki_sosiki_pkey_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE sosiki_sosiki_pkey_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: sosiki_sosiki_pkey_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE sosiki_sosiki_pkey_seq OWNED BY sosiki.sosiki_pkey;


--
-- Name: sso_administrator; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE sso_administrator (
    master_user_id character varying(100) NOT NULL,
    user_id character varying(50) NOT NULL,
    create_datetime timestamp with time zone
);


--
-- Name: TABLE sso_administrator; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE sso_administrator IS 'SSO管理者ユーザマスタ';


--
-- Name: COLUMN sso_administrator.master_user_id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_administrator.master_user_id IS '共通基盤ユーザID';


--
-- Name: COLUMN sso_administrator.user_id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_administrator.user_id IS 'SARMSユーザID';


--
-- Name: COLUMN sso_administrator.create_datetime; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_administrator.create_datetime IS '追加日時';


--
-- Name: sso_csv_bureau; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE sso_csv_bureau (
    id integer NOT NULL,
    code character varying(255) NOT NULL,
    start_date character varying(8) NOT NULL,
    end_date character varying(8) NOT NULL,
    name character varying(120) NOT NULL,
    abbr_name character varying(48),
    order_code character varying(4) NOT NULL,
    update_user_name character varying(30),
    update_datetime character varying(14),
    create_datetime timestamp with time zone,
    scheduled smallint NOT NULL,
    schedule_datetime timestamp with time zone
);


--
-- Name: TABLE sso_csv_bureau; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE sso_csv_bureau IS 'SSO局マスタCSVコピー';


--
-- Name: COLUMN sso_csv_bureau.id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_csv_bureau.id IS 'ID';


--
-- Name: COLUMN sso_csv_bureau.code; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_csv_bureau.code IS '局コード';


--
-- Name: COLUMN sso_csv_bureau.start_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_csv_bureau.start_date IS '有効開始日';


--
-- Name: COLUMN sso_csv_bureau.end_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_csv_bureau.end_date IS '有効終了日';


--
-- Name: COLUMN sso_csv_bureau.name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_csv_bureau.name IS '局名';


--
-- Name: COLUMN sso_csv_bureau.abbr_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_csv_bureau.abbr_name IS '局略称名';


--
-- Name: COLUMN sso_csv_bureau.order_code; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_csv_bureau.order_code IS '局建制順コード';


--
-- Name: COLUMN sso_csv_bureau.update_user_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_csv_bureau.update_user_name IS '最終更新者';


--
-- Name: COLUMN sso_csv_bureau.update_datetime; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_csv_bureau.update_datetime IS '最終更新日時';


--
-- Name: COLUMN sso_csv_bureau.create_datetime; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_csv_bureau.create_datetime IS '追加日時';


--
-- Name: COLUMN sso_csv_bureau.scheduled; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_csv_bureau.scheduled IS 'スケジュール追加済みフラグ';


--
-- Name: COLUMN sso_csv_bureau.schedule_datetime; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_csv_bureau.schedule_datetime IS 'スケジュール追加日時';


--
-- Name: sso_csv_bureau_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE sso_csv_bureau_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: sso_csv_bureau_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE sso_csv_bureau_id_seq OWNED BY sso_csv_bureau.id;


--
-- Name: sso_csv_department; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE sso_csv_department (
    id integer NOT NULL,
    code character varying(255) NOT NULL,
    start_date character varying(8) NOT NULL,
    end_date character varying(8) NOT NULL,
    parent_code character varying(255) NOT NULL,
    name character varying(120) NOT NULL,
    abbr_name character varying(48),
    order_code character varying(4) NOT NULL,
    update_user_name character varying(30),
    update_datetime character varying(14),
    create_datetime timestamp with time zone,
    scheduled smallint NOT NULL,
    schedule_datetime timestamp with time zone
);


--
-- Name: TABLE sso_csv_department; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE sso_csv_department IS 'SSO部マスタCSVコピー';


--
-- Name: COLUMN sso_csv_department.id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_csv_department.id IS 'ID';


--
-- Name: COLUMN sso_csv_department.code; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_csv_department.code IS '部コード';


--
-- Name: COLUMN sso_csv_department.start_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_csv_department.start_date IS '有効開始日';


--
-- Name: COLUMN sso_csv_department.end_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_csv_department.end_date IS '有効終了日';


--
-- Name: COLUMN sso_csv_department.parent_code; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_csv_department.parent_code IS '局コード';


--
-- Name: COLUMN sso_csv_department.name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_csv_department.name IS '部名';


--
-- Name: COLUMN sso_csv_department.abbr_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_csv_department.abbr_name IS '部略称名';


--
-- Name: COLUMN sso_csv_department.order_code; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_csv_department.order_code IS '部建制順コード';


--
-- Name: COLUMN sso_csv_department.update_user_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_csv_department.update_user_name IS '最終更新者';


--
-- Name: COLUMN sso_csv_department.update_datetime; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_csv_department.update_datetime IS '最終更新日時';


--
-- Name: COLUMN sso_csv_department.create_datetime; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_csv_department.create_datetime IS '追加日時';


--
-- Name: COLUMN sso_csv_department.scheduled; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_csv_department.scheduled IS 'スケジュール追加済みフラグ';


--
-- Name: sso_csv_department_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE sso_csv_department_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: sso_csv_department_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE sso_csv_department_id_seq OWNED BY sso_csv_department.id;


--
-- Name: sso_csv_division; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE sso_csv_division (
    id integer NOT NULL,
    code character varying(255) NOT NULL,
    start_date character varying(8) NOT NULL,
    end_date character varying(8) NOT NULL,
    parent_code character varying(255) NOT NULL,
    name character varying(120) NOT NULL,
    abbr_name character varying(48),
    order_code character varying(4) NOT NULL,
    update_user_name character varying(30),
    update_datetime character varying(14),
    create_datetime timestamp with time zone,
    scheduled smallint NOT NULL,
    schedule_datetime timestamp with time zone
);


--
-- Name: TABLE sso_csv_division; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE sso_csv_division IS 'SSO課マスタCSVコピー';


--
-- Name: COLUMN sso_csv_division.id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_csv_division.id IS 'ID';


--
-- Name: COLUMN sso_csv_division.code; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_csv_division.code IS '課コード';


--
-- Name: COLUMN sso_csv_division.start_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_csv_division.start_date IS '有効開始日';


--
-- Name: COLUMN sso_csv_division.end_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_csv_division.end_date IS '有効終了日';


--
-- Name: COLUMN sso_csv_division.parent_code; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_csv_division.parent_code IS '部コード';


--
-- Name: COLUMN sso_csv_division.name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_csv_division.name IS '課名';


--
-- Name: COLUMN sso_csv_division.abbr_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_csv_division.abbr_name IS '課略称名';


--
-- Name: COLUMN sso_csv_division.order_code; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_csv_division.order_code IS '課建制順コード';


--
-- Name: COLUMN sso_csv_division.update_user_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_csv_division.update_user_name IS '最終更新者';


--
-- Name: COLUMN sso_csv_division.update_datetime; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_csv_division.update_datetime IS '最終更新日時';


--
-- Name: COLUMN sso_csv_division.create_datetime; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_csv_division.create_datetime IS '追加日時';


--
-- Name: COLUMN sso_csv_division.scheduled; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_csv_division.scheduled IS 'スケジュール追加済みフラグ';


--
-- Name: COLUMN sso_csv_division.schedule_datetime; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_csv_division.schedule_datetime IS 'スケジュール追加日時';


--
-- Name: sso_csv_division_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE sso_csv_division_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: sso_csv_division_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE sso_csv_division_id_seq OWNED BY sso_csv_division.id;


--
-- Name: sso_csv_employee; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE sso_csv_employee (
    id integer NOT NULL,
    user_id character varying(100) NOT NULL,
    code character varying(100) NOT NULL,
    kanji_family_name character varying(320),
    kanji_first_name character varying(100),
    kana_family_name character varying(320),
    kana_first_name character varying(100),
    roman_family_name character varying(100),
    roman_first_name character varying(100),
    kana_full_name character varying(60),
    class character varying(2),
    state character varying(1),
    email character varying(100),
    sosiki_code character varying(255) NOT NULL,
    bureau_code character varying(3),
    department_code character varying(4),
    division_code character varying(5),
    unit_code character varying(8),
    role character varying(500) NOT NULL,
    retire_date character varying(8),
    create_datetime timestamp with time zone,
    scheduled smallint NOT NULL,
    schedule_datetime timestamp with time zone
);


--
-- Name: TABLE sso_csv_employee; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE sso_csv_employee IS 'SSO職員マスタCSVコピー';


--
-- Name: COLUMN sso_csv_employee.id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_csv_employee.id IS 'ID';


--
-- Name: COLUMN sso_csv_employee.user_id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_csv_employee.user_id IS 'ユーザＩＤ';


--
-- Name: COLUMN sso_csv_employee.code; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_csv_employee.code IS '職員番号(人給)';


--
-- Name: COLUMN sso_csv_employee.kanji_family_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_csv_employee.kanji_family_name IS '漢字姓';


--
-- Name: COLUMN sso_csv_employee.kanji_first_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_csv_employee.kanji_first_name IS '漢字名';


--
-- Name: COLUMN sso_csv_employee.kana_family_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_csv_employee.kana_family_name IS 'ふりがな姓';


--
-- Name: COLUMN sso_csv_employee.kana_first_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_csv_employee.kana_first_name IS 'ふりがな名';


--
-- Name: COLUMN sso_csv_employee.roman_family_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_csv_employee.roman_family_name IS 'ローマ字姓（半角・小文字）';


--
-- Name: COLUMN sso_csv_employee.roman_first_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_csv_employee.roman_first_name IS 'ローマ字名（半角・小文字）';


--
-- Name: COLUMN sso_csv_employee.kana_full_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_csv_employee.kana_full_name IS '氏名カナ';


--
-- Name: COLUMN sso_csv_employee.class; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_csv_employee.class IS '職員区分';


--
-- Name: COLUMN sso_csv_employee.state; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_csv_employee.state IS '状態フラグ';


--
-- Name: COLUMN sso_csv_employee.email; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_csv_employee.email IS 'メールアドレス';


--
-- Name: COLUMN sso_csv_employee.sosiki_code; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_csv_employee.sosiki_code IS '本務所属コード（カレント）';


--
-- Name: COLUMN sso_csv_employee.bureau_code; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_csv_employee.bureau_code IS '局コード（カレント）';


--
-- Name: COLUMN sso_csv_employee.department_code; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_csv_employee.department_code IS '部コード（カレント）';


--
-- Name: COLUMN sso_csv_employee.division_code; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_csv_employee.division_code IS '課コード（カレント）';


--
-- Name: COLUMN sso_csv_employee.unit_code; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_csv_employee.unit_code IS '係コード（カレント）';


--
-- Name: COLUMN sso_csv_employee.roles; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_csv_employee.role IS '共通権限';


--
-- Name: COLUMN sso_csv_employee.retire_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_csv_employee.retire_date IS '退職日 ';


--
-- Name: COLUMN sso_csv_employee.create_datetime; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_csv_employee.create_datetime IS '追加日時';


--
-- Name: COLUMN sso_csv_employee.scheduled; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_csv_employee.scheduled IS 'スケジュール追加済みフラグ';


--
-- Name: COLUMN sso_csv_employee.schedule_datetime; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_csv_employee.schedule_datetime IS 'スケジュール追加日時';


--
-- Name: sso_csv_employee_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE sso_csv_employee_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: sso_csv_employee_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE sso_csv_employee_id_seq OWNED BY sso_csv_employee.id;


--
-- Name: sso_csv_unit; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE sso_csv_unit (
    id integer NOT NULL,
    code character varying(255) NOT NULL,
    start_date character varying(8) NOT NULL,
    end_date character varying(8) NOT NULL,
    parent_code character varying(255) NOT NULL,
    name character varying(120) NOT NULL,
    abbr_name character varying(48),
    order_code character varying(4) NOT NULL,
    update_user_name character varying(30),
    update_datetime character varying(14),
    create_datetime timestamp with time zone,
    scheduled smallint NOT NULL,
    schedule_datetime timestamp with time zone
);


--
-- Name: TABLE sso_csv_unit; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE sso_csv_unit IS 'SSO係マスタCSVコピー';


--
-- Name: COLUMN sso_csv_unit.code; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_csv_unit.code IS '係コード';


--
-- Name: COLUMN sso_csv_unit.start_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_csv_unit.start_date IS '有効開始日';


--
-- Name: COLUMN sso_csv_unit.end_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_csv_unit.end_date IS '有効終了日';


--
-- Name: COLUMN sso_csv_unit.parent_code; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_csv_unit.parent_code IS '課コード';


--
-- Name: COLUMN sso_csv_unit.name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_csv_unit.name IS '係名';


--
-- Name: COLUMN sso_csv_unit.abbr_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_csv_unit.abbr_name IS '係略称名';


--
-- Name: COLUMN sso_csv_unit.order_code; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_csv_unit.order_code IS '係建制順コード';


--
-- Name: COLUMN sso_csv_unit.update_user_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_csv_unit.update_user_name IS '最終更新者';


--
-- Name: COLUMN sso_csv_unit.update_datetime; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_csv_unit.update_datetime IS '最終更新日時';


--
-- Name: COLUMN sso_csv_unit.create_datetime; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_csv_unit.create_datetime IS '追加日時';


--
-- Name: COLUMN sso_csv_unit.scheduled; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_csv_unit.scheduled IS 'スケジュール追加済みフラグ';


--
-- Name: COLUMN sso_csv_unit.schedule_datetime; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_csv_unit.schedule_datetime IS 'スケジュール追加日時';


--
-- Name: sso_csv_unit_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE sso_csv_unit_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: sso_csv_unit_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE sso_csv_unit_id_seq OWNED BY sso_csv_unit.id;


--
-- Name: sso_sosiki_schedule; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE sso_sosiki_schedule (
    id integer NOT NULL,
    sosiki_id character varying(255) NOT NULL,
    start_date character varying(8) NOT NULL,
    end_date character varying(8) NOT NULL,
    sosiki_parent_id character varying(255) NOT NULL,
    sosiki_name character varying(120) NOT NULL,
    sosiki_abbr_name character varying(48),
    sosiki_sort character varying(4) NOT NULL,
    update_user_name character varying(30),
    update_datetime character varying(14),
    sosiki_layer integer NOT NULL,
    create_datetime timestamp with time zone,
    method character varying(6) NOT NULL,
    due_date date NOT NULL,
    reflected smallint NOT NULL,
    reflect_datetime timestamp with time zone,
    synchronized smallint NOT NULL
);


--
-- Name: TABLE sso_sosiki_schedule; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE sso_sosiki_schedule IS 'SSO組織スケジュール';


--
-- Name: COLUMN sso_sosiki_schedule.id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_sosiki_schedule.id IS 'ID';


--
-- Name: COLUMN sso_sosiki_schedule.sosiki_id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_sosiki_schedule.sosiki_id IS '組織コード';


--
-- Name: COLUMN sso_sosiki_schedule.start_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_sosiki_schedule.start_date IS '有効開始日';


--
-- Name: COLUMN sso_sosiki_schedule.end_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_sosiki_schedule.end_date IS '有効終了日';


--
-- Name: COLUMN sso_sosiki_schedule.sosiki_parent_id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_sosiki_schedule.sosiki_parent_id IS '親組織コード';


--
-- Name: COLUMN sso_sosiki_schedule.sosiki_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_sosiki_schedule.sosiki_name IS '組織名';


--
-- Name: COLUMN sso_sosiki_schedule.sosiki_abbr_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_sosiki_schedule.sosiki_abbr_name IS '組織名略称';


--
-- Name: COLUMN sso_sosiki_schedule.sosiki_sort; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_sosiki_schedule.sosiki_sort IS '組織建制順コード';


--
-- Name: COLUMN sso_sosiki_schedule.update_user_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_sosiki_schedule.update_user_name IS '最終更新者';


--
-- Name: COLUMN sso_sosiki_schedule.update_datetime; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_sosiki_schedule.update_datetime IS '最終更新日時';


--
-- Name: COLUMN sso_sosiki_schedule.sosiki_layer; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_sosiki_schedule.sosiki_layer IS '組織階層コード';


--
-- Name: COLUMN sso_sosiki_schedule.create_datetime; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_sosiki_schedule.create_datetime IS '追加日時';


--
-- Name: COLUMN sso_sosiki_schedule.method; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_sosiki_schedule.method IS 'データ反映メソッド';


--
-- Name: COLUMN sso_sosiki_schedule.due_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_sosiki_schedule.due_date IS 'データ反映予定日';


--
-- Name: COLUMN sso_sosiki_schedule.reflected; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_sosiki_schedule.reflected IS 'データ反映済みフラグ';


--
-- Name: COLUMN sso_sosiki_schedule.reflect_datetime; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_sosiki_schedule.reflect_datetime IS 'データ反映実施日時';


--
-- Name: COLUMN sso_sosiki_schedule.synchronized; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_sosiki_schedule.synchronized IS 'マスタ同期フラグ';


--
-- Name: sso_sosiki_schedule_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE sso_sosiki_schedule_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: sso_sosiki_schedule_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE sso_sosiki_schedule_id_seq OWNED BY sso_sosiki_schedule.id;


--
-- Name: sso_user_master; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE sso_user_master (
    master_user_id character varying(100) NOT NULL,
    user_id character varying(50) NOT NULL,
    user_name character varying(80) NOT NULL,
    user_email text,
    user_role character varying(20) NOT NULL,
    sosiki_id character varying(255) NOT NULL,
    retire_date character varying(8),
    create_datetime timestamp with time zone,
    update_datetime timestamp with time zone
);


--
-- Name: TABLE sso_user_master; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE sso_user_master IS 'SSOユーザマスタ';


--
-- Name: COLUMN sso_user_master.master_user_id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_user_master.master_user_id IS '共通基盤ユーザID';


--
-- Name: COLUMN sso_user_master.user_id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_user_master.user_id IS 'SARMSユーザID';


--
-- Name: COLUMN sso_user_master.user_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_user_master.user_name IS 'ユーザ名';


--
-- Name: COLUMN sso_user_master.user_email; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_user_master.user_email IS 'メールアドレス';


--
-- Name: COLUMN sso_user_master.user_role; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_user_master.user_role IS '共通権限';


--
-- Name: COLUMN sso_user_master.sosiki_id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_user_master.sosiki_id IS '組織コード';


--
-- Name: COLUMN sso_user_master.retire_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_user_master.retire_date IS '退職日';


--
-- Name: COLUMN sso_user_master.create_datetime; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_user_master.create_datetime IS '追加日時';


--
-- Name: sso_user_schedule; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE sso_user_schedule (
    id integer NOT NULL,
    user_id character varying(100) NOT NULL,
    sosiki_id character varying(255) NOT NULL,
    user_role character varying(20) NOT NULL,
    user_name character varying(80) NOT NULL,
    user_email text,
    employee_code character varying(100) NOT NULL,
    employee_class character varying(2),
    retire_date character varying(8),
    create_datetime timestamp with time zone,
    method character varying(6) NOT NULL,
    due_date date NOT NULL,
    reflected smallint NOT NULL,
    reflect_datetime timestamp with time zone,
    synchronized smallint NOT NULL
);


--
-- Name: TABLE sso_user_schedule; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE sso_user_schedule IS 'SSOユーザスケジュール';


--
-- Name: COLUMN sso_user_schedule.id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_user_schedule.id IS 'ID';


--
-- Name: COLUMN sso_user_schedule.user_id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_user_schedule.user_id IS 'ユーザID';


--
-- Name: COLUMN sso_user_schedule.sosiki_id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_user_schedule.sosiki_id IS '組織コード';


--
-- Name: COLUMN sso_user_schedule.user_role; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_user_schedule.user_role IS '共通権限';


--
-- Name: COLUMN sso_user_schedule.user_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_user_schedule.user_name IS 'ユーザ名';


--
-- Name: COLUMN sso_user_schedule.user_email; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_user_schedule.user_email IS 'メールアドレス';


--
-- Name: COLUMN sso_user_schedule.employee_code; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_user_schedule.employee_code IS '職員番号(人給)';


--
-- Name: COLUMN sso_user_schedule.employee_class; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_user_schedule.employee_class IS '職員区分';


--
-- Name: COLUMN sso_user_schedule.retire_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_user_schedule.retire_date IS '退職日 ';


--
-- Name: COLUMN sso_user_schedule.create_datetime; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_user_schedule.create_datetime IS '追加日時';


--
-- Name: COLUMN sso_user_schedule.method; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_user_schedule.method IS 'データ反映メソッド';


--
-- Name: COLUMN sso_user_schedule.due_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_user_schedule.due_date IS 'データ反映予定日';


--
-- Name: COLUMN sso_user_schedule.reflected; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_user_schedule.reflected IS 'データ反映済みフラグ';


--
-- Name: COLUMN sso_user_schedule.reflect_datetime; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_user_schedule.reflect_datetime IS 'データ反映実施日時';


--
-- Name: COLUMN sso_user_schedule.synchronized; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN sso_user_schedule.synchronized IS 'マスタ同期フラグ';


--
-- Name: sso_user_schedule_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE sso_user_schedule_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: sso_user_schedule_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE sso_user_schedule_id_seq OWNED BY sso_user_schedule.id;


--
-- Name: tmp_hard; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE tmp_hard (
    hard_pkey integer,
    sosiki_pkey integer,
    hard_kanrino character varying(255),
    soft_installdel character varying(6),
    use_name character varying(80),
    tyoutatu text,
    bikou text,
    location_pkey integer,
    lease_or_purchase character varying(6),
    procurement_form character varying(6),
    ip_address1 character varying(255),
    ip_address2 text,
    mac_address1 character varying(255),
    mac_address2 text,
    checkout_date date,
    return_due_date date,
    return_date date,
    tyoutatu_date date,
    haiki_date date,
    version smallint,
    newkbn smallint
);


--
-- Name: tmp_hard_detail; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE tmp_hard_detail (
    inventory_pkey integer,
    hard_pkey integer,
    sosiki_pkey integer,
    sosiki_fullname character varying(255),
    hard_kanrino character varying(255),
    computername character varying(255),
    ipaddress character varying(255),
    soft_installdel character varying(6),
    soft_installdel_name character varying(100),
    use_name character varying(80),
    use_name_name character varying(100),
    soft_qty bigint,
    machinevendor character varying(255),
    machinename character varying(255),
    tyoutatu text,
    bikou text,
    location_pkey integer,
    district character varying(255),
    site character varying(255),
    floor character varying(255),
    area character varying(255),
    lease_or_purchase character varying(6),
    lease_or_purchase_name character varying(100),
    procurement_form character varying(6),
    procurement_form_name character varying(100),
    ip_address1 character varying(255),
    ip_address2 text,
    mac_address1 character varying(255),
    mac_address2 text,
    checkout_date date,
    return_due_date date,
    return_date date,
    tyoutatu_date date,
    haiki_date date,
    version smallint,
    newkbn smallint,
    sosiki_sortkey integer
);


--
-- Name: tmp_inventory; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE tmp_inventory (
    inventory_pkey integer,
    collectsource character varying(100),
    idkey character varying(255),
    invtraprecvdate timestamp with time zone,
    hardwareno character varying(255),
    group1 character varying(255),
    jyotai character varying(6),
    hikaku character varying(6),
    hsyubetu character varying(6),
    macaddress character varying(255),
    ipaddress character varying(255),
    subnetmask character varying(255),
    defaultgateway character varying(255),
    dnsserver character varying(255),
    secondarydns character varying(255),
    computername character varying(255),
    domainname character varying(255),
    workgroup character varying(255),
    userid character varying(255),
    hyoujimei character varying(255),
    yakusyoku character varying(255),
    syozoku character varying(255),
    machinevendor character varying(255),
    machinename character varying(255),
    cpuname character varying(255),
    memorysize character varying(255),
    osversion character varying(255),
    windowsservicepack character varying(255),
    ieversion character varying(255),
    virussoftname character varying(100),
    enginever character varying(20),
    patternver character varying(255),
    misiyou1 character varying(255),
    misiyou2 character varying(255),
    misiyou3 character varying(255),
    mukou_date date,
    toolversion character varying(255)
);


--
-- Name: tmp_inventory_detail; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE tmp_inventory_detail (
    inventory_pkey integer,
    collectsource character varying(100),
    idkey character varying(255),
    invtraprecvdate timestamp with time zone,
    hardwareno character varying(255),
    group1 character varying(255),
    jyotai character varying(6),
    jyotai_name character varying(100),
    hikaku character varying(6),
    hikaku_name character varying(100),
    hsyubetu character varying(6),
    hsyubetu_name character varying(100),
    macaddress character varying(255),
    ipaddress character varying(255),
    subnetmask character varying(255),
    defaultgateway character varying(255),
    dnsserver character varying(255),
    secondarydns character varying(255),
    computername character varying(255),
    domainname character varying(255),
    workgroup character varying(255),
    userid character varying(255),
    hyoujimei character varying(255),
    yakusyoku character varying(255),
    syozoku character varying(255),
    machinevendor character varying(255),
    machinename character varying(255),
    cpuname character varying(255),
    memorysize character varying(255),
    osversion character varying(255),
    windowsservicepack character varying(255),
    ieversion character varying(255),
    virussoftname character varying(100),
    enginever character varying(20),
    patternver character varying(255),
    misiyou1 character varying(255),
    misiyou2 character varying(255),
    misiyou3 character varying(255),
    mukou_date date,
    program_add_del text,
    licence_type_name text,
    toolversion character varying(255)
);


--
-- Name: tmp_inventorysoft; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE tmp_inventorysoft (
    hardwareno character varying(255),
    insapname character varying(255),
    insapno bigint,
    licence_type character varying(6)
);


--
-- Name: tmp_licence; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE tmp_licence (
    licence_pkey integer,
    sosiki_pkey integer,
    licencelist_pkey integer,
    licence_kanrino character varying(255),
    install_su integer,
    hard_pkey integer,
    licence_pkey2 integer,
    licence_no text,
    tyoutatu text,
    hokan_baitai text,
    hokan_basyo text,
    bikou text,
    tyoutatu_date date,
    haiki_date date,
    version smallint NOT NULL,
    newkbn smallint,
    kanri_sosiki_pkey integer,
    holdings_number integer,
    kanri_sosiki_flg smallint,
    license_limit_date date
);


--
-- Name: tmp_licence_detail; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE tmp_licence_detail (
    licence_pkey integer,
    licencelist_pkey integer,
    sosiki_pkey integer,
    sosiki_name character varying(80),
    sosiki_fullname character varying(255),
    licence_kanrino character varying(255),
    soft_name character varying(255),
    licence_keitai character varying(6),
    licence_keitai_name character varying(100),
    brand character varying(50),
    install_su integer,
    install_qty bigint,
    hard_kotei character varying(6),
    hard_kotei_name character varying(100),
    hard_pkey integer,
    hard_kanrino character varying(255),
    upgrade character varying(6),
    upgrade_name character varying(100),
    licence_pkey2 integer,
    up_licence_kanrino character varying(255),
    licence_no text,
    tyoutatu text,
    tokusitu_useproposal text,
    useproposal_youken text,
    hokan_baitai text,
    hokan_basyo text,
    program_add_del text,
    program_add_del_down text,
    bikou text,
    tyoutatu_date date,
    haiki_date date,
    version smallint,
    newkbn smallint,
    sosiki_sortkey integer,
    kanri_sosiki_pkey integer,
    kanri_sosiki_name character varying(80),
    kanri_sosiki_fullname character varying(255),
    kanri_sosiki_sortkey integer,
    holdings_number integer,
    kanri_sosiki_flg smallint,
    license_limit_date date,
    attached_file text
);


--
-- Name: tmp_licencelist; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE tmp_licencelist (
    licencelist_pkey integer,
    soft_name character varying(255),
    licence_keitai character varying(6),
    brand character varying(50),
    hard_kotei character varying(6),
    upgrade character varying(6),
    useproposal_kakunin character varying(6),
    tokusitu_useproposal text,
    useproposal_youken text,
    bikou text,
    upd_date date,
    upd_name character varying(80),
    yukou character varying(6),
    version smallint,
    upd_syozoku integer,
    newkbn smallint,
    permit character varying(6)
);


--
-- Name: tmp_licencelist_detail; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE tmp_licencelist_detail (
    licencelist_pkey integer,
    soft_name character varying(255),
    licence_keitai character varying(6),
    licence_keitai_name character varying(100),
    brand character varying(50),
    hard_kotei character varying(6),
    hard_kotei_name character varying(100),
    upgrade character varying(6),
    upgrade_name character varying(100),
    useproposal_kakunin character varying(6),
    useproposal_kakunin_name character varying(100),
    tokusitu_useproposal text,
    useproposal_youken text,
    bikou text,
    upd_date date,
    upd_name character varying(80),
    yukou character varying(6),
    yukou_name character varying(100),
    version smallint,
    upd_syozoku integer,
    newkbn smallint,
    permit character varying(6),
    permit_name character varying(100),
    program_add_del text,
    program_add_del_down text,
    sosiki_sortkey integer,
    sosiki_name character varying(80),
    sosiki_fullname character varying(255)
);


--
-- Name: tmp_licencelistprogram; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE tmp_licencelistprogram (
    licencelist_pkey integer,
    program_add_del character varying(255)
);


--
-- Name: tmp_licencelistprogram_down; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE tmp_licencelistprogram_down (
    licencelist_pkey integer,
    program_add_del character varying(255)
);


--
-- Name: tmp_prohibited_software; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE tmp_prohibited_software (
    id integer,
    prohibited_soft_name character varying(100),
    sosiki_pkey integer,
    delete_flag integer,
    create_user_id character varying(50),
    create_datetime timestamp with time zone,
    update_user_id character varying(50),
    update_datetime timestamp with time zone
);


--
-- Name: tmp_soft; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE tmp_soft (
    soft_pkey integer,
    hard_pkey integer,
    licence_pkey integer,
    bikou text,
    install_date date,
    uninstall_date date,
    version smallint,
    newkbn smallint,
    downgrade character varying(6)
);


--
-- Name: tmp_soft_detail; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE tmp_soft_detail (
    soft_pkey integer,
    sosiki_pkey integer,
    sosiki_name character varying(80),
    sosiki_fullname character varying(255),
    hard_pkey integer,
    hard_kanrino character varying(255),
    use_name character varying(80),
    use_name_name character varying(100),
    licence_pkey integer,
    licence_kanrino character varying(255),
    soft_name character varying(255),
    licence_keitai character varying(6),
    licence_keitai_name character varying(100),
    hard_kotei character varying(6),
    hard_kotei_name character varying(100),
    hard_pkey2 integer,
    hard_kanrino2 character varying(255),
    upgrade character varying(6),
    upgrade_name character varying(100),
    licence_pkey2 integer,
    up_licence_kanrino character varying(255),
    tokusitu_useproposal text,
    downgrade character varying(6),
    downgrade_name character varying(100),
    bikou text,
    tyoutatu_date date,
    haiki_date date,
    version smallint,
    newkbn smallint,
    hard_haiki_date date,
    sosiki_sortkey integer,
    licence_sosiki_pkey integer,
    brand character varying(50)
);


--
-- Name: tmp_sosiki_detail; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE tmp_sosiki_detail (
    sosiki_pkey integer,
    sosiki_sortkey smallint,
    syozoku_name character varying(80),
    yukou character varying(6),
    yukou_name character varying(100),
    sosiki_onpkey integer,
    station_code character varying(255),
    syozoku_code character varying(255),
    disp_full_sosiki_name character varying(255),
    s_syozoku_name character varying(80),
    s_syozoku_fullname character varying(255),
    s_sosiki_sortkey integer
);


--
-- Name: user; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE "user" (
    user_pkey integer NOT NULL,
    sosiki_pkey integer,
    user_id character varying(50) NOT NULL,
    user_name character varying(80),
    auth character varying(20) NOT NULL,
    email_ad text,
    pass character varying(32) NOT NULL,
    kessai text
);


--
-- Name: TABLE "user"; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE "user" IS 'ユーザー';


--
-- Name: COLUMN "user".user_id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN "user".user_id IS 'ユーザーID';


--
-- Name: user_detail; Type: VIEW; Schema: public; Owner: -
--

CREATE VIEW user_detail AS
 SELECT "user".sosiki_pkey,
    "user".auth,
    "user".pass,
    "user".kessai,
    "user".user_id,
    "user".email_ad,
    "user".user_name,
    "user".user_pkey,
    COALESCE((sosiki.sosiki_sortkey)::integer, 0) AS sosiki_sortkey,
    sosiki.syozoku_name AS sosiki_name,
    sosiki.syozoku_fullname AS sosiki_fullname,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '00023'::text) AND ((code.code)::text = ("user".auth)::text))) AS auth_name
   FROM (("user"
     LEFT JOIN sosiki ON (("user".sosiki_pkey = sosiki.sosiki_pkey)))
     LEFT JOIN mt_auth ON ((("user".auth)::text = (mt_auth.authority_id)::text)));


--
-- Name: user_user_pkey_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE user_user_pkey_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: user_user_pkey_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE user_user_pkey_seq OWNED BY "user".user_pkey;


--
-- Name: workflow; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE workflow (
    id integer NOT NULL,
    user_pkey integer NOT NULL,
    workflow_no character varying(100) NOT NULL,
    sinsei_date timestamp with time zone NOT NULL,
    sinseisya character varying(80) NOT NULL,
    email_ad text,
    sinseisyozoku character varying(255),
    workflow_category character varying(6) NOT NULL,
    progress character varying(6),
    application_note text,
    delete_flag integer DEFAULT 0 NOT NULL,
    create_user_pkey integer NOT NULL,
    create_datetime timestamp with time zone NOT NULL,
    update_user_pkey integer NOT NULL,
    update_datetime timestamp with time zone NOT NULL
);


--
-- Name: TABLE workflow; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE workflow IS 'ワークフロー';


--
-- Name: COLUMN workflow.id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow.id IS '内部キー';


--
-- Name: COLUMN workflow.user_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow.user_pkey IS 'ユーザーID';


--
-- Name: COLUMN workflow.workflow_no; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow.workflow_no IS '申請書No';


--
-- Name: COLUMN workflow.sinsei_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow.sinsei_date IS '申請日';


--
-- Name: COLUMN workflow.sinseisya; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow.sinseisya IS '申請者';


--
-- Name: COLUMN workflow.email_ad; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow.email_ad IS '申請者メールアドレス';


--
-- Name: COLUMN workflow.sinseisyozoku; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow.sinseisyozoku IS '申請者所属';


--
-- Name: COLUMN workflow.workflow_category; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow.workflow_category IS 'ワークフロー申請種類';


--
-- Name: COLUMN workflow.progress; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow.progress IS 'ワークフロー申請状況';


--
-- Name: COLUMN workflow.application_note; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow.application_note IS '申請時備考';


--
-- Name: COLUMN workflow.delete_flag; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow.delete_flag IS '削除フラグ';


--
-- Name: COLUMN workflow.create_user_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow.create_user_pkey IS '登録ユーザーID';


--
-- Name: COLUMN workflow.create_datetime; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow.create_datetime IS '登録日時';


--
-- Name: COLUMN workflow.update_user_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow.update_user_pkey IS '更新ユーザーID';


--
-- Name: COLUMN workflow.update_datetime; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow.update_datetime IS '更新日時';


--
-- Name: workflow_all_allow_software_list_apply; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE workflow_all_allow_software_list_apply (
    id integer NOT NULL,
    workflow_id integer NOT NULL,
    soft_name character varying(100),
    licence_keitai character varying(12),
    brand character varying(50),
    hard_kotei character varying(6),
    upgrade character varying(6),
    tokusitu_useproposal text,
    need_detail_reason text,
    bundled_product_name character varying(100),
    delete_flag integer DEFAULT 0 NOT NULL,
    create_user_pkey integer NOT NULL,
    create_datetime timestamp with time zone NOT NULL,
    update_user_pkey integer NOT NULL,
    update_datetime timestamp with time zone NOT NULL
);


--
-- Name: TABLE workflow_all_allow_software_list_apply; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE workflow_all_allow_software_list_apply IS 'ワークフロー全庁利用許可ソフトウェアリスト管理';


--
-- Name: COLUMN workflow_all_allow_software_list_apply.id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_all_allow_software_list_apply.id IS '内部キー';


--
-- Name: COLUMN workflow_all_allow_software_list_apply.workflow_id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_all_allow_software_list_apply.workflow_id IS 'ワークフロー内部キー';


--
-- Name: COLUMN workflow_all_allow_software_list_apply.soft_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_all_allow_software_list_apply.soft_name IS 'ソフトウェア名';


--
-- Name: COLUMN workflow_all_allow_software_list_apply.licence_keitai; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_all_allow_software_list_apply.licence_keitai IS 'ライセンス形態';


--
-- Name: COLUMN workflow_all_allow_software_list_apply.brand; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_all_allow_software_list_apply.brand IS 'メーカー';


--
-- Name: COLUMN workflow_all_allow_software_list_apply.hard_kotei; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_all_allow_software_list_apply.hard_kotei IS 'ハードウェア固定';


--
-- Name: COLUMN workflow_all_allow_software_list_apply.upgrade; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_all_allow_software_list_apply.upgrade IS 'アップグレード版';


--
-- Name: COLUMN workflow_all_allow_software_list_apply.tokusitu_useproposal; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_all_allow_software_list_apply.tokusitu_useproposal IS '特筆すべき使用許諾条件';


--
-- Name: COLUMN workflow_all_allow_software_list_apply.need_detail_reason; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_all_allow_software_list_apply.need_detail_reason IS '必要とする詳細な理由';


--
-- Name: COLUMN workflow_all_allow_software_list_apply.bundled_product_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_all_allow_software_list_apply.bundled_product_name IS 'バンドル製品名';


--
-- Name: COLUMN workflow_all_allow_software_list_apply.delete_flag; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_all_allow_software_list_apply.delete_flag IS '削除フラグ';


--
-- Name: COLUMN workflow_all_allow_software_list_apply.create_user_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_all_allow_software_list_apply.create_user_pkey IS '登録ユーザーID';


--
-- Name: COLUMN workflow_all_allow_software_list_apply.create_datetime; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_all_allow_software_list_apply.create_datetime IS '登録日時';


--
-- Name: COLUMN workflow_all_allow_software_list_apply.update_user_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_all_allow_software_list_apply.update_user_pkey IS '更新ユーザーID';


--
-- Name: COLUMN workflow_all_allow_software_list_apply.update_datetime; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_all_allow_software_list_apply.update_datetime IS '更新日時';


--
-- Name: workflow_all_allow_software_list_apply_detail; Type: VIEW; Schema: public; Owner: -
--

CREATE VIEW workflow_all_allow_software_list_apply_detail AS
 SELECT workflow_all_allow_software_list_apply.id,
    workflow_all_allow_software_list_apply.workflow_id,
    workflow_all_allow_software_list_apply.soft_name,
    workflow_all_allow_software_list_apply.licence_keitai,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '00005'::text) AND ((code.code)::text = (workflow_all_allow_software_list_apply.licence_keitai)::text))) AS licence_keitai_name,
    workflow_all_allow_software_list_apply.brand,
    workflow_all_allow_software_list_apply.hard_kotei,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '00004'::text) AND ((code.code)::text = (workflow_all_allow_software_list_apply.hard_kotei)::text))) AS hard_kotei_name,
    workflow_all_allow_software_list_apply.upgrade,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '00004'::text) AND ((code.code)::text = (workflow_all_allow_software_list_apply.upgrade)::text))) AS upgrade_name,
    workflow_all_allow_software_list_apply.tokusitu_useproposal,
    workflow_all_allow_software_list_apply.need_detail_reason,
    workflow_all_allow_software_list_apply.bundled_product_name,
    workflow_all_allow_software_list_apply.delete_flag,
    workflow_all_allow_software_list_apply.create_user_pkey,
    workflow_all_allow_software_list_apply.create_datetime,
    workflow_all_allow_software_list_apply.update_user_pkey,
    workflow_all_allow_software_list_apply.update_datetime
   FROM workflow_all_allow_software_list_apply;


--
-- Name: workflow_all_allow_software_list_apply_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE workflow_all_allow_software_list_apply_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: workflow_all_allow_software_list_apply_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE workflow_all_allow_software_list_apply_id_seq OWNED BY workflow_all_allow_software_list_apply.id;


--
-- Name: workflow_apply_route; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE workflow_apply_route (
    workflow_category character varying(6) NOT NULL,
    user_id character varying(100),
    sort_key smallint
);


--
-- Name: TABLE workflow_apply_route; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE workflow_apply_route IS 'ワークフロー申請経路';


--
-- Name: COLUMN workflow_apply_route.workflow_category; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_apply_route.workflow_category IS 'ワークフロー申請種類';


--
-- Name: COLUMN workflow_apply_route.user_id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_apply_route.user_id IS '申請者/承認者';


--
-- Name: COLUMN workflow_apply_route.sort_key; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_apply_route.sort_key IS '登場順';


--
-- Name: workflow_bring_pc_apply; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE workflow_bring_pc_apply (
    id integer NOT NULL,
    workflow_id integer NOT NULL,
    carry_on_date_from date NOT NULL,
    carry_on_date_to date NOT NULL,
    carry_on_purpose text NOT NULL,
    manufacturer character varying(50) NOT NULL,
    model_number character varying(160) NOT NULL,
    shape_division character varying(6) NOT NULL,
    os_information character varying(6) NOT NULL,
    owner_name character varying(80) NOT NULL,
    application_note text,
    delete_flag integer DEFAULT 0 NOT NULL,
    create_user_pkey integer NOT NULL,
    create_datetime timestamp with time zone NOT NULL,
    update_user_pkey integer NOT NULL,
    update_datetime timestamp with time zone NOT NULL
);


--
-- Name: TABLE workflow_bring_pc_apply; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE workflow_bring_pc_apply IS 'ワークフローパソコン持込申請';


--
-- Name: COLUMN workflow_bring_pc_apply.id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_bring_pc_apply.id IS '内部キー';


--
-- Name: COLUMN workflow_bring_pc_apply.workflow_id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_bring_pc_apply.workflow_id IS 'ワークフロー内部キー';


--
-- Name: COLUMN workflow_bring_pc_apply.carry_on_date_from; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_bring_pc_apply.carry_on_date_from IS '持込年月日開始';


--
-- Name: COLUMN workflow_bring_pc_apply.carry_on_date_to; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_bring_pc_apply.carry_on_date_to IS '持込年月日終了';


--
-- Name: COLUMN workflow_bring_pc_apply.carry_on_purpose; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_bring_pc_apply.carry_on_purpose IS '持ち込み目的';


--
-- Name: COLUMN workflow_bring_pc_apply.manufacturer; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_bring_pc_apply.manufacturer IS 'メーカー';


--
-- Name: COLUMN workflow_bring_pc_apply.model_number; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_bring_pc_apply.model_number IS '型番';


--
-- Name: COLUMN workflow_bring_pc_apply.shape_division; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_bring_pc_apply.shape_division IS '形状区分';


--
-- Name: COLUMN workflow_bring_pc_apply.os_information; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_bring_pc_apply.os_information IS 'OS情報';


--
-- Name: COLUMN workflow_bring_pc_apply.owner_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_bring_pc_apply.owner_name IS '所有者名';


--
-- Name: COLUMN workflow_bring_pc_apply.application_note; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_bring_pc_apply.application_note IS '申請時備考';


--
-- Name: COLUMN workflow_bring_pc_apply.delete_flag; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_bring_pc_apply.delete_flag IS '削除フラグ';


--
-- Name: COLUMN workflow_bring_pc_apply.create_user_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_bring_pc_apply.create_user_pkey IS '登録ユーザーID';


--
-- Name: COLUMN workflow_bring_pc_apply.create_datetime; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_bring_pc_apply.create_datetime IS '登録日時';


--
-- Name: COLUMN workflow_bring_pc_apply.update_user_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_bring_pc_apply.update_user_pkey IS '更新ユーザーID';


--
-- Name: COLUMN workflow_bring_pc_apply.update_datetime; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_bring_pc_apply.update_datetime IS '更新日時';


--
-- Name: workflow_bring_pc_apply_detail; Type: VIEW; Schema: public; Owner: -
--

CREATE VIEW workflow_bring_pc_apply_detail AS
 SELECT workflow_bring_pc_apply.id,
    workflow_bring_pc_apply.workflow_id,
    workflow_bring_pc_apply.carry_on_date_from,
    workflow_bring_pc_apply.carry_on_date_to,
    workflow_bring_pc_apply.carry_on_purpose,
    workflow_bring_pc_apply.manufacturer,
    workflow_bring_pc_apply.model_number,
    workflow_bring_pc_apply.shape_division,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '10010'::text) AND ((code.code)::text = (workflow_bring_pc_apply.shape_division)::text))) AS shape_division_name,
    workflow_bring_pc_apply.os_information,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '10011'::text) AND ((code.code)::text = (workflow_bring_pc_apply.os_information)::text))) AS os_information_name,
    workflow_bring_pc_apply.owner_name,
    workflow_bring_pc_apply.application_note,
    workflow_bring_pc_apply.delete_flag,
    workflow_bring_pc_apply.create_user_pkey,
    workflow_bring_pc_apply.create_datetime,
    workflow_bring_pc_apply.update_user_pkey,
    workflow_bring_pc_apply.update_datetime
   FROM workflow_bring_pc_apply;


--
-- Name: workflow_bring_pc_apply_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE workflow_bring_pc_apply_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: workflow_bring_pc_apply_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE workflow_bring_pc_apply_id_seq OWNED BY workflow_bring_pc_apply.id;


--
-- Name: workflow_common_hard; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE workflow_common_hard (
    id integer NOT NULL,
    workflow_id integer NOT NULL,
    hard_pkey integer NOT NULL,
    sosiki_pkey integer,
    hard_kanrino character varying(255),
    soft_installdel character varying(6),
    use_name character varying(80),
    tyoutatu text,
    bikou text,
    location_pkey integer,
    lease_or_purchase character varying(6),
    procurement_form character varying(6),
    ip_address1 character varying(255),
    ip_address2 text,
    mac_address1 character varying(255),
    mac_address2 text,
    checkout_date date,
    return_due_date date,
    return_date date,
    tyoutatu_date date,
    haiki_date date,
    version smallint NOT NULL,
    newkbn smallint
);


--
-- Name: TABLE workflow_common_hard; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE workflow_common_hard IS 'ワークフロー共通ハードウェア';


--
-- Name: COLUMN workflow_common_hard.id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_hard.id IS '内部キー';


--
-- Name: COLUMN workflow_common_hard.workflow_id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_hard.workflow_id IS 'ワークフロー内部キー';


--
-- Name: COLUMN workflow_common_hard.hard_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_hard.hard_pkey IS 'ハードウェア台帳内部キー';


--
-- Name: COLUMN workflow_common_hard.sosiki_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_hard.sosiki_pkey IS '組織テーブルの内部キー';


--
-- Name: COLUMN workflow_common_hard.hard_kanrino; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_hard.hard_kanrino IS 'ハードウェア管理番号';


--
-- Name: COLUMN workflow_common_hard.soft_installdel; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_hard.soft_installdel IS '使用者によるソフトウェア追加導入・削除';


--
-- Name: COLUMN workflow_common_hard.use_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_hard.use_name IS '使用形態';


--
-- Name: COLUMN workflow_common_hard.tyoutatu; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_hard.tyoutatu IS '調達情報';


--
-- Name: COLUMN workflow_common_hard.bikou; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_hard.bikou IS '備考';


--
-- Name: COLUMN workflow_common_hard.location_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_hard.location_pkey IS '設置場所コード';


--
-- Name: COLUMN workflow_common_hard.lease_or_purchase; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_hard.lease_or_purchase IS '購入／リース';


--
-- Name: COLUMN workflow_common_hard.procurement_form; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_hard.procurement_form IS '調達形態区分';


--
-- Name: COLUMN workflow_common_hard.ip_address1; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_hard.ip_address1 IS 'IPアドレス';


--
-- Name: COLUMN workflow_common_hard.ip_address2; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_hard.ip_address2 IS 'IPアドレス２';


--
-- Name: COLUMN workflow_common_hard.mac_address1; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_hard.mac_address1 IS 'MACアドレス';


--
-- Name: COLUMN workflow_common_hard.mac_address2; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_hard.mac_address2 IS 'MACアドレス２';


--
-- Name: COLUMN workflow_common_hard.checkout_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_hard.checkout_date IS '貸出日';


--
-- Name: COLUMN workflow_common_hard.return_due_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_hard.return_due_date IS '返却予定日';


--
-- Name: COLUMN workflow_common_hard.return_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_hard.return_date IS '返却日';


--
-- Name: COLUMN workflow_common_hard.tyoutatu_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_hard.tyoutatu_date IS '調達日';


--
-- Name: COLUMN workflow_common_hard.haiki_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_hard.haiki_date IS '廃棄日';


--
-- Name: COLUMN workflow_common_hard.version; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_hard.version IS 'バージョン';


--
-- Name: COLUMN workflow_common_hard.newkbn; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_hard.newkbn IS '新規区分';


--
-- Name: workflow_common_hard_hard_pkey_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE workflow_common_hard_hard_pkey_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: workflow_common_hard_hard_pkey_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE workflow_common_hard_hard_pkey_seq OWNED BY workflow_common_hard.hard_pkey;


--
-- Name: workflow_common_hard_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE workflow_common_hard_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: workflow_common_hard_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE workflow_common_hard_id_seq OWNED BY workflow_common_hard.id;


--
-- Name: workflow_common_licence; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE workflow_common_licence (
    id integer NOT NULL,
    workflow_id integer NOT NULL,
    licence_pkey integer NOT NULL,
    sosiki_pkey integer,
    licencelist_pkey integer,
    licence_kanrino character varying(255),
    install_su integer,
    hard_pkey integer,
    licence_pkey2 integer,
    licence_no text,
    tyoutatu text,
    hokan_baitai text,
    hokan_basyo text,
    bikou text,
    tyoutatu_date date,
    haiki_date date,
    version smallint NOT NULL,
    newkbn smallint,
    kanri_sosiki_pkey integer,
    holdings_number integer,
    kanri_sosiki_flg smallint,
    license_limit_date date,
    held_number character varying(255),
    procurement_division character varying(6) NOT NULL,
    instruction_number character varying(255),
    ownership character varying(6) NOT NULL,
    using_name character varying(255),
    upgrade_policy_date date
);


--
-- Name: TABLE workflow_common_licence; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE workflow_common_licence IS 'ワークフロー共通ライセンス';


--
-- Name: COLUMN workflow_common_licence.id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_licence.id IS '内部キー';


--
-- Name: COLUMN workflow_common_licence.workflow_id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_licence.workflow_id IS 'ワークフロー内部キー';


--
-- Name: COLUMN workflow_common_licence.licence_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_licence.licence_pkey IS 'ライセンス台帳内部キー';


--
-- Name: COLUMN workflow_common_licence.sosiki_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_licence.sosiki_pkey IS '組織テーブルの内部キー';


--
-- Name: COLUMN workflow_common_licence.licencelist_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_licence.licencelist_pkey IS 'ライセンス一覧表の内部キー';


--
-- Name: COLUMN workflow_common_licence.licence_kanrino; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_licence.licence_kanrino IS 'ライセンス管理番号';


--
-- Name: COLUMN workflow_common_licence.install_su; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_licence.install_su IS 'インストール可能数';


--
-- Name: COLUMN workflow_common_licence.hard_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_licence.hard_pkey IS 'ハードウェア台帳の内部キー';


--
-- Name: COLUMN workflow_common_licence.licence_pkey2; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_licence.licence_pkey2 IS 'ライセンス台帳の内部キー';


--
-- Name: COLUMN workflow_common_licence.licence_no; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_licence.licence_no IS 'ライセンス証書番号';


--
-- Name: COLUMN workflow_common_licence.tyoutatu; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_licence.tyoutatu IS '調達情報';


--
-- Name: COLUMN workflow_common_licence.hokan_baitai; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_licence.hokan_baitai IS '保管媒体';


--
-- Name: COLUMN workflow_common_licence.hokan_basyo; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_licence.hokan_basyo IS '保管場所';


--
-- Name: COLUMN workflow_common_licence.bikou; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_licence.bikou IS '備考';


--
-- Name: COLUMN workflow_common_licence.tyoutatu_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_licence.tyoutatu_date IS '調達日';


--
-- Name: COLUMN workflow_common_licence.haiki_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_licence.haiki_date IS '廃棄日';


--
-- Name: COLUMN workflow_common_licence.version; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_licence.version IS 'バージョン';


--
-- Name: COLUMN workflow_common_licence.newkbn; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_licence.newkbn IS '新規区分';


--
-- Name: COLUMN workflow_common_licence.kanri_sosiki_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_licence.kanri_sosiki_pkey IS '管理組織の組織テーブル内部キー';


--
-- Name: COLUMN workflow_common_licence.holdings_number; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_licence.holdings_number IS '管理組織のライセンス保有数';


--
-- Name: COLUMN workflow_common_licence.kanri_sosiki_flg; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_licence.kanri_sosiki_flg IS '管理所属フラグ';


--
-- Name: COLUMN workflow_common_licence.license_limit_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_licence.license_limit_date IS 'ライセンス使用期限';


--
-- Name: workflow_common_licence_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE workflow_common_licence_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: workflow_common_licence_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE workflow_common_licence_id_seq OWNED BY workflow_common_licence.id;


--
-- Name: workflow_common_licence_media; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE workflow_common_licence_media (
    id integer NOT NULL,
    workflow_id integer NOT NULL,
    licence_media_pkey integer NOT NULL,
    licence_pkey integer NOT NULL,
    licence_media_kanrino character varying(255),
    install_key character varying(255),
    admin_name character varying(80),
    original character varying(6) NOT NULL,
    source_media_kanrino character varying(255),
    set_number integer,
    storage_location character varying(255) NOT NULL,
    supplementary_information character varying(255),
    borrower_sosiki_pkey integer,
    borrower_name character varying(80),
    rental_reason character varying(255),
    contact_phone_number character varying(50),
    rental_date date,
    return_due_date date,
    return_date date,
    haiki_date date
);


--
-- Name: TABLE workflow_common_licence_media; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE workflow_common_licence_media IS 'ワークフロー共通ライセンス媒体';


--
-- Name: COLUMN workflow_common_licence_media.id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_licence_media.id IS '内部キー';


--
-- Name: COLUMN workflow_common_licence_media.workflow_id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_licence_media.workflow_id IS 'ワークフロー内部キー';


--
-- Name: COLUMN workflow_common_licence_media.licence_media_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_licence_media.licence_media_pkey IS '内部キー';


--
-- Name: COLUMN workflow_common_licence_media.licence_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_licence_media.licence_pkey IS 'ライセンス台帳の内部キー';


--
-- Name: COLUMN workflow_common_licence_media.licence_media_kanrino; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_licence_media.licence_media_kanrino IS 'ライセンス媒体管理番号';


--
-- Name: COLUMN workflow_common_licence_media.install_key; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_licence_media.install_key IS 'インストールキー';


--
-- Name: COLUMN workflow_common_licence_media.admin_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_licence_media.admin_name IS '現管理者名';


--
-- Name: COLUMN workflow_common_licence_media.original; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_licence_media.original IS '原本区分';


--
-- Name: COLUMN workflow_common_licence_media.source_media_kanrino; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_licence_media.source_media_kanrino IS '複製元媒体管理番号';


--
-- Name: COLUMN workflow_common_licence_media.set_number; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_licence_media.set_number IS 'セット枚数';


--
-- Name: COLUMN workflow_common_licence_media.storage_location; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_licence_media.storage_location IS '保管場所';


--
-- Name: COLUMN workflow_common_licence_media.supplementary_information; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_licence_media.supplementary_information IS '補足情報';


--
-- Name: COLUMN workflow_common_licence_media.borrower_sosiki_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_licence_media.borrower_sosiki_pkey IS '貸出先所属課名';


--
-- Name: COLUMN workflow_common_licence_media.borrower_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_licence_media.borrower_name IS '貸出先担当者名';


--
-- Name: COLUMN workflow_common_licence_media.rental_reason; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_licence_media.rental_reason IS '貸出理由';


--
-- Name: COLUMN workflow_common_licence_media.contact_phone_number; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_licence_media.contact_phone_number IS '連絡先番号';


--
-- Name: COLUMN workflow_common_licence_media.rental_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_licence_media.rental_date IS '貸与日';


--
-- Name: COLUMN workflow_common_licence_media.return_due_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_licence_media.return_due_date IS '返却予定日';


--
-- Name: COLUMN workflow_common_licence_media.return_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_licence_media.return_date IS '返却日';


--
-- Name: COLUMN workflow_common_licence_media.haiki_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_licence_media.haiki_date IS '廃棄日';


--
-- Name: workflow_common_licence_media_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE workflow_common_licence_media_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: workflow_common_licence_media_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE workflow_common_licence_media_id_seq OWNED BY workflow_common_licence_media.id;


--
-- Name: workflow_common_licencelist; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE workflow_common_licencelist (
    id integer NOT NULL,
    workflow_id integer NOT NULL,
    licencelist_pkey integer,
    soft_name character varying(255),
    licence_keitai character varying(6),
    brand character varying(50),
    hard_kotei character varying(6),
    upgrade character varying(6),
    useproposal_kakunin character varying(6),
    tokusitu_useproposal text,
    useproposal_youken text,
    bikou text,
    upd_date date,
    upd_name character varying(80),
    yukou character varying(6),
    upd_syozoku integer,
    permit character varying(6)
);


--
-- Name: TABLE workflow_common_licencelist; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE workflow_common_licencelist IS 'ワークフロー共通ライセンス辞書';


--
-- Name: COLUMN workflow_common_licencelist.id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_licencelist.id IS '内部キー';


--
-- Name: COLUMN workflow_common_licencelist.workflow_id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_licencelist.workflow_id IS 'ワークフロー内部キー';


--
-- Name: COLUMN workflow_common_licencelist.licencelist_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_licencelist.licencelist_pkey IS 'ライセンス辞書内部キー';


--
-- Name: COLUMN workflow_common_licencelist.soft_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_licencelist.soft_name IS 'ソフトウェア名';


--
-- Name: COLUMN workflow_common_licencelist.licence_keitai; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_licencelist.licence_keitai IS '種類';


--
-- Name: COLUMN workflow_common_licencelist.brand; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_licencelist.brand IS 'メーカー';


--
-- Name: COLUMN workflow_common_licencelist.hard_kotei; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_licencelist.hard_kotei IS 'ハードウェア固定';


--
-- Name: COLUMN workflow_common_licencelist.upgrade; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_licencelist.upgrade IS 'アップグレード版';


--
-- Name: COLUMN workflow_common_licencelist.useproposal_kakunin; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_licencelist.useproposal_kakunin IS '使用許諾条件の確認';


--
-- Name: COLUMN workflow_common_licencelist.tokusitu_useproposal; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_licencelist.tokusitu_useproposal IS '特筆すべき使用許諾条件';


--
-- Name: COLUMN workflow_common_licencelist.useproposal_youken; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_licencelist.useproposal_youken IS '使用許諾証明要件';


--
-- Name: COLUMN workflow_common_licencelist.bikou; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_licencelist.bikou IS '備考';


--
-- Name: COLUMN workflow_common_licencelist.upd_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_licencelist.upd_date IS '更新日';


--
-- Name: COLUMN workflow_common_licencelist.upd_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_licencelist.upd_name IS '更新者氏名';


--
-- Name: COLUMN workflow_common_licencelist.yukou; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_licencelist.yukou IS '有効';


--
-- Name: COLUMN workflow_common_licencelist.upd_syozoku; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_licencelist.upd_syozoku IS '更新者所属';


--
-- Name: COLUMN workflow_common_licencelist.permit; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_licencelist.permit IS 'ライセンス台帳での表示';


--
-- Name: workflow_common_licencelist_downgrade_program; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE workflow_common_licencelist_downgrade_program (
    id integer NOT NULL,
    workflow_id integer NOT NULL,
    licencelist_pkey integer,
    program_add_del character varying(255)
);


--
-- Name: TABLE workflow_common_licencelist_downgrade_program; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE workflow_common_licencelist_downgrade_program IS 'ワークフロー共通ライセンス辞書ダウングレード使用時のプログラム';


--
-- Name: COLUMN workflow_common_licencelist_downgrade_program.id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_licencelist_downgrade_program.id IS '内部キー';


--
-- Name: COLUMN workflow_common_licencelist_downgrade_program.workflow_id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_licencelist_downgrade_program.workflow_id IS 'ワークフロー内部キー';


--
-- Name: COLUMN workflow_common_licencelist_downgrade_program.licencelist_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_licencelist_downgrade_program.licencelist_pkey IS 'ライセンス辞書内部キー';


--
-- Name: COLUMN workflow_common_licencelist_downgrade_program.program_add_del; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_licencelist_downgrade_program.program_add_del IS 'ダウングレード使用時のプログラムと機能';


--
-- Name: workflow_common_licencelist_downgrade_program_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE workflow_common_licencelist_downgrade_program_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: workflow_common_licencelist_downgrade_program_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE workflow_common_licencelist_downgrade_program_id_seq OWNED BY workflow_common_licencelist_downgrade_program.id;


--
-- Name: workflow_common_licencelist_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE workflow_common_licencelist_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: workflow_common_licencelist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE workflow_common_licencelist_id_seq OWNED BY workflow_common_licencelist.id;


--
-- Name: workflow_common_licencelist_program; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE workflow_common_licencelist_program (
    id integer NOT NULL,
    workflow_id integer NOT NULL,
    licencelist_pkey integer,
    program_add_del character varying(255)
);


--
-- Name: TABLE workflow_common_licencelist_program; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE workflow_common_licencelist_program IS 'ワークフロー共通ライセンス辞書プログラムと機能';


--
-- Name: COLUMN workflow_common_licencelist_program.id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_licencelist_program.id IS '内部キー';


--
-- Name: COLUMN workflow_common_licencelist_program.workflow_id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_licencelist_program.workflow_id IS 'ワークフロー内部キー';


--
-- Name: COLUMN workflow_common_licencelist_program.licencelist_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_licencelist_program.licencelist_pkey IS 'ライセンス辞書内部キー';


--
-- Name: COLUMN workflow_common_licencelist_program.program_add_del; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_licencelist_program.program_add_del IS 'プログラムと機能';


--
-- Name: workflow_common_licencelist_program_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE workflow_common_licencelist_program_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: workflow_common_licencelist_program_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE workflow_common_licencelist_program_id_seq OWNED BY workflow_common_licencelist_program.id;


--
-- Name: workflow_common_soft; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE workflow_common_soft (
    id integer NOT NULL,
    workflow_id integer NOT NULL,
    soft_pkey integer NOT NULL,
    hard_pkey integer,
    licence_pkey integer,
    bikou text,
    install_date date,
    uninstall_date date,
    version smallint NOT NULL,
    newkbn smallint,
    downgrade character varying(6)
);


--
-- Name: TABLE workflow_common_soft; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE workflow_common_soft IS 'ワークフロー共通ソフトウェア';


--
-- Name: COLUMN workflow_common_soft.id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_soft.id IS '内部キー';


--
-- Name: COLUMN workflow_common_soft.workflow_id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_soft.workflow_id IS 'ワークフロー内部キー';


--
-- Name: COLUMN workflow_common_soft.soft_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_soft.soft_pkey IS 'ソフトウェア内部キー';


--
-- Name: COLUMN workflow_common_soft.hard_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_soft.hard_pkey IS 'ハードウェア台帳の内部キー';


--
-- Name: COLUMN workflow_common_soft.licence_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_soft.licence_pkey IS 'ライセンス台帳の内部キー';


--
-- Name: COLUMN workflow_common_soft.bikou; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_soft.bikou IS '備考';


--
-- Name: COLUMN workflow_common_soft.install_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_soft.install_date IS '導入日';


--
-- Name: COLUMN workflow_common_soft.uninstall_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_soft.uninstall_date IS '削除日';


--
-- Name: COLUMN workflow_common_soft.version; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_soft.version IS 'バージョン';


--
-- Name: COLUMN workflow_common_soft.newkbn; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_soft.newkbn IS '新規区分';


--
-- Name: COLUMN workflow_common_soft.downgrade; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_common_soft.downgrade IS 'ダウングレード区分';


--
-- Name: workflow_common_soft_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE workflow_common_soft_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: workflow_common_soft_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE workflow_common_soft_id_seq OWNED BY workflow_common_soft.id;


--
-- Name: workflow_detail; Type: VIEW; Schema: public; Owner: -
--

CREATE VIEW workflow_detail AS
 SELECT workflow.id,
    workflow.user_pkey,
    workflow.workflow_no,
    workflow.workflow_category,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '10006'::text) AND ((code.code)::text = (workflow.workflow_category)::text))) AS workflow_category_name,
    workflow.sinseisyozoku,
    sosiki.syozoku_name,
    sosiki.syozoku_fullname AS sosiki_fullname,
    sosiki.sosiki_sortkey,
    workflow.sinseisya,
    workflow.sinsei_date,
    workflow.email_ad,
    workflow.progress,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '10007'::text) AND ((code.code)::text = (workflow.progress)::text))) AS progress_name,
    workflow.application_note,
        CASE
            WHEN (((workflow.progress)::text = 'd005'::text) OR ((workflow.progress)::text = 'd006'::text)) THEN workflow.update_datetime
            ELSE NULL::timestamp with time zone
        END AS max_syonin_date,
    workflow.delete_flag,
    workflow.create_user_pkey,
    user2.user_name AS create_user_name,
    workflow.create_datetime,
    workflow.update_user_pkey,
    user3.user_name AS update_user_name,
    workflow.update_datetime
   FROM (((workflow
     LEFT JOIN sosiki ON (((workflow.sinseisyozoku)::text = (sosiki.sosiki_pkey)::text)))
     LEFT JOIN "user" user2 ON ((workflow.create_user_pkey = user2.user_pkey)))
     LEFT JOIN "user" user3 ON ((workflow.update_user_pkey = user3.user_pkey)))
  WHERE (workflow.delete_flag = 0);


--
-- Name: workflow_hardware_disposal_apply; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE workflow_hardware_disposal_apply (
    id integer NOT NULL,
    workflow_id integer NOT NULL,
    hard_pkey integer NOT NULL,
    sosiki_pkey integer,
    hard_kanrino character varying(255),
    soft_installdel character varying(6),
    use_name character varying(80),
    tyoutatu text,
    bikou text,
    tyoutatu_date date,
    haiki_date date,
    version smallint NOT NULL,
    newkbn smallint,
    lease_limit_date date,
    hardware_type character varying(6) NOT NULL,
    special_sys_cd character varying(5),
    ownership character varying(6) NOT NULL,
    control_number character varying(255),
    treasurer_class character varying(6) NOT NULL,
    place_cd character varying(8) NOT NULL,
    location text,
    equipment_class character varying(6) NOT NULL,
    mac_address character varying(255),
    return_date date,
    instruction_number character varying(255),
    admin_comment text,
    cpu_core_number text,
    virtual_description text,
    use_class character varying(6),
    delete_flag integer DEFAULT 0 NOT NULL,
    create_user_pkey integer NOT NULL,
    create_datetime timestamp with time zone NOT NULL,
    update_user_pkey integer NOT NULL,
    update_datetime timestamp with time zone NOT NULL,
    device_control character varying(6),
    takeout character varying(6),
    takeout_start_date date,
    takeout_end_date date
);


--
-- Name: TABLE workflow_hardware_disposal_apply; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE workflow_hardware_disposal_apply IS 'ワークフローハードウェア廃棄申請';


--
-- Name: COLUMN workflow_hardware_disposal_apply.id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_disposal_apply.id IS '内部キー';


--
-- Name: COLUMN workflow_hardware_disposal_apply.workflow_id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_disposal_apply.workflow_id IS 'ワークフロー内部キー';


--
-- Name: COLUMN workflow_hardware_disposal_apply.hard_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_disposal_apply.hard_pkey IS 'ハードウェア内部キー';


--
-- Name: COLUMN workflow_hardware_disposal_apply.sosiki_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_disposal_apply.sosiki_pkey IS '組織テーブルの内部キー';


--
-- Name: COLUMN workflow_hardware_disposal_apply.hard_kanrino; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_disposal_apply.hard_kanrino IS 'ハードウェア管理番号';


--
-- Name: COLUMN workflow_hardware_disposal_apply.soft_installdel; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_disposal_apply.soft_installdel IS '使用者によるソフトウェア追加導入・削除';


--
-- Name: COLUMN workflow_hardware_disposal_apply.use_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_disposal_apply.use_name IS '使用者名';


--
-- Name: COLUMN workflow_hardware_disposal_apply.tyoutatu; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_disposal_apply.tyoutatu IS '調達情報';


--
-- Name: COLUMN workflow_hardware_disposal_apply.bikou; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_disposal_apply.bikou IS '備考';


--
-- Name: COLUMN workflow_hardware_disposal_apply.tyoutatu_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_disposal_apply.tyoutatu_date IS '調達日';


--
-- Name: COLUMN workflow_hardware_disposal_apply.haiki_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_disposal_apply.haiki_date IS '廃棄日';


--
-- Name: COLUMN workflow_hardware_disposal_apply.version; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_disposal_apply.version IS 'バージョン';


--
-- Name: COLUMN workflow_hardware_disposal_apply.newkbn; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_disposal_apply.newkbn IS '新規区分';


--
-- Name: COLUMN workflow_hardware_disposal_apply.lease_limit_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_disposal_apply.lease_limit_date IS 'リース期限';


--
-- Name: COLUMN workflow_hardware_disposal_apply.hardware_type; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_disposal_apply.hardware_type IS 'ハードウェア種別';


--
-- Name: COLUMN workflow_hardware_disposal_apply.special_sys_cd; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_disposal_apply.special_sys_cd IS '情報システムコード';


--
-- Name: COLUMN workflow_hardware_disposal_apply.ownership; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_disposal_apply.ownership IS '所有権';


--
-- Name: COLUMN workflow_hardware_disposal_apply.control_number; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_disposal_apply.control_number IS '専用の管理番号';


--
-- Name: COLUMN workflow_hardware_disposal_apply.treasurer_class; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_disposal_apply.treasurer_class IS '会計種別';


--
-- Name: COLUMN workflow_hardware_disposal_apply.place_cd; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_disposal_apply.place_cd IS '設置場所コード';


--
-- Name: COLUMN workflow_hardware_disposal_apply.location; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_disposal_apply.location IS '設置場所（任意）';


--
-- Name: COLUMN workflow_hardware_disposal_apply.equipment_class; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_disposal_apply.equipment_class IS '機器種別';


--
-- Name: COLUMN workflow_hardware_disposal_apply.mac_address; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_disposal_apply.mac_address IS 'MACアドレス';


--
-- Name: COLUMN workflow_hardware_disposal_apply.return_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_disposal_apply.return_date IS '返却日';


--
-- Name: COLUMN workflow_hardware_disposal_apply.instruction_number; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_disposal_apply.instruction_number IS '支出命令番号';


--
-- Name: COLUMN workflow_hardware_disposal_apply.admin_comment; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_disposal_apply.admin_comment IS '管理者コメント';


--
-- Name: COLUMN workflow_hardware_disposal_apply.cpu_core_number; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_disposal_apply.cpu_core_number IS 'CPU及びコア数';


--
-- Name: COLUMN workflow_hardware_disposal_apply.virtual_description; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_disposal_apply.virtual_description IS '仮想環境説明文';


--
-- Name: COLUMN workflow_hardware_disposal_apply.use_class; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_disposal_apply.use_class IS '用途区分';


--
-- Name: COLUMN workflow_hardware_disposal_apply.delete_flag; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_disposal_apply.delete_flag IS '削除フラグ';


--
-- Name: COLUMN workflow_hardware_disposal_apply.create_user_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_disposal_apply.create_user_pkey IS '登録ユーザーID';


--
-- Name: COLUMN workflow_hardware_disposal_apply.create_datetime; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_disposal_apply.create_datetime IS '登録日時';


--
-- Name: COLUMN workflow_hardware_disposal_apply.update_user_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_disposal_apply.update_user_pkey IS '更新ユーザーID';


--
-- Name: COLUMN workflow_hardware_disposal_apply.update_datetime; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_disposal_apply.update_datetime IS '更新日時';


--
-- Name: COLUMN workflow_hardware_disposal_apply.device_control; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_disposal_apply.device_control IS 'デバイス制御';


--
-- Name: COLUMN workflow_hardware_disposal_apply.takeout; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_disposal_apply.takeout IS '持ち出し';


--
-- Name: COLUMN workflow_hardware_disposal_apply.takeout_start_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_disposal_apply.takeout_start_date IS '持ち出し開始日';


--
-- Name: COLUMN workflow_hardware_disposal_apply.takeout_end_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_disposal_apply.takeout_end_date IS '持ち出し終了日';


--
-- Name: workflow_hardware_disposal_apply_detail; Type: VIEW; Schema: public; Owner: -
--

CREATE VIEW workflow_hardware_disposal_apply_detail AS
 SELECT workflow_hardware_disposal_apply.id,
    workflow_hardware_disposal_apply.workflow_id,
    workflow_hardware_disposal_apply.sosiki_pkey,
    sosiki.syozoku_name AS sosiki_name,
    sosiki.syozoku_fullname AS sosiki_fullname,
    COALESCE((sosiki.sosiki_sortkey)::integer, 0) AS sosiki_sortkey,
    workflow_hardware_disposal_apply.hard_pkey,
    workflow_hardware_disposal_apply.hard_kanrino,
    workflow_hardware_disposal_apply.soft_installdel,
    workflow_hardware_disposal_apply.use_name,
    workflow_hardware_disposal_apply.tyoutatu,
    workflow_hardware_disposal_apply.bikou,
    workflow_hardware_disposal_apply.tyoutatu_date,
    workflow_hardware_disposal_apply.haiki_date,
    workflow_hardware_disposal_apply.version,
    workflow_hardware_disposal_apply.newkbn,
    workflow_hardware_disposal_apply.lease_limit_date,
    workflow_hardware_disposal_apply.hardware_type,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '10024'::text) AND ((code.code)::text = (workflow_hardware_disposal_apply.hardware_type)::text))) AS hardware_type_name,
    workflow_hardware_disposal_apply.special_sys_cd,
    ( SELECT (((info_system_code.special_sys_cd)::text || ' '::text) || (COALESCE(info_system_code.special_sys_nm, ''::character varying))::text)
           FROM info_system_code
          WHERE ((info_system_code.special_sys_cd)::text = (workflow_hardware_disposal_apply.special_sys_cd)::text)) AS special_sys_cd_name,
    workflow_hardware_disposal_apply.ownership,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '10025'::text) AND ((code.code)::text = (workflow_hardware_disposal_apply.ownership)::text))) AS ownership_name,
    workflow_hardware_disposal_apply.control_number,
    workflow_hardware_disposal_apply.treasurer_class,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '10026'::text) AND ((code.code)::text = (workflow_hardware_disposal_apply.treasurer_class)::text))) AS treasurer_class_name,
    workflow_hardware_disposal_apply.place_cd,
    ( SELECT ((((((location_code.place_cd)::text || ' '::text) || (COALESCE(location_code.bureau, ''::character varying))::text) || COALESCE(('/'::text || (location_code.department)::text), ''::text)) || COALESCE(('/'::text || (location_code.division)::text), ''::text)) || COALESCE(('/'::text || (location_code.subsection)::text), ''::text))
           FROM location_code
          WHERE ((location_code.place_cd)::text = (workflow_hardware_disposal_apply.place_cd)::text)) AS place_cd_name,
    workflow_hardware_disposal_apply.location,
    workflow_hardware_disposal_apply.equipment_class,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '10027'::text) AND ((code.code)::text = (workflow_hardware_disposal_apply.equipment_class)::text))) AS equipment_class_name,
    workflow_hardware_disposal_apply.mac_address,
    workflow_hardware_disposal_apply.return_date,
    workflow_hardware_disposal_apply.instruction_number,
    workflow_hardware_disposal_apply.admin_comment,
    workflow_hardware_disposal_apply.cpu_core_number,
    workflow_hardware_disposal_apply.virtual_description,
    workflow_hardware_disposal_apply.use_class,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '10030'::text) AND ((code.code)::text = (workflow_hardware_disposal_apply.use_class)::text))) AS use_class_name,
    workflow_hardware_disposal_apply.delete_flag,
    workflow_hardware_disposal_apply.create_user_pkey,
    user2.user_name AS create_user_name,
    workflow_hardware_disposal_apply.create_datetime,
    workflow_hardware_disposal_apply.update_user_pkey,
    user3.user_name AS update_user_name,
    workflow_hardware_disposal_apply.update_datetime,
    ( SELECT workflow.application_note
           FROM workflow
          WHERE (workflow_hardware_disposal_apply.workflow_id = workflow.id)
         LIMIT 1) AS application_note,
    workflow_hardware_disposal_apply.device_control,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '10042'::text) AND ((code.code)::text = (workflow_hardware_disposal_apply.device_control)::text))) AS device_control_name,
    workflow_hardware_disposal_apply.takeout,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '10043'::text) AND ((code.code)::text = (workflow_hardware_disposal_apply.takeout)::text))) AS takeout_name,
    workflow_hardware_disposal_apply.takeout_start_date,
    workflow_hardware_disposal_apply.takeout_end_date
   FROM (((workflow_hardware_disposal_apply
     LEFT JOIN sosiki ON (((workflow_hardware_disposal_apply.sosiki_pkey)::text = (sosiki.sosiki_pkey)::text)))
     LEFT JOIN "user" user2 ON ((workflow_hardware_disposal_apply.create_user_pkey = user2.user_pkey)))
     LEFT JOIN "user" user3 ON ((workflow_hardware_disposal_apply.update_user_pkey = user3.user_pkey)));


--
-- Name: workflow_hardware_disposal_apply_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE workflow_hardware_disposal_apply_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: workflow_hardware_disposal_apply_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE workflow_hardware_disposal_apply_id_seq OWNED BY workflow_hardware_disposal_apply.id;


--
-- Name: workflow_hardware_information_change_apply; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE workflow_hardware_information_change_apply (
    id integer NOT NULL,
    workflow_id integer NOT NULL,
    hard_pkey integer NOT NULL,
    sosiki_pkey integer,
    hard_kanrino character varying(255),
    soft_installdel character varying(6),
    use_name character varying(80),
    tyoutatu text,
    bikou text,
    tyoutatu_date date,
    haiki_date date,
    version smallint NOT NULL,
    newkbn smallint,
    lease_limit_date date,
    hardware_type character varying(6) NOT NULL,
    special_sys_cd character varying(5),
    ownership character varying(6) NOT NULL,
    control_number character varying(255),
    treasurer_class character varying(6) NOT NULL,
    place_cd character varying(8) NOT NULL,
    location text,
    equipment_class character varying(6) NOT NULL,
    mac_address character varying(255),
    return_date date,
    instruction_number character varying(255),
    admin_comment text,
    cpu_core_number text,
    virtual_description text,
    use_class character varying(6),
    delete_flag integer DEFAULT 0 NOT NULL,
    create_user_pkey integer NOT NULL,
    create_datetime timestamp with time zone NOT NULL,
    update_user_pkey integer NOT NULL,
    update_datetime timestamp with time zone NOT NULL,
    device_control character varying(6),
    takeout character varying(6),
    takeout_start_date date,
    takeout_end_date date
);


--
-- Name: TABLE workflow_hardware_information_change_apply; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE workflow_hardware_information_change_apply IS 'ワークフローハードウェア情報変更申請';


--
-- Name: COLUMN workflow_hardware_information_change_apply.id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_information_change_apply.id IS '内部キー';


--
-- Name: COLUMN workflow_hardware_information_change_apply.workflow_id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_information_change_apply.workflow_id IS 'ワークフロー内部キー';


--
-- Name: COLUMN workflow_hardware_information_change_apply.hard_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_information_change_apply.hard_pkey IS 'ハードウェア内部キー';


--
-- Name: COLUMN workflow_hardware_information_change_apply.sosiki_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_information_change_apply.sosiki_pkey IS '組織テーブルの内部キー';


--
-- Name: COLUMN workflow_hardware_information_change_apply.hard_kanrino; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_information_change_apply.hard_kanrino IS 'ハードウェア管理番号';


--
-- Name: COLUMN workflow_hardware_information_change_apply.soft_installdel; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_information_change_apply.soft_installdel IS '使用者によるソフトウェア追加導入・削除';


--
-- Name: COLUMN workflow_hardware_information_change_apply.use_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_information_change_apply.use_name IS '使用者名';


--
-- Name: COLUMN workflow_hardware_information_change_apply.tyoutatu; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_information_change_apply.tyoutatu IS '調達情報';


--
-- Name: COLUMN workflow_hardware_information_change_apply.bikou; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_information_change_apply.bikou IS '備考';


--
-- Name: COLUMN workflow_hardware_information_change_apply.tyoutatu_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_information_change_apply.tyoutatu_date IS '調達日';


--
-- Name: COLUMN workflow_hardware_information_change_apply.haiki_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_information_change_apply.haiki_date IS '廃棄日';


--
-- Name: COLUMN workflow_hardware_information_change_apply.version; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_information_change_apply.version IS 'バージョン';


--
-- Name: COLUMN workflow_hardware_information_change_apply.newkbn; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_information_change_apply.newkbn IS '新規区分';


--
-- Name: COLUMN workflow_hardware_information_change_apply.lease_limit_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_information_change_apply.lease_limit_date IS 'リース期限';


--
-- Name: COLUMN workflow_hardware_information_change_apply.hardware_type; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_information_change_apply.hardware_type IS 'ハードウェア種別';


--
-- Name: COLUMN workflow_hardware_information_change_apply.special_sys_cd; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_information_change_apply.special_sys_cd IS '情報システムコード';


--
-- Name: COLUMN workflow_hardware_information_change_apply.ownership; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_information_change_apply.ownership IS '所有権';


--
-- Name: COLUMN workflow_hardware_information_change_apply.control_number; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_information_change_apply.control_number IS '専用の管理番号';


--
-- Name: COLUMN workflow_hardware_information_change_apply.treasurer_class; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_information_change_apply.treasurer_class IS '会計種別';


--
-- Name: COLUMN workflow_hardware_information_change_apply.place_cd; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_information_change_apply.place_cd IS '設置場所コード';


--
-- Name: COLUMN workflow_hardware_information_change_apply.location; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_information_change_apply.location IS '設置場所（任意）';


--
-- Name: COLUMN workflow_hardware_information_change_apply.equipment_class; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_information_change_apply.equipment_class IS '機器種別';


--
-- Name: COLUMN workflow_hardware_information_change_apply.mac_address; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_information_change_apply.mac_address IS 'MACアドレス';


--
-- Name: COLUMN workflow_hardware_information_change_apply.return_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_information_change_apply.return_date IS '返却日';


--
-- Name: COLUMN workflow_hardware_information_change_apply.instruction_number; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_information_change_apply.instruction_number IS '支出命令番号';


--
-- Name: COLUMN workflow_hardware_information_change_apply.admin_comment; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_information_change_apply.admin_comment IS '管理者コメント';


--
-- Name: COLUMN workflow_hardware_information_change_apply.cpu_core_number; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_information_change_apply.cpu_core_number IS 'CPU及びコア数';


--
-- Name: COLUMN workflow_hardware_information_change_apply.virtual_description; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_information_change_apply.virtual_description IS '仮想環境説明文';


--
-- Name: COLUMN workflow_hardware_information_change_apply.use_class; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_information_change_apply.use_class IS '用途区分';


--
-- Name: COLUMN workflow_hardware_information_change_apply.delete_flag; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_information_change_apply.delete_flag IS '削除フラグ';


--
-- Name: COLUMN workflow_hardware_information_change_apply.create_user_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_information_change_apply.create_user_pkey IS '登録ユーザーID';


--
-- Name: COLUMN workflow_hardware_information_change_apply.create_datetime; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_information_change_apply.create_datetime IS '登録日時';


--
-- Name: COLUMN workflow_hardware_information_change_apply.update_user_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_information_change_apply.update_user_pkey IS '更新ユーザーID';


--
-- Name: COLUMN workflow_hardware_information_change_apply.update_datetime; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_information_change_apply.update_datetime IS '更新日時';


--
-- Name: COLUMN workflow_hardware_information_change_apply.device_control; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_information_change_apply.device_control IS 'デバイス制御';


--
-- Name: COLUMN workflow_hardware_information_change_apply.takeout; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_information_change_apply.takeout IS '持ち出し';


--
-- Name: COLUMN workflow_hardware_information_change_apply.takeout_start_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_information_change_apply.takeout_start_date IS '持ち出し開始日';


--
-- Name: COLUMN workflow_hardware_information_change_apply.takeout_end_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_information_change_apply.takeout_end_date IS '持ち出し終了日';


--
-- Name: workflow_hardware_information_change_apply_detail; Type: VIEW; Schema: public; Owner: -
--

CREATE VIEW workflow_hardware_information_change_apply_detail AS
 SELECT workflow_hardware_information_change_apply.id,
    workflow_hardware_information_change_apply.workflow_id,
    workflow_hardware_information_change_apply.sosiki_pkey,
    sosiki.syozoku_name AS sosiki_name,
    sosiki.syozoku_fullname AS sosiki_fullname,
    COALESCE((sosiki.sosiki_sortkey)::integer, 0) AS sosiki_sortkey,
    workflow_hardware_information_change_apply.hard_pkey,
    workflow_hardware_information_change_apply.hard_kanrino,
    workflow_hardware_information_change_apply.soft_installdel,
    workflow_hardware_information_change_apply.use_name,
    workflow_hardware_information_change_apply.tyoutatu,
    workflow_hardware_information_change_apply.bikou,
    workflow_hardware_information_change_apply.tyoutatu_date,
    workflow_hardware_information_change_apply.haiki_date,
    workflow_hardware_information_change_apply.version,
    workflow_hardware_information_change_apply.newkbn,
    workflow_hardware_information_change_apply.lease_limit_date,
    workflow_hardware_information_change_apply.hardware_type,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '10024'::text) AND ((code.code)::text = (workflow_hardware_information_change_apply.hardware_type)::text))) AS hardware_type_name,
    workflow_hardware_information_change_apply.special_sys_cd,
    ( SELECT (((info_system_code.special_sys_cd)::text || ' '::text) || (COALESCE(info_system_code.special_sys_nm, ''::character varying))::text)
           FROM info_system_code
          WHERE ((info_system_code.special_sys_cd)::text = (workflow_hardware_information_change_apply.special_sys_cd)::text)) AS special_sys_cd_name,
    workflow_hardware_information_change_apply.ownership,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '10025'::text) AND ((code.code)::text = (workflow_hardware_information_change_apply.ownership)::text))) AS ownership_name,
    workflow_hardware_information_change_apply.control_number,
    workflow_hardware_information_change_apply.treasurer_class,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '10026'::text) AND ((code.code)::text = (workflow_hardware_information_change_apply.treasurer_class)::text))) AS treasurer_class_name,
    workflow_hardware_information_change_apply.place_cd,
    ( SELECT ((((((location_code.place_cd)::text || ' '::text) || (COALESCE(location_code.bureau, ''::character varying))::text) || COALESCE(('/'::text || (location_code.department)::text), ''::text)) || COALESCE(('/'::text || (location_code.division)::text), ''::text)) || COALESCE(('/'::text || (location_code.subsection)::text), ''::text))
           FROM location_code
          WHERE ((location_code.place_cd)::text = (workflow_hardware_information_change_apply.place_cd)::text)) AS place_cd_name,
    workflow_hardware_information_change_apply.location,
    workflow_hardware_information_change_apply.equipment_class,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '10027'::text) AND ((code.code)::text = (workflow_hardware_information_change_apply.equipment_class)::text))) AS equipment_class_name,
    workflow_hardware_information_change_apply.mac_address,
    workflow_hardware_information_change_apply.return_date,
    workflow_hardware_information_change_apply.instruction_number,
    workflow_hardware_information_change_apply.admin_comment,
    workflow_hardware_information_change_apply.cpu_core_number,
    workflow_hardware_information_change_apply.virtual_description,
    workflow_hardware_information_change_apply.use_class,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '10030'::text) AND ((code.code)::text = (workflow_hardware_information_change_apply.use_class)::text))) AS use_class_name,
    workflow_hardware_information_change_apply.delete_flag,
    workflow_hardware_information_change_apply.create_user_pkey,
    user2.user_name AS create_user_name,
    workflow_hardware_information_change_apply.create_datetime,
    workflow_hardware_information_change_apply.update_user_pkey,
    user3.user_name AS update_user_name,
    workflow_hardware_information_change_apply.update_datetime,
    ( SELECT workflow.application_note
           FROM workflow
          WHERE (workflow_hardware_information_change_apply.workflow_id = workflow.id)
         LIMIT 1) AS application_note,
    workflow_hardware_information_change_apply.device_control,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '10042'::text) AND ((code.code)::text = (workflow_hardware_information_change_apply.device_control)::text))) AS device_control_name,
    workflow_hardware_information_change_apply.takeout,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '10043'::text) AND ((code.code)::text = (workflow_hardware_information_change_apply.takeout)::text))) AS takeout_name,
    workflow_hardware_information_change_apply.takeout_start_date,
    workflow_hardware_information_change_apply.takeout_end_date
   FROM (((workflow_hardware_information_change_apply
     LEFT JOIN sosiki ON (((workflow_hardware_information_change_apply.sosiki_pkey)::text = (sosiki.sosiki_pkey)::text)))
     LEFT JOIN "user" user2 ON ((workflow_hardware_information_change_apply.create_user_pkey = user2.user_pkey)))
     LEFT JOIN "user" user3 ON ((workflow_hardware_information_change_apply.update_user_pkey = user3.user_pkey)));


--
-- Name: workflow_hardware_information_change_apply_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE workflow_hardware_information_change_apply_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: workflow_hardware_information_change_apply_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE workflow_hardware_information_change_apply_id_seq OWNED BY workflow_hardware_information_change_apply.id;


--
-- Name: workflow_hardware_lending_apply; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE workflow_hardware_lending_apply (
    id integer NOT NULL,
    workflow_id integer NOT NULL,
    hard_pkey integer,
    sosiki_pkey integer,
    sosiki_fullname character varying(255),
    hardware_quantity smallint,
    apply_reason text,
    phone_number character varying(255),
    use_name character varying(80),
    use_name_name character varying(100),
    return_due_date date,
    delete_flag integer DEFAULT 0 NOT NULL,
    create_user_pkey integer NOT NULL,
    create_user_name character varying(100),
    create_datetime timestamp with time zone NOT NULL,
    update_user_pkey integer NOT NULL,
    update_user_name character varying(100),
    update_datetime timestamp with time zone NOT NULL
);


--
-- Name: COLUMN workflow_hardware_lending_apply.id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_lending_apply.id IS '内部キー';


--
-- Name: COLUMN workflow_hardware_lending_apply.workflow_id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_lending_apply.workflow_id IS 'ワークフロー内部キー';


--
-- Name: COLUMN workflow_hardware_lending_apply.hard_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_lending_apply.hard_pkey IS 'ハードウェア台帳内部キー';


--
-- Name: COLUMN workflow_hardware_lending_apply.sosiki_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_lending_apply.sosiki_pkey IS '組織内部キー';


--
-- Name: COLUMN workflow_hardware_lending_apply.sosiki_fullname; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_lending_apply.sosiki_fullname IS '組織フル名称';


--
-- Name: COLUMN workflow_hardware_lending_apply.hardware_quantity; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_lending_apply.hardware_quantity IS '数量';


--
-- Name: COLUMN workflow_hardware_lending_apply.apply_reason; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_lending_apply.apply_reason IS '申請理由';


--
-- Name: COLUMN workflow_hardware_lending_apply.phone_number; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_lending_apply.phone_number IS '電話番号';


--
-- Name: COLUMN workflow_hardware_lending_apply.use_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_lending_apply.use_name IS '使用形態';


--
-- Name: COLUMN workflow_hardware_lending_apply.use_name_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_lending_apply.use_name_name IS '使用形態__名称';


--
-- Name: COLUMN workflow_hardware_lending_apply.return_due_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_lending_apply.return_due_date IS '返却予定日';


--
-- Name: COLUMN workflow_hardware_lending_apply.delete_flag; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_lending_apply.delete_flag IS '削除フラグ';


--
-- Name: COLUMN workflow_hardware_lending_apply.create_user_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_lending_apply.create_user_pkey IS '登録ユーザーID';


--
-- Name: COLUMN workflow_hardware_lending_apply.create_user_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_lending_apply.create_user_name IS '登録ユーザーID_名称';


--
-- Name: COLUMN workflow_hardware_lending_apply.create_datetime; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_lending_apply.create_datetime IS '登録日時';


--
-- Name: COLUMN workflow_hardware_lending_apply.update_user_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_lending_apply.update_user_pkey IS '更新ユーザーID';


--
-- Name: COLUMN workflow_hardware_lending_apply.update_user_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_lending_apply.update_user_name IS '更新ユーザーID_名称';


--
-- Name: COLUMN workflow_hardware_lending_apply.update_datetime; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_lending_apply.update_datetime IS '更新日時';


--
-- Name: workflow_hardware_lending_apply_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE workflow_hardware_lending_apply_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: workflow_hardware_lending_apply_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE workflow_hardware_lending_apply_id_seq OWNED BY workflow_hardware_lending_apply.id;


--
-- Name: workflow_hardware_lending_information; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE workflow_hardware_lending_information (
    id integer NOT NULL,
    workflow_id integer NOT NULL,
    hard_pkey integer,
    hard_kanrino character varying(255)
);


--
-- Name: TABLE workflow_hardware_lending_information; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE workflow_hardware_lending_information IS 'ワークフローハードウェア貸出申請ハードウェア情報';


--
-- Name: COLUMN workflow_hardware_lending_information.id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_lending_information.id IS '内部キー';


--
-- Name: COLUMN workflow_hardware_lending_information.workflow_id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_lending_information.workflow_id IS 'ワークフロー内部キー';


--
-- Name: COLUMN workflow_hardware_lending_information.hard_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_lending_information.hard_pkey IS 'ハードウェア台帳内部キー';


--
-- Name: COLUMN workflow_hardware_lending_information.hard_kanrino; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_lending_information.hard_kanrino IS 'ハードウェア管理番号';


--
-- Name: workflow_hardware_lending_information_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE workflow_hardware_lending_information_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: workflow_hardware_lending_information_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE workflow_hardware_lending_information_id_seq OWNED BY workflow_hardware_lending_information.id;


--
-- Name: workflow_hardware_procurement_apply; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE workflow_hardware_procurement_apply (
    id integer NOT NULL,
    workflow_id integer NOT NULL,
    sosiki_pkey integer NOT NULL,
    procurement_division character varying(6) NOT NULL,
    shape_division character varying(6) NOT NULL,
    quantity integer NOT NULL,
    os_information character varying(6) NOT NULL,
    need_reason text NOT NULL,
    connection_system character varying(100) NOT NULL,
    setting_place character varying(100) NOT NULL,
    hard_kanrino character varying(255),
    soft_installdel character varying(6),
    use_name character varying(80),
    tyoutatu text,
    bikou text,
    tyoutatu_date date,
    haiki_date date,
    version smallint NOT NULL,
    newkbn smallint,
    lease_limit_date date,
    hardware_type character varying(6) NOT NULL,
    special_sys_cd character varying(5),
    ownership character varying(6) NOT NULL,
    control_number character varying(255),
    treasurer_class character varying(6) NOT NULL,
    place_cd character varying(8) NOT NULL,
    location text,
    equipment_class character varying(6) NOT NULL,
    mac_address character varying(255),
    return_date date,
    instruction_number character varying(255),
    admin_comment text,
    cpu_core_number text,
    virtual_description text,
    use_class character varying(6),
    delete_flag integer DEFAULT 0 NOT NULL,
    create_user_pkey integer NOT NULL,
    create_datetime timestamp with time zone NOT NULL,
    update_user_pkey integer NOT NULL,
    update_datetime timestamp with time zone NOT NULL,
    device_control character varying(6),
    takeout character varying(6),
    takeout_start_date date,
    takeout_end_date date
);


--
-- Name: TABLE workflow_hardware_procurement_apply; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE workflow_hardware_procurement_apply IS 'ワークフローハードウェア調達申請';


--
-- Name: COLUMN workflow_hardware_procurement_apply.id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_procurement_apply.id IS '内部キー';


--
-- Name: COLUMN workflow_hardware_procurement_apply.workflow_id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_procurement_apply.workflow_id IS 'ワークフロー内部キー';


--
-- Name: COLUMN workflow_hardware_procurement_apply.sosiki_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_procurement_apply.sosiki_pkey IS '組織テーブルの内部キー';


--
-- Name: COLUMN workflow_hardware_procurement_apply.procurement_division; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_procurement_apply.procurement_division IS '調達区分';


--
-- Name: COLUMN workflow_hardware_procurement_apply.shape_division; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_procurement_apply.shape_division IS '形状区分';


--
-- Name: COLUMN workflow_hardware_procurement_apply.quantity; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_procurement_apply.quantity IS '数量';


--
-- Name: COLUMN workflow_hardware_procurement_apply.os_information; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_procurement_apply.os_information IS 'OS情報';


--
-- Name: COLUMN workflow_hardware_procurement_apply.need_reason; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_procurement_apply.need_reason IS '必要とする理由';


--
-- Name: COLUMN workflow_hardware_procurement_apply.connection_system; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_procurement_apply.connection_system IS '接続システム名';


--
-- Name: COLUMN workflow_hardware_procurement_apply.setting_place; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_procurement_apply.setting_place IS 'ワークフロー設置場所';


--
-- Name: COLUMN workflow_hardware_procurement_apply.hard_kanrino; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_procurement_apply.hard_kanrino IS 'ハードウェア管理番号';


--
-- Name: COLUMN workflow_hardware_procurement_apply.soft_installdel; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_procurement_apply.soft_installdel IS '使用者によるソフトウェア追加導入・削除';


--
-- Name: COLUMN workflow_hardware_procurement_apply.use_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_procurement_apply.use_name IS '使用者名';


--
-- Name: COLUMN workflow_hardware_procurement_apply.tyoutatu; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_procurement_apply.tyoutatu IS '調達情報';


--
-- Name: COLUMN workflow_hardware_procurement_apply.bikou; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_procurement_apply.bikou IS '備考';


--
-- Name: COLUMN workflow_hardware_procurement_apply.tyoutatu_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_procurement_apply.tyoutatu_date IS '調達日';


--
-- Name: COLUMN workflow_hardware_procurement_apply.haiki_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_procurement_apply.haiki_date IS '廃棄日';


--
-- Name: COLUMN workflow_hardware_procurement_apply.version; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_procurement_apply.version IS 'バージョン';


--
-- Name: COLUMN workflow_hardware_procurement_apply.newkbn; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_procurement_apply.newkbn IS '新規区分';


--
-- Name: COLUMN workflow_hardware_procurement_apply.lease_limit_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_procurement_apply.lease_limit_date IS 'リース期限';


--
-- Name: COLUMN workflow_hardware_procurement_apply.hardware_type; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_procurement_apply.hardware_type IS 'ハードウェア種別';


--
-- Name: COLUMN workflow_hardware_procurement_apply.special_sys_cd; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_procurement_apply.special_sys_cd IS '情報システムコード';


--
-- Name: COLUMN workflow_hardware_procurement_apply.ownership; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_procurement_apply.ownership IS '所有権';


--
-- Name: COLUMN workflow_hardware_procurement_apply.control_number; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_procurement_apply.control_number IS '専用の管理番号';


--
-- Name: COLUMN workflow_hardware_procurement_apply.treasurer_class; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_procurement_apply.treasurer_class IS '会計種別';


--
-- Name: COLUMN workflow_hardware_procurement_apply.place_cd; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_procurement_apply.place_cd IS '設置場所コード';


--
-- Name: COLUMN workflow_hardware_procurement_apply.location; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_procurement_apply.location IS '設置場所（任意）';


--
-- Name: COLUMN workflow_hardware_procurement_apply.equipment_class; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_procurement_apply.equipment_class IS '機器種別';


--
-- Name: COLUMN workflow_hardware_procurement_apply.mac_address; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_procurement_apply.mac_address IS 'MACアドレス';


--
-- Name: COLUMN workflow_hardware_procurement_apply.return_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_procurement_apply.return_date IS '返却日';


--
-- Name: COLUMN workflow_hardware_procurement_apply.instruction_number; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_procurement_apply.instruction_number IS '支出命令番号';


--
-- Name: COLUMN workflow_hardware_procurement_apply.admin_comment; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_procurement_apply.admin_comment IS '管理者コメント';


--
-- Name: COLUMN workflow_hardware_procurement_apply.cpu_core_number; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_procurement_apply.cpu_core_number IS 'CPU及びコア数';


--
-- Name: COLUMN workflow_hardware_procurement_apply.virtual_description; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_procurement_apply.virtual_description IS '仮想環境説明文';


--
-- Name: COLUMN workflow_hardware_procurement_apply.use_class; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_procurement_apply.use_class IS '用途区分';


--
-- Name: COLUMN workflow_hardware_procurement_apply.delete_flag; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_procurement_apply.delete_flag IS '削除フラグ';


--
-- Name: COLUMN workflow_hardware_procurement_apply.create_user_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_procurement_apply.create_user_pkey IS '登録ユーザーID';


--
-- Name: COLUMN workflow_hardware_procurement_apply.create_datetime; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_procurement_apply.create_datetime IS '登録日時';


--
-- Name: COLUMN workflow_hardware_procurement_apply.update_user_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_procurement_apply.update_user_pkey IS '更新ユーザーID';


--
-- Name: COLUMN workflow_hardware_procurement_apply.update_datetime; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_procurement_apply.update_datetime IS '更新日時';


--
-- Name: COLUMN workflow_hardware_procurement_apply.device_control; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_procurement_apply.device_control IS 'デバイス制御';


--
-- Name: COLUMN workflow_hardware_procurement_apply.takeout; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_procurement_apply.takeout IS '持ち出し';


--
-- Name: COLUMN workflow_hardware_procurement_apply.takeout_start_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_procurement_apply.takeout_start_date IS '持ち出し開始日';


--
-- Name: COLUMN workflow_hardware_procurement_apply.takeout_end_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_procurement_apply.takeout_end_date IS '持ち出し終了日';


--
-- Name: workflow_hardware_procurement_apply_detail; Type: VIEW; Schema: public; Owner: -
--

CREATE VIEW workflow_hardware_procurement_apply_detail AS
 SELECT workflow_hardware_procurement_apply.id,
    workflow_hardware_procurement_apply.workflow_id,
    workflow_hardware_procurement_apply.sosiki_pkey,
    sosiki.syozoku_name AS sosiki_name,
    sosiki.syozoku_fullname AS sosiki_fullname,
    COALESCE((sosiki.sosiki_sortkey)::integer, 0) AS sosiki_sortkey,
    workflow_hardware_procurement_apply.procurement_division,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '10009'::text) AND ((code.code)::text = (workflow_hardware_procurement_apply.procurement_division)::text))) AS procurement_division_name,
    workflow_hardware_procurement_apply.shape_division,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '10010'::text) AND ((code.code)::text = (workflow_hardware_procurement_apply.shape_division)::text))) AS shape_division_name,
    workflow_hardware_procurement_apply.quantity,
    workflow_hardware_procurement_apply.os_information,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '10011'::text) AND ((code.code)::text = (workflow_hardware_procurement_apply.os_information)::text))) AS os_information_name,
    workflow_hardware_procurement_apply.need_reason,
    workflow_hardware_procurement_apply.connection_system,
    workflow_hardware_procurement_apply.setting_place,
    workflow_hardware_procurement_apply.hard_kanrino,
    workflow_hardware_procurement_apply.soft_installdel,
    workflow_hardware_procurement_apply.use_name,
    workflow_hardware_procurement_apply.tyoutatu,
    workflow_hardware_procurement_apply.bikou,
    workflow_hardware_procurement_apply.tyoutatu_date,
    workflow_hardware_procurement_apply.haiki_date,
    workflow_hardware_procurement_apply.version,
    workflow_hardware_procurement_apply.newkbn,
    workflow_hardware_procurement_apply.lease_limit_date,
    workflow_hardware_procurement_apply.hardware_type,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '10024'::text) AND ((code.code)::text = (workflow_hardware_procurement_apply.hardware_type)::text))) AS hardware_type_name,
    workflow_hardware_procurement_apply.special_sys_cd,
    ( SELECT (((info_system_code.special_sys_cd)::text || ' '::text) || (COALESCE(info_system_code.special_sys_nm, ''::character varying))::text)
           FROM info_system_code
          WHERE ((info_system_code.special_sys_cd)::text = (workflow_hardware_procurement_apply.special_sys_cd)::text)) AS special_sys_cd_name,
    workflow_hardware_procurement_apply.ownership,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '10025'::text) AND ((code.code)::text = (workflow_hardware_procurement_apply.ownership)::text))) AS ownership_name,
    workflow_hardware_procurement_apply.control_number,
    workflow_hardware_procurement_apply.treasurer_class,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '10026'::text) AND ((code.code)::text = (workflow_hardware_procurement_apply.treasurer_class)::text))) AS treasurer_class_name,
    workflow_hardware_procurement_apply.place_cd,
    ( SELECT ((((((location_code.place_cd)::text || ' '::text) || (COALESCE(location_code.bureau, ''::character varying))::text) || COALESCE(('/'::text || (location_code.department)::text), ''::text)) || COALESCE(('/'::text || (location_code.division)::text), ''::text)) || COALESCE(('/'::text || (location_code.subsection)::text), ''::text))
           FROM location_code
          WHERE ((location_code.place_cd)::text = (workflow_hardware_procurement_apply.place_cd)::text)) AS place_cd_name,
    workflow_hardware_procurement_apply.location,
    workflow_hardware_procurement_apply.equipment_class,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '10027'::text) AND ((code.code)::text = (workflow_hardware_procurement_apply.equipment_class)::text))) AS equipment_class_name,
    workflow_hardware_procurement_apply.mac_address,
    workflow_hardware_procurement_apply.return_date,
    workflow_hardware_procurement_apply.instruction_number,
    workflow_hardware_procurement_apply.admin_comment,
    workflow_hardware_procurement_apply.cpu_core_number,
    workflow_hardware_procurement_apply.virtual_description,
    workflow_hardware_procurement_apply.use_class,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '10030'::text) AND ((code.code)::text = (workflow_hardware_procurement_apply.use_class)::text))) AS use_class_name,
    workflow_hardware_procurement_apply.delete_flag,
    workflow_hardware_procurement_apply.create_user_pkey,
    user2.user_name AS create_user_name,
    workflow_hardware_procurement_apply.create_datetime,
    workflow_hardware_procurement_apply.update_user_pkey,
    user3.user_name AS update_user_name,
    workflow_hardware_procurement_apply.update_datetime,
    ( SELECT workflow.application_note
           FROM workflow
          WHERE (workflow_hardware_procurement_apply.workflow_id = workflow.id)
         LIMIT 1) AS application_note,
    workflow_hardware_procurement_apply.device_control,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '10042'::text) AND ((code.code)::text = (workflow_hardware_procurement_apply.device_control)::text))) AS device_control_name,
    workflow_hardware_procurement_apply.takeout,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '10043'::text) AND ((code.code)::text = (workflow_hardware_procurement_apply.takeout)::text))) AS takeout_name,
    workflow_hardware_procurement_apply.takeout_start_date,
    workflow_hardware_procurement_apply.takeout_end_date
   FROM (((workflow_hardware_procurement_apply
     LEFT JOIN sosiki ON (((workflow_hardware_procurement_apply.sosiki_pkey)::text = (sosiki.sosiki_pkey)::text)))
     LEFT JOIN "user" user2 ON ((workflow_hardware_procurement_apply.create_user_pkey = user2.user_pkey)))
     LEFT JOIN "user" user3 ON ((workflow_hardware_procurement_apply.update_user_pkey = user3.user_pkey)));


--
-- Name: workflow_hardware_procurement_apply_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE workflow_hardware_procurement_apply_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: workflow_hardware_procurement_apply_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE workflow_hardware_procurement_apply_id_seq OWNED BY workflow_hardware_procurement_apply.id;


--
-- Name: workflow_hardware_return_apply; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE workflow_hardware_return_apply (
    id integer NOT NULL,
    workflow_id integer NOT NULL,
    hard_pkey integer,
    sosiki_pkey integer,
    sosiki_fullname character varying(255),
    hard_kanrino character varying(255),
    soft_installdel character varying(6),
    soft_installdel_name character varying(100),
    use_name character varying(80),
    use_name_name character varying(100),
    tyoutatu text,
    bikou text,
    location_pkey integer,
    lease_or_purchase character varying(6),
    lease_or_purchase_name character varying(100),
    procurement_form character varying(6),
    procurement_form_name character varying(100),
    ip_address1 character varying(255),
    ip_address2 text,
    mac_address1 character varying(255),
    mac_address2 text,
    checkout_date date,
    return_due_date date,
    return_date date,
    tyoutatu_date date,
    haiki_date date,
    delete_flag integer DEFAULT 0 NOT NULL,
    create_user_pkey integer NOT NULL,
    create_user_name character varying(100),
    create_datetime timestamp with time zone NOT NULL,
    update_user_pkey integer NOT NULL,
    update_user_name character varying(100),
    update_datetime timestamp with time zone NOT NULL
);


--
-- Name: COLUMN workflow_hardware_return_apply.id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_return_apply.id IS '内部キー';


--
-- Name: COLUMN workflow_hardware_return_apply.workflow_id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_return_apply.workflow_id IS 'ワークフロー内部キー';


--
-- Name: COLUMN workflow_hardware_return_apply.hard_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_return_apply.hard_pkey IS 'ハードウェア台帳内部キー';


--
-- Name: COLUMN workflow_hardware_return_apply.sosiki_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_return_apply.sosiki_pkey IS '組織テーブルの内部キー';


--
-- Name: COLUMN workflow_hardware_return_apply.sosiki_fullname; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_return_apply.sosiki_fullname IS '組織フル名称';


--
-- Name: COLUMN workflow_hardware_return_apply.hard_kanrino; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_return_apply.hard_kanrino IS 'ハードウェア管理番号';


--
-- Name: COLUMN workflow_hardware_return_apply.soft_installdel; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_return_apply.soft_installdel IS '使用者によるソフトウェア追加導入・削除';


--
-- Name: COLUMN workflow_hardware_return_apply.soft_installdel_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_return_apply.soft_installdel_name IS '使用者によるソフトウェア追加導入・削除_名称';


--
-- Name: COLUMN workflow_hardware_return_apply.use_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_return_apply.use_name IS '使用形態';


--
-- Name: COLUMN workflow_hardware_return_apply.use_name_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_return_apply.use_name_name IS '使用形態_名称';


--
-- Name: COLUMN workflow_hardware_return_apply.tyoutatu; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_return_apply.tyoutatu IS '調達情報';


--
-- Name: COLUMN workflow_hardware_return_apply.bikou; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_return_apply.bikou IS '備考';


--
-- Name: COLUMN workflow_hardware_return_apply.location_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_return_apply.location_pkey IS '設置場所コード';


--
-- Name: COLUMN workflow_hardware_return_apply.lease_or_purchase; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_return_apply.lease_or_purchase IS '購入／リース';


--
-- Name: COLUMN workflow_hardware_return_apply.lease_or_purchase_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_return_apply.lease_or_purchase_name IS '購入／リース_名称';


--
-- Name: COLUMN workflow_hardware_return_apply.procurement_form; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_return_apply.procurement_form IS '調達形態区分';


--
-- Name: COLUMN workflow_hardware_return_apply.procurement_form_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_return_apply.procurement_form_name IS '調達形態区分_名称';


--
-- Name: COLUMN workflow_hardware_return_apply.ip_address1; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_return_apply.ip_address1 IS 'IPアドレス';


--
-- Name: COLUMN workflow_hardware_return_apply.ip_address2; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_return_apply.ip_address2 IS 'IPアドレス２';


--
-- Name: COLUMN workflow_hardware_return_apply.mac_address1; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_return_apply.mac_address1 IS 'MACアドレス';


--
-- Name: COLUMN workflow_hardware_return_apply.mac_address2; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_return_apply.mac_address2 IS 'MACアドレス２';


--
-- Name: COLUMN workflow_hardware_return_apply.checkout_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_return_apply.checkout_date IS '貸出日';


--
-- Name: COLUMN workflow_hardware_return_apply.return_due_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_return_apply.return_due_date IS '返却予定日';


--
-- Name: COLUMN workflow_hardware_return_apply.return_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_return_apply.return_date IS '返却日';


--
-- Name: COLUMN workflow_hardware_return_apply.tyoutatu_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_return_apply.tyoutatu_date IS '調達日';


--
-- Name: COLUMN workflow_hardware_return_apply.haiki_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_return_apply.haiki_date IS '廃棄日';


--
-- Name: COLUMN workflow_hardware_return_apply.delete_flag; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_return_apply.delete_flag IS '削除フラグ';


--
-- Name: COLUMN workflow_hardware_return_apply.create_user_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_return_apply.create_user_pkey IS '登録ユーザーID';


--
-- Name: COLUMN workflow_hardware_return_apply.create_user_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_return_apply.create_user_name IS '登録ユーザーID_名称';


--
-- Name: COLUMN workflow_hardware_return_apply.create_datetime; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_return_apply.create_datetime IS '登録日時';


--
-- Name: COLUMN workflow_hardware_return_apply.update_user_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_return_apply.update_user_pkey IS '更新ユーザーID';


--
-- Name: COLUMN workflow_hardware_return_apply.update_user_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_return_apply.update_user_name IS '更新ユーザーID_名称';


--
-- Name: COLUMN workflow_hardware_return_apply.update_datetime; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_return_apply.update_datetime IS '更新日時';


--
-- Name: workflow_hardware_return_apply_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE workflow_hardware_return_apply_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: workflow_hardware_return_apply_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE workflow_hardware_return_apply_id_seq OWNED BY workflow_hardware_return_apply.id;


--
-- Name: workflow_hardware_transfer_apply; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE workflow_hardware_transfer_apply (
    id integer NOT NULL,
    workflow_id integer NOT NULL,
    hard_pkey integer NOT NULL,
    sosiki_pkey integer,
    hard_kanrino character varying(255),
    soft_installdel character varying(6),
    use_name character varying(80),
    tyoutatu text,
    bikou text,
    tyoutatu_date date,
    haiki_date date,
    version smallint NOT NULL,
    newkbn smallint,
    lease_limit_date date,
    hardware_type character varying(6) NOT NULL,
    special_sys_cd character varying(5),
    ownership character varying(6) NOT NULL,
    control_number character varying(255),
    treasurer_class character varying(6) NOT NULL,
    place_cd character varying(8) NOT NULL,
    location text,
    equipment_class character varying(6) NOT NULL,
    mac_address character varying(255),
    return_date date,
    instruction_number character varying(255),
    admin_comment text,
    cpu_core_number text,
    virtual_description text,
    use_class character varying(6),
    delete_flag integer DEFAULT 0 NOT NULL,
    create_user_pkey integer NOT NULL,
    create_datetime timestamp with time zone NOT NULL,
    update_user_pkey integer NOT NULL,
    update_datetime timestamp with time zone NOT NULL,
    device_control character varying(6),
    takeout character varying(6),
    takeout_start_date date,
    takeout_end_date date
);


--
-- Name: TABLE workflow_hardware_transfer_apply; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE workflow_hardware_transfer_apply IS 'ワークフローハードウェア移管申請';


--
-- Name: COLUMN workflow_hardware_transfer_apply.id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_transfer_apply.id IS '内部キー';


--
-- Name: COLUMN workflow_hardware_transfer_apply.workflow_id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_transfer_apply.workflow_id IS 'ワークフロー内部キー';


--
-- Name: COLUMN workflow_hardware_transfer_apply.hard_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_transfer_apply.hard_pkey IS 'ハードウェア内部キー';


--
-- Name: COLUMN workflow_hardware_transfer_apply.sosiki_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_transfer_apply.sosiki_pkey IS '組織テーブルの内部キー';


--
-- Name: COLUMN workflow_hardware_transfer_apply.hard_kanrino; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_transfer_apply.hard_kanrino IS 'ハードウェア管理番号';


--
-- Name: COLUMN workflow_hardware_transfer_apply.soft_installdel; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_transfer_apply.soft_installdel IS '使用者によるソフトウェア追加導入・削除';


--
-- Name: COLUMN workflow_hardware_transfer_apply.use_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_transfer_apply.use_name IS '使用者名';


--
-- Name: COLUMN workflow_hardware_transfer_apply.tyoutatu; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_transfer_apply.tyoutatu IS '調達情報';


--
-- Name: COLUMN workflow_hardware_transfer_apply.bikou; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_transfer_apply.bikou IS '備考';


--
-- Name: COLUMN workflow_hardware_transfer_apply.tyoutatu_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_transfer_apply.tyoutatu_date IS '調達日';


--
-- Name: COLUMN workflow_hardware_transfer_apply.haiki_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_transfer_apply.haiki_date IS '廃棄日';


--
-- Name: COLUMN workflow_hardware_transfer_apply.version; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_transfer_apply.version IS 'バージョン';


--
-- Name: COLUMN workflow_hardware_transfer_apply.newkbn; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_transfer_apply.newkbn IS '新規区分';


--
-- Name: COLUMN workflow_hardware_transfer_apply.lease_limit_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_transfer_apply.lease_limit_date IS 'リース期限';


--
-- Name: COLUMN workflow_hardware_transfer_apply.hardware_type; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_transfer_apply.hardware_type IS 'ハードウェア種別';


--
-- Name: COLUMN workflow_hardware_transfer_apply.special_sys_cd; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_transfer_apply.special_sys_cd IS '情報システムコード';


--
-- Name: COLUMN workflow_hardware_transfer_apply.ownership; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_transfer_apply.ownership IS '所有権';


--
-- Name: COLUMN workflow_hardware_transfer_apply.control_number; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_transfer_apply.control_number IS '専用の管理番号';


--
-- Name: COLUMN workflow_hardware_transfer_apply.treasurer_class; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_transfer_apply.treasurer_class IS '会計種別';


--
-- Name: COLUMN workflow_hardware_transfer_apply.place_cd; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_transfer_apply.place_cd IS '設置場所コード';


--
-- Name: COLUMN workflow_hardware_transfer_apply.location; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_transfer_apply.location IS '設置場所（任意）';


--
-- Name: COLUMN workflow_hardware_transfer_apply.equipment_class; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_transfer_apply.equipment_class IS '機器種別';


--
-- Name: COLUMN workflow_hardware_transfer_apply.mac_address; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_transfer_apply.mac_address IS 'MACアドレス';


--
-- Name: COLUMN workflow_hardware_transfer_apply.return_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_transfer_apply.return_date IS '返却日';


--
-- Name: COLUMN workflow_hardware_transfer_apply.instruction_number; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_transfer_apply.instruction_number IS '支出命令番号';


--
-- Name: COLUMN workflow_hardware_transfer_apply.admin_comment; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_transfer_apply.admin_comment IS '管理者コメント';


--
-- Name: COLUMN workflow_hardware_transfer_apply.cpu_core_number; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_transfer_apply.cpu_core_number IS 'CPU及びコア数';


--
-- Name: COLUMN workflow_hardware_transfer_apply.virtual_description; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_transfer_apply.virtual_description IS '仮想環境説明文';


--
-- Name: COLUMN workflow_hardware_transfer_apply.use_class; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_transfer_apply.use_class IS '用途区分';


--
-- Name: COLUMN workflow_hardware_transfer_apply.delete_flag; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_transfer_apply.delete_flag IS '削除フラグ';


--
-- Name: COLUMN workflow_hardware_transfer_apply.create_user_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_transfer_apply.create_user_pkey IS '登録ユーザーID';


--
-- Name: COLUMN workflow_hardware_transfer_apply.create_datetime; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_transfer_apply.create_datetime IS '登録日時';


--
-- Name: COLUMN workflow_hardware_transfer_apply.update_user_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_transfer_apply.update_user_pkey IS '更新ユーザーID';


--
-- Name: COLUMN workflow_hardware_transfer_apply.update_datetime; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_transfer_apply.update_datetime IS '更新日時';


--
-- Name: COLUMN workflow_hardware_transfer_apply.device_control; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_transfer_apply.device_control IS 'デバイス制御';


--
-- Name: COLUMN workflow_hardware_transfer_apply.takeout; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_transfer_apply.takeout IS '持ち出し';


--
-- Name: COLUMN workflow_hardware_transfer_apply.takeout_start_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_transfer_apply.takeout_start_date IS '持ち出し開始日';


--
-- Name: COLUMN workflow_hardware_transfer_apply.takeout_end_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_hardware_transfer_apply.takeout_end_date IS '持ち出し終了日';


--
-- Name: workflow_hardware_transfer_apply_detail; Type: VIEW; Schema: public; Owner: -
--

CREATE VIEW workflow_hardware_transfer_apply_detail AS
 SELECT workflow_hardware_transfer_apply.id,
    workflow_hardware_transfer_apply.workflow_id,
    workflow_hardware_transfer_apply.sosiki_pkey,
    sosiki.syozoku_name AS sosiki_name,
    sosiki.syozoku_fullname AS sosiki_fullname,
    COALESCE((sosiki.sosiki_sortkey)::integer, 0) AS sosiki_sortkey,
    workflow_hardware_transfer_apply.hard_pkey,
    workflow_hardware_transfer_apply.hard_kanrino,
    workflow_hardware_transfer_apply.soft_installdel,
    workflow_hardware_transfer_apply.use_name,
    workflow_hardware_transfer_apply.tyoutatu,
    workflow_hardware_transfer_apply.bikou,
    workflow_hardware_transfer_apply.tyoutatu_date,
    workflow_hardware_transfer_apply.haiki_date,
    workflow_hardware_transfer_apply.version,
    workflow_hardware_transfer_apply.newkbn,
    workflow_hardware_transfer_apply.lease_limit_date,
    workflow_hardware_transfer_apply.hardware_type,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '10024'::text) AND ((code.code)::text = (workflow_hardware_transfer_apply.hardware_type)::text))) AS hardware_type_name,
    workflow_hardware_transfer_apply.special_sys_cd,
    ( SELECT (((info_system_code.special_sys_cd)::text || ' '::text) || (COALESCE(info_system_code.special_sys_nm, ''::character varying))::text)
           FROM info_system_code
          WHERE ((info_system_code.special_sys_cd)::text = (workflow_hardware_transfer_apply.special_sys_cd)::text)) AS special_sys_cd_name,
    workflow_hardware_transfer_apply.ownership,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '10025'::text) AND ((code.code)::text = (workflow_hardware_transfer_apply.ownership)::text))) AS ownership_name,
    workflow_hardware_transfer_apply.control_number,
    workflow_hardware_transfer_apply.treasurer_class,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '10026'::text) AND ((code.code)::text = (workflow_hardware_transfer_apply.treasurer_class)::text))) AS treasurer_class_name,
    workflow_hardware_transfer_apply.place_cd,
    ( SELECT ((((((location_code.place_cd)::text || ' '::text) || (COALESCE(location_code.bureau, ''::character varying))::text) || COALESCE(('/'::text || (location_code.department)::text), ''::text)) || COALESCE(('/'::text || (location_code.division)::text), ''::text)) || COALESCE(('/'::text || (location_code.subsection)::text), ''::text))
           FROM location_code
          WHERE ((location_code.place_cd)::text = (workflow_hardware_transfer_apply.place_cd)::text)) AS place_cd_name,
    workflow_hardware_transfer_apply.location,
    workflow_hardware_transfer_apply.equipment_class,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '10027'::text) AND ((code.code)::text = (workflow_hardware_transfer_apply.equipment_class)::text))) AS equipment_class_name,
    workflow_hardware_transfer_apply.mac_address,
    workflow_hardware_transfer_apply.return_date,
    workflow_hardware_transfer_apply.instruction_number,
    workflow_hardware_transfer_apply.admin_comment,
    workflow_hardware_transfer_apply.cpu_core_number,
    workflow_hardware_transfer_apply.virtual_description,
    workflow_hardware_transfer_apply.use_class,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '10030'::text) AND ((code.code)::text = (workflow_hardware_transfer_apply.use_class)::text))) AS use_class_name,
    workflow_hardware_transfer_apply.delete_flag,
    workflow_hardware_transfer_apply.create_user_pkey,
    user2.user_name AS create_user_name,
    workflow_hardware_transfer_apply.create_datetime,
    workflow_hardware_transfer_apply.update_user_pkey,
    user3.user_name AS update_user_name,
    workflow_hardware_transfer_apply.update_datetime,
    ( SELECT workflow.application_note
           FROM workflow
          WHERE (workflow_hardware_transfer_apply.workflow_id = workflow.id)
         LIMIT 1) AS application_note,
    workflow_hardware_transfer_apply.device_control,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '10042'::text) AND ((code.code)::text = (workflow_hardware_transfer_apply.device_control)::text))) AS device_control_name,
    workflow_hardware_transfer_apply.takeout,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '10043'::text) AND ((code.code)::text = (workflow_hardware_transfer_apply.takeout)::text))) AS takeout_name,
    workflow_hardware_transfer_apply.takeout_start_date,
    workflow_hardware_transfer_apply.takeout_end_date
   FROM (((workflow_hardware_transfer_apply
     LEFT JOIN sosiki ON (((workflow_hardware_transfer_apply.sosiki_pkey)::text = (sosiki.sosiki_pkey)::text)))
     LEFT JOIN "user" user2 ON ((workflow_hardware_transfer_apply.create_user_pkey = user2.user_pkey)))
     LEFT JOIN "user" user3 ON ((workflow_hardware_transfer_apply.update_user_pkey = user3.user_pkey)));


--
-- Name: workflow_hardware_transfer_apply_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE workflow_hardware_transfer_apply_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: workflow_hardware_transfer_apply_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE workflow_hardware_transfer_apply_id_seq OWNED BY workflow_hardware_transfer_apply.id;


--
-- Name: workflow_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE workflow_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: workflow_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE workflow_id_seq OWNED BY workflow.id;


--
-- Name: workflow_lan_connect_apply; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE workflow_lan_connect_apply (
    id integer NOT NULL,
    workflow_id integer NOT NULL,
    hard_pkey integer,
    sosiki_pkey integer,
    sosiki_fullname character varying(255),
    use_name character varying(80),
    use_name_name character varying(100),
    consult character varying(6),
    consult_name character varying(100),
    apply_reason text,
    phone_number character varying(255),
    location_pkey integer,
    ipaddress1 character varying(255),
    ipaddress2 text,
    macaddress1 character varying(255),
    macaddress2 text,
    procurement_form character varying(6),
    procurement_form_name character varying(100),
    lease_or_purchase character varying(6),
    lease_or_purchase_name character varying(100),
    delete_flag integer DEFAULT 0 NOT NULL,
    create_user_pkey integer NOT NULL,
    create_user_name character varying(100),
    create_datetime timestamp with time zone NOT NULL,
    update_user_pkey integer NOT NULL,
    update_user_name character varying(100) NOT NULL,
    update_datetime timestamp with time zone NOT NULL
);


--
-- Name: TABLE workflow_lan_connect_apply; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE workflow_lan_connect_apply IS 'ワークフローLAN接続協議申請';


--
-- Name: COLUMN workflow_lan_connect_apply.id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_lan_connect_apply.id IS '内部キー';


--
-- Name: COLUMN workflow_lan_connect_apply.workflow_id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_lan_connect_apply.workflow_id IS 'ワークフロー内部キー';


--
-- Name: COLUMN workflow_lan_connect_apply.hard_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_lan_connect_apply.hard_pkey IS 'ハードウェア台帳内部キー';


--
-- Name: COLUMN workflow_lan_connect_apply.sosiki_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_lan_connect_apply.sosiki_pkey IS '組織内部キー';


--
-- Name: COLUMN workflow_lan_connect_apply.sosiki_fullname; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_lan_connect_apply.sosiki_fullname IS '組織フル名称';


--
-- Name: COLUMN workflow_lan_connect_apply.use_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_lan_connect_apply.use_name IS '使用形態';


--
-- Name: COLUMN workflow_lan_connect_apply.use_name_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_lan_connect_apply.use_name_name IS '使用形態_名称';


--
-- Name: COLUMN workflow_lan_connect_apply.consult; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_lan_connect_apply.consult IS '協議内容';


--
-- Name: COLUMN workflow_lan_connect_apply.consult_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_lan_connect_apply.consult_name IS '協議内容_名称';


--
-- Name: COLUMN workflow_lan_connect_apply.apply_reason; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_lan_connect_apply.apply_reason IS '申請理由';


--
-- Name: COLUMN workflow_lan_connect_apply.phone_number; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_lan_connect_apply.phone_number IS '電話番号';


--
-- Name: COLUMN workflow_lan_connect_apply.location_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_lan_connect_apply.location_pkey IS '設置場所';


--
-- Name: COLUMN workflow_lan_connect_apply.ipaddress1; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_lan_connect_apply.ipaddress1 IS 'IPアドレス';


--
-- Name: COLUMN workflow_lan_connect_apply.ipaddress2; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_lan_connect_apply.ipaddress2 IS 'IPアドレス2';


--
-- Name: COLUMN workflow_lan_connect_apply.macaddress1; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_lan_connect_apply.macaddress1 IS 'MACアドレス';


--
-- Name: COLUMN workflow_lan_connect_apply.macaddress2; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_lan_connect_apply.macaddress2 IS 'MACアドレス2';


--
-- Name: COLUMN workflow_lan_connect_apply.procurement_form; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_lan_connect_apply.procurement_form IS '調達形態区分';


--
-- Name: COLUMN workflow_lan_connect_apply.procurement_form_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_lan_connect_apply.procurement_form_name IS '調達形態区分_名称';


--
-- Name: COLUMN workflow_lan_connect_apply.lease_or_purchase; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_lan_connect_apply.lease_or_purchase IS '購入／リース';


--
-- Name: COLUMN workflow_lan_connect_apply.lease_or_purchase_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_lan_connect_apply.lease_or_purchase_name IS '購入／リース';


--
-- Name: COLUMN workflow_lan_connect_apply.delete_flag; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_lan_connect_apply.delete_flag IS '削除フラグ';


--
-- Name: COLUMN workflow_lan_connect_apply.create_user_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_lan_connect_apply.create_user_pkey IS '登録ユーザーID';


--
-- Name: COLUMN workflow_lan_connect_apply.create_user_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_lan_connect_apply.create_user_name IS '登録ユーザーID_名称';


--
-- Name: COLUMN workflow_lan_connect_apply.create_datetime; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_lan_connect_apply.create_datetime IS '登録日時';


--
-- Name: COLUMN workflow_lan_connect_apply.update_user_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_lan_connect_apply.update_user_pkey IS '更新ユーザーID';


--
-- Name: COLUMN workflow_lan_connect_apply.update_user_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_lan_connect_apply.update_user_name IS '更新ユーザーID_名称';


--
-- Name: COLUMN workflow_lan_connect_apply.update_datetime; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_lan_connect_apply.update_datetime IS '更新日時';


--
-- Name: workflow_lan_connect_apply_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE workflow_lan_connect_apply_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: workflow_lan_connect_apply_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE workflow_lan_connect_apply_id_seq OWNED BY workflow_lan_connect_apply.id;


--
-- Name: workflow_licence_dictionary_apply; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE workflow_licence_dictionary_apply (
    id integer NOT NULL,
    workflow_id integer NOT NULL,
    licencelist_pkey integer,
    soft_name character varying(255),
    licence_keitai character varying(6),
    licence_keitai_name character varying(100),
    brand character varying(50),
    hard_kotei character varying(6),
    hard_kotei_name character varying(100),
    upgrade character varying(6),
    upgrade_name character varying(100),
    useproposal_kakunin character varying(6),
    useproposal_kakunin_name character varying(100),
    tokusitu_useproposal text,
    useproposal_youken text,
    bikou text,
    upd_date date,
    upd_name character varying(80),
    yukou character varying(6),
    yukou_name character varying(100),
    upd_syozoku integer,
    permit character varying(6),
    permit_name character varying(100),
    delete_flag integer DEFAULT 0 NOT NULL,
    create_user_pkey integer NOT NULL,
    create_user_name character varying(100),
    create_datetime timestamp with time zone NOT NULL,
    update_user_pkey integer NOT NULL,
    update_user_name character varying(100),
    update_datetime timestamp with time zone NOT NULL
);


--
-- Name: TABLE workflow_licence_dictionary_apply; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE workflow_licence_dictionary_apply IS 'ワークフローライセンス辞書';


--
-- Name: COLUMN workflow_licence_dictionary_apply.id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_licence_dictionary_apply.id IS '内部キー';


--
-- Name: COLUMN workflow_licence_dictionary_apply.workflow_id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_licence_dictionary_apply.workflow_id IS 'ワークフロー内部キー';


--
-- Name: COLUMN workflow_licence_dictionary_apply.licencelist_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_licence_dictionary_apply.licencelist_pkey IS 'ライセンス辞書内部キー';


--
-- Name: COLUMN workflow_licence_dictionary_apply.soft_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_licence_dictionary_apply.soft_name IS 'ソフトウェア名';


--
-- Name: COLUMN workflow_licence_dictionary_apply.licence_keitai; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_licence_dictionary_apply.licence_keitai IS '種類';


--
-- Name: COLUMN workflow_licence_dictionary_apply.licence_keitai_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_licence_dictionary_apply.licence_keitai_name IS '種類_名称';


--
-- Name: COLUMN workflow_licence_dictionary_apply.brand; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_licence_dictionary_apply.brand IS 'メーカー';


--
-- Name: COLUMN workflow_licence_dictionary_apply.hard_kotei; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_licence_dictionary_apply.hard_kotei IS 'ハードウェア固定';


--
-- Name: COLUMN workflow_licence_dictionary_apply.hard_kotei_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_licence_dictionary_apply.hard_kotei_name IS 'ハードウェア固定_名称';


--
-- Name: COLUMN workflow_licence_dictionary_apply.upgrade; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_licence_dictionary_apply.upgrade IS 'アップグレード版';


--
-- Name: COLUMN workflow_licence_dictionary_apply.upgrade_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_licence_dictionary_apply.upgrade_name IS 'アップグレード版_名称';


--
-- Name: COLUMN workflow_licence_dictionary_apply.useproposal_kakunin; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_licence_dictionary_apply.useproposal_kakunin IS '使用許諾条件の確認';


--
-- Name: COLUMN workflow_licence_dictionary_apply.useproposal_kakunin_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_licence_dictionary_apply.useproposal_kakunin_name IS '使用許諾条件の確認_名称';


--
-- Name: COLUMN workflow_licence_dictionary_apply.tokusitu_useproposal; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_licence_dictionary_apply.tokusitu_useproposal IS '特筆すべき使用許諾条件';


--
-- Name: COLUMN workflow_licence_dictionary_apply.useproposal_youken; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_licence_dictionary_apply.useproposal_youken IS '使用許諾証明要件';


--
-- Name: COLUMN workflow_licence_dictionary_apply.bikou; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_licence_dictionary_apply.bikou IS '備考';


--
-- Name: COLUMN workflow_licence_dictionary_apply.upd_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_licence_dictionary_apply.upd_date IS '更新日';


--
-- Name: COLUMN workflow_licence_dictionary_apply.upd_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_licence_dictionary_apply.upd_name IS '更新者氏名';


--
-- Name: COLUMN workflow_licence_dictionary_apply.yukou; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_licence_dictionary_apply.yukou IS '有効';


--
-- Name: COLUMN workflow_licence_dictionary_apply.yukou_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_licence_dictionary_apply.yukou_name IS '有効_名称';


--
-- Name: COLUMN workflow_licence_dictionary_apply.upd_syozoku; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_licence_dictionary_apply.upd_syozoku IS '更新者所属';


--
-- Name: COLUMN workflow_licence_dictionary_apply.permit; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_licence_dictionary_apply.permit IS 'ライセンス台帳での表示';


--
-- Name: COLUMN workflow_licence_dictionary_apply.permit_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_licence_dictionary_apply.permit_name IS 'ライセンス台帳での表示_名称';


--
-- Name: COLUMN workflow_licence_dictionary_apply.delete_flag; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_licence_dictionary_apply.delete_flag IS '削除フラグ';


--
-- Name: COLUMN workflow_licence_dictionary_apply.create_user_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_licence_dictionary_apply.create_user_pkey IS '登録ユーザーID';


--
-- Name: COLUMN workflow_licence_dictionary_apply.create_user_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_licence_dictionary_apply.create_user_name IS '登録ユーザーID_名称';


--
-- Name: COLUMN workflow_licence_dictionary_apply.create_datetime; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_licence_dictionary_apply.create_datetime IS '登録日時';


--
-- Name: COLUMN workflow_licence_dictionary_apply.update_user_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_licence_dictionary_apply.update_user_pkey IS '更新ユーザーID';


--
-- Name: COLUMN workflow_licence_dictionary_apply.update_user_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_licence_dictionary_apply.update_user_name IS '更新ユーザーID_名称';


--
-- Name: COLUMN workflow_licence_dictionary_apply.update_datetime; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_licence_dictionary_apply.update_datetime IS '更新日時';


--
-- Name: workflow_licence_dictionary_apply_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE workflow_licence_dictionary_apply_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: workflow_licence_dictionary_apply_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE workflow_licence_dictionary_apply_id_seq OWNED BY workflow_licence_dictionary_apply.id;


--
-- Name: workflow_licence_dictionary_downgrade_program; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE workflow_licence_dictionary_downgrade_program (
    id integer NOT NULL,
    workflow_id integer NOT NULL,
    licencelist_pkey integer,
    program_add_del character varying(255)
);


--
-- Name: TABLE workflow_licence_dictionary_downgrade_program; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE workflow_licence_dictionary_downgrade_program IS 'ワークフローライセンス辞書ダウングレード使用プログラムと機能';


--
-- Name: COLUMN workflow_licence_dictionary_downgrade_program.id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_licence_dictionary_downgrade_program.id IS '内部キー';


--
-- Name: COLUMN workflow_licence_dictionary_downgrade_program.workflow_id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_licence_dictionary_downgrade_program.workflow_id IS 'ワークフロー内部キー';


--
-- Name: COLUMN workflow_licence_dictionary_downgrade_program.licencelist_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_licence_dictionary_downgrade_program.licencelist_pkey IS 'ライセンス辞書内部キー';


--
-- Name: COLUMN workflow_licence_dictionary_downgrade_program.program_add_del; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_licence_dictionary_downgrade_program.program_add_del IS 'ダウングレード使用時のプログラムと機能';


--
-- Name: workflow_licence_dictionary_downgrade_program_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE workflow_licence_dictionary_downgrade_program_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: workflow_licence_dictionary_downgrade_program_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE workflow_licence_dictionary_downgrade_program_id_seq OWNED BY workflow_licence_dictionary_downgrade_program.id;


--
-- Name: workflow_licence_dictionary_program; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE workflow_licence_dictionary_program (
    id integer NOT NULL,
    workflow_id integer NOT NULL,
    licencelist_pkey integer,
    program_add_del character varying(255)
);


--
-- Name: COLUMN workflow_licence_dictionary_program.id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_licence_dictionary_program.id IS '内部キー';


--
-- Name: COLUMN workflow_licence_dictionary_program.workflow_id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_licence_dictionary_program.workflow_id IS 'ワークフロー内部キー';


--
-- Name: COLUMN workflow_licence_dictionary_program.licencelist_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_licence_dictionary_program.licencelist_pkey IS 'ライセンス辞書内部キー';


--
-- Name: COLUMN workflow_licence_dictionary_program.program_add_del; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_licence_dictionary_program.program_add_del IS 'プログラムと機能';


--
-- Name: workflow_licence_dictionary_program_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE workflow_licence_dictionary_program_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: workflow_licence_dictionary_program_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE workflow_licence_dictionary_program_id_seq OWNED BY workflow_licence_dictionary_program.id;


--
-- Name: workflow_license_disposal_apply; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE workflow_license_disposal_apply (
    id integer NOT NULL,
    workflow_id integer NOT NULL,
    licence_pkey integer NOT NULL,
    sosiki_pkey integer,
    licencelist_pkey integer,
    licence_kanrino character varying(255),
    install_su integer,
    hard_pkey integer,
    licence_pkey2 integer,
    licence_no text,
    tyoutatu text,
    hokan_baitai text,
    hokan_basyo text,
    bikou text,
    tyoutatu_date date,
    haiki_date date,
    version smallint NOT NULL,
    newkbn smallint,
    kanri_sosiki_pkey integer,
    holdings_number integer,
    kanri_sosiki_flg smallint,
    held_number character varying(255),
    license_limit_date date,
    procurement_division character varying(6) NOT NULL,
    instruction_number character varying(255),
    ownership character varying(6) NOT NULL,
    using_name character varying(255),
    upgrade_policy_date date,
    disposal_due_date timestamp with time zone NOT NULL,
    delete_flag integer DEFAULT 0 NOT NULL,
    create_user_pkey integer NOT NULL,
    create_datetime timestamp with time zone NOT NULL,
    update_user_pkey integer NOT NULL,
    update_datetime timestamp with time zone NOT NULL
);


--
-- Name: TABLE workflow_license_disposal_apply; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE workflow_license_disposal_apply IS 'ワークフローライセンス廃棄申請';


--
-- Name: COLUMN workflow_license_disposal_apply.id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_license_disposal_apply.id IS '内部キー';


--
-- Name: COLUMN workflow_license_disposal_apply.workflow_id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_license_disposal_apply.workflow_id IS 'ワークフロー内部キー';


--
-- Name: COLUMN workflow_license_disposal_apply.licence_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_license_disposal_apply.licence_pkey IS 'ライセンス内部キー';


--
-- Name: COLUMN workflow_license_disposal_apply.sosiki_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_license_disposal_apply.sosiki_pkey IS '組織テーブルの内部キー';


--
-- Name: COLUMN workflow_license_disposal_apply.licencelist_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_license_disposal_apply.licencelist_pkey IS 'ライセンス一覧表の内部キー';


--
-- Name: COLUMN workflow_license_disposal_apply.licence_kanrino; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_license_disposal_apply.licence_kanrino IS 'ライセンス管理番号';


--
-- Name: COLUMN workflow_license_disposal_apply.install_su; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_license_disposal_apply.install_su IS 'インストール可能数';


--
-- Name: COLUMN workflow_license_disposal_apply.hard_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_license_disposal_apply.hard_pkey IS 'ハードウェア台帳の内部キー';


--
-- Name: COLUMN workflow_license_disposal_apply.licence_pkey2; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_license_disposal_apply.licence_pkey2 IS 'ライセンス台帳の内部キー';


--
-- Name: COLUMN workflow_license_disposal_apply.licence_no; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_license_disposal_apply.licence_no IS 'ライセンス証書番号';


--
-- Name: COLUMN workflow_license_disposal_apply.tyoutatu; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_license_disposal_apply.tyoutatu IS '調達情報';


--
-- Name: COLUMN workflow_license_disposal_apply.hokan_baitai; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_license_disposal_apply.hokan_baitai IS '保管媒体';


--
-- Name: COLUMN workflow_license_disposal_apply.hokan_basyo; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_license_disposal_apply.hokan_basyo IS '保管場所';


--
-- Name: COLUMN workflow_license_disposal_apply.bikou; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_license_disposal_apply.bikou IS '備考';


--
-- Name: COLUMN workflow_license_disposal_apply.tyoutatu_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_license_disposal_apply.tyoutatu_date IS '調達日';


--
-- Name: COLUMN workflow_license_disposal_apply.haiki_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_license_disposal_apply.haiki_date IS '廃棄日';


--
-- Name: COLUMN workflow_license_disposal_apply.version; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_license_disposal_apply.version IS 'バージョン';


--
-- Name: COLUMN workflow_license_disposal_apply.newkbn; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_license_disposal_apply.newkbn IS '新規区分';


--
-- Name: COLUMN workflow_license_disposal_apply.kanri_sosiki_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_license_disposal_apply.kanri_sosiki_pkey IS '管理組織の組織テーブル内部キー';


--
-- Name: COLUMN workflow_license_disposal_apply.holdings_number; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_license_disposal_apply.holdings_number IS '管理組織のライセンス保有数';


--
-- Name: COLUMN workflow_license_disposal_apply.kanri_sosiki_flg; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_license_disposal_apply.kanri_sosiki_flg IS '管理所属フラグ';


--
-- Name: COLUMN workflow_license_disposal_apply.held_number; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_license_disposal_apply.held_number IS '保有数（補足）';


--
-- Name: COLUMN workflow_license_disposal_apply.license_limit_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_license_disposal_apply.license_limit_date IS 'ライセンス使用期限';


--
-- Name: COLUMN workflow_license_disposal_apply.procurement_division; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_license_disposal_apply.procurement_division IS '調達区分';


--
-- Name: COLUMN workflow_license_disposal_apply.instruction_number; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_license_disposal_apply.instruction_number IS '支出命令番号';


--
-- Name: COLUMN workflow_license_disposal_apply.ownership; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_license_disposal_apply.ownership IS '所有権';


--
-- Name: COLUMN workflow_license_disposal_apply.using_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_license_disposal_apply.using_name IS '使用者名';


--
-- Name: COLUMN workflow_license_disposal_apply.upgrade_policy_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_license_disposal_apply.upgrade_policy_date IS 'アップグレード可能期限';


--
-- Name: COLUMN workflow_license_disposal_apply.disposal_due_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_license_disposal_apply.disposal_due_date IS '廃棄予定日';


--
-- Name: COLUMN workflow_license_disposal_apply.delete_flag; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_license_disposal_apply.delete_flag IS '削除フラグ';


--
-- Name: COLUMN workflow_license_disposal_apply.create_user_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_license_disposal_apply.create_user_pkey IS '登録ユーザーID';


--
-- Name: COLUMN workflow_license_disposal_apply.create_datetime; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_license_disposal_apply.create_datetime IS '登録日時';


--
-- Name: COLUMN workflow_license_disposal_apply.update_user_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_license_disposal_apply.update_user_pkey IS '更新ユーザーID';


--
-- Name: COLUMN workflow_license_disposal_apply.update_datetime; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_license_disposal_apply.update_datetime IS '更新日時';


--
-- Name: workflow_license_disposal_apply_detail; Type: VIEW; Schema: public; Owner: -
--

CREATE VIEW workflow_license_disposal_apply_detail AS
 SELECT workflow_license_disposal_apply.id,
    workflow_license_disposal_apply.workflow_id,
    workflow_license_disposal_apply.sosiki_pkey,
    sosiki.syozoku_name AS sosiki_name,
    sosiki.syozoku_fullname AS sosiki_fullname,
    COALESCE((sosiki.sosiki_sortkey)::integer, 0) AS sosiki_sortkey,
    workflow_license_disposal_apply.licence_pkey,
    workflow_license_disposal_apply.licence_kanrino,
    workflow_license_disposal_apply.install_su,
    workflow_license_disposal_apply.licence_no,
    workflow_license_disposal_apply.hard_pkey,
    hard.hard_kanrino,
    workflow_license_disposal_apply.licence_pkey2,
    up.licence_kanrino AS up_licence_kanrino,
    workflow_license_disposal_apply.tyoutatu,
    workflow_license_disposal_apply.hokan_baitai,
    workflow_license_disposal_apply.hokan_basyo,
    workflow_license_disposal_apply.bikou,
    workflow_license_disposal_apply.tyoutatu_date,
    workflow_license_disposal_apply.haiki_date,
    workflow_license_disposal_apply.version,
    workflow_license_disposal_apply.newkbn,
    workflow_license_disposal_apply.kanri_sosiki_pkey,
    kanri.syozoku_name AS kanri_sosiki_name,
    kanri.syozoku_fullname AS kanri_sosiki_fullname,
    COALESCE((kanri.sosiki_sortkey)::integer, 0) AS kanri_sosiki_sortkey,
    workflow_license_disposal_apply.holdings_number,
    workflow_license_disposal_apply.kanri_sosiki_flg,
    workflow_license_disposal_apply.held_number,
    workflow_license_disposal_apply.license_limit_date,
    workflow_license_disposal_apply.procurement_division,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '10009'::text) AND ((code.code)::text = (workflow_license_disposal_apply.procurement_division)::text))) AS procurement_division_name,
    workflow_license_disposal_apply.instruction_number,
    workflow_license_disposal_apply.ownership,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '10029'::text) AND ((code.code)::text = (workflow_license_disposal_apply.ownership)::text))) AS ownership_name,
    workflow_license_disposal_apply.using_name,
    workflow_license_disposal_apply.upgrade_policy_date,
    workflow_license_disposal_apply.licencelist_pkey,
    licencelist.soft_name,
    licencelist.licence_keitai,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '00005'::text) AND ((code.code)::text = (licencelist.licence_keitai)::text))) AS licence_keitai_name,
    licencelist.brand,
    licencelist.hard_kotei,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '00004'::text) AND ((code.code)::text = (licencelist.hard_kotei)::text))) AS hard_kotei_name,
    licencelist.upgrade,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '00004'::text) AND ((code.code)::text = (licencelist.upgrade)::text))) AS upgrade_name,
    licencelist.tokusitu_useproposal,
    licencelist.useproposal_youken,
    array_to_string(ARRAY( SELECT regexp_replace((p.program_add_del)::text, '
'::text, '(RETURN)'::text) AS regexp_replace
           FROM licencelistprogram p
          WHERE (p.licencelist_pkey = workflow_license_disposal_apply.licencelist_pkey)
          ORDER BY p.program_add_del), '
'::text) AS program_add_del,
    array_to_string(ARRAY( SELECT regexp_replace((p.program_add_del)::text, '
'::text, '(RETURN)'::text) AS regexp_replace
           FROM licencelistprogram_down p
          WHERE (p.licencelist_pkey = workflow_license_disposal_apply.licencelist_pkey)
          ORDER BY p.program_add_del), '
'::text) AS program_add_del_down,
    workflow_license_disposal_apply.disposal_due_date,
    workflow_license_disposal_apply.delete_flag,
    workflow_license_disposal_apply.create_user_pkey,
    user2.user_name AS create_user_name,
    workflow_license_disposal_apply.create_datetime,
    workflow_license_disposal_apply.update_user_pkey,
    user3.user_name AS update_user_name,
    workflow_license_disposal_apply.update_datetime,
    ( SELECT workflow.application_note
           FROM workflow
          WHERE (workflow_license_disposal_apply.workflow_id = workflow.id)
         LIMIT 1) AS application_note
   FROM (((((((workflow_license_disposal_apply
     LEFT JOIN sosiki ON (((workflow_license_disposal_apply.sosiki_pkey)::text = (sosiki.sosiki_pkey)::text)))
     LEFT JOIN "user" user2 ON ((workflow_license_disposal_apply.create_user_pkey = user2.user_pkey)))
     LEFT JOIN "user" user3 ON ((workflow_license_disposal_apply.update_user_pkey = user3.user_pkey)))
     LEFT JOIN licencelist ON ((workflow_license_disposal_apply.licencelist_pkey = licencelist.licencelist_pkey)))
     LEFT JOIN sosiki kanri ON ((workflow_license_disposal_apply.kanri_sosiki_pkey = kanri.sosiki_pkey)))
     LEFT JOIN hard ON ((workflow_license_disposal_apply.hard_pkey = hard.hard_pkey)))
     LEFT JOIN licence up ON ((workflow_license_disposal_apply.licence_pkey2 = up.licence_pkey)));


--
-- Name: workflow_license_disposal_apply_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE workflow_license_disposal_apply_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: workflow_license_disposal_apply_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE workflow_license_disposal_apply_id_seq OWNED BY workflow_license_disposal_apply.id;


--
-- Name: workflow_license_transfer_apply; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE workflow_license_transfer_apply (
    id integer NOT NULL,
    workflow_id integer NOT NULL,
    licence_pkey integer NOT NULL,
    sosiki_pkey integer,
    licencelist_pkey integer,
    licence_kanrino character varying(255),
    install_su integer,
    hard_pkey integer,
    licence_pkey2 integer,
    licence_no text,
    tyoutatu text,
    hokan_baitai text,
    hokan_basyo text,
    bikou text,
    tyoutatu_date date,
    haiki_date date,
    version smallint NOT NULL,
    newkbn smallint,
    kanri_sosiki_pkey integer,
    holdings_number integer,
    kanri_sosiki_flg smallint,
    held_number character varying(255),
    license_limit_date date,
    procurement_division character varying(6) NOT NULL,
    instruction_number character varying(255),
    ownership character varying(6) NOT NULL,
    using_name character varying(255),
    upgrade_policy_date date,
    delete_flag integer DEFAULT 0 NOT NULL,
    create_user_pkey integer NOT NULL,
    create_datetime timestamp with time zone NOT NULL,
    update_user_pkey integer NOT NULL,
    update_datetime timestamp with time zone NOT NULL
);


--
-- Name: TABLE workflow_license_transfer_apply; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE workflow_license_transfer_apply IS 'ワークフローライセンス移管申請';


--
-- Name: COLUMN workflow_license_transfer_apply.id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_license_transfer_apply.id IS '内部キー';


--
-- Name: COLUMN workflow_license_transfer_apply.workflow_id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_license_transfer_apply.workflow_id IS 'ワークフロー内部キー';


--
-- Name: COLUMN workflow_license_transfer_apply.licence_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_license_transfer_apply.licence_pkey IS 'ライセンス内部キー';


--
-- Name: COLUMN workflow_license_transfer_apply.sosiki_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_license_transfer_apply.sosiki_pkey IS '組織テーブルの内部キー';


--
-- Name: COLUMN workflow_license_transfer_apply.licencelist_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_license_transfer_apply.licencelist_pkey IS 'ライセンス一覧表の内部キー';


--
-- Name: COLUMN workflow_license_transfer_apply.licence_kanrino; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_license_transfer_apply.licence_kanrino IS 'ライセンス管理番号';


--
-- Name: COLUMN workflow_license_transfer_apply.install_su; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_license_transfer_apply.install_su IS 'インストール可能数';


--
-- Name: COLUMN workflow_license_transfer_apply.hard_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_license_transfer_apply.hard_pkey IS 'ハードウェア台帳の内部キー';


--
-- Name: COLUMN workflow_license_transfer_apply.licence_pkey2; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_license_transfer_apply.licence_pkey2 IS 'ライセンス台帳の内部キー';


--
-- Name: COLUMN workflow_license_transfer_apply.licence_no; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_license_transfer_apply.licence_no IS 'ライセンス証書番号';


--
-- Name: COLUMN workflow_license_transfer_apply.tyoutatu; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_license_transfer_apply.tyoutatu IS '調達情報';


--
-- Name: COLUMN workflow_license_transfer_apply.hokan_baitai; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_license_transfer_apply.hokan_baitai IS '保管媒体';


--
-- Name: COLUMN workflow_license_transfer_apply.hokan_basyo; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_license_transfer_apply.hokan_basyo IS '保管場所';


--
-- Name: COLUMN workflow_license_transfer_apply.bikou; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_license_transfer_apply.bikou IS '備考';


--
-- Name: COLUMN workflow_license_transfer_apply.tyoutatu_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_license_transfer_apply.tyoutatu_date IS '調達日';


--
-- Name: COLUMN workflow_license_transfer_apply.haiki_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_license_transfer_apply.haiki_date IS '廃棄日';


--
-- Name: COLUMN workflow_license_transfer_apply.version; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_license_transfer_apply.version IS 'バージョン';


--
-- Name: COLUMN workflow_license_transfer_apply.newkbn; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_license_transfer_apply.newkbn IS '新規区分';


--
-- Name: COLUMN workflow_license_transfer_apply.kanri_sosiki_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_license_transfer_apply.kanri_sosiki_pkey IS '管理組織の組織テーブル内部キー';


--
-- Name: COLUMN workflow_license_transfer_apply.holdings_number; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_license_transfer_apply.holdings_number IS '管理組織のライセンス保有数';


--
-- Name: COLUMN workflow_license_transfer_apply.kanri_sosiki_flg; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_license_transfer_apply.kanri_sosiki_flg IS '管理所属フラグ';


--
-- Name: COLUMN workflow_license_transfer_apply.held_number; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_license_transfer_apply.held_number IS '保有数（補足）';


--
-- Name: COLUMN workflow_license_transfer_apply.license_limit_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_license_transfer_apply.license_limit_date IS 'ライセンス使用期限';


--
-- Name: COLUMN workflow_license_transfer_apply.procurement_division; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_license_transfer_apply.procurement_division IS '調達区分';


--
-- Name: COLUMN workflow_license_transfer_apply.instruction_number; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_license_transfer_apply.instruction_number IS '支出命令番号';


--
-- Name: COLUMN workflow_license_transfer_apply.ownership; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_license_transfer_apply.ownership IS '所有権';


--
-- Name: COLUMN workflow_license_transfer_apply.using_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_license_transfer_apply.using_name IS '使用者名';


--
-- Name: COLUMN workflow_license_transfer_apply.upgrade_policy_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_license_transfer_apply.upgrade_policy_date IS 'アップグレード可能期限';


--
-- Name: COLUMN workflow_license_transfer_apply.delete_flag; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_license_transfer_apply.delete_flag IS '削除フラグ';


--
-- Name: COLUMN workflow_license_transfer_apply.create_user_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_license_transfer_apply.create_user_pkey IS '登録ユーザーID';


--
-- Name: COLUMN workflow_license_transfer_apply.create_datetime; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_license_transfer_apply.create_datetime IS '登録日時';


--
-- Name: COLUMN workflow_license_transfer_apply.update_user_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_license_transfer_apply.update_user_pkey IS '更新ユーザーID';


--
-- Name: COLUMN workflow_license_transfer_apply.update_datetime; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_license_transfer_apply.update_datetime IS '更新日時';


--
-- Name: workflow_license_transfer_apply_detail; Type: VIEW; Schema: public; Owner: -
--

CREATE VIEW workflow_license_transfer_apply_detail AS
 SELECT workflow_license_transfer_apply.id,
    workflow_license_transfer_apply.workflow_id,
    workflow_license_transfer_apply.sosiki_pkey,
    sosiki.syozoku_name AS sosiki_name,
    sosiki.syozoku_fullname AS sosiki_fullname,
    COALESCE((sosiki.sosiki_sortkey)::integer, 0) AS sosiki_sortkey,
    workflow_license_transfer_apply.licence_pkey,
    workflow_license_transfer_apply.licence_kanrino,
    workflow_license_transfer_apply.install_su,
    workflow_license_transfer_apply.licence_no,
    workflow_license_transfer_apply.hard_pkey,
    hard.hard_kanrino,
    workflow_license_transfer_apply.licence_pkey2,
    up.licence_kanrino AS up_licence_kanrino,
    workflow_license_transfer_apply.tyoutatu,
    workflow_license_transfer_apply.hokan_baitai,
    workflow_license_transfer_apply.hokan_basyo,
    workflow_license_transfer_apply.bikou,
    workflow_license_transfer_apply.tyoutatu_date,
    workflow_license_transfer_apply.haiki_date,
    workflow_license_transfer_apply.version,
    workflow_license_transfer_apply.newkbn,
    workflow_license_transfer_apply.kanri_sosiki_pkey,
    kanri.syozoku_name AS kanri_sosiki_name,
    kanri.syozoku_fullname AS kanri_sosiki_fullname,
    COALESCE((kanri.sosiki_sortkey)::integer, 0) AS kanri_sosiki_sortkey,
    workflow_license_transfer_apply.holdings_number,
    workflow_license_transfer_apply.kanri_sosiki_flg,
    workflow_license_transfer_apply.held_number,
    workflow_license_transfer_apply.license_limit_date,
    workflow_license_transfer_apply.procurement_division,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '10009'::text) AND ((code.code)::text = (workflow_license_transfer_apply.procurement_division)::text))) AS procurement_division_name,
    workflow_license_transfer_apply.instruction_number,
    workflow_license_transfer_apply.ownership,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '10029'::text) AND ((code.code)::text = (workflow_license_transfer_apply.ownership)::text))) AS ownership_name,
    workflow_license_transfer_apply.using_name,
    workflow_license_transfer_apply.upgrade_policy_date,
    workflow_license_transfer_apply.licencelist_pkey,
    licencelist.soft_name,
    licencelist.licence_keitai,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '00005'::text) AND ((code.code)::text = (licencelist.licence_keitai)::text))) AS licence_keitai_name,
    licencelist.brand,
    licencelist.hard_kotei,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '00004'::text) AND ((code.code)::text = (licencelist.hard_kotei)::text))) AS hard_kotei_name,
    licencelist.upgrade,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '00004'::text) AND ((code.code)::text = (licencelist.upgrade)::text))) AS upgrade_name,
    licencelist.tokusitu_useproposal,
    licencelist.useproposal_youken,
    array_to_string(ARRAY( SELECT regexp_replace((p.program_add_del)::text, '
'::text, '(RETURN)'::text) AS regexp_replace
           FROM licencelistprogram p
          WHERE (p.licencelist_pkey = workflow_license_transfer_apply.licencelist_pkey)
          ORDER BY p.program_add_del), '
'::text) AS program_add_del,
    array_to_string(ARRAY( SELECT regexp_replace((p.program_add_del)::text, '
'::text, '(RETURN)'::text) AS regexp_replace
           FROM licencelistprogram_down p
          WHERE (p.licencelist_pkey = workflow_license_transfer_apply.licencelist_pkey)
          ORDER BY p.program_add_del), '
'::text) AS program_add_del_down,
    workflow_license_transfer_apply.delete_flag,
    workflow_license_transfer_apply.create_user_pkey,
    user2.user_name AS create_user_name,
    workflow_license_transfer_apply.create_datetime,
    workflow_license_transfer_apply.update_user_pkey,
    user3.user_name AS update_user_name,
    workflow_license_transfer_apply.update_datetime,
    ( SELECT workflow.application_note
           FROM workflow
          WHERE (workflow_license_transfer_apply.workflow_id = workflow.id)
         LIMIT 1) AS application_note
   FROM (((((((workflow_license_transfer_apply
     LEFT JOIN sosiki ON (((workflow_license_transfer_apply.sosiki_pkey)::text = (sosiki.sosiki_pkey)::text)))
     LEFT JOIN "user" user2 ON ((workflow_license_transfer_apply.create_user_pkey = user2.user_pkey)))
     LEFT JOIN "user" user3 ON ((workflow_license_transfer_apply.update_user_pkey = user3.user_pkey)))
     LEFT JOIN licencelist ON ((workflow_license_transfer_apply.licencelist_pkey = licencelist.licencelist_pkey)))
     LEFT JOIN sosiki kanri ON ((workflow_license_transfer_apply.kanri_sosiki_pkey = kanri.sosiki_pkey)))
     LEFT JOIN hard ON ((workflow_license_transfer_apply.hard_pkey = hard.hard_pkey)))
     LEFT JOIN licence up ON ((workflow_license_transfer_apply.licence_pkey2 = up.licence_pkey)));


--
-- Name: workflow_license_transfer_apply_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE workflow_license_transfer_apply_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: workflow_license_transfer_apply_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE workflow_license_transfer_apply_id_seq OWNED BY workflow_license_transfer_apply.id;


--
-- Name: workflow_map; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE workflow_map (
    id integer NOT NULL,
    workflow_id integer NOT NULL,
    user_id integer NOT NULL,
    syonin_date timestamp with time zone,
    syoninsya character varying(80),
    progress character varying(6),
    order_index integer NOT NULL,
    note character varying,
    delete_flag integer DEFAULT 0 NOT NULL,
    create_user_pkey integer NOT NULL,
    create_datetime timestamp with time zone NOT NULL,
    update_user_pkey integer NOT NULL,
    update_datetime timestamp with time zone NOT NULL
);


--
-- Name: TABLE workflow_map; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE workflow_map IS 'ワークフローマップ';


--
-- Name: COLUMN workflow_map.id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_map.id IS '内部キー';


--
-- Name: COLUMN workflow_map.workflow_id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_map.workflow_id IS 'ワークフロー内部キー';


--
-- Name: COLUMN workflow_map.user_id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_map.user_id IS 'ユーザーID';


--
-- Name: COLUMN workflow_map.syonin_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_map.syonin_date IS '承認・却下日';


--
-- Name: COLUMN workflow_map.syoninsya; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_map.syoninsya IS '承認・却下者';


--
-- Name: COLUMN workflow_map.progress; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_map.progress IS 'ワークフロー申請状況';


--
-- Name: COLUMN workflow_map.order_index; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_map.order_index IS '順序';


--
-- Name: COLUMN workflow_map.note; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_map.note IS 'コメント';


--
-- Name: COLUMN workflow_map.delete_flag; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_map.delete_flag IS '削除フラグ';


--
-- Name: COLUMN workflow_map.create_user_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_map.create_user_pkey IS '登録ユーザーID';


--
-- Name: COLUMN workflow_map.create_datetime; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_map.create_datetime IS '登録日時';


--
-- Name: COLUMN workflow_map.update_user_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_map.update_user_pkey IS '更新ユーザーID';


--
-- Name: COLUMN workflow_map.update_datetime; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_map.update_datetime IS '更新日時';


--
-- Name: workflow_list; Type: VIEW; Schema: public; Owner: -
--

CREATE VIEW workflow_list AS
 SELECT workflow.id,
    workflow.workflow_no,
    workflow.workflow_category,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '10006'::text) AND ((code.code)::text = (workflow.workflow_category)::text))) AS workflow_category_name,
    workflow.sinseisyozoku,
    sosiki.syozoku_name,
    sosiki.syozoku_fullname AS sosiki_fullname,
    workflow.sinseisya,
    workflow.sinsei_date,
    workflow.progress,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '10007'::text) AND ((code.code)::text = (workflow.progress)::text))) AS progress_name,
        CASE
            WHEN (((workflow.progress)::text = 'd005'::text) OR ((workflow.progress)::text = 'd006'::text)) THEN workflow.update_datetime
            ELSE NULL::timestamp with time zone
        END AS max_syonin_date,
    sosiki.sosiki_sortkey,
    workflow.email_ad,
    workflow_map.user_id,
    workflow_map.progress AS map_progress
   FROM ((workflow_map
     LEFT JOIN workflow ON ((workflow_map.workflow_id = workflow.id)))
     LEFT JOIN sosiki ON (((workflow.sinseisyozoku)::text = (sosiki.sosiki_pkey)::text)))
  WHERE (workflow.delete_flag = 0);


--
-- Name: workflow_list_all; Type: VIEW; Schema: public; Owner: -
--

CREATE VIEW workflow_list_all AS
 SELECT workflow.id,
    workflow.workflow_no,
    workflow.workflow_category,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '10006'::text) AND ((code.code)::text = (workflow.workflow_category)::text))) AS workflow_category_name,
    workflow.sinseisyozoku,
    sosiki.syozoku_name,
    sosiki.syozoku_fullname AS sosiki_fullname,
    workflow.sinseisya,
    workflow.sinsei_date,
    workflow.progress,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '10007'::text) AND ((code.code)::text = (workflow.progress)::text))) AS progress_name,
        CASE
            WHEN (((workflow.progress)::text = 'd005'::text) OR ((workflow.progress)::text = 'd006'::text)) THEN workflow.update_datetime
            ELSE NULL::timestamp with time zone
        END AS max_syonin_date,
    sosiki.sosiki_sortkey,
    workflow.email_ad
   FROM (workflow
     LEFT JOIN sosiki ON (((workflow.sinseisyozoku)::text = (sosiki.sosiki_pkey)::text)))
  WHERE (workflow.delete_flag = 0);


--
-- Name: workflow_map_detail; Type: VIEW; Schema: public; Owner: -
--

CREATE VIEW workflow_map_detail AS
 SELECT workflow_map.id,
    workflow_map.workflow_id,
    workflow_map.user_id,
    user1.user_name,
    user1.sosiki_pkey,
    user1.email_ad,
    workflow_map.syonin_date,
    workflow_map.syoninsya,
    workflow_map.progress,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '10007'::text) AND ((code.code)::text = (workflow_map.progress)::text))) AS progress_name,
    workflow_map.order_index,
    workflow_map.note,
    workflow_map.delete_flag,
    workflow_map.create_user_pkey,
    user2.user_name AS create_user_name,
    workflow_map.create_datetime,
    workflow_map.update_user_pkey,
    user3.user_name AS update_user_name,
    workflow_map.update_datetime
   FROM (((workflow_map
     LEFT JOIN "user" user1 ON ((workflow_map.user_id = user1.user_pkey)))
     LEFT JOIN "user" user2 ON ((workflow_map.create_user_pkey = user2.user_pkey)))
     LEFT JOIN "user" user3 ON ((workflow_map.update_user_pkey = user3.user_pkey)))
  ORDER BY workflow_map.workflow_id, workflow_map.order_index;


--
-- Name: workflow_map_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE workflow_map_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: workflow_map_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE workflow_map_id_seq OWNED BY workflow_map.id;


--
-- Name: workflow_paperwork_pc_distribution_apply; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE workflow_paperwork_pc_distribution_apply (
    id integer NOT NULL,
    workflow_id integer NOT NULL,
    sosiki_pkey integer,
    equipment_class character varying(6) NOT NULL,
    qty integer,
    place_cd character varying(8) NOT NULL,
    location text,
    treasurer_class character varying(6) NOT NULL,
    add_reason_before_filename character varying(255),
    add_reason_after_filename character varying(255),
    delivery_person_name character varying(255),
    delivery_address text,
    delivery_tel character varying(255),
    request_reason text,
    delete_flag integer DEFAULT 0 NOT NULL,
    create_user_pkey integer NOT NULL,
    create_datetime timestamp with time zone NOT NULL,
    update_user_pkey integer NOT NULL,
    update_datetime timestamp with time zone NOT NULL
);


--
-- Name: TABLE workflow_paperwork_pc_distribution_apply; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE workflow_paperwork_pc_distribution_apply IS 'ワークフロー事務処理PC配布申請';


--
-- Name: COLUMN workflow_paperwork_pc_distribution_apply.id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_paperwork_pc_distribution_apply.id IS '内部キー';


--
-- Name: COLUMN workflow_paperwork_pc_distribution_apply.workflow_id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_paperwork_pc_distribution_apply.workflow_id IS 'ワークフロー内部キー';


--
-- Name: COLUMN workflow_paperwork_pc_distribution_apply.sosiki_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_paperwork_pc_distribution_apply.sosiki_pkey IS '組織テーブルの内部キー';


--
-- Name: COLUMN workflow_paperwork_pc_distribution_apply.equipment_class; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_paperwork_pc_distribution_apply.equipment_class IS '機器種別';


--
-- Name: COLUMN workflow_paperwork_pc_distribution_apply.qty; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_paperwork_pc_distribution_apply.qty IS '数量';


--
-- Name: COLUMN workflow_paperwork_pc_distribution_apply.place_cd; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_paperwork_pc_distribution_apply.place_cd IS '設置場所コード';


--
-- Name: COLUMN workflow_paperwork_pc_distribution_apply.location; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_paperwork_pc_distribution_apply.location IS '設置場所（任意）';


--
-- Name: COLUMN workflow_paperwork_pc_distribution_apply.treasurer_class; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_paperwork_pc_distribution_apply.treasurer_class IS '会計種別';


--
-- Name: COLUMN workflow_paperwork_pc_distribution_apply.add_reason_before_filename; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_paperwork_pc_distribution_apply.add_reason_before_filename IS '増設理由書変換前ファイル名';


--
-- Name: COLUMN workflow_paperwork_pc_distribution_apply.add_reason_after_filename; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_paperwork_pc_distribution_apply.add_reason_after_filename IS '増設理由書変換後ファイル名';


--
-- Name: COLUMN workflow_paperwork_pc_distribution_apply.delivery_person_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_paperwork_pc_distribution_apply.delivery_person_name IS '納品先受取担当者名';


--
-- Name: COLUMN workflow_paperwork_pc_distribution_apply.delivery_address; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_paperwork_pc_distribution_apply.delivery_address IS '納品先住所';


--
-- Name: COLUMN workflow_paperwork_pc_distribution_apply.delivery_tel; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_paperwork_pc_distribution_apply.delivery_tel IS '納品先Tel';


--
-- Name: COLUMN workflow_paperwork_pc_distribution_apply.request_reason; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_paperwork_pc_distribution_apply.request_reason IS '配布申請理由';


--
-- Name: COLUMN workflow_paperwork_pc_distribution_apply.delete_flag; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_paperwork_pc_distribution_apply.delete_flag IS '削除フラグ';


--
-- Name: COLUMN workflow_paperwork_pc_distribution_apply.create_user_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_paperwork_pc_distribution_apply.create_user_pkey IS '登録ユーザーID';


--
-- Name: COLUMN workflow_paperwork_pc_distribution_apply.create_datetime; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_paperwork_pc_distribution_apply.create_datetime IS '登録日時';


--
-- Name: COLUMN workflow_paperwork_pc_distribution_apply.update_user_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_paperwork_pc_distribution_apply.update_user_pkey IS '更新ユーザーID';


--
-- Name: COLUMN workflow_paperwork_pc_distribution_apply.update_datetime; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_paperwork_pc_distribution_apply.update_datetime IS '更新日時';


--
-- Name: workflow_paperwork_pc_distribution_apply_detail; Type: VIEW; Schema: public; Owner: -
--

CREATE VIEW workflow_paperwork_pc_distribution_apply_detail AS
 SELECT workflow_paperwork_pc_distribution_apply.id,
    workflow_paperwork_pc_distribution_apply.workflow_id,
    workflow_paperwork_pc_distribution_apply.sosiki_pkey,
    sosiki.syozoku_name AS sosiki_name,
    sosiki.syozoku_fullname AS sosiki_fullname,
    COALESCE((sosiki.sosiki_sortkey)::integer, 0) AS sosiki_sortkey,
    workflow_paperwork_pc_distribution_apply.treasurer_class,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '10026'::text) AND ((code.code)::text = (workflow_paperwork_pc_distribution_apply.treasurer_class)::text))) AS treasurer_class_name,
    workflow_paperwork_pc_distribution_apply.place_cd,
    ( SELECT ((((((location_code.place_cd)::text || ' '::text) || (COALESCE(location_code.bureau, ''::character varying))::text) || COALESCE(('/'::text || (location_code.department)::text), ''::text)) || COALESCE(('/'::text || (location_code.division)::text), ''::text)) || COALESCE(('/'::text || (location_code.subsection)::text), ''::text))
           FROM location_code
          WHERE ((location_code.place_cd)::text = (workflow_paperwork_pc_distribution_apply.place_cd)::text)) AS place_cd_name,
    workflow_paperwork_pc_distribution_apply.location,
    workflow_paperwork_pc_distribution_apply.equipment_class,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '10027'::text) AND ((code.code)::text = (workflow_paperwork_pc_distribution_apply.equipment_class)::text))) AS equipment_class_name,
    workflow_paperwork_pc_distribution_apply.qty,
    workflow_paperwork_pc_distribution_apply.add_reason_before_filename,
    workflow_paperwork_pc_distribution_apply.add_reason_after_filename,
    workflow_paperwork_pc_distribution_apply.delivery_person_name,
    workflow_paperwork_pc_distribution_apply.delivery_address,
    workflow_paperwork_pc_distribution_apply.delivery_tel,
    workflow_paperwork_pc_distribution_apply.request_reason,
    workflow_paperwork_pc_distribution_apply.delete_flag,
    workflow_paperwork_pc_distribution_apply.create_user_pkey,
    user2.user_name AS create_user_name,
    workflow_paperwork_pc_distribution_apply.create_datetime,
    workflow_paperwork_pc_distribution_apply.update_user_pkey,
    user3.user_name AS update_user_name,
    workflow_paperwork_pc_distribution_apply.update_datetime,
    ( SELECT workflow.application_note
           FROM workflow
          WHERE (workflow_paperwork_pc_distribution_apply.workflow_id = workflow.id)
         LIMIT 1) AS application_note
   FROM (((workflow_paperwork_pc_distribution_apply
     LEFT JOIN sosiki ON (((workflow_paperwork_pc_distribution_apply.sosiki_pkey)::text = (sosiki.sosiki_pkey)::text)))
     LEFT JOIN "user" user2 ON ((workflow_paperwork_pc_distribution_apply.create_user_pkey = user2.user_pkey)))
     LEFT JOIN "user" user3 ON ((workflow_paperwork_pc_distribution_apply.update_user_pkey = user3.user_pkey)));


--
-- Name: workflow_paperwork_pc_distribution_apply_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE workflow_paperwork_pc_distribution_apply_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: workflow_paperwork_pc_distribution_apply_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE workflow_paperwork_pc_distribution_apply_id_seq OWNED BY workflow_paperwork_pc_distribution_apply.id;


--
-- Name: workflow_paperwork_pc_distribution_hard_apply; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE workflow_paperwork_pc_distribution_hard_apply (
    id integer NOT NULL,
    workflow_id integer NOT NULL,
    hard_kanrino character varying(255)
);


--
-- Name: TABLE workflow_paperwork_pc_distribution_hard_apply; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE workflow_paperwork_pc_distribution_hard_apply IS 'ワークフロー事務処理PC配布ハードウェア情報';


--
-- Name: COLUMN workflow_paperwork_pc_distribution_hard_apply.id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_paperwork_pc_distribution_hard_apply.id IS '内部キー';


--
-- Name: COLUMN workflow_paperwork_pc_distribution_hard_apply.workflow_id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_paperwork_pc_distribution_hard_apply.workflow_id IS 'ワークフロー内部キー';


--
-- Name: COLUMN workflow_paperwork_pc_distribution_hard_apply.hard_kanrino; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_paperwork_pc_distribution_hard_apply.hard_kanrino IS 'ハードウェア管理番号';


--
-- Name: workflow_paperwork_pc_distribution_hard_apply_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE workflow_paperwork_pc_distribution_hard_apply_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: workflow_paperwork_pc_distribution_hard_apply_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE workflow_paperwork_pc_distribution_hard_apply_id_seq OWNED BY workflow_paperwork_pc_distribution_hard_apply.id;


--
-- Name: workflow_paperwork_pc_return_apply; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE workflow_paperwork_pc_return_apply (
    id integer NOT NULL,
    workflow_id integer NOT NULL,
    hard_pkey integer NOT NULL,
    sosiki_pkey integer,
    hard_kanrino character varying(255),
    soft_installdel character varying(6),
    use_name character varying(80),
    tyoutatu text,
    bikou text,
    tyoutatu_date date,
    haiki_date date,
    version smallint NOT NULL,
    newkbn smallint,
    lease_limit_date date,
    hardware_type character varying(6) NOT NULL,
    special_sys_cd character varying(5),
    ownership character varying(6) NOT NULL,
    control_number character varying(255),
    treasurer_class character varying(6) NOT NULL,
    place_cd character varying(8) NOT NULL,
    location text,
    equipment_class character varying(6) NOT NULL,
    mac_address character varying(255),
    return_date date,
    instruction_number character varying(255),
    admin_comment text,
    cpu_core_number text,
    virtual_description text,
    use_class character varying(6),
    return_due_date date,
    delete_flag integer DEFAULT 0 NOT NULL,
    create_user_pkey integer NOT NULL,
    create_datetime timestamp with time zone NOT NULL,
    update_user_pkey integer NOT NULL,
    update_datetime timestamp with time zone NOT NULL,
    device_control character varying(6),
    takeout character varying(6),
    takeout_start_date date,
    takeout_end_date date
);


--
-- Name: TABLE workflow_paperwork_pc_return_apply; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE workflow_paperwork_pc_return_apply IS 'ワークフロー事務処理PC返却申請';


--
-- Name: COLUMN workflow_paperwork_pc_return_apply.id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_paperwork_pc_return_apply.id IS '内部キー';


--
-- Name: COLUMN workflow_paperwork_pc_return_apply.workflow_id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_paperwork_pc_return_apply.workflow_id IS 'ワークフロー内部キー';


--
-- Name: COLUMN workflow_paperwork_pc_return_apply.hard_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_paperwork_pc_return_apply.hard_pkey IS 'ハードウェア内部キー';


--
-- Name: COLUMN workflow_paperwork_pc_return_apply.sosiki_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_paperwork_pc_return_apply.sosiki_pkey IS '組織テーブルの内部キー';


--
-- Name: COLUMN workflow_paperwork_pc_return_apply.hard_kanrino; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_paperwork_pc_return_apply.hard_kanrino IS 'ハードウェア管理番号';


--
-- Name: COLUMN workflow_paperwork_pc_return_apply.soft_installdel; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_paperwork_pc_return_apply.soft_installdel IS '使用者によるソフトウェア追加導入・削除';


--
-- Name: COLUMN workflow_paperwork_pc_return_apply.use_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_paperwork_pc_return_apply.use_name IS '使用者名';


--
-- Name: COLUMN workflow_paperwork_pc_return_apply.tyoutatu; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_paperwork_pc_return_apply.tyoutatu IS '調達情報';


--
-- Name: COLUMN workflow_paperwork_pc_return_apply.bikou; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_paperwork_pc_return_apply.bikou IS '備考';


--
-- Name: COLUMN workflow_paperwork_pc_return_apply.tyoutatu_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_paperwork_pc_return_apply.tyoutatu_date IS '調達日';


--
-- Name: COLUMN workflow_paperwork_pc_return_apply.haiki_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_paperwork_pc_return_apply.haiki_date IS '廃棄日';


--
-- Name: COLUMN workflow_paperwork_pc_return_apply.version; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_paperwork_pc_return_apply.version IS 'バージョン';


--
-- Name: COLUMN workflow_paperwork_pc_return_apply.newkbn; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_paperwork_pc_return_apply.newkbn IS '新規区分';


--
-- Name: COLUMN workflow_paperwork_pc_return_apply.lease_limit_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_paperwork_pc_return_apply.lease_limit_date IS 'リース期限';


--
-- Name: COLUMN workflow_paperwork_pc_return_apply.hardware_type; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_paperwork_pc_return_apply.hardware_type IS 'ハードウェア種別';


--
-- Name: COLUMN workflow_paperwork_pc_return_apply.special_sys_cd; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_paperwork_pc_return_apply.special_sys_cd IS '情報システムコード';


--
-- Name: COLUMN workflow_paperwork_pc_return_apply.ownership; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_paperwork_pc_return_apply.ownership IS '所有権';


--
-- Name: COLUMN workflow_paperwork_pc_return_apply.control_number; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_paperwork_pc_return_apply.control_number IS '専用の管理番号';


--
-- Name: COLUMN workflow_paperwork_pc_return_apply.treasurer_class; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_paperwork_pc_return_apply.treasurer_class IS '会計種別';


--
-- Name: COLUMN workflow_paperwork_pc_return_apply.place_cd; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_paperwork_pc_return_apply.place_cd IS '設置場所コード';


--
-- Name: COLUMN workflow_paperwork_pc_return_apply.location; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_paperwork_pc_return_apply.location IS '設置場所（任意）';


--
-- Name: COLUMN workflow_paperwork_pc_return_apply.equipment_class; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_paperwork_pc_return_apply.equipment_class IS '機器種別';


--
-- Name: COLUMN workflow_paperwork_pc_return_apply.mac_address; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_paperwork_pc_return_apply.mac_address IS 'MACアドレス';


--
-- Name: COLUMN workflow_paperwork_pc_return_apply.return_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_paperwork_pc_return_apply.return_date IS '返却日';


--
-- Name: COLUMN workflow_paperwork_pc_return_apply.instruction_number; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_paperwork_pc_return_apply.instruction_number IS '支出命令番号';


--
-- Name: COLUMN workflow_paperwork_pc_return_apply.admin_comment; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_paperwork_pc_return_apply.admin_comment IS '管理者コメント';


--
-- Name: COLUMN workflow_paperwork_pc_return_apply.cpu_core_number; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_paperwork_pc_return_apply.cpu_core_number IS 'CPU及びコア数';


--
-- Name: COLUMN workflow_paperwork_pc_return_apply.virtual_description; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_paperwork_pc_return_apply.virtual_description IS '仮想環境説明文';


--
-- Name: COLUMN workflow_paperwork_pc_return_apply.use_class; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_paperwork_pc_return_apply.use_class IS '用途区分';


--
-- Name: COLUMN workflow_paperwork_pc_return_apply.return_due_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_paperwork_pc_return_apply.return_due_date IS '返却予定日';


--
-- Name: COLUMN workflow_paperwork_pc_return_apply.delete_flag; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_paperwork_pc_return_apply.delete_flag IS '削除フラグ';


--
-- Name: COLUMN workflow_paperwork_pc_return_apply.create_user_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_paperwork_pc_return_apply.create_user_pkey IS '登録ユーザーID';


--
-- Name: COLUMN workflow_paperwork_pc_return_apply.create_datetime; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_paperwork_pc_return_apply.create_datetime IS '登録日時';


--
-- Name: COLUMN workflow_paperwork_pc_return_apply.update_user_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_paperwork_pc_return_apply.update_user_pkey IS '更新ユーザーID';


--
-- Name: COLUMN workflow_paperwork_pc_return_apply.update_datetime; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_paperwork_pc_return_apply.update_datetime IS '更新日時';


--
-- Name: COLUMN workflow_paperwork_pc_return_apply.device_control; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_paperwork_pc_return_apply.device_control IS 'デバイス制御';


--
-- Name: COLUMN workflow_paperwork_pc_return_apply.takeout; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_paperwork_pc_return_apply.takeout IS '持ち出し';


--
-- Name: COLUMN workflow_paperwork_pc_return_apply.takeout_start_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_paperwork_pc_return_apply.takeout_start_date IS '持ち出し開始日';


--
-- Name: COLUMN workflow_paperwork_pc_return_apply.takeout_end_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_paperwork_pc_return_apply.takeout_end_date IS '持ち出し終了日';


--
-- Name: workflow_paperwork_pc_return_apply_detail; Type: VIEW; Schema: public; Owner: -
--

CREATE VIEW workflow_paperwork_pc_return_apply_detail AS
 SELECT workflow_paperwork_pc_return_apply.id,
    workflow_paperwork_pc_return_apply.workflow_id,
    workflow_paperwork_pc_return_apply.sosiki_pkey,
    sosiki.syozoku_name AS sosiki_name,
    sosiki.syozoku_fullname AS sosiki_fullname,
    COALESCE((sosiki.sosiki_sortkey)::integer, 0) AS sosiki_sortkey,
    workflow_paperwork_pc_return_apply.hard_pkey,
    workflow_paperwork_pc_return_apply.hard_kanrino,
    workflow_paperwork_pc_return_apply.soft_installdel,
    workflow_paperwork_pc_return_apply.use_name,
    workflow_paperwork_pc_return_apply.tyoutatu,
    workflow_paperwork_pc_return_apply.bikou,
    workflow_paperwork_pc_return_apply.tyoutatu_date,
    workflow_paperwork_pc_return_apply.haiki_date,
    workflow_paperwork_pc_return_apply.version,
    workflow_paperwork_pc_return_apply.newkbn,
    workflow_paperwork_pc_return_apply.lease_limit_date,
    workflow_paperwork_pc_return_apply.hardware_type,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '10024'::text) AND ((code.code)::text = (workflow_paperwork_pc_return_apply.hardware_type)::text))) AS hardware_type_name,
    workflow_paperwork_pc_return_apply.special_sys_cd,
    ( SELECT (((info_system_code.special_sys_cd)::text || ' '::text) || (COALESCE(info_system_code.special_sys_nm, ''::character varying))::text)
           FROM info_system_code
          WHERE ((info_system_code.special_sys_cd)::text = (workflow_paperwork_pc_return_apply.special_sys_cd)::text)) AS special_sys_cd_name,
    workflow_paperwork_pc_return_apply.ownership,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '10025'::text) AND ((code.code)::text = (workflow_paperwork_pc_return_apply.ownership)::text))) AS ownership_name,
    workflow_paperwork_pc_return_apply.control_number,
    workflow_paperwork_pc_return_apply.treasurer_class,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '10026'::text) AND ((code.code)::text = (workflow_paperwork_pc_return_apply.treasurer_class)::text))) AS treasurer_class_name,
    workflow_paperwork_pc_return_apply.place_cd,
    ( SELECT ((((((location_code.place_cd)::text || ' '::text) || (COALESCE(location_code.bureau, ''::character varying))::text) || COALESCE(('/'::text || (location_code.department)::text), ''::text)) || COALESCE(('/'::text || (location_code.division)::text), ''::text)) || COALESCE(('/'::text || (location_code.subsection)::text), ''::text))
           FROM location_code
          WHERE ((location_code.place_cd)::text = (workflow_paperwork_pc_return_apply.place_cd)::text)) AS place_cd_name,
    workflow_paperwork_pc_return_apply.location,
    workflow_paperwork_pc_return_apply.equipment_class,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '10027'::text) AND ((code.code)::text = (workflow_paperwork_pc_return_apply.equipment_class)::text))) AS equipment_class_name,
    workflow_paperwork_pc_return_apply.mac_address,
    workflow_paperwork_pc_return_apply.return_date,
    workflow_paperwork_pc_return_apply.instruction_number,
    workflow_paperwork_pc_return_apply.admin_comment,
    workflow_paperwork_pc_return_apply.cpu_core_number,
    workflow_paperwork_pc_return_apply.virtual_description,
    workflow_paperwork_pc_return_apply.use_class,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '10030'::text) AND ((code.code)::text = (workflow_paperwork_pc_return_apply.use_class)::text))) AS use_class_name,
    workflow_paperwork_pc_return_apply.return_due_date,
    workflow_paperwork_pc_return_apply.delete_flag,
    workflow_paperwork_pc_return_apply.create_user_pkey,
    user2.user_name AS create_user_name,
    workflow_paperwork_pc_return_apply.create_datetime,
    workflow_paperwork_pc_return_apply.update_user_pkey,
    user3.user_name AS update_user_name,
    workflow_paperwork_pc_return_apply.update_datetime,
    ( SELECT workflow.application_note
           FROM workflow
          WHERE (workflow_paperwork_pc_return_apply.workflow_id = workflow.id)
         LIMIT 1) AS application_note,
    workflow_paperwork_pc_return_apply.device_control,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '10042'::text) AND ((code.code)::text = (workflow_paperwork_pc_return_apply.device_control)::text))) AS device_control_name,
    workflow_paperwork_pc_return_apply.takeout,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '10043'::text) AND ((code.code)::text = (workflow_paperwork_pc_return_apply.takeout)::text))) AS takeout_name,
    workflow_paperwork_pc_return_apply.takeout_start_date,
    workflow_paperwork_pc_return_apply.takeout_end_date
   FROM (((workflow_paperwork_pc_return_apply
     LEFT JOIN sosiki ON (((workflow_paperwork_pc_return_apply.sosiki_pkey)::text = (sosiki.sosiki_pkey)::text)))
     LEFT JOIN "user" user2 ON ((workflow_paperwork_pc_return_apply.create_user_pkey = user2.user_pkey)))
     LEFT JOIN "user" user3 ON ((workflow_paperwork_pc_return_apply.update_user_pkey = user3.user_pkey)));


--
-- Name: workflow_paperwork_pc_return_apply_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE workflow_paperwork_pc_return_apply_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: workflow_paperwork_pc_return_apply_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE workflow_paperwork_pc_return_apply_id_seq OWNED BY workflow_paperwork_pc_return_apply.id;


--
-- Name: workflow_report_inventory_result_apply; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE workflow_report_inventory_result_apply (
    id integer NOT NULL,
    workflow_id integer NOT NULL,
    tel character varying(20) NOT NULL,
    report_ref_date date NOT NULL,
    start_date date NOT NULL,
    end_date date NOT NULL,
    imp_result text NOT NULL,
    correct_content text NOT NULL,
    delete_flag integer DEFAULT 0 NOT NULL,
    create_user_pkey integer NOT NULL,
    create_datetime timestamp with time zone NOT NULL,
    update_user_pkey integer NOT NULL,
    update_datetime timestamp with time zone NOT NULL
);


--
-- Name: TABLE workflow_report_inventory_result_apply; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE workflow_report_inventory_result_apply IS '棚卸結果報告書申請';


--
-- Name: COLUMN workflow_report_inventory_result_apply.id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_report_inventory_result_apply.id IS '内部キー';


--
-- Name: COLUMN workflow_report_inventory_result_apply.workflow_id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_report_inventory_result_apply.workflow_id IS 'ワークフロー内部キー';


--
-- Name: COLUMN workflow_report_inventory_result_apply.tel; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_report_inventory_result_apply.tel IS '電話番号';


--
-- Name: COLUMN workflow_report_inventory_result_apply.report_ref_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_report_inventory_result_apply.report_ref_date IS '棚卸基準日';


--
-- Name: COLUMN workflow_report_inventory_result_apply.start_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_report_inventory_result_apply.start_date IS '実施開始日';


--
-- Name: COLUMN workflow_report_inventory_result_apply.end_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_report_inventory_result_apply.end_date IS '実施終了日';


--
-- Name: COLUMN workflow_report_inventory_result_apply.imp_result; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_report_inventory_result_apply.imp_result IS '実施結果';


--
-- Name: COLUMN workflow_report_inventory_result_apply.correct_content; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_report_inventory_result_apply.correct_content IS '是正内容';


--
-- Name: COLUMN workflow_report_inventory_result_apply.delete_flag; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_report_inventory_result_apply.delete_flag IS '削除フラグ';


--
-- Name: COLUMN workflow_report_inventory_result_apply.create_user_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_report_inventory_result_apply.create_user_pkey IS '登録ユーザーID';


--
-- Name: COLUMN workflow_report_inventory_result_apply.create_datetime; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_report_inventory_result_apply.create_datetime IS '登録日時';


--
-- Name: COLUMN workflow_report_inventory_result_apply.update_user_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_report_inventory_result_apply.update_user_pkey IS '更新ユーザーID';


--
-- Name: COLUMN workflow_report_inventory_result_apply.update_datetime; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_report_inventory_result_apply.update_datetime IS '更新日時';


--
-- Name: workflow_report_inventory_result_apply_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE workflow_report_inventory_result_apply_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: workflow_report_inventory_result_apply_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE workflow_report_inventory_result_apply_id_seq OWNED BY workflow_report_inventory_result_apply.id;


--
-- Name: workflow_software_batch_io_apply; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE workflow_software_batch_io_apply (
    id integer NOT NULL,
    workflow_id integer NOT NULL,
    sosiki_pkey integer,
    target_system text,
    add_remove_selection character varying(6) NOT NULL,
    add_remove_purpose text,
    csv_place character varying(255),
    before_filename character varying(255),
    after_filename character varying(255),
    io_count integer,
    delete_flag integer DEFAULT 0 NOT NULL,
    create_user_pkey integer NOT NULL,
    create_datetime timestamp with time zone NOT NULL,
    update_user_pkey integer NOT NULL,
    update_datetime timestamp with time zone NOT NULL
);


--
-- Name: TABLE workflow_software_batch_io_apply; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE workflow_software_batch_io_apply IS 'ワークフローソフトウェア一括導入・一括削除申請';


--
-- Name: COLUMN workflow_software_batch_io_apply.id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_batch_io_apply.id IS '内部キー';


--
-- Name: COLUMN workflow_software_batch_io_apply.workflow_id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_batch_io_apply.workflow_id IS 'ワークフロー内部キー';


--
-- Name: COLUMN workflow_software_batch_io_apply.sosiki_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_batch_io_apply.sosiki_pkey IS '組織テーブルの内部キー';


--
-- Name: COLUMN workflow_software_batch_io_apply.target_system; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_batch_io_apply.target_system IS '対象とするシステム等';


--
-- Name: COLUMN workflow_software_batch_io_apply.add_remove_selection; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_batch_io_apply.add_remove_selection IS '導入または削除の選択';


--
-- Name: COLUMN workflow_software_batch_io_apply.add_remove_purpose; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_batch_io_apply.add_remove_purpose IS '導入または削除の目的';


--
-- Name: COLUMN workflow_software_batch_io_apply.csv_place; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_batch_io_apply.csv_place IS 'CSV格納場所';


--
-- Name: COLUMN workflow_software_batch_io_apply.before_filename; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_batch_io_apply.before_filename IS '変換前ファイル名';


--
-- Name: COLUMN workflow_software_batch_io_apply.after_filename; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_batch_io_apply.after_filename IS '変換後ファイル名';


--
-- Name: COLUMN workflow_software_batch_io_apply.io_count; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_batch_io_apply.io_count IS '件数';


--
-- Name: COLUMN workflow_software_batch_io_apply.delete_flag; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_batch_io_apply.delete_flag IS '削除フラグ';


--
-- Name: COLUMN workflow_software_batch_io_apply.create_user_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_batch_io_apply.create_user_pkey IS '登録ユーザーID';


--
-- Name: COLUMN workflow_software_batch_io_apply.create_datetime; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_batch_io_apply.create_datetime IS '登録日時';


--
-- Name: COLUMN workflow_software_batch_io_apply.update_user_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_batch_io_apply.update_user_pkey IS '更新ユーザーID';


--
-- Name: COLUMN workflow_software_batch_io_apply.update_datetime; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_batch_io_apply.update_datetime IS '更新日時';


--
-- Name: workflow_software_batch_io_apply_detail; Type: VIEW; Schema: public; Owner: -
--

CREATE VIEW workflow_software_batch_io_apply_detail AS
 SELECT workflow_software_batch_io_apply.id,
    workflow_software_batch_io_apply.workflow_id,
    workflow_software_batch_io_apply.sosiki_pkey,
    sosiki.syozoku_name AS sosiki_name,
    sosiki.syozoku_fullname AS sosiki_fullname,
    workflow_software_batch_io_apply.target_system,
    workflow_software_batch_io_apply.add_remove_selection,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '10041'::text) AND ((code.code)::text = (workflow_software_batch_io_apply.add_remove_selection)::text))) AS add_remove_selection_name,
    workflow_software_batch_io_apply.add_remove_purpose,
    workflow_software_batch_io_apply.csv_place,
    workflow_software_batch_io_apply.before_filename,
    workflow_software_batch_io_apply.after_filename,
    workflow_software_batch_io_apply.io_count,
    workflow_software_batch_io_apply.delete_flag,
    workflow_software_batch_io_apply.create_user_pkey,
    workflow_software_batch_io_apply.create_datetime,
    workflow_software_batch_io_apply.update_user_pkey,
    workflow_software_batch_io_apply.update_datetime,
    ( SELECT workflow.application_note
           FROM workflow
          WHERE (workflow_software_batch_io_apply.workflow_id = workflow.id)
         LIMIT 1) AS application_note
   FROM (workflow_software_batch_io_apply
     LEFT JOIN sosiki ON ((workflow_software_batch_io_apply.sosiki_pkey = sosiki.sosiki_pkey)));


--
-- Name: workflow_software_batch_io_apply_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE workflow_software_batch_io_apply_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: workflow_software_batch_io_apply_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE workflow_software_batch_io_apply_id_seq OWNED BY workflow_software_batch_io_apply.id;


--
-- Name: workflow_software_licence_procurement_apply; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE workflow_software_licence_procurement_apply (
    id integer NOT NULL,
    workflow_id integer NOT NULL,
    sosiki_pkey integer,
    licencelist_pkey integer,
    install_su integer,
    licence_place character varying(255) NOT NULL,
    procurement_su integer,
    media_su integer,
    media_place character varying(255) NOT NULL,
    wf_procurement_division character varying(6),
    need_reason text,
    licence_kanrino character varying(255),
    hard_pkey integer,
    licence_pkey2 integer,
    licence_no text,
    tyoutatu text,
    hokan_baitai text,
    hokan_basyo text,
    bikou text,
    tyoutatu_date date,
    haiki_date date,
    version smallint NOT NULL,
    newkbn smallint,
    kanri_sosiki_pkey integer,
    holdings_number integer,
    kanri_sosiki_flg smallint,
    held_number character varying(255),
    license_limit_date date,
    procurement_division character varying(6) NOT NULL,
    instruction_number character varying(255),
    ownership character varying(6) NOT NULL,
    using_name character varying(255),
    upgrade_policy_date date,
    licence_reg_number integer,
    media_reg_number integer,
    hard_kotei_csv_place character varying(255),
    hard_kotei_before_filename character varying(255),
    hard_kotei_after_filename character varying(255),
    upgrade_csv_place character varying(255),
    upgrade_before_filename character varying(255),
    upgrade_after_filename character varying(255),
    delete_flag integer DEFAULT 0 NOT NULL,
    create_user_pkey integer NOT NULL,
    create_datetime timestamp with time zone NOT NULL,
    update_user_pkey integer NOT NULL,
    update_datetime timestamp with time zone NOT NULL
);


--
-- Name: TABLE workflow_software_licence_procurement_apply; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE workflow_software_licence_procurement_apply IS 'ワークフローライセンス調達申請';


--
-- Name: COLUMN workflow_software_licence_procurement_apply.id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_licence_procurement_apply.id IS '内部キー';


--
-- Name: COLUMN workflow_software_licence_procurement_apply.workflow_id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_licence_procurement_apply.workflow_id IS 'ワークフロー内部キー';


--
-- Name: COLUMN workflow_software_licence_procurement_apply.sosiki_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_licence_procurement_apply.sosiki_pkey IS '組織テーブルの内部キー';


--
-- Name: COLUMN workflow_software_licence_procurement_apply.licencelist_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_licence_procurement_apply.licencelist_pkey IS 'ライセンス一覧表の内部キー';


--
-- Name: COLUMN workflow_software_licence_procurement_apply.install_su; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_licence_procurement_apply.install_su IS '導入可能数';


--
-- Name: COLUMN workflow_software_licence_procurement_apply.licence_place; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_licence_procurement_apply.licence_place IS 'ライセンス保管場所';


--
-- Name: COLUMN workflow_software_licence_procurement_apply.procurement_su; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_licence_procurement_apply.procurement_su IS '調達数';


--
-- Name: COLUMN workflow_software_licence_procurement_apply.media_su; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_licence_procurement_apply.media_su IS '媒体数';


--
-- Name: COLUMN workflow_software_licence_procurement_apply.media_place; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_licence_procurement_apply.media_place IS '媒体保管場所';


--
-- Name: COLUMN workflow_software_licence_procurement_apply.wf_procurement_division; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_licence_procurement_apply.wf_procurement_division IS 'ワークフロー調達区分';


--
-- Name: COLUMN workflow_software_licence_procurement_apply.need_reason; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_licence_procurement_apply.need_reason IS '必要とする理由';


--
-- Name: COLUMN workflow_software_licence_procurement_apply.licence_kanrino; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_licence_procurement_apply.licence_kanrino IS 'ライセンス管理番号';


--
-- Name: COLUMN workflow_software_licence_procurement_apply.hard_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_licence_procurement_apply.hard_pkey IS 'ハードウェア台帳の内部キー';


--
-- Name: COLUMN workflow_software_licence_procurement_apply.licence_pkey2; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_licence_procurement_apply.licence_pkey2 IS 'ライセンス台帳の内部キー';


--
-- Name: COLUMN workflow_software_licence_procurement_apply.licence_no; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_licence_procurement_apply.licence_no IS 'ライセンス証書番号';


--
-- Name: COLUMN workflow_software_licence_procurement_apply.tyoutatu; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_licence_procurement_apply.tyoutatu IS '調達情報';


--
-- Name: COLUMN workflow_software_licence_procurement_apply.hokan_baitai; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_licence_procurement_apply.hokan_baitai IS '保管媒体';


--
-- Name: COLUMN workflow_software_licence_procurement_apply.hokan_basyo; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_licence_procurement_apply.hokan_basyo IS '保管場所';


--
-- Name: COLUMN workflow_software_licence_procurement_apply.bikou; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_licence_procurement_apply.bikou IS '備考';


--
-- Name: COLUMN workflow_software_licence_procurement_apply.tyoutatu_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_licence_procurement_apply.tyoutatu_date IS '調達日';


--
-- Name: COLUMN workflow_software_licence_procurement_apply.haiki_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_licence_procurement_apply.haiki_date IS '廃棄日';


--
-- Name: COLUMN workflow_software_licence_procurement_apply.version; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_licence_procurement_apply.version IS 'バージョン';


--
-- Name: COLUMN workflow_software_licence_procurement_apply.newkbn; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_licence_procurement_apply.newkbn IS '新規区分';


--
-- Name: COLUMN workflow_software_licence_procurement_apply.kanri_sosiki_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_licence_procurement_apply.kanri_sosiki_pkey IS '管理組織の組織テーブル内部キー';


--
-- Name: COLUMN workflow_software_licence_procurement_apply.holdings_number; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_licence_procurement_apply.holdings_number IS '管理組織のライセンス保有数';


--
-- Name: COLUMN workflow_software_licence_procurement_apply.kanri_sosiki_flg; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_licence_procurement_apply.kanri_sosiki_flg IS '管理所属フラグ';


--
-- Name: COLUMN workflow_software_licence_procurement_apply.held_number; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_licence_procurement_apply.held_number IS '保有数（補足）';


--
-- Name: COLUMN workflow_software_licence_procurement_apply.license_limit_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_licence_procurement_apply.license_limit_date IS 'ライセンス使用期限';


--
-- Name: COLUMN workflow_software_licence_procurement_apply.procurement_division; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_licence_procurement_apply.procurement_division IS '調達区分';


--
-- Name: COLUMN workflow_software_licence_procurement_apply.instruction_number; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_licence_procurement_apply.instruction_number IS '支出命令番号';


--
-- Name: COLUMN workflow_software_licence_procurement_apply.ownership; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_licence_procurement_apply.ownership IS '所有権';


--
-- Name: COLUMN workflow_software_licence_procurement_apply.using_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_licence_procurement_apply.using_name IS '使用者名';


--
-- Name: COLUMN workflow_software_licence_procurement_apply.upgrade_policy_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_licence_procurement_apply.upgrade_policy_date IS 'アップグレード可能期限';


--
-- Name: COLUMN workflow_software_licence_procurement_apply.licence_reg_number; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_licence_procurement_apply.licence_reg_number IS '一括登録数(ライセンス管理番号の必要数)';


--
-- Name: COLUMN workflow_software_licence_procurement_apply.media_reg_number; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_licence_procurement_apply.media_reg_number IS '媒体管理番号の必要数';


--
-- Name: COLUMN workflow_software_licence_procurement_apply.hard_kotei_csv_place; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_licence_procurement_apply.hard_kotei_csv_place IS 'ハード固定CSV格納場所';


--
-- Name: COLUMN workflow_software_licence_procurement_apply.hard_kotei_before_filename; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_licence_procurement_apply.hard_kotei_before_filename IS 'ハード固定変換前ファイル名';


--
-- Name: COLUMN workflow_software_licence_procurement_apply.hard_kotei_after_filename; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_licence_procurement_apply.hard_kotei_after_filename IS 'ハード固定変換後ファイル名';


--
-- Name: COLUMN workflow_software_licence_procurement_apply.upgrade_csv_place; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_licence_procurement_apply.upgrade_csv_place IS 'アップグレードCSV格納場所';


--
-- Name: COLUMN workflow_software_licence_procurement_apply.upgrade_before_filename; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_licence_procurement_apply.upgrade_before_filename IS 'アップグレード変換前ファイル名';


--
-- Name: COLUMN workflow_software_licence_procurement_apply.upgrade_after_filename; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_licence_procurement_apply.upgrade_after_filename IS 'アップグレード変換後ファイル名';


--
-- Name: COLUMN workflow_software_licence_procurement_apply.delete_flag; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_licence_procurement_apply.delete_flag IS '削除フラグ';


--
-- Name: COLUMN workflow_software_licence_procurement_apply.create_user_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_licence_procurement_apply.create_user_pkey IS '登録ユーザーID';


--
-- Name: COLUMN workflow_software_licence_procurement_apply.create_datetime; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_licence_procurement_apply.create_datetime IS '登録日時';


--
-- Name: COLUMN workflow_software_licence_procurement_apply.update_user_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_licence_procurement_apply.update_user_pkey IS '更新ユーザーID';


--
-- Name: COLUMN workflow_software_licence_procurement_apply.update_datetime; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_licence_procurement_apply.update_datetime IS '更新日時';


--
-- Name: workflow_software_licence_procurement_apply_detail; Type: VIEW; Schema: public; Owner: -
--

CREATE VIEW workflow_software_licence_procurement_apply_detail AS
 SELECT workflow_software_licence_procurement_apply.id,
    workflow_software_licence_procurement_apply.workflow_id,
    workflow_software_licence_procurement_apply.sosiki_pkey,
    sosiki.syozoku_name AS sosiki_name,
    sosiki.syozoku_fullname AS sosiki_fullname,
    COALESCE((sosiki.sosiki_sortkey)::integer, 0) AS sosiki_sortkey,
    workflow_software_licence_procurement_apply.licence_place,
    workflow_software_licence_procurement_apply.procurement_su,
    workflow_software_licence_procurement_apply.media_su,
    workflow_software_licence_procurement_apply.media_place,
    workflow_software_licence_procurement_apply.wf_procurement_division,
    workflow_software_licence_procurement_apply.need_reason,
    workflow_software_licence_procurement_apply.install_su,
    workflow_software_licence_procurement_apply.licence_no,
    workflow_software_licence_procurement_apply.hard_pkey,
    workflow_software_licence_procurement_apply.licence_pkey2,
    workflow_software_licence_procurement_apply.licence_kanrino,
    workflow_software_licence_procurement_apply.tyoutatu,
    workflow_software_licence_procurement_apply.hokan_baitai,
    workflow_software_licence_procurement_apply.hokan_basyo,
    workflow_software_licence_procurement_apply.bikou,
    workflow_software_licence_procurement_apply.tyoutatu_date,
    workflow_software_licence_procurement_apply.haiki_date,
    workflow_software_licence_procurement_apply.version,
    workflow_software_licence_procurement_apply.newkbn,
    workflow_software_licence_procurement_apply.kanri_sosiki_pkey,
    kanri.syozoku_name AS kanri_sosiki_name,
    kanri.syozoku_fullname AS kanri_sosiki_fullname,
    COALESCE((kanri.sosiki_sortkey)::integer, 0) AS kanri_sosiki_sortkey,
    workflow_software_licence_procurement_apply.holdings_number,
    workflow_software_licence_procurement_apply.kanri_sosiki_flg,
    workflow_software_licence_procurement_apply.held_number,
    workflow_software_licence_procurement_apply.license_limit_date,
    workflow_software_licence_procurement_apply.procurement_division,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '10028'::text) AND ((code.code)::text = (workflow_software_licence_procurement_apply.procurement_division)::text))) AS procurement_division_name,
    workflow_software_licence_procurement_apply.instruction_number,
    workflow_software_licence_procurement_apply.ownership,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '10029'::text) AND ((code.code)::text = (workflow_software_licence_procurement_apply.ownership)::text))) AS ownership_name,
    workflow_software_licence_procurement_apply.using_name,
    workflow_software_licence_procurement_apply.upgrade_policy_date,
    workflow_software_licence_procurement_apply.licencelist_pkey,
    licencelist.soft_name,
    licencelist.licence_keitai,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '00005'::text) AND ((code.code)::text = (licencelist.licence_keitai)::text))) AS licence_keitai_name,
    licencelist.brand,
    licencelist.hard_kotei,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '00004'::text) AND ((code.code)::text = (licencelist.hard_kotei)::text))) AS hard_kotei_name,
    licencelist.upgrade,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '00004'::text) AND ((code.code)::text = (licencelist.upgrade)::text))) AS upgrade_name,
    licencelist.tokusitu_useproposal,
    licencelist.useproposal_youken,
    array_to_string(ARRAY( SELECT regexp_replace((p.program_add_del)::text, '
'::text, '(RETURN)'::text) AS regexp_replace
           FROM licencelistprogram p
          WHERE (p.licencelist_pkey = workflow_software_licence_procurement_apply.licencelist_pkey)
          ORDER BY p.program_add_del), '
'::text) AS program_add_del,
    array_to_string(ARRAY( SELECT regexp_replace((p.program_add_del)::text, '
'::text, '(RETURN)'::text) AS regexp_replace
           FROM licencelistprogram_down p
          WHERE (p.licencelist_pkey = workflow_software_licence_procurement_apply.licencelist_pkey)
          ORDER BY p.program_add_del), '
'::text) AS program_add_del_down,
    workflow_software_licence_procurement_apply.licence_reg_number,
    workflow_software_licence_procurement_apply.media_reg_number,
    workflow_software_licence_procurement_apply.hard_kotei_csv_place,
    workflow_software_licence_procurement_apply.hard_kotei_before_filename,
    workflow_software_licence_procurement_apply.hard_kotei_after_filename,
    workflow_software_licence_procurement_apply.upgrade_csv_place,
    workflow_software_licence_procurement_apply.upgrade_before_filename,
    workflow_software_licence_procurement_apply.upgrade_after_filename,
    workflow_software_licence_procurement_apply.delete_flag,
    workflow_software_licence_procurement_apply.create_user_pkey,
    user2.user_name AS create_user_name,
    workflow_software_licence_procurement_apply.create_datetime,
    workflow_software_licence_procurement_apply.update_user_pkey,
    user3.user_name AS update_user_name,
    workflow_software_licence_procurement_apply.update_datetime,
    ( SELECT workflow.application_note
           FROM workflow
          WHERE (workflow_software_licence_procurement_apply.workflow_id = workflow.id)
         LIMIT 1) AS application_note
   FROM (((((workflow_software_licence_procurement_apply
     LEFT JOIN sosiki ON (((workflow_software_licence_procurement_apply.sosiki_pkey)::text = (sosiki.sosiki_pkey)::text)))
     LEFT JOIN "user" user2 ON ((workflow_software_licence_procurement_apply.create_user_pkey = user2.user_pkey)))
     LEFT JOIN "user" user3 ON ((workflow_software_licence_procurement_apply.update_user_pkey = user3.user_pkey)))
     LEFT JOIN licencelist ON ((workflow_software_licence_procurement_apply.licencelist_pkey = licencelist.licencelist_pkey)))
     LEFT JOIN sosiki kanri ON ((workflow_software_licence_procurement_apply.kanri_sosiki_pkey = kanri.sosiki_pkey)));


--
-- Name: workflow_software_licence_procurement_apply_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE workflow_software_licence_procurement_apply_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: workflow_software_licence_procurement_apply_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE workflow_software_licence_procurement_apply_id_seq OWNED BY workflow_software_licence_procurement_apply.id;


--
-- Name: workflow_software_media_copy_apply; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE workflow_software_media_copy_apply (
    id integer NOT NULL,
    workflow_id integer NOT NULL,
    licence_pkey integer,
    licence_kanrino character varying(255),
    administrator_name character varying(80) NOT NULL,
    copy_original_kanrino character varying(255),
    media_place character varying(255) NOT NULL,
    procurement_division character varying(6) NOT NULL,
    quantity integer NOT NULL,
    copy_kakunin text,
    need_reason text NOT NULL,
    set_number integer,
    version smallint NOT NULL,
    delete_flag integer DEFAULT 0 NOT NULL,
    create_user_pkey integer NOT NULL,
    create_datetime timestamp with time zone NOT NULL,
    update_user_pkey integer NOT NULL,
    update_datetime timestamp with time zone NOT NULL
);


--
-- Name: TABLE workflow_software_media_copy_apply; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE workflow_software_media_copy_apply IS 'ワークフローライセンス媒体追加購入・複製申請';


--
-- Name: COLUMN workflow_software_media_copy_apply.id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_media_copy_apply.id IS '内部キー';


--
-- Name: COLUMN workflow_software_media_copy_apply.workflow_id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_media_copy_apply.workflow_id IS 'ワークフロー内部キー';


--
-- Name: COLUMN workflow_software_media_copy_apply.licence_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_media_copy_apply.licence_pkey IS 'ライセンス台帳の内部キー';


--
-- Name: COLUMN workflow_software_media_copy_apply.licence_kanrino; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_media_copy_apply.licence_kanrino IS 'ライセンス管理番号';


--
-- Name: COLUMN workflow_software_media_copy_apply.administrator_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_media_copy_apply.administrator_name IS '管理者名';


--
-- Name: COLUMN workflow_software_media_copy_apply.copy_original_kanrino; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_media_copy_apply.copy_original_kanrino IS 'ワークフロー複製元媒体管理番号';


--
-- Name: COLUMN workflow_software_media_copy_apply.media_place; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_media_copy_apply.media_place IS '媒体保管場所';


--
-- Name: COLUMN workflow_software_media_copy_apply.procurement_division; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_media_copy_apply.procurement_division IS '調達区分';


--
-- Name: COLUMN workflow_software_media_copy_apply.quantity; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_media_copy_apply.quantity IS '数量';


--
-- Name: COLUMN workflow_software_media_copy_apply.copy_kakunin; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_media_copy_apply.copy_kakunin IS '複製許諾条件の確認';


--
-- Name: COLUMN workflow_software_media_copy_apply.need_reason; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_media_copy_apply.need_reason IS '必要とする理由';


--
-- Name: COLUMN workflow_software_media_copy_apply.set_number; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_media_copy_apply.set_number IS '付随する媒体（メディア数）';


--
-- Name: COLUMN workflow_software_media_copy_apply.version; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_media_copy_apply.version IS 'バージョン';


--
-- Name: COLUMN workflow_software_media_copy_apply.delete_flag; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_media_copy_apply.delete_flag IS '削除フラグ';


--
-- Name: COLUMN workflow_software_media_copy_apply.create_user_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_media_copy_apply.create_user_pkey IS '登録ユーザーID';


--
-- Name: COLUMN workflow_software_media_copy_apply.create_datetime; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_media_copy_apply.create_datetime IS '登録日時';


--
-- Name: COLUMN workflow_software_media_copy_apply.update_user_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_media_copy_apply.update_user_pkey IS '更新ユーザーID';


--
-- Name: COLUMN workflow_software_media_copy_apply.update_datetime; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_media_copy_apply.update_datetime IS '更新日時';


--
-- Name: workflow_software_media_copy_apply_detail; Type: VIEW; Schema: public; Owner: -
--

CREATE VIEW workflow_software_media_copy_apply_detail AS
 SELECT workflow_software_media_copy_apply.id,
    workflow_software_media_copy_apply.workflow_id,
    workflow_software_media_copy_apply.licence_pkey,
    licencelist.licencelist_pkey,
    licencelist.soft_name,
    licencelist.licence_keitai,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '00005'::text) AND ((code.code)::text = (licencelist.licence_keitai)::text))) AS licence_keitai_name,
    array_to_string(ARRAY( SELECT regexp_replace((p.program_add_del)::text, '
'::text, '(RETURN)'::text) AS regexp_replace
           FROM licencelistprogram p
          WHERE (p.licencelist_pkey = licence.licencelist_pkey)
          ORDER BY p.program_add_del), '
'::text) AS program_add_del,
    array_to_string(ARRAY( SELECT regexp_replace((p.program_add_del)::text, '
'::text, '(RETURN)'::text) AS regexp_replace
           FROM licencelistprogram_down p
          WHERE (p.licencelist_pkey = licence.licencelist_pkey)
          ORDER BY p.program_add_del), '
'::text) AS program_add_del_down,
    workflow_software_media_copy_apply.licence_kanrino,
    workflow_software_media_copy_apply.administrator_name,
    workflow_software_media_copy_apply.copy_original_kanrino,
    workflow_software_media_copy_apply.media_place,
    workflow_software_media_copy_apply.procurement_division,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '10020'::text) AND ((code.code)::text = (workflow_software_media_copy_apply.procurement_division)::text))) AS procurement_division_name,
    workflow_software_media_copy_apply.quantity,
    workflow_software_media_copy_apply.copy_kakunin,
    workflow_software_media_copy_apply.need_reason,
    workflow_software_media_copy_apply.set_number,
    workflow_software_media_copy_apply.version,
    workflow_software_media_copy_apply.delete_flag,
    workflow_software_media_copy_apply.create_user_pkey,
    workflow_software_media_copy_apply.create_datetime,
    workflow_software_media_copy_apply.update_user_pkey,
    workflow_software_media_copy_apply.update_datetime,
    licence.sosiki_pkey,
    sosiki.syozoku_fullname AS sosiki_fullname,
    ( SELECT workflow.application_note
           FROM workflow
          WHERE (workflow_software_media_copy_apply.workflow_id = workflow.id)
         LIMIT 1) AS application_note
   FROM (((workflow_software_media_copy_apply
     LEFT JOIN licence ON ((workflow_software_media_copy_apply.licence_pkey = licence.licence_pkey)))
     LEFT JOIN sosiki ON ((licence.sosiki_pkey = sosiki.sosiki_pkey)))
     LEFT JOIN licencelist ON ((licence.licencelist_pkey = licencelist.licencelist_pkey)));


--
-- Name: workflow_software_media_copy_apply_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE workflow_software_media_copy_apply_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: workflow_software_media_copy_apply_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE workflow_software_media_copy_apply_id_seq OWNED BY workflow_software_media_copy_apply.id;


--
-- Name: workflow_software_print_target; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE workflow_software_print_target (
    id integer NOT NULL,
    workflow_id integer NOT NULL,
    soft_pkey integer NOT NULL
);


--
-- Name: TABLE workflow_software_print_target; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE workflow_software_print_target IS 'ワークフローソフトウェア台帳印刷対象情報';


--
-- Name: COLUMN workflow_software_print_target.id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_print_target.id IS '内部キー';


--
-- Name: COLUMN workflow_software_print_target.workflow_id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_print_target.workflow_id IS 'ワークフロー内部キー';


--
-- Name: COLUMN workflow_software_print_target.soft_pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_software_print_target.soft_pkey IS 'ソフトウェア台帳内部キー';


--
-- Name: workflow_software_print_target_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE workflow_software_print_target_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: workflow_software_print_target_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE workflow_software_print_target_id_seq OWNED BY workflow_software_print_target.id;


--
-- Name: workflow_to_ledger; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE workflow_to_ledger (
    id integer NOT NULL,
    workflow_id integer NOT NULL,
    workflow_category character varying(6) NOT NULL,
    ledger_category character varying(6) NOT NULL,
    pkey integer NOT NULL,
    version integer NOT NULL
);


--
-- Name: TABLE workflow_to_ledger; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE workflow_to_ledger IS 'ワークフロー台帳連携テーブル';


--
-- Name: COLUMN workflow_to_ledger.id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_to_ledger.id IS '内部キー';


--
-- Name: COLUMN workflow_to_ledger.workflow_id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_to_ledger.workflow_id IS 'ワークフロー内部キー';


--
-- Name: COLUMN workflow_to_ledger.workflow_category; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_to_ledger.workflow_category IS 'ワークフロー種別';


--
-- Name: COLUMN workflow_to_ledger.ledger_category; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_to_ledger.ledger_category IS '台帳種別';


--
-- Name: COLUMN workflow_to_ledger.pkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_to_ledger.pkey IS '台帳内部キー';


--
-- Name: COLUMN workflow_to_ledger.version; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN workflow_to_ledger.version IS '台帳バージョン';


--
-- Name: workflow_to_ledger_detail; Type: VIEW; Schema: public; Owner: -
--

CREATE VIEW workflow_to_ledger_detail AS
 SELECT workflow_to_ledger.id,
    workflow_to_ledger.workflow_id,
    workflow_to_ledger.workflow_category,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '10006'::text) AND ((code.code)::text = (workflow_to_ledger.workflow_category)::text))) AS workflow_category_name,
    workflow_to_ledger.ledger_category,
    ( SELECT code.code_name
           FROM code
          WHERE (((code.code_bunrui)::text = '00026'::text) AND ((code.code)::text = (workflow_to_ledger.ledger_category)::text))) AS ledger_category_name,
    workflow_to_ledger.pkey,
    workflow_to_ledger.version
   FROM workflow_to_ledger;


--
-- Name: workflow_to_ledger_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE workflow_to_ledger_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: workflow_to_ledger_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE workflow_to_ledger_id_seq OWNED BY workflow_to_ledger.id;


--
-- Name: ztest_sogo_count; Type: VIEW; Schema: public; Owner: -
--

CREATE VIEW ztest_sogo_count AS
 SELECT sosiki.sosiki_pkey,
    sosiki.syozoku_name,
    count(sosiki.sosiki_pkey) AS count
   FROM (sogocheck
     LEFT JOIN sosiki ON ((((sogocheck.sosiki2)::text = (sosiki.sosiki_pkey)::text) OR ((sogocheck.sosiki1)::text = (sosiki.sosiki_pkey)::text))))
  GROUP BY sosiki.sosiki_pkey, sosiki.sosiki_sortkey, sosiki.syozoku_name
  ORDER BY sosiki.sosiki_sortkey;


--
-- Name: hard_pkey; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY hard ALTER COLUMN hard_pkey SET DEFAULT nextval('hard_hard_pkey_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY hard_delete ALTER COLUMN id SET DEFAULT nextval('hard_delete_id_seq'::regclass);


--
-- Name: hardhistory_pkey; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY hardrireki ALTER COLUMN hardhistory_pkey SET DEFAULT nextval('hardrireki_hardhistory_pkey_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY hardware_kanrino_numbering ALTER COLUMN id SET DEFAULT nextval('hardware_kanrino_numbering_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY hardware_kanrino_numbering_alternative ALTER COLUMN id SET DEFAULT nextval('hardware_kanrino_numbering_alternative_id_seq'::regclass);


--
-- Name: import_pkey; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY import_moniter ALTER COLUMN import_pkey SET DEFAULT nextval('import_moniter_import_pkey_seq'::regclass);


--
-- Name: inventory_pkey; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY inventory ALTER COLUMN inventory_pkey SET DEFAULT nextval('inventory_inventory_pkey_seq'::regclass);


--
-- Name: insapno; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY inventorysoft ALTER COLUMN insapno SET DEFAULT nextval('inventorysoft_insapno_seq'::regclass);


--
-- Name: licence_pkey; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY licence ALTER COLUMN licence_pkey SET DEFAULT nextval('licence_licence_pkey_seq'::regclass);


--
-- Name: licence_attached_pkey; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY licence_attached_file ALTER COLUMN licence_attached_pkey SET DEFAULT nextval('licence_attached_file_licence_attached_pkey_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY licence_attached_file_delete ALTER COLUMN id SET DEFAULT nextval('licence_attached_file_delete_id_seq'::regclass);


--
-- Name: licence_attached_history_pkey; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY licence_attached_file_rireki ALTER COLUMN licence_attached_history_pkey SET DEFAULT nextval('licence_attached_file_rireki_licence_attached_history_pkey_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY licence_delete ALTER COLUMN id SET DEFAULT nextval('licence_delete_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY licence_kanrino_numbering ALTER COLUMN id SET DEFAULT nextval('licence_kanrino_numbering_id_seq'::regclass);


--
-- Name: licence_media_pkey; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY licence_media ALTER COLUMN licence_media_pkey SET DEFAULT nextval('licence_media_licence_media_pkey_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY licence_media_delete ALTER COLUMN id SET DEFAULT nextval('licence_media_delete_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY licence_media_kanrino_numbering ALTER COLUMN id SET DEFAULT nextval('licence_media_kanrino_numbering_id_seq'::regclass);


--
-- Name: licence_media_history_pkey; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY licence_media_rireki ALTER COLUMN licence_media_history_pkey SET DEFAULT nextval('licence_media_rireki_licence_media_history_pkey_seq'::regclass);


--
-- Name: licencelist_pkey; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY licencelist ALTER COLUMN licencelist_pkey SET DEFAULT nextval('licencelist_licencelist_pkey_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY licencelist_delete ALTER COLUMN id SET DEFAULT nextval('licencelist_delete_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY licencelistprogram_delete ALTER COLUMN id SET DEFAULT nextval('licencelistprogram_delete_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY licencelistprogram_down_delete ALTER COLUMN id SET DEFAULT nextval('licencelistprogram_down_delete_id_seq'::regclass);


--
-- Name: licencehistory_pkey; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY licencelistrireki ALTER COLUMN licencehistory_pkey SET DEFAULT nextval('licencelistrireki_licencehistory_pkey_seq'::regclass);


--
-- Name: licencehistory_pkey; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY licencerireki ALTER COLUMN licencehistory_pkey SET DEFAULT nextval('licencerireki_licencehistory_pkey_seq'::regclass);


--
-- Name: msg_pkey; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY message ALTER COLUMN msg_pkey SET DEFAULT nextval('message_msg_pkey_seq'::regclass);


--
-- Name: menu_code; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY mt_menu ALTER COLUMN menu_code SET DEFAULT nextval('mt_menu_menu_code_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY prohibited_software ALTER COLUMN id SET DEFAULT nextval('prohibited_software_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY rireki_numbering ALTER COLUMN id SET DEFAULT nextval('rireki_numbering_id_seq'::regclass);


--
-- Name: soft_pkey; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY soft ALTER COLUMN soft_pkey SET DEFAULT nextval('soft_soft_pkey_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY soft_delete ALTER COLUMN id SET DEFAULT nextval('soft_delete_id_seq'::regclass);


--
-- Name: softhistory_pkey; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY softrireki ALTER COLUMN softhistory_pkey SET DEFAULT nextval('softrireki_softhistory_pkey_seq'::regclass);


--
-- Name: sogochk_pkey; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY sogocheck ALTER COLUMN sogochk_pkey SET DEFAULT nextval('sogocheck_sogochk_pkey_seq'::regclass);


--
-- Name: sogochk_pkey; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY sogocheck_tmp ALTER COLUMN sogochk_pkey SET DEFAULT nextval('sogocheck_tmp_sogochk_pkey_seq'::regclass);


--
-- Name: sosiki_pkey; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY sosiki ALTER COLUMN sosiki_pkey SET DEFAULT nextval('sosiki_sosiki_pkey_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY sso_csv_bureau ALTER COLUMN id SET DEFAULT nextval('sso_csv_bureau_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY sso_csv_department ALTER COLUMN id SET DEFAULT nextval('sso_csv_department_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY sso_csv_division ALTER COLUMN id SET DEFAULT nextval('sso_csv_division_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY sso_csv_employee ALTER COLUMN id SET DEFAULT nextval('sso_csv_employee_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY sso_csv_unit ALTER COLUMN id SET DEFAULT nextval('sso_csv_unit_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY sso_sosiki_schedule ALTER COLUMN id SET DEFAULT nextval('sso_sosiki_schedule_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY sso_user_schedule ALTER COLUMN id SET DEFAULT nextval('sso_user_schedule_id_seq'::regclass);


--
-- Name: user_pkey; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "user" ALTER COLUMN user_pkey SET DEFAULT nextval('user_user_pkey_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY workflow ALTER COLUMN id SET DEFAULT nextval('workflow_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY workflow_all_allow_software_list_apply ALTER COLUMN id SET DEFAULT nextval('workflow_all_allow_software_list_apply_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY workflow_bring_pc_apply ALTER COLUMN id SET DEFAULT nextval('workflow_bring_pc_apply_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY workflow_common_hard ALTER COLUMN id SET DEFAULT nextval('workflow_common_hard_id_seq'::regclass);


--
-- Name: hard_pkey; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY workflow_common_hard ALTER COLUMN hard_pkey SET DEFAULT nextval('workflow_common_hard_hard_pkey_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY workflow_common_licence ALTER COLUMN id SET DEFAULT nextval('workflow_common_licence_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY workflow_common_licence_media ALTER COLUMN id SET DEFAULT nextval('workflow_common_licence_media_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY workflow_common_licencelist ALTER COLUMN id SET DEFAULT nextval('workflow_common_licencelist_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY workflow_common_licencelist_downgrade_program ALTER COLUMN id SET DEFAULT nextval('workflow_common_licencelist_downgrade_program_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY workflow_common_licencelist_program ALTER COLUMN id SET DEFAULT nextval('workflow_common_licencelist_program_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY workflow_common_soft ALTER COLUMN id SET DEFAULT nextval('workflow_common_soft_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY workflow_hardware_disposal_apply ALTER COLUMN id SET DEFAULT nextval('workflow_hardware_disposal_apply_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY workflow_hardware_information_change_apply ALTER COLUMN id SET DEFAULT nextval('workflow_hardware_information_change_apply_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY workflow_hardware_lending_apply ALTER COLUMN id SET DEFAULT nextval('workflow_hardware_lending_apply_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY workflow_hardware_lending_information ALTER COLUMN id SET DEFAULT nextval('workflow_hardware_lending_information_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY workflow_hardware_procurement_apply ALTER COLUMN id SET DEFAULT nextval('workflow_hardware_procurement_apply_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY workflow_hardware_return_apply ALTER COLUMN id SET DEFAULT nextval('workflow_hardware_return_apply_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY workflow_hardware_transfer_apply ALTER COLUMN id SET DEFAULT nextval('workflow_hardware_transfer_apply_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY workflow_lan_connect_apply ALTER COLUMN id SET DEFAULT nextval('workflow_lan_connect_apply_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY workflow_licence_dictionary_apply ALTER COLUMN id SET DEFAULT nextval('workflow_licence_dictionary_apply_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY workflow_licence_dictionary_downgrade_program ALTER COLUMN id SET DEFAULT nextval('workflow_licence_dictionary_downgrade_program_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY workflow_licence_dictionary_program ALTER COLUMN id SET DEFAULT nextval('workflow_licence_dictionary_program_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY workflow_license_disposal_apply ALTER COLUMN id SET DEFAULT nextval('workflow_license_disposal_apply_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY workflow_license_transfer_apply ALTER COLUMN id SET DEFAULT nextval('workflow_license_transfer_apply_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY workflow_map ALTER COLUMN id SET DEFAULT nextval('workflow_map_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY workflow_paperwork_pc_distribution_apply ALTER COLUMN id SET DEFAULT nextval('workflow_paperwork_pc_distribution_apply_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY workflow_paperwork_pc_distribution_hard_apply ALTER COLUMN id SET DEFAULT nextval('workflow_paperwork_pc_distribution_hard_apply_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY workflow_paperwork_pc_return_apply ALTER COLUMN id SET DEFAULT nextval('workflow_paperwork_pc_return_apply_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY workflow_report_inventory_result_apply ALTER COLUMN id SET DEFAULT nextval('workflow_report_inventory_result_apply_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY workflow_software_batch_io_apply ALTER COLUMN id SET DEFAULT nextval('workflow_software_batch_io_apply_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY workflow_software_licence_procurement_apply ALTER COLUMN id SET DEFAULT nextval('workflow_software_licence_procurement_apply_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY workflow_software_media_copy_apply ALTER COLUMN id SET DEFAULT nextval('workflow_software_media_copy_apply_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY workflow_software_print_target ALTER COLUMN id SET DEFAULT nextval('workflow_software_print_target_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY workflow_to_ledger ALTER COLUMN id SET DEFAULT nextval('workflow_to_ledger_id_seq'::regclass);


--
-- Name: code_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY code
    ADD CONSTRAINT code_pkey PRIMARY KEY (code_bunrui, code);


--
-- Name: codebunrui_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY codebunrui
    ADD CONSTRAINT codebunrui_pkey PRIMARY KEY (code_bunrui);


--
-- Name: control_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY control
    ADD CONSTRAINT control_pkey PRIMARY KEY (control_id);


--
-- Name: errmsg_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY errmsg
    ADD CONSTRAINT errmsg_pkey PRIMARY KEY (err_pkey);


--
-- Name: hard_delete_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY hard_delete
    ADD CONSTRAINT hard_delete_pkey PRIMARY KEY (id);


--
-- Name: hard_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY hard
    ADD CONSTRAINT hard_pkey PRIMARY KEY (hard_pkey);


--
-- Name: hardrireki_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY hardrireki
    ADD CONSTRAINT hardrireki_pkey PRIMARY KEY (hardhistory_pkey);


--
-- Name: hardware_kanrino_numbering_alternative_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY hardware_kanrino_numbering_alternative
    ADD CONSTRAINT hardware_kanrino_numbering_alternative_pkey PRIMARY KEY (id);


--
-- Name: hardware_kanrino_numbering_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY hardware_kanrino_numbering
    ADD CONSTRAINT hardware_kanrino_numbering_pkey PRIMARY KEY (id);


--
-- Name: import_moniter_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY import_moniter
    ADD CONSTRAINT import_moniter_pkey PRIMARY KEY (import_pkey);


--
-- Name: inventory_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY inventory
    ADD CONSTRAINT inventory_pkey PRIMARY KEY (inventory_pkey);


--
-- Name: inventorydate_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY inventorydate
    ADD CONSTRAINT inventorydate_pkey PRIMARY KEY (invbunrui);


--
-- Name: inventorysoft_ext_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY inventorysoft_ext
    ADD CONSTRAINT inventorysoft_ext_pkey PRIMARY KEY (insapno);


--
-- Name: inventorysoft_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY inventorysoft
    ADD CONSTRAINT inventorysoft_pkey PRIMARY KEY (insapno);


--
-- Name: licence_attached_file_delete_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY licence_attached_file_delete
    ADD CONSTRAINT licence_attached_file_delete_pkey PRIMARY KEY (id);


--
-- Name: licence_attached_file_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY licence_attached_file
    ADD CONSTRAINT licence_attached_file_pkey PRIMARY KEY (licence_attached_pkey);


--
-- Name: licence_attached_file_rireki_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY licence_attached_file_rireki
    ADD CONSTRAINT licence_attached_file_rireki_pkey PRIMARY KEY (licence_attached_history_pkey);


--
-- Name: licence_kanrino_numbering_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY licence_kanrino_numbering
    ADD CONSTRAINT licence_kanrino_numbering_pkey PRIMARY KEY (id);


--
-- Name: licence_media_kanrino_numbering_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY licence_media_kanrino_numbering
    ADD CONSTRAINT licence_media_kanrino_numbering_pkey PRIMARY KEY (id);


--
-- Name: licence_media_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY licence_media
    ADD CONSTRAINT licence_media_pkey PRIMARY KEY (licence_media_pkey);


--
-- Name: licence_media_rireki_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY licence_media_rireki
    ADD CONSTRAINT licence_media_rireki_pkey PRIMARY KEY (licence_media_history_pkey);


--
-- Name: licence_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY licence
    ADD CONSTRAINT licence_pkey PRIMARY KEY (licence_pkey);


--
-- Name: licencelist_delete_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY licencelist_delete
    ADD CONSTRAINT licencelist_delete_pkey PRIMARY KEY (id);


--
-- Name: licencelist_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY licencelist
    ADD CONSTRAINT licencelist_pkey PRIMARY KEY (licencelist_pkey);


--
-- Name: licencelistprogram_d_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY licencelistprogram_down
    ADD CONSTRAINT licencelistprogram_d_pkey PRIMARY KEY (licencelist_pkey, program_add_del);


--
-- Name: licencelistprogram_d_rireki_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY licencelistprogram_down_rireki
    ADD CONSTRAINT licencelistprogram_d_rireki_pkey PRIMARY KEY (licencehistory_pkey, program_add_del);


--
-- Name: licencelistprogram_delete_id; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY licencelistprogram_delete
    ADD CONSTRAINT licencelistprogram_delete_id PRIMARY KEY (id);


--
-- Name: licencelistprogram_down_delete_id; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY licencelistprogram_down_delete
    ADD CONSTRAINT licencelistprogram_down_delete_id PRIMARY KEY (id);


--
-- Name: licencelistprogram_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY licencelistprogram
    ADD CONSTRAINT licencelistprogram_pkey PRIMARY KEY (licencelist_pkey, program_add_del);


--
-- Name: licencelistprogramrireki_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY licencelistprogramrireki
    ADD CONSTRAINT licencelistprogramrireki_pkey PRIMARY KEY (licencehistory_pkey, program_add_del);


--
-- Name: licencelistrireki_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY licencelistrireki
    ADD CONSTRAINT licencelistrireki_pkey PRIMARY KEY (licencehistory_pkey);


--
-- Name: licencerireki_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY licencerireki
    ADD CONSTRAINT licencerireki_pkey PRIMARY KEY (licencehistory_pkey);


--
-- Name: location_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY location
    ADD CONSTRAINT location_pkey PRIMARY KEY (location_pkey);


--
-- Name: login_key_user_id_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY login_key
    ADD CONSTRAINT login_key_user_id_key UNIQUE (user_id, key);


--
-- Name: message_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY message
    ADD CONSTRAINT message_pkey PRIMARY KEY (msg_pkey);


--
-- Name: mt_auth_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY mt_auth
    ADD CONSTRAINT mt_auth_pkey PRIMARY KEY (authority_id);


--
-- Name: mt_menu_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY mt_menu
    ADD CONSTRAINT mt_menu_pkey PRIMARY KEY (menu_code);


--
-- Name: rireki_numbering_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rireki_numbering
    ADD CONSTRAINT rireki_numbering_pkey PRIMARY KEY (id);


--
-- Name: rireki_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rireki
    ADD CONSTRAINT rireki_pkey PRIMARY KEY (history_pkey, history_type);


--
-- Name: so_sosiki_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY sogo_count
    ADD CONSTRAINT so_sosiki_pkey PRIMARY KEY (sosiki_pkey);


--
-- Name: soft_delete_id; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY soft_delete
    ADD CONSTRAINT soft_delete_id PRIMARY KEY (id);


--
-- Name: soft_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY soft
    ADD CONSTRAINT soft_pkey PRIMARY KEY (soft_pkey);


--
-- Name: softrireki_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY softrireki
    ADD CONSTRAINT softrireki_pkey PRIMARY KEY (softhistory_pkey);


--
-- Name: sogo_msg_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY sogo_msg
    ADD CONSTRAINT sogo_msg_pkey PRIMARY KEY (sogo_pkey);


--
-- Name: sogo_type_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY sogo_type
    ADD CONSTRAINT sogo_type_pkey PRIMARY KEY (sogo_pkey);


--
-- Name: sogo_view_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY sogo_view
    ADD CONSTRAINT sogo_view_pkey PRIMARY KEY (sogochk_pkey);


--
-- Name: sogocheck_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY sogocheck
    ADD CONSTRAINT sogocheck_pkey PRIMARY KEY (sogochk_pkey);


--
-- Name: sogochktest_pket; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY sogocheck_tmp
    ADD CONSTRAINT sogochktest_pket PRIMARY KEY (sogochk_pkey);


--
-- Name: sosiki_path_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY sosiki_path
    ADD CONSTRAINT sosiki_path_pkey PRIMARY KEY (sosiki_pkey);


--
-- Name: sosiki_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY sosiki
    ADD CONSTRAINT sosiki_pkey PRIMARY KEY (sosiki_pkey);


--
-- Name: sso_administrator_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY sso_administrator
    ADD CONSTRAINT sso_administrator_pkey PRIMARY KEY (master_user_id);


--
-- Name: sso_csv_bureau_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY sso_csv_bureau
    ADD CONSTRAINT sso_csv_bureau_pkey PRIMARY KEY (id);


--
-- Name: sso_csv_department_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY sso_csv_department
    ADD CONSTRAINT sso_csv_department_pkey PRIMARY KEY (id);


--
-- Name: sso_csv_division_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY sso_csv_division
    ADD CONSTRAINT sso_csv_division_pkey PRIMARY KEY (id);


--
-- Name: sso_csv_employee_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY sso_csv_employee
    ADD CONSTRAINT sso_csv_employee_pkey PRIMARY KEY (id);


--
-- Name: sso_csv_unit_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY sso_csv_unit
    ADD CONSTRAINT sso_csv_unit_pkey PRIMARY KEY (id);


--
-- Name: sso_sosiki_schedule_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY sso_sosiki_schedule
    ADD CONSTRAINT sso_sosiki_schedule_pkey PRIMARY KEY (id);


--
-- Name: sso_user_master_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY sso_user_master
    ADD CONSTRAINT sso_user_master_pkey PRIMARY KEY (master_user_id);


--
-- Name: sso_user_schedule_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY sso_user_schedule
    ADD CONSTRAINT sso_user_schedule_pkey PRIMARY KEY (id);


--
-- Name: user_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY "user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (user_pkey);


--
-- Name: workflow_all_allow_software_list_apply_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY workflow_all_allow_software_list_apply
    ADD CONSTRAINT workflow_all_allow_software_list_apply_pkey PRIMARY KEY (id);


--
-- Name: workflow_bring_pc_apply_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY workflow_bring_pc_apply
    ADD CONSTRAINT workflow_bring_pc_apply_pkey PRIMARY KEY (id);


--
-- Name: workflow_common_hard_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY workflow_common_hard
    ADD CONSTRAINT workflow_common_hard_pkey PRIMARY KEY (id);


--
-- Name: workflow_common_licence_media_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY workflow_common_licence_media
    ADD CONSTRAINT workflow_common_licence_media_pkey PRIMARY KEY (id);


--
-- Name: workflow_common_licence_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY workflow_common_licence
    ADD CONSTRAINT workflow_common_licence_pkey PRIMARY KEY (id);


--
-- Name: workflow_common_licencelist_downgrade_program_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY workflow_common_licencelist_downgrade_program
    ADD CONSTRAINT workflow_common_licencelist_downgrade_program_pkey PRIMARY KEY (id);


--
-- Name: workflow_common_licencelist_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY workflow_common_licencelist
    ADD CONSTRAINT workflow_common_licencelist_pkey PRIMARY KEY (id);


--
-- Name: workflow_common_licencelist_program_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY workflow_common_licencelist_program
    ADD CONSTRAINT workflow_common_licencelist_program_pkey PRIMARY KEY (id);


--
-- Name: workflow_common_soft_id; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY workflow_common_soft
    ADD CONSTRAINT workflow_common_soft_id PRIMARY KEY (id);


--
-- Name: workflow_hardware_disposal_apply_id; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY workflow_hardware_disposal_apply
    ADD CONSTRAINT workflow_hardware_disposal_apply_id PRIMARY KEY (id);


--
-- Name: workflow_hardware_information_change_apply_id; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY workflow_hardware_information_change_apply
    ADD CONSTRAINT workflow_hardware_information_change_apply_id PRIMARY KEY (id);


--
-- Name: workflow_hardware_lending_apply_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY workflow_hardware_lending_apply
    ADD CONSTRAINT workflow_hardware_lending_apply_pkey PRIMARY KEY (id);


--
-- Name: workflow_hardware_lending_information_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY workflow_hardware_lending_information
    ADD CONSTRAINT workflow_hardware_lending_information_pkey PRIMARY KEY (id);


--
-- Name: workflow_hardware_procurement_apply_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY workflow_hardware_procurement_apply
    ADD CONSTRAINT workflow_hardware_procurement_apply_pkey PRIMARY KEY (id);


--
-- Name: workflow_hardware_return_apply_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY workflow_hardware_return_apply
    ADD CONSTRAINT workflow_hardware_return_apply_pkey PRIMARY KEY (id);


--
-- Name: workflow_hardware_transfer_apply_id; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY workflow_hardware_transfer_apply
    ADD CONSTRAINT workflow_hardware_transfer_apply_id PRIMARY KEY (id);


--
-- Name: workflow_lan_connect_apply_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY workflow_lan_connect_apply
    ADD CONSTRAINT workflow_lan_connect_apply_pkey PRIMARY KEY (id);


--
-- Name: workflow_licence_dictionary_apply_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY workflow_licence_dictionary_apply
    ADD CONSTRAINT workflow_licence_dictionary_apply_pkey PRIMARY KEY (id);


--
-- Name: workflow_licence_dictionary_downgrade_program_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY workflow_licence_dictionary_downgrade_program
    ADD CONSTRAINT workflow_licence_dictionary_downgrade_program_pkey PRIMARY KEY (id);


--
-- Name: workflow_licence_dictionary_program_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY workflow_licence_dictionary_program
    ADD CONSTRAINT workflow_licence_dictionary_program_pkey PRIMARY KEY (id);


--
-- Name: workflow_license_disposal_apply_id; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY workflow_license_disposal_apply
    ADD CONSTRAINT workflow_license_disposal_apply_id PRIMARY KEY (id);


--
-- Name: workflow_license_transfer_apply_id; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY workflow_license_transfer_apply
    ADD CONSTRAINT workflow_license_transfer_apply_id PRIMARY KEY (id);


--
-- Name: workflow_map_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY workflow_map
    ADD CONSTRAINT workflow_map_pkey PRIMARY KEY (id);


--
-- Name: workflow_paperwork_pc_distribution_apply_id; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY workflow_paperwork_pc_distribution_apply
    ADD CONSTRAINT workflow_paperwork_pc_distribution_apply_id PRIMARY KEY (id);


--
-- Name: workflow_paperwork_pc_distribution_hard_apply_id; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY workflow_paperwork_pc_distribution_hard_apply
    ADD CONSTRAINT workflow_paperwork_pc_distribution_hard_apply_id PRIMARY KEY (id);


--
-- Name: workflow_paperwork_pc_return_apply_id; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY workflow_paperwork_pc_return_apply
    ADD CONSTRAINT workflow_paperwork_pc_return_apply_id PRIMARY KEY (id);


--
-- Name: workflow_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY workflow
    ADD CONSTRAINT workflow_pkey PRIMARY KEY (id);


--
-- Name: workflow_report_inventory_result_apply_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY workflow_report_inventory_result_apply
    ADD CONSTRAINT workflow_report_inventory_result_apply_pkey PRIMARY KEY (id);


--
-- Name: workflow_software_batch_io_apply_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY workflow_software_batch_io_apply
    ADD CONSTRAINT workflow_software_batch_io_apply_pkey PRIMARY KEY (id);


--
-- Name: workflow_software_licence_procurement_apply_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY workflow_software_licence_procurement_apply
    ADD CONSTRAINT workflow_software_licence_procurement_apply_pkey PRIMARY KEY (id);


--
-- Name: workflow_software_media_copy_apply_id; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY workflow_software_media_copy_apply
    ADD CONSTRAINT workflow_software_media_copy_apply_id PRIMARY KEY (id);


--
-- Name: workflow_software_print_target_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY workflow_software_print_target
    ADD CONSTRAINT workflow_software_print_target_pkey PRIMARY KEY (id);


--
-- Name: workflow_to_ledger_id; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY workflow_to_ledger
    ADD CONSTRAINT workflow_to_ledger_id PRIMARY KEY (id);


--
-- Name: all_count; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX all_count ON sogo_count USING btree (all_count);


--
-- Name: auth; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX auth ON "user" USING btree (auth);


--
-- Name: code_bunrui; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX code_bunrui ON code USING btree (code_bunrui);


--
-- Name: code_bunruimei; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX code_bunruimei ON codebunrui USING btree (code_bunruimei);


--
-- Name: code_name; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX code_name ON code USING btree (code_name);


--
-- Name: code_sort; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX code_sort ON code USING btree (code_sort);


--
-- Name: collectsorce; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX collectsorce ON inventory USING btree (collectsource);


--
-- Name: d_count; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX d_count ON sogo_count USING btree (d_count);


--
-- Name: expire; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX expire ON login_key USING btree (expire);


--
-- Name: group1; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX group1 ON inventory USING btree (group1);


--
-- Name: h_hard_kanrino; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX h_hard_kanrino ON hard USING btree (hard_kanrino);


--
-- Name: h_newkbn; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX h_newkbn ON hard USING btree (newkbn);


--
-- Name: h_soft_installdel; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX h_soft_installdel ON hard USING btree (soft_installdel);


--
-- Name: h_sosiki_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX h_sosiki_pkey ON hard USING btree (sosiki_pkey);


--
-- Name: hard_checkout_date; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX hard_checkout_date ON hard USING btree (checkout_date);


--
-- Name: hard_delete_checkout_date; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX hard_delete_checkout_date ON hard_delete USING btree (checkout_date);


--
-- Name: hard_delete_haiki_date; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX hard_delete_haiki_date ON hard_delete USING btree (haiki_date);


--
-- Name: hard_delete_hard_kanrino; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX hard_delete_hard_kanrino ON hard_delete USING btree (hard_kanrino);


--
-- Name: hard_delete_hard_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX hard_delete_hard_pkey ON hard_delete USING btree (hard_pkey);


--
-- Name: hard_delete_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX hard_delete_id ON hard_delete USING btree (id);


--
-- Name: hard_delete_lease_or_purchase; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX hard_delete_lease_or_purchase ON hard_delete USING btree (lease_or_purchase);


--
-- Name: hard_delete_location_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX hard_delete_location_pkey ON hard_delete USING btree (location_pkey);


--
-- Name: hard_delete_newkbn; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX hard_delete_newkbn ON hard_delete USING btree (newkbn);


--
-- Name: hard_delete_procurement_form; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX hard_delete_procurement_form ON hard_delete USING btree (procurement_form);


--
-- Name: hard_delete_return_date; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX hard_delete_return_date ON hard_delete USING btree (return_date);


--
-- Name: hard_delete_return_due_date; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX hard_delete_return_due_date ON hard_delete USING btree (return_due_date);


--
-- Name: hard_delete_soft_installdel; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX hard_delete_soft_installdel ON hard_delete USING btree (soft_installdel);


--
-- Name: hard_delete_sosiki_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX hard_delete_sosiki_pkey ON hard_delete USING btree (sosiki_pkey);


--
-- Name: hard_haiki_date; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX hard_haiki_date ON hard USING btree (haiki_date);


--
-- Name: hard_lease_or_purchase; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX hard_lease_or_purchase ON hard USING btree (lease_or_purchase);


--
-- Name: hard_location_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX hard_location_pkey ON hard USING btree (location_pkey);


--
-- Name: hard_procurement_form; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX hard_procurement_form ON hard USING btree (procurement_form);


--
-- Name: hard_return_date; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX hard_return_date ON hard USING btree (return_date);


--
-- Name: hard_return_due_date; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX hard_return_due_date ON hard USING btree (return_due_date);


--
-- Name: hardware_kanrino_numbering_alternative_hard_kanrino; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX hardware_kanrino_numbering_alternative_hard_kanrino ON hardware_kanrino_numbering_alternative USING btree (hard_kanrino);


--
-- Name: hardware_kanrino_numbering_alternative_hard_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX hardware_kanrino_numbering_alternative_hard_pkey ON hardware_kanrino_numbering_alternative USING btree (hard_pkey);


--
-- Name: hardware_kanrino_numbering_alternative_hardhistory_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX hardware_kanrino_numbering_alternative_hardhistory_pkey ON hardware_kanrino_numbering_alternative USING btree (hardhistory_pkey);


--
-- Name: hardware_kanrino_numbering_alternative_workflow_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX hardware_kanrino_numbering_alternative_workflow_id ON hardware_kanrino_numbering_alternative USING btree (workflow_id);


--
-- Name: hardware_kanrino_numbering_workflow_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX hardware_kanrino_numbering_workflow_id ON hardware_kanrino_numbering USING btree (workflow_id);


--
-- Name: hardwareno; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX hardwareno ON inventory USING btree (hardwareno);


--
-- Name: hr_hard_kanrino; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX hr_hard_kanrino ON hardrireki USING btree (hard_kanrino);


--
-- Name: hr_hard_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX hr_hard_pkey ON hardrireki USING btree (hard_pkey);


--
-- Name: hr_hardrireki_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX hr_hardrireki_pkey ON hardrireki USING btree (hardhistory_pkey);


--
-- Name: hr_lease_or_purchase; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX hr_lease_or_purchase ON hardrireki USING btree (lease_or_purchase);


--
-- Name: hr_location_code; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX hr_location_code ON hardrireki USING btree (location_code);


--
-- Name: hr_procurement_form; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX hr_procurement_form ON hardrireki USING btree (procurement_form);


--
-- Name: hr_soft_installdel; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX hr_soft_installdel ON hardrireki USING btree (soft_installdel);


--
-- Name: hr_sosiki_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX hr_sosiki_pkey ON hardrireki USING btree (sosiki_pkey);


--
-- Name: hr_use_name; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX hr_use_name ON hardrireki USING btree (use_name);


--
-- Name: i_count; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX i_count ON sogo_count USING btree (i_count);


--
-- Name: idkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idkey ON inventory USING btree (idkey);


--
-- Name: info_system_code_organize_cd; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX info_system_code_organize_cd ON info_system_code USING btree (organize_cd);


--
-- Name: info_system_code_special_sys_cd; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX info_system_code_special_sys_cd ON info_system_code USING btree (special_sys_cd);


--
-- Name: install_date; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX install_date ON soft USING btree (install_date);


--
-- Name: inv_soft_exempt; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX inv_soft_exempt ON inventorysoft_ext USING btree (inv_soft_exempt);


--
-- Name: inv_soft_reg; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX inv_soft_reg ON inventorysoft_ext USING btree (inv_soft_reg);


--
-- Name: inventory_invtraprecvdate; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX inventory_invtraprecvdate ON inventory USING btree (invtraprecvdate);


--
-- Name: inventory_sogochk_type; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX inventory_sogochk_type ON sogocheck_tmp USING btree (sogochk_type);


--
-- Name: inventorydate_invend; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX inventorydate_invend ON inventorydate USING btree (invend);


--
-- Name: inventorysoft_insapname; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX inventorysoft_insapname ON inventorysoft USING btree (insapname);


--
-- Name: key; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX key ON login_key USING btree (key);


--
-- Name: l_bikou; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX l_bikou ON licence USING btree (bikou);


--
-- Name: l_haiki_date; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX l_haiki_date ON licence USING btree (haiki_date);


--
-- Name: l_hard_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX l_hard_pkey ON licence USING btree (hard_pkey);


--
-- Name: l_hokan_baitai; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX l_hokan_baitai ON licence USING btree (hokan_baitai);


--
-- Name: l_hokan_basyo; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX l_hokan_basyo ON licence USING btree (hokan_basyo);


--
-- Name: l_holdings_number; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX l_holdings_number ON licence USING btree (holdings_number);


--
-- Name: l_install_su; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX l_install_su ON licence USING btree (install_su);


--
-- Name: l_kanri_sosiki_flg; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX l_kanri_sosiki_flg ON licence USING btree (kanri_sosiki_flg);


--
-- Name: l_kanri_sosiki_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX l_kanri_sosiki_pkey ON licence USING btree (kanri_sosiki_pkey);


--
-- Name: l_licence_kanrino; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX l_licence_kanrino ON licence USING btree (licence_kanrino);


--
-- Name: l_licence_no; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX l_licence_no ON licence USING btree (licence_no);


--
-- Name: l_licence_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX l_licence_pkey ON licence USING btree (licence_pkey);


--
-- Name: l_licence_pkey2; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX l_licence_pkey2 ON licence USING btree (licence_pkey2);


--
-- Name: l_licencelist_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX l_licencelist_pkey ON licence USING btree (licencelist_pkey);


--
-- Name: l_license_limit_date; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX l_license_limit_date ON licence USING btree (license_limit_date);


--
-- Name: l_newkbn; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX l_newkbn ON licence USING btree (newkbn);


--
-- Name: l_sosiki_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX l_sosiki_pkey ON licence USING btree (sosiki_pkey);


--
-- Name: l_tyoutatu; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX l_tyoutatu ON licence USING btree (tyoutatu);


--
-- Name: l_tyoutatu_date; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX l_tyoutatu_date ON licence USING btree (tyoutatu_date);


--
-- Name: licence_attached_file_delete_file_sortkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX licence_attached_file_delete_file_sortkey ON licence_attached_file_delete USING btree (file_sortkey);


--
-- Name: licence_attached_file_delete_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX licence_attached_file_delete_id ON licence_attached_file_delete USING btree (id);


--
-- Name: licence_attached_file_delete_licence_attached_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX licence_attached_file_delete_licence_attached_pkey ON licence_attached_file_delete USING btree (licence_attached_pkey);


--
-- Name: licence_attached_file_delete_licence_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX licence_attached_file_delete_licence_pkey ON licence_attached_file_delete USING btree (licence_pkey);


--
-- Name: licence_attached_file_file_sortkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX licence_attached_file_file_sortkey ON licence_attached_file USING btree (file_sortkey);


--
-- Name: licence_attached_file_licence_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX licence_attached_file_licence_pkey ON licence_attached_file USING btree (licence_pkey);


--
-- Name: licence_attached_file_rireki_file_sortkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX licence_attached_file_rireki_file_sortkey ON licence_attached_file_rireki USING btree (file_sortkey);


--
-- Name: licence_attached_file_rireki_licence_attached_history_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX licence_attached_file_rireki_licence_attached_history_pkey ON licence_attached_file_rireki USING btree (licence_attached_history_pkey);


--
-- Name: licence_attached_file_rireki_licence_attached_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX licence_attached_file_rireki_licence_attached_pkey ON licence_attached_file_rireki USING btree (licence_attached_pkey);


--
-- Name: licence_attached_file_rireki_licence_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX licence_attached_file_rireki_licence_pkey ON licence_attached_file_rireki USING btree (licence_pkey);


--
-- Name: licence_attached_file_rireki_licencehistory_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX licence_attached_file_rireki_licencehistory_pkey ON licence_attached_file_rireki USING btree (licencehistory_pkey);


--
-- Name: licence_delete_bikou; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX licence_delete_bikou ON licence_delete USING btree (bikou);


--
-- Name: licence_delete_haiki_date; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX licence_delete_haiki_date ON licence_delete USING btree (haiki_date);


--
-- Name: licence_delete_hard_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX licence_delete_hard_pkey ON licence_delete USING btree (hard_pkey);


--
-- Name: licence_delete_hokan_baitai; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX licence_delete_hokan_baitai ON licence_delete USING btree (hokan_baitai);


--
-- Name: licence_delete_hokan_basyo; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX licence_delete_hokan_basyo ON licence_delete USING btree (hokan_basyo);


--
-- Name: licence_delete_holdings_number; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX licence_delete_holdings_number ON licence_delete USING btree (holdings_number);


--
-- Name: licence_delete_install_su; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX licence_delete_install_su ON licence_delete USING btree (install_su);


--
-- Name: licence_delete_kanri_sosiki_flg; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX licence_delete_kanri_sosiki_flg ON licence_delete USING btree (kanri_sosiki_flg);


--
-- Name: licence_delete_kanri_sosiki_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX licence_delete_kanri_sosiki_pkey ON licence_delete USING btree (kanri_sosiki_pkey);


--
-- Name: licence_delete_licence_kanrino; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX licence_delete_licence_kanrino ON licence_delete USING btree (licence_kanrino);


--
-- Name: licence_delete_licence_no; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX licence_delete_licence_no ON licence_delete USING btree (licence_no);


--
-- Name: licence_delete_licence_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX licence_delete_licence_pkey ON licence_delete USING btree (licence_pkey);


--
-- Name: licence_delete_licence_pkey2; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX licence_delete_licence_pkey2 ON licence_delete USING btree (licence_pkey2);


--
-- Name: licence_delete_licencelist_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX licence_delete_licencelist_pkey ON licence_delete USING btree (licencelist_pkey);


--
-- Name: licence_delete_license_limit_date; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX licence_delete_license_limit_date ON licence_delete USING btree (license_limit_date);


--
-- Name: licence_delete_newkbn; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX licence_delete_newkbn ON licence_delete USING btree (newkbn);


--
-- Name: licence_delete_sosiki_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX licence_delete_sosiki_pkey ON licence_delete USING btree (sosiki_pkey);


--
-- Name: licence_delete_tyoutatu; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX licence_delete_tyoutatu ON licence_delete USING btree (tyoutatu);


--
-- Name: licence_delete_tyoutatu_date; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX licence_delete_tyoutatu_date ON licence_delete USING btree (tyoutatu_date);


--
-- Name: licence_kanrino_numbering_create_datetime; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX licence_kanrino_numbering_create_datetime ON licence_kanrino_numbering USING btree (create_datetime);


--
-- Name: licence_kanrino_numbering_licence_kanrino; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX licence_kanrino_numbering_licence_kanrino ON licence_kanrino_numbering USING btree (licence_kanrino);


--
-- Name: licence_kanrino_numbering_licence_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX licence_kanrino_numbering_licence_pkey ON licence_kanrino_numbering USING btree (licence_pkey);


--
-- Name: licence_kanrino_numbering_licencehistory_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX licence_kanrino_numbering_licencehistory_pkey ON licence_kanrino_numbering USING btree (licencehistory_pkey);


--
-- Name: licence_kanrino_numbering_workflow_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX licence_kanrino_numbering_workflow_id ON licence_kanrino_numbering USING btree (workflow_id);


--
-- Name: licence_media_borrower_sosiki_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX licence_media_borrower_sosiki_pkey ON licence_media USING btree (borrower_sosiki_pkey);


--
-- Name: licence_media_delete_borrower_sosiki_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX licence_media_delete_borrower_sosiki_pkey ON licence_media_delete USING btree (borrower_sosiki_pkey);


--
-- Name: licence_media_delete_licence_media_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX licence_media_delete_licence_media_pkey ON licence_media_delete USING btree (licence_media_pkey);


--
-- Name: licence_media_delete_licence_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX licence_media_delete_licence_pkey ON licence_media_delete USING btree (licence_pkey);


--
-- Name: licence_media_kanrino_numbering_licence_kanrino; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX licence_media_kanrino_numbering_licence_kanrino ON licence_media_kanrino_numbering USING btree (licence_kanrino);


--
-- Name: licence_media_kanrino_numbering_licence_media_history_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX licence_media_kanrino_numbering_licence_media_history_pkey ON licence_media_kanrino_numbering USING btree (licence_media_history_pkey);


--
-- Name: licence_media_kanrino_numbering_licence_media_kanrino; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX licence_media_kanrino_numbering_licence_media_kanrino ON licence_media_kanrino_numbering USING btree (licence_media_kanrino);


--
-- Name: licence_media_kanrino_numbering_licence_media_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX licence_media_kanrino_numbering_licence_media_pkey ON licence_media_kanrino_numbering USING btree (licence_media_pkey);


--
-- Name: licence_media_kanrino_numbering_licence_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX licence_media_kanrino_numbering_licence_pkey ON licence_media_kanrino_numbering USING btree (licence_pkey);


--
-- Name: licence_media_kanrino_numbering_licencehistory_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX licence_media_kanrino_numbering_licencehistory_pkey ON licence_media_kanrino_numbering USING btree (licencehistory_pkey);


--
-- Name: licence_media_kanrino_numbering_workflow_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX licence_media_kanrino_numbering_workflow_id ON licence_media_kanrino_numbering USING btree (workflow_id);


--
-- Name: licence_media_licence_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX licence_media_licence_pkey ON licence_media USING btree (licence_pkey);


--
-- Name: licence_media_rireki_borrower_sosiki_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX licence_media_rireki_borrower_sosiki_pkey ON licence_media_rireki USING btree (borrower_sosiki_pkey);


--
-- Name: licence_media_rireki_licence_media_history_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX licence_media_rireki_licence_media_history_pkey ON licence_media_rireki USING btree (licence_media_history_pkey);


--
-- Name: licence_media_rireki_licence_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX licence_media_rireki_licence_pkey ON licence_media_rireki USING btree (licence_pkey);


--
-- Name: licence_media_rireki_licencehistory_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX licence_media_rireki_licencehistory_pkey ON licence_media_rireki USING btree (licencehistory_pkey);


--
-- Name: licencelist_delete_bikou; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX licencelist_delete_bikou ON licencelist_delete USING btree (bikou);


--
-- Name: licencelist_delete_brand; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX licencelist_delete_brand ON licencelist_delete USING btree (brand);


--
-- Name: licencelist_delete_hard_kotei; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX licencelist_delete_hard_kotei ON licencelist_delete USING btree (hard_kotei);


--
-- Name: licencelist_delete_licence_keitai; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX licencelist_delete_licence_keitai ON licencelist_delete USING btree (licence_keitai);


--
-- Name: licencelist_delete_newkbn; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX licencelist_delete_newkbn ON licencelist_delete USING btree (newkbn);


--
-- Name: licencelist_delete_soft_name; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX licencelist_delete_soft_name ON licencelist_delete USING btree (soft_name);


--
-- Name: licencelist_delete_upd_date; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX licencelist_delete_upd_date ON licencelist_delete USING btree (upd_date);


--
-- Name: licencelist_delete_upd_name; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX licencelist_delete_upd_name ON licencelist_delete USING btree (upd_name);


--
-- Name: licencelist_delete_upd_syozoku; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX licencelist_delete_upd_syozoku ON licencelist_delete USING btree (upd_syozoku);


--
-- Name: licencelist_delete_upgrade; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX licencelist_delete_upgrade ON licencelist_delete USING btree (upgrade);


--
-- Name: licencelist_delete_useproposal_kakunin; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX licencelist_delete_useproposal_kakunin ON licencelist_delete USING btree (useproposal_kakunin);


--
-- Name: licencelist_delete_useproposal_youken; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX licencelist_delete_useproposal_youken ON licencelist_delete USING btree (useproposal_youken);


--
-- Name: licencelist_delete_yukou; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX licencelist_delete_yukou ON licencelist_delete USING btree (yukou);


--
-- Name: licencelistprogram_delete_licencelistprogram_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX licencelistprogram_delete_licencelistprogram_pkey ON licencelistprogram_delete USING btree (licencelist_pkey, program_add_del);


--
-- Name: licencelistprogram_delete_program_add_del; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX licencelistprogram_delete_program_add_del ON licencelistprogram_delete USING btree (program_add_del);


--
-- Name: licencelistprogram_down_delete_licencelist_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX licencelistprogram_down_delete_licencelist_pkey ON licencelistprogram_down_delete USING btree (licencelist_pkey);


--
-- Name: licencelistprogram_down_delete_program_add_del; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX licencelistprogram_down_delete_program_add_del ON licencelistprogram_down_delete USING btree (program_add_del);


--
-- Name: ll_bikou; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX ll_bikou ON licencelist USING btree (bikou);


--
-- Name: ll_brand; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX ll_brand ON licencelist USING btree (brand);


--
-- Name: ll_hard_kotei; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX ll_hard_kotei ON licencelist USING btree (hard_kotei);


--
-- Name: ll_licence_keitai; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX ll_licence_keitai ON licencelist USING btree (licence_keitai);


--
-- Name: ll_licencelist_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX ll_licencelist_pkey ON licencelistrireki USING btree (licencelist_pkey);


--
-- Name: ll_licencelistrireki_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX ll_licencelistrireki_pkey ON licencelistrireki USING btree (licencehistory_pkey);


--
-- Name: ll_newkbn; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX ll_newkbn ON licencelist USING btree (newkbn);


--
-- Name: ll_soft_name; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX ll_soft_name ON licencelist USING btree (soft_name);


--
-- Name: ll_upd_date; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX ll_upd_date ON licencelist USING btree (upd_date);


--
-- Name: ll_upd_name; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX ll_upd_name ON licencelist USING btree (upd_name);


--
-- Name: ll_upgrade; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX ll_upgrade ON licencelist USING btree (upgrade);


--
-- Name: ll_useproposal_kakunin; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX ll_useproposal_kakunin ON licencelist USING btree (useproposal_kakunin);


--
-- Name: ll_useproposal_youken; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX ll_useproposal_youken ON licencelist USING btree (useproposal_youken);


--
-- Name: ll_yukou; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX ll_yukou ON licencelist USING btree (yukou);


--
-- Name: location_area_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX location_area_id ON location USING btree (area_id);


--
-- Name: location_code_place_cd; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX location_code_place_cd ON location_code USING btree (place_cd);


--
-- Name: location_display_flag; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX location_display_flag ON location USING btree (display_flag);


--
-- Name: location_group_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX location_group_id ON location USING btree (group_id);


--
-- Name: location_location_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX location_location_pkey ON location USING btree (location_pkey);


--
-- Name: location_site_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX location_site_id ON location USING btree (site_id);


--
-- Name: lr_hard_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX lr_hard_pkey ON licencerireki USING btree (hard_pkey);


--
-- Name: lr_holdings_number; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX lr_holdings_number ON licencerireki USING btree (holdings_number);


--
-- Name: lr_kanri_sosiki_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX lr_kanri_sosiki_pkey ON licencerireki USING btree (kanri_sosiki_pkey);


--
-- Name: lr_licence_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX lr_licence_pkey ON licencerireki USING btree (licence_pkey);


--
-- Name: lr_licence_pkey2; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX lr_licence_pkey2 ON licencerireki USING btree (licence_pkey2);


--
-- Name: lr_licencelist_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX lr_licencelist_pkey ON licencerireki USING btree (licencelist_pkey);


--
-- Name: lr_sosiki_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX lr_sosiki_pkey ON licencerireki USING btree (sosiki_pkey);


--
-- Name: lrkanri_sosiki_flg; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX lrkanri_sosiki_flg ON licencerireki USING btree (kanri_sosiki_flg);


--
-- Name: lrkanri_sosiki_sortkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX lrkanri_sosiki_sortkey ON licencerireki USING btree (kanri_sosiki_sortkey);


--
-- Name: lrsosiki_sortkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX lrsosiki_sortkey ON licencerireki USING btree (sosiki_sortkey);


--
-- Name: macaddress; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX macaddress ON inventory USING btree (macaddress);


--
-- Name: mail_val1; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX mail_val1 ON sogocheck USING btree (mail_val1);


--
-- Name: mail_val2; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX mail_val2 ON sogocheck USING btree (mail_val2);


--
-- Name: mail_val3; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX mail_val3 ON sogocheck USING btree (mail_val3);


--
-- Name: mail_val4; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX mail_val4 ON sogocheck USING btree (mail_val4);


--
-- Name: mail_val5; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX mail_val5 ON sogocheck USING btree (mail_val5);


--
-- Name: mail_val6; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX mail_val6 ON sogocheck USING btree (mail_val6);


--
-- Name: mail_val7; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX mail_val7 ON sogocheck USING btree (mail_val7);


--
-- Name: msg_val1; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX msg_val1 ON sogocheck USING btree (msg_val1);


--
-- Name: msg_val2; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX msg_val2 ON sogocheck USING btree (msg_val2);


--
-- Name: msg_val3; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX msg_val3 ON sogocheck USING btree (msg_val3);


--
-- Name: msg_val4; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX msg_val4 ON sogocheck USING btree (msg_val4);


--
-- Name: msg_val5; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX msg_val5 ON sogocheck USING btree (msg_val5);


--
-- Name: msg_val6; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX msg_val6 ON sogocheck USING btree (msg_val6);


--
-- Name: msg_val7; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX msg_val7 ON sogocheck USING btree (msg_val7);


--
-- Name: mt_menu_menu_code; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX mt_menu_menu_code ON mt_menu USING btree (menu_code);


--
-- Name: program_add_del; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX program_add_del ON licencelistprogram USING btree (program_add_del);


--
-- Name: program_add_del_d; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX program_add_del_d ON licencelistprogram_down USING btree (program_add_del);


--
-- Name: r_history_type; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX r_history_type ON rireki USING btree (history_type);


--
-- Name: r_ledger_manager_number; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX r_ledger_manager_number ON rireki USING btree (ledger_manager_number);


--
-- Name: r_program_add_del; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX r_program_add_del ON licencelistprogramrireki USING btree (program_add_del);


--
-- Name: r_program_add_del_d; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX r_program_add_del_d ON licencelistprogram_down_rireki USING btree (program_add_del);


--
-- Name: r_sinseisyozoku; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX r_sinseisyozoku ON rireki USING btree (sinseisyozoku);


--
-- Name: r_sosiki_sortkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX r_sosiki_sortkey ON rireki USING btree (sosiki_sortkey);


--
-- Name: rireki_numbering_history_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX rireki_numbering_history_pkey ON rireki_numbering USING btree (history_pkey);


--
-- Name: rireki_numbering_history_type; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX rireki_numbering_history_type ON rireki_numbering USING btree (history_type);


--
-- Name: s_bikou; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX s_bikou ON soft USING btree (bikou);


--
-- Name: s_downgrade; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX s_downgrade ON soft USING btree (downgrade);


--
-- Name: s_hard_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX s_hard_pkey ON soft USING btree (hard_pkey);


--
-- Name: s_hardwareno; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX s_hardwareno ON inventorysoft USING btree (hardwareno);


--
-- Name: s_licence_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX s_licence_pkey ON soft USING btree (licence_pkey);


--
-- Name: s_newkbn; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX s_newkbn ON soft USING btree (newkbn);


--
-- Name: so_sosiki_sortkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX so_sosiki_sortkey ON sogo_count USING btree (sosiki_sortkey);


--
-- Name: so_syozoku_fullname; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX so_syozoku_fullname ON sogo_count USING btree (syozoku_fullname);


--
-- Name: soft_delete__bikou; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX soft_delete__bikou ON soft_delete USING btree (bikou);


--
-- Name: soft_delete__hard_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX soft_delete__hard_pkey ON soft_delete USING btree (hard_pkey);


--
-- Name: soft_delete__licence_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX soft_delete__licence_pkey ON soft_delete USING btree (licence_pkey);


--
-- Name: soft_delete__newkbn; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX soft_delete__newkbn ON soft_delete USING btree (newkbn);


--
-- Name: soft_delete_install_date; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX soft_delete_install_date ON soft_delete USING btree (install_date);


--
-- Name: soft_delete_soft_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX soft_delete_soft_pkey ON soft_delete USING btree (soft_pkey);


--
-- Name: soft_delete_uninstall_date; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX soft_delete_uninstall_date ON soft_delete USING btree (uninstall_date);


--
-- Name: sogo_check_date; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX sogo_check_date ON sogo_view USING btree (check_date);


--
-- Name: sogo_err_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX sogo_err_pkey ON sogo_view USING btree (err_pkey);


--
-- Name: sogo_hard_hardno; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX sogo_hard_hardno ON sogocheck USING btree (hard_hardno);


--
-- Name: sogo_hardware; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX sogo_hardware ON sogo_view USING btree (hardware);


--
-- Name: sogo_inv_detail; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX sogo_inv_detail ON sogocheck USING btree (inv_detail);


--
-- Name: sogo_inv_list; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX sogo_inv_list ON sogocheck USING btree (inv_list);


--
-- Name: sogo_inventory; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX sogo_inventory ON sogo_view USING btree (inventory);


--
-- Name: sogo_licence; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX sogo_licence ON sogo_view USING btree (licence);


--
-- Name: sogo_licence_licenceno; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX sogo_licence_licenceno ON sogocheck USING btree (licence_licenceno);


--
-- Name: sogo_licence_list; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX sogo_licence_list ON sogo_view USING btree (licence_list);


--
-- Name: sogo_licence_program; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX sogo_licence_program ON sogocheck USING btree (licence_program);


--
-- Name: sogo_licencelist_program; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX sogo_licencelist_program ON sogocheck USING btree (licencelist_program);


--
-- Name: sogo_message; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX sogo_message ON sogo_view USING btree (message);


--
-- Name: sogo_soft_hardno; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX sogo_soft_hardno ON sogocheck USING btree (soft_hardno);


--
-- Name: sogo_soft_licenceno; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX sogo_soft_licenceno ON sogocheck USING btree (soft_licenceno);


--
-- Name: sogo_soft_program; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX sogo_soft_program ON sogocheck USING btree (soft_program);


--
-- Name: sogo_software; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX sogo_software ON sogo_view USING btree (software);


--
-- Name: sogo_sosiki_fullname; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX sogo_sosiki_fullname ON sogo_view USING btree (sosiki_fullname);


--
-- Name: sogo_sosiki_pkey1; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX sogo_sosiki_pkey1 ON sogo_view USING btree (sosiki_pkey1);


--
-- Name: sogo_sosiki_pkey2; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX sogo_sosiki_pkey2 ON sogo_view USING btree (sosiki_pkey2);


--
-- Name: sogo_sosiki_sortkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX sogo_sosiki_sortkey ON sogo_view USING btree (sosiki_sortkey);


--
-- Name: sogo_support; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX sogo_support ON sogo_view USING btree (support);


--
-- Name: sogo_type_type; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX sogo_type_type ON sogo_type USING btree (sogo_type);


--
-- Name: sogocheck_sogochk_type; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX sogocheck_sogochk_type ON sogocheck USING btree (sogochk_type);


--
-- Name: sogocheck_sosiki1; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX sogocheck_sosiki1 ON sogocheck USING btree (sosiki1);


--
-- Name: sogocheck_sosiki2; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX sogocheck_sosiki2 ON sogocheck USING btree (sosiki2);


--
-- Name: sogocheck_sysyem_user; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX sogocheck_sysyem_user ON sogocheck USING btree (sysyem_user);


--
-- Name: sosiki_disp_full_sosiki_name; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX sosiki_disp_full_sosiki_name ON sosiki USING btree (disp_full_sosiki_name);


--
-- Name: sosiki_onkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX sosiki_onkey ON sosiki USING btree (sosiki_onpkey);


--
-- Name: sosiki_sortkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX sosiki_sortkey ON sosiki USING btree (sosiki_sortkey);


--
-- Name: spt_val1; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX spt_val1 ON sogocheck USING btree (spt_val1);


--
-- Name: spt_val2; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX spt_val2 ON sogocheck USING btree (spt_val2);


--
-- Name: spt_val3; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX spt_val3 ON sogocheck USING btree (spt_val3);


--
-- Name: spt_val4; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX spt_val4 ON sogocheck USING btree (spt_val4);


--
-- Name: spt_val5; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX spt_val5 ON sogocheck USING btree (spt_val5);


--
-- Name: sr_downgrade; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX sr_downgrade ON softrireki USING btree (downgrade);


--
-- Name: sr_hard_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX sr_hard_pkey ON softrireki USING btree (hard_pkey);


--
-- Name: sr_licence_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX sr_licence_pkey ON softrireki USING btree (licence_pkey);


--
-- Name: sr_soft_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX sr_soft_pkey ON softrireki USING btree (soft_pkey);


--
-- Name: sso_administrator_master_user_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX sso_administrator_master_user_id ON sso_administrator USING btree (master_user_id);


--
-- Name: sso_csv_bureau_code; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX sso_csv_bureau_code ON sso_csv_bureau USING btree (code);


--
-- Name: sso_csv_bureau_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX sso_csv_bureau_id ON sso_csv_bureau USING btree (id);


--
-- Name: sso_csv_bureau_scheduled; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX sso_csv_bureau_scheduled ON sso_csv_bureau USING btree (scheduled);


--
-- Name: sso_csv_department_code; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX sso_csv_department_code ON sso_csv_department USING btree (code);


--
-- Name: sso_csv_department_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX sso_csv_department_id ON sso_csv_department USING btree (id);


--
-- Name: sso_csv_department_scheduled; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX sso_csv_department_scheduled ON sso_csv_department USING btree (scheduled);


--
-- Name: sso_csv_division_code; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX sso_csv_division_code ON sso_csv_division USING btree (code);


--
-- Name: sso_csv_division_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX sso_csv_division_id ON sso_csv_division USING btree (id);


--
-- Name: sso_csv_division_scheduled; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX sso_csv_division_scheduled ON sso_csv_division USING btree (scheduled);


--
-- Name: sso_csv_employee_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX sso_csv_employee_id ON sso_csv_employee USING btree (id);


--
-- Name: sso_csv_employee_scheduled; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX sso_csv_employee_scheduled ON sso_csv_employee USING btree (scheduled);


--
-- Name: sso_csv_employee_user_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX sso_csv_employee_user_id ON sso_csv_employee USING btree (user_id);


--
-- Name: sso_csv_unit_code; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX sso_csv_unit_code ON sso_csv_unit USING btree (code);


--
-- Name: sso_csv_unit_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX sso_csv_unit_id ON sso_csv_unit USING btree (id);


--
-- Name: sso_csv_unit_scheduled; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX sso_csv_unit_scheduled ON sso_csv_unit USING btree (scheduled);


--
-- Name: sso_sosiki_schedule_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX sso_sosiki_schedule_id ON sso_sosiki_schedule USING btree (id);


--
-- Name: sso_sosiki_schedule_reflected; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX sso_sosiki_schedule_reflected ON sso_sosiki_schedule USING btree (reflected);


--
-- Name: sso_sosiki_schedule_sosiki_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX sso_sosiki_schedule_sosiki_id ON sso_sosiki_schedule USING btree (sosiki_id);


--
-- Name: sso_user_master_master_user_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX sso_user_master_master_user_id ON sso_user_master USING btree (master_user_id);


--
-- Name: sso_user_master_user_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX sso_user_master_user_id ON sso_user_master USING btree (user_id);


--
-- Name: sso_user_schedule_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX sso_user_schedule_id ON sso_user_schedule USING btree (id);


--
-- Name: sso_user_schedule_reflected; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX sso_user_schedule_reflected ON sso_user_schedule USING btree (reflected);


--
-- Name: sso_user_schedule_user_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX sso_user_schedule_user_id ON sso_user_schedule USING btree (user_id);


--
-- Name: syozoku_name; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX syozoku_name ON sosiki USING btree (syozoku_name);


--
-- Name: tmp_hard_checkout_date; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_hard_checkout_date ON tmp_hard USING btree (checkout_date);


--
-- Name: tmp_hard_detail_checkout_date; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_hard_detail_checkout_date ON tmp_hard_detail USING btree (checkout_date);


--
-- Name: tmp_hard_detail_haiki_date; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_hard_detail_haiki_date ON tmp_hard_detail USING btree (haiki_date);


--
-- Name: tmp_hard_detail_hard_detail; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_hard_detail_hard_detail ON tmp_hard_detail USING btree (hard_kanrino);


--
-- Name: tmp_hard_detail_lease_or_purchase; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_hard_detail_lease_or_purchase ON tmp_hard_detail USING btree (lease_or_purchase);


--
-- Name: tmp_hard_detail_location_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_hard_detail_location_pkey ON tmp_hard_detail USING btree (location_pkey);


--
-- Name: tmp_hard_detail_newkbn; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_hard_detail_newkbn ON tmp_hard_detail USING btree (newkbn);


--
-- Name: tmp_hard_detail_procurement_form; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_hard_detail_procurement_form ON tmp_hard_detail USING btree (procurement_form);


--
-- Name: tmp_hard_detail_return_date; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_hard_detail_return_date ON tmp_hard_detail USING btree (return_date);


--
-- Name: tmp_hard_detail_return_due_date; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_hard_detail_return_due_date ON tmp_hard_detail USING btree (return_due_date);


--
-- Name: tmp_hard_detail_soft_installdel; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_hard_detail_soft_installdel ON tmp_hard_detail USING btree (soft_installdel);


--
-- Name: tmp_hard_detail_sosiki_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_hard_detail_sosiki_pkey ON tmp_hard_detail USING btree (sosiki_pkey);


--
-- Name: tmp_hard_haiki_date; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_hard_haiki_date ON tmp_hard USING btree (haiki_date);


--
-- Name: tmp_hard_hard_kanrino; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_hard_hard_kanrino ON tmp_hard USING btree (hard_kanrino);


--
-- Name: tmp_hard_lease_or_purchase; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_hard_lease_or_purchase ON tmp_hard USING btree (lease_or_purchase);


--
-- Name: tmp_hard_location_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_hard_location_pkey ON tmp_hard USING btree (location_pkey);


--
-- Name: tmp_hard_newkbn; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_hard_newkbn ON tmp_hard USING btree (newkbn);


--
-- Name: tmp_hard_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_hard_pkey ON tmp_hard USING btree (hard_pkey);


--
-- Name: tmp_hard_procurement_form; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_hard_procurement_form ON tmp_hard USING btree (procurement_form);


--
-- Name: tmp_hard_return_date; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_hard_return_date ON tmp_hard USING btree (return_date);


--
-- Name: tmp_hard_return_due_date; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_hard_return_due_date ON tmp_hard USING btree (return_due_date);


--
-- Name: tmp_hard_soft_installdel; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_hard_soft_installdel ON tmp_hard USING btree (soft_installdel);


--
-- Name: tmp_hard_sosiki_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_hard_sosiki_pkey ON tmp_hard USING btree (sosiki_pkey);


--
-- Name: tmp_inventory_collectsource; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_inventory_collectsource ON tmp_inventory USING btree (collectsource);


--
-- Name: tmp_inventory_detail_collectsorce; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_inventory_detail_collectsorce ON tmp_inventory_detail USING btree (collectsource);


--
-- Name: tmp_inventory_detail_group1; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_inventory_detail_group1 ON tmp_inventory_detail USING btree (group1);


--
-- Name: tmp_inventory_detail_hardwareno; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_inventory_detail_hardwareno ON tmp_inventory_detail USING btree (hardwareno);


--
-- Name: tmp_inventory_detail_idkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_inventory_detail_idkey ON tmp_inventory_detail USING btree (idkey);


--
-- Name: tmp_inventory_detail_invtraprecvdate; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_inventory_detail_invtraprecvdate ON tmp_inventory_detail USING btree (invtraprecvdate);


--
-- Name: tmp_inventory_detail_macaddress; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_inventory_detail_macaddress ON tmp_inventory_detail USING btree (macaddress);


--
-- Name: tmp_inventory_detail_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_inventory_detail_pkey ON tmp_inventory_detail USING btree (inventory_pkey);


--
-- Name: tmp_inventory_detail_userid; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_inventory_detail_userid ON tmp_inventory_detail USING btree (userid);


--
-- Name: tmp_inventory_group1; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_inventory_group1 ON tmp_inventory USING btree (group1);


--
-- Name: tmp_inventory_hardwareno; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_inventory_hardwareno ON tmp_inventory USING btree (hardwareno);


--
-- Name: tmp_inventory_idkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_inventory_idkey ON tmp_inventory USING btree (idkey);


--
-- Name: tmp_inventory_inventory_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_inventory_inventory_pkey ON tmp_inventory USING btree (inventory_pkey);


--
-- Name: tmp_inventory_macaddress; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_inventory_macaddress ON tmp_inventory USING btree (macaddress);


--
-- Name: tmp_inventory_userid; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_inventory_userid ON tmp_inventory USING btree (userid);


--
-- Name: tmp_inventorysoft_hardwareno; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_inventorysoft_hardwareno ON tmp_inventorysoft USING btree (hardwareno);


--
-- Name: tmp_inventorysoft_insapno; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_inventorysoft_insapno ON tmp_inventorysoft USING btree (insapno);


--
-- Name: tmp_licence_bikou; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_licence_bikou ON tmp_licence USING btree (bikou);


--
-- Name: tmp_licence_detail_bikou; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_licence_detail_bikou ON tmp_licence_detail USING btree (bikou);


--
-- Name: tmp_licence_detail_haiki_date; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_licence_detail_haiki_date ON tmp_licence_detail USING btree (haiki_date);


--
-- Name: tmp_licence_detail_hard_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_licence_detail_hard_pkey ON tmp_licence_detail USING btree (hard_pkey);


--
-- Name: tmp_licence_detail_hokan_baitai; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_licence_detail_hokan_baitai ON tmp_licence_detail USING btree (hokan_baitai);


--
-- Name: tmp_licence_detail_hokan_basyo; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_licence_detail_hokan_basyo ON tmp_licence_detail USING btree (hokan_basyo);


--
-- Name: tmp_licence_detail_holdings_number; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_licence_detail_holdings_number ON tmp_licence_detail USING btree (holdings_number);


--
-- Name: tmp_licence_detail_install_su; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_licence_detail_install_su ON tmp_licence_detail USING btree (install_su);


--
-- Name: tmp_licence_detail_kanri_sosiki_flg; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_licence_detail_kanri_sosiki_flg ON tmp_licence_detail USING btree (kanri_sosiki_flg);


--
-- Name: tmp_licence_detail_kanri_sosiki_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_licence_detail_kanri_sosiki_pkey ON tmp_licence_detail USING btree (kanri_sosiki_pkey);


--
-- Name: tmp_licence_detail_licence_kanrino; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_licence_detail_licence_kanrino ON tmp_licence_detail USING btree (licence_kanrino);


--
-- Name: tmp_licence_detail_licence_no; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_licence_detail_licence_no ON tmp_licence_detail USING btree (licence_no);


--
-- Name: tmp_licence_detail_licence_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_licence_detail_licence_pkey ON tmp_licence_detail USING btree (licence_pkey);


--
-- Name: tmp_licence_detail_licence_pkey2; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_licence_detail_licence_pkey2 ON tmp_licence_detail USING btree (licence_pkey2);


--
-- Name: tmp_licence_detail_licencelist_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_licence_detail_licencelist_pkey ON tmp_licence_detail USING btree (licencelist_pkey);


--
-- Name: tmp_licence_detail_license_limit_date; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_licence_detail_license_limit_date ON tmp_licence_detail USING btree (license_limit_date);


--
-- Name: tmp_licence_detail_newkbn; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_licence_detail_newkbn ON tmp_licence_detail USING btree (newkbn);


--
-- Name: tmp_licence_detail_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_licence_detail_pkey ON tmp_licence_detail USING btree (licence_pkey);


--
-- Name: tmp_licence_detail_sosiki_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_licence_detail_sosiki_pkey ON tmp_licence_detail USING btree (sosiki_pkey);


--
-- Name: tmp_licence_detail_tyoutatu; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_licence_detail_tyoutatu ON tmp_licence_detail USING btree (tyoutatu);


--
-- Name: tmp_licence_detail_tyoutatu_date; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_licence_detail_tyoutatu_date ON tmp_licence_detail USING btree (tyoutatu_date);


--
-- Name: tmp_licence_haiki_date; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_licence_haiki_date ON tmp_licence USING btree (haiki_date);


--
-- Name: tmp_licence_hard_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_licence_hard_pkey ON tmp_licence USING btree (hard_pkey);


--
-- Name: tmp_licence_hokan_baitai; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_licence_hokan_baitai ON tmp_licence USING btree (hokan_baitai);


--
-- Name: tmp_licence_hokan_basyo; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_licence_hokan_basyo ON tmp_licence USING btree (hokan_basyo);


--
-- Name: tmp_licence_holdings_number; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_licence_holdings_number ON tmp_licence USING btree (holdings_number);


--
-- Name: tmp_licence_install_su; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_licence_install_su ON tmp_licence USING btree (install_su);


--
-- Name: tmp_licence_kanri_sosiki_flg; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_licence_kanri_sosiki_flg ON tmp_licence USING btree (kanri_sosiki_flg);


--
-- Name: tmp_licence_kanri_sosiki_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_licence_kanri_sosiki_pkey ON tmp_licence USING btree (kanri_sosiki_pkey);


--
-- Name: tmp_licence_licence_kanrino; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_licence_licence_kanrino ON tmp_licence USING btree (licence_kanrino);


--
-- Name: tmp_licence_licence_no; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_licence_licence_no ON tmp_licence USING btree (licence_no);


--
-- Name: tmp_licence_licence_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_licence_licence_pkey ON tmp_licence USING btree (licence_pkey);


--
-- Name: tmp_licence_licence_pkey2; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_licence_licence_pkey2 ON tmp_licence USING btree (licence_pkey2);


--
-- Name: tmp_licence_licencelist_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_licence_licencelist_pkey ON tmp_licence USING btree (licencelist_pkey);


--
-- Name: tmp_licence_license_limit_date; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_licence_license_limit_date ON tmp_licence USING btree (license_limit_date);


--
-- Name: tmp_licence_newkbn; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_licence_newkbn ON tmp_licence USING btree (newkbn);


--
-- Name: tmp_licence_sosiki_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_licence_sosiki_pkey ON tmp_licence USING btree (sosiki_pkey);


--
-- Name: tmp_licence_tyoutatu; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_licence_tyoutatu ON tmp_licence USING btree (tyoutatu);


--
-- Name: tmp_licence_tyoutatu_date; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_licence_tyoutatu_date ON tmp_licence USING btree (tyoutatu_date);


--
-- Name: tmp_licencelist_bikou; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_licencelist_bikou ON tmp_licencelist USING btree (bikou);


--
-- Name: tmp_licencelist_brand; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_licencelist_brand ON tmp_licencelist USING btree (brand);


--
-- Name: tmp_licencelist_detail_bikou; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_licencelist_detail_bikou ON tmp_licencelist_detail USING btree (bikou);


--
-- Name: tmp_licencelist_detail_brand; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_licencelist_detail_brand ON tmp_licencelist_detail USING btree (brand);


--
-- Name: tmp_licencelist_detail_hard_kotei; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_licencelist_detail_hard_kotei ON tmp_licencelist_detail USING btree (hard_kotei);


--
-- Name: tmp_licencelist_detail_licence_keitai; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_licencelist_detail_licence_keitai ON tmp_licencelist_detail USING btree (licence_keitai);


--
-- Name: tmp_licencelist_detail_newkbn; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_licencelist_detail_newkbn ON tmp_licencelist_detail USING btree (newkbn);


--
-- Name: tmp_licencelist_detail_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_licencelist_detail_pkey ON tmp_licencelist_detail USING btree (licencelist_pkey);


--
-- Name: tmp_licencelist_detail_upd_date; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_licencelist_detail_upd_date ON tmp_licencelist_detail USING btree (upd_date);


--
-- Name: tmp_licencelist_detail_upd_name; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_licencelist_detail_upd_name ON tmp_licencelist_detail USING btree (upd_name);


--
-- Name: tmp_licencelist_detail_upgrade; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_licencelist_detail_upgrade ON tmp_licencelist_detail USING btree (upgrade);


--
-- Name: tmp_licencelist_detail_useproposal_kakunin; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_licencelist_detail_useproposal_kakunin ON tmp_licencelist_detail USING btree (useproposal_kakunin);


--
-- Name: tmp_licencelist_detail_useproposal_youken; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_licencelist_detail_useproposal_youken ON tmp_licencelist_detail USING btree (useproposal_youken);


--
-- Name: tmp_licencelist_detail_yukou; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_licencelist_detail_yukou ON tmp_licencelist_detail USING btree (yukou);


--
-- Name: tmp_licencelist_detaill_soft_name; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_licencelist_detaill_soft_name ON tmp_licencelist_detail USING btree (soft_name);


--
-- Name: tmp_licencelist_detailupd_syosoku; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_licencelist_detailupd_syosoku ON tmp_licencelist_detail USING btree (upd_syozoku);


--
-- Name: tmp_licencelist_hard_kotei; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_licencelist_hard_kotei ON tmp_licencelist USING btree (hard_kotei);


--
-- Name: tmp_licencelist_licence_keitai; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_licencelist_licence_keitai ON tmp_licencelist USING btree (licence_keitai);


--
-- Name: tmp_licencelist_newkbn; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_licencelist_newkbn ON tmp_licencelist USING btree (newkbn);


--
-- Name: tmp_licencelist_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_licencelist_pkey ON tmp_licencelist USING btree (licencelist_pkey);


--
-- Name: tmp_licencelist_soft_name; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_licencelist_soft_name ON tmp_licencelist USING btree (soft_name);


--
-- Name: tmp_licencelist_upd_date; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_licencelist_upd_date ON tmp_licencelist USING btree (upd_date);


--
-- Name: tmp_licencelist_upd_name; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_licencelist_upd_name ON tmp_licencelist USING btree (upd_name);


--
-- Name: tmp_licencelist_upd_syosoku; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_licencelist_upd_syosoku ON tmp_licencelist USING btree (upd_syozoku);


--
-- Name: tmp_licencelist_upgrade; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_licencelist_upgrade ON tmp_licencelist USING btree (upgrade);


--
-- Name: tmp_licencelist_useproposal_kakunin; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_licencelist_useproposal_kakunin ON tmp_licencelist USING btree (useproposal_kakunin);


--
-- Name: tmp_licencelist_useproposal_youken; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_licencelist_useproposal_youken ON tmp_licencelist USING btree (useproposal_youken);


--
-- Name: tmp_licencelist_yukou; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_licencelist_yukou ON tmp_licencelist USING btree (yukou);


--
-- Name: tmp_licencelistprogram_down_licencelist_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_licencelistprogram_down_licencelist_pkey ON tmp_licencelistprogram_down USING btree (licencelist_pkey);


--
-- Name: tmp_licencelistprogram_down_program_add_del; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_licencelistprogram_down_program_add_del ON tmp_licencelistprogram_down USING btree (program_add_del);


--
-- Name: tmp_licencelistprogram_licencelist_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_licencelistprogram_licencelist_pkey ON tmp_licencelistprogram USING btree (licencelist_pkey);


--
-- Name: tmp_licencelistprogram_program_add_del; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_licencelistprogram_program_add_del ON tmp_licencelistprogram USING btree (program_add_del);


--
-- Name: tmp_prohibited_software_delete_flag; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_prohibited_software_delete_flag ON tmp_prohibited_software USING btree (delete_flag);


--
-- Name: tmp_prohibited_software_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_prohibited_software_id ON tmp_prohibited_software USING btree (id);


--
-- Name: tmp_prohibited_software_sosiki_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_prohibited_software_sosiki_pkey ON tmp_prohibited_software USING btree (sosiki_pkey);


--
-- Name: tmp_soft_bikou; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_soft_bikou ON tmp_soft USING btree (bikou);


--
-- Name: tmp_soft_detail_bikou; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_soft_detail_bikou ON tmp_soft_detail USING btree (bikou);


--
-- Name: tmp_soft_detail_downgrade; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_soft_detail_downgrade ON tmp_soft_detail USING btree (downgrade);


--
-- Name: tmp_soft_detail_hard_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_soft_detail_hard_pkey ON tmp_soft_detail USING btree (hard_pkey);


--
-- Name: tmp_soft_detail_install_date; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_soft_detail_install_date ON tmp_soft_detail USING btree (tyoutatu_date);


--
-- Name: tmp_soft_detail_licence_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_soft_detail_licence_pkey ON tmp_soft_detail USING btree (licence_pkey);


--
-- Name: tmp_soft_detail_newkbn; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_soft_detail_newkbn ON tmp_soft_detail USING btree (newkbn);


--
-- Name: tmp_soft_detail_soft_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_soft_detail_soft_pkey ON tmp_soft_detail USING btree (soft_pkey);


--
-- Name: tmp_soft_detail_uninstall_date; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_soft_detail_uninstall_date ON tmp_soft_detail USING btree (haiki_date);


--
-- Name: tmp_soft_downgrade; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_soft_downgrade ON tmp_soft USING btree (downgrade);


--
-- Name: tmp_soft_hard_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_soft_hard_pkey ON tmp_soft USING btree (hard_pkey);


--
-- Name: tmp_soft_install_date; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_soft_install_date ON tmp_soft USING btree (install_date);


--
-- Name: tmp_soft_licence_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_soft_licence_pkey ON tmp_soft USING btree (licence_pkey);


--
-- Name: tmp_soft_newkbn; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_soft_newkbn ON tmp_soft USING btree (newkbn);


--
-- Name: tmp_soft_soft_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_soft_soft_pkey ON tmp_soft USING btree (install_date);


--
-- Name: tmp_soft_uninstall_date; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_soft_uninstall_date ON tmp_soft USING btree (uninstall_date);


--
-- Name: tmp_sosiki_detail_disp_full_sosiki_name; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_sosiki_detail_disp_full_sosiki_name ON tmp_sosiki_detail USING btree (disp_full_sosiki_name);


--
-- Name: tmp_sosiki_detail_onkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_sosiki_detail_onkey ON tmp_sosiki_detail USING btree (sosiki_onpkey);


--
-- Name: tmp_sosiki_detail_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_sosiki_detail_pkey ON tmp_sosiki_detail USING btree (sosiki_pkey);


--
-- Name: tmp_sosiki_detail_sortkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_sosiki_detail_sortkey ON tmp_sosiki_detail USING btree (sosiki_sortkey);


--
-- Name: tmp_sosiki_detail_syozoku_name; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_sosiki_detail_syozoku_name ON tmp_sosiki_detail USING btree (syozoku_name);


--
-- Name: tmp_sosiki_detail_yukou; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tmp_sosiki_detail_yukou ON tmp_sosiki_detail USING btree (yukou);


--
-- Name: uninstall_date; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX uninstall_date ON soft USING btree (uninstall_date);


--
-- Name: upd_syosoku; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX upd_syosoku ON licencelist USING btree (upd_syozoku);


--
-- Name: user_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX user_id ON login_key USING btree (user_id);


--
-- Name: userid; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX userid ON inventory USING btree (userid);


--
-- Name: workflow_apply_route_sort_key; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_apply_route_sort_key ON workflow_apply_route USING btree (sort_key);


--
-- Name: workflow_apply_route_workflow_category; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_apply_route_workflow_category ON workflow_apply_route USING btree (workflow_category);


--
-- Name: workflow_common_hard_hard_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_common_hard_hard_pkey ON workflow_common_hard USING btree (hard_pkey);


--
-- Name: workflow_common_hard_workflow_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_common_hard_workflow_id ON workflow_common_hard USING btree (workflow_id);


--
-- Name: workflow_common_licence_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_common_licence_id ON workflow_common_licence USING btree (id);


--
-- Name: workflow_common_licence_licence_kanrino; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_common_licence_licence_kanrino ON workflow_common_licence USING btree (licence_kanrino);


--
-- Name: workflow_common_licence_licence_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_common_licence_licence_pkey ON workflow_common_licence USING btree (licence_pkey);


--
-- Name: workflow_common_licence_media_licence_media_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_common_licence_media_licence_media_pkey ON workflow_common_licence_media USING btree (licence_media_pkey);


--
-- Name: workflow_common_licence_media_licence_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_common_licence_media_licence_pkey ON workflow_common_licence_media USING btree (licence_pkey);


--
-- Name: workflow_common_licence_media_workflow_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_common_licence_media_workflow_id ON workflow_common_licence_media USING btree (workflow_id);


--
-- Name: workflow_common_licence_workflow_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_common_licence_workflow_id ON workflow_common_licence USING btree (workflow_id);


--
-- Name: workflow_common_licencelist_downgrade_program_licencelist_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_common_licencelist_downgrade_program_licencelist_pkey ON workflow_common_licencelist_downgrade_program USING btree (licencelist_pkey);


--
-- Name: workflow_common_licencelist_downgrade_program_workflow_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_common_licencelist_downgrade_program_workflow_id ON workflow_common_licencelist_downgrade_program USING btree (workflow_id);


--
-- Name: workflow_common_licencelist_licencelist_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_common_licencelist_licencelist_pkey ON workflow_common_licencelist USING btree (licencelist_pkey);


--
-- Name: workflow_common_licencelist_program_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_common_licencelist_program_id ON workflow_common_licencelist_program USING btree (id);


--
-- Name: workflow_common_licencelist_program_licencelist_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_common_licencelist_program_licencelist_pkey ON workflow_common_licencelist_program USING btree (licencelist_pkey);


--
-- Name: workflow_common_licencelist_program_workflow_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_common_licencelist_program_workflow_id ON workflow_common_licencelist_program USING btree (workflow_id);


--
-- Name: workflow_common_licencelist_workflow_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_common_licencelist_workflow_id ON workflow_common_licencelist USING btree (workflow_id);


--
-- Name: workflow_common_soft_soft_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_common_soft_soft_pkey ON workflow_common_soft USING btree (soft_pkey);


--
-- Name: workflow_common_soft_workflow_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_common_soft_workflow_id ON workflow_common_soft USING btree (workflow_id);


--
-- Name: workflow_hardware_disposal_apply_device_control; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_hardware_disposal_apply_device_control ON workflow_hardware_disposal_apply USING btree (device_control);


--
-- Name: workflow_hardware_disposal_apply_hard_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_hardware_disposal_apply_hard_pkey ON workflow_hardware_disposal_apply USING btree (hard_pkey);


--
-- Name: workflow_hardware_disposal_apply_sosiki_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_hardware_disposal_apply_sosiki_pkey ON workflow_hardware_disposal_apply USING btree (sosiki_pkey);


--
-- Name: workflow_hardware_disposal_apply_takeout; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_hardware_disposal_apply_takeout ON workflow_hardware_disposal_apply USING btree (takeout);


--
-- Name: workflow_hardware_disposal_apply_takeout_end_date; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_hardware_disposal_apply_takeout_end_date ON workflow_hardware_disposal_apply USING btree (takeout_end_date);


--
-- Name: workflow_hardware_disposal_apply_takeout_start_date; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_hardware_disposal_apply_takeout_start_date ON workflow_hardware_disposal_apply USING btree (takeout_start_date);


--
-- Name: workflow_hardware_disposal_apply_workflow_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_hardware_disposal_apply_workflow_id ON workflow_hardware_disposal_apply USING btree (workflow_id);


--
-- Name: workflow_hardware_information_change_apply_device_control; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_hardware_information_change_apply_device_control ON workflow_hardware_information_change_apply USING btree (device_control);


--
-- Name: workflow_hardware_information_change_apply_hard_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_hardware_information_change_apply_hard_pkey ON workflow_hardware_information_change_apply USING btree (hard_pkey);


--
-- Name: workflow_hardware_information_change_apply_sosiki_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_hardware_information_change_apply_sosiki_pkey ON workflow_hardware_information_change_apply USING btree (sosiki_pkey);


--
-- Name: workflow_hardware_information_change_apply_takeout; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_hardware_information_change_apply_takeout ON workflow_hardware_information_change_apply USING btree (takeout);


--
-- Name: workflow_hardware_information_change_apply_takeout_end_date; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_hardware_information_change_apply_takeout_end_date ON workflow_hardware_information_change_apply USING btree (takeout_end_date);


--
-- Name: workflow_hardware_information_change_apply_takeout_start_date; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_hardware_information_change_apply_takeout_start_date ON workflow_hardware_information_change_apply USING btree (takeout_start_date);


--
-- Name: workflow_hardware_information_change_apply_workflow_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_hardware_information_change_apply_workflow_id ON workflow_hardware_information_change_apply USING btree (workflow_id);


--
-- Name: workflow_hardware_lending_apply_workflow_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_hardware_lending_apply_workflow_id ON workflow_hardware_lending_apply USING btree (workflow_id);


--
-- Name: workflow_hardware_lending_information_hard_kanrino; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_hardware_lending_information_hard_kanrino ON workflow_hardware_lending_information USING btree (hard_kanrino);


--
-- Name: workflow_hardware_lending_information_hard_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_hardware_lending_information_hard_pkey ON workflow_hardware_lending_information USING btree (hard_pkey);


--
-- Name: workflow_hardware_lending_information_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_hardware_lending_information_id ON workflow_hardware_lending_information USING btree (id);


--
-- Name: workflow_hardware_lending_information_workflow_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_hardware_lending_information_workflow_id ON workflow_hardware_lending_information USING btree (workflow_id);


--
-- Name: workflow_hardware_procurement_apply_device_control; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_hardware_procurement_apply_device_control ON workflow_hardware_procurement_apply USING btree (device_control);


--
-- Name: workflow_hardware_procurement_apply_sosiki_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_hardware_procurement_apply_sosiki_pkey ON workflow_hardware_procurement_apply USING btree (sosiki_pkey);


--
-- Name: workflow_hardware_procurement_apply_takeout; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_hardware_procurement_apply_takeout ON workflow_hardware_procurement_apply USING btree (takeout);


--
-- Name: workflow_hardware_procurement_apply_takeout_end_date; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_hardware_procurement_apply_takeout_end_date ON workflow_hardware_procurement_apply USING btree (takeout_end_date);


--
-- Name: workflow_hardware_procurement_apply_takeout_start_date; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_hardware_procurement_apply_takeout_start_date ON workflow_hardware_procurement_apply USING btree (takeout_start_date);


--
-- Name: workflow_hardware_procurement_apply_workflow_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_hardware_procurement_apply_workflow_id ON workflow_hardware_procurement_apply USING btree (workflow_id);


--
-- Name: workflow_hardware_return_apply_workflow_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_hardware_return_apply_workflow_id ON workflow_hardware_return_apply USING btree (workflow_id);


--
-- Name: workflow_hardware_transfer_apply_device_control; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_hardware_transfer_apply_device_control ON workflow_hardware_transfer_apply USING btree (device_control);


--
-- Name: workflow_hardware_transfer_apply_hard_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_hardware_transfer_apply_hard_pkey ON workflow_hardware_transfer_apply USING btree (hard_pkey);


--
-- Name: workflow_hardware_transfer_apply_sosiki_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_hardware_transfer_apply_sosiki_pkey ON workflow_hardware_transfer_apply USING btree (sosiki_pkey);


--
-- Name: workflow_hardware_transfer_apply_takeout; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_hardware_transfer_apply_takeout ON workflow_hardware_transfer_apply USING btree (takeout);


--
-- Name: workflow_hardware_transfer_apply_takeout_end_date; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_hardware_transfer_apply_takeout_end_date ON workflow_hardware_transfer_apply USING btree (takeout_end_date);


--
-- Name: workflow_hardware_transfer_apply_takeout_start_date; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_hardware_transfer_apply_takeout_start_date ON workflow_hardware_transfer_apply USING btree (takeout_start_date);


--
-- Name: workflow_hardware_transfer_apply_workflow_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_hardware_transfer_apply_workflow_id ON workflow_hardware_transfer_apply USING btree (workflow_id);


--
-- Name: workflow_lan_connect_apply_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_lan_connect_apply_id ON workflow_lan_connect_apply USING btree (id);


--
-- Name: workflow_lan_connect_apply_workflow_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_lan_connect_apply_workflow_id ON workflow_lan_connect_apply USING btree (workflow_id);


--
-- Name: workflow_licence_dictionary_apply_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_licence_dictionary_apply_id ON workflow_licence_dictionary_apply USING btree (id);


--
-- Name: workflow_licence_dictionary_apply_workflow_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_licence_dictionary_apply_workflow_id ON workflow_licence_dictionary_apply USING btree (workflow_id);


--
-- Name: workflow_licence_dictionary_downgrade_program_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_licence_dictionary_downgrade_program_id ON workflow_licence_dictionary_downgrade_program USING btree (id);


--
-- Name: workflow_licence_dictionary_downgrade_program_licencelist_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_licence_dictionary_downgrade_program_licencelist_pkey ON workflow_licence_dictionary_downgrade_program USING btree (licencelist_pkey);


--
-- Name: workflow_licence_dictionary_downgrade_program_workflow_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_licence_dictionary_downgrade_program_workflow_id ON workflow_licence_dictionary_downgrade_program USING btree (workflow_id);


--
-- Name: workflow_licence_dictionary_program_licencelist_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_licence_dictionary_program_licencelist_pkey ON workflow_licence_dictionary_program USING btree (licencelist_pkey);


--
-- Name: workflow_licence_dictionary_program_workflow_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_licence_dictionary_program_workflow_id ON workflow_licence_dictionary_program USING btree (workflow_id);


--
-- Name: workflow_license_disposal_apply_licence_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_license_disposal_apply_licence_pkey ON workflow_license_disposal_apply USING btree (licence_pkey);


--
-- Name: workflow_license_disposal_apply_sosiki_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_license_disposal_apply_sosiki_pkey ON workflow_license_disposal_apply USING btree (sosiki_pkey);


--
-- Name: workflow_license_disposal_apply_workflow_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_license_disposal_apply_workflow_id ON workflow_license_disposal_apply USING btree (workflow_id);


--
-- Name: workflow_license_transfer_apply_licence_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_license_transfer_apply_licence_pkey ON workflow_license_transfer_apply USING btree (licence_pkey);


--
-- Name: workflow_license_transfer_apply_sosiki_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_license_transfer_apply_sosiki_pkey ON workflow_license_transfer_apply USING btree (sosiki_pkey);


--
-- Name: workflow_license_transfer_apply_workflow_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_license_transfer_apply_workflow_id ON workflow_license_transfer_apply USING btree (workflow_id);


--
-- Name: workflow_paperwork_pc_distribution_apply_workflow_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_paperwork_pc_distribution_apply_workflow_id ON workflow_paperwork_pc_distribution_apply USING btree (workflow_id);


--
-- Name: workflow_paperwork_pc_distribution_hard_apply_workflow_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_paperwork_pc_distribution_hard_apply_workflow_id ON workflow_paperwork_pc_distribution_hard_apply USING btree (workflow_id);


--
-- Name: workflow_paperwork_pc_return_apply_device_control; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_paperwork_pc_return_apply_device_control ON workflow_paperwork_pc_return_apply USING btree (device_control);


--
-- Name: workflow_paperwork_pc_return_apply_hard_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_paperwork_pc_return_apply_hard_pkey ON workflow_paperwork_pc_return_apply USING btree (hard_pkey);


--
-- Name: workflow_paperwork_pc_return_apply_sosiki_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_paperwork_pc_return_apply_sosiki_pkey ON workflow_paperwork_pc_return_apply USING btree (sosiki_pkey);


--
-- Name: workflow_paperwork_pc_return_apply_takeout; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_paperwork_pc_return_apply_takeout ON workflow_paperwork_pc_return_apply USING btree (takeout);


--
-- Name: workflow_paperwork_pc_return_apply_takeout_end_date; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_paperwork_pc_return_apply_takeout_end_date ON workflow_paperwork_pc_return_apply USING btree (takeout_end_date);


--
-- Name: workflow_paperwork_pc_return_apply_takeout_start_date; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_paperwork_pc_return_apply_takeout_start_date ON workflow_paperwork_pc_return_apply USING btree (takeout_start_date);


--
-- Name: workflow_paperwork_pc_return_apply_workflow_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_paperwork_pc_return_apply_workflow_id ON workflow_paperwork_pc_return_apply USING btree (workflow_id);


--
-- Name: workflow_report_inventory_result_apply_work_flow_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_report_inventory_result_apply_work_flow_id ON workflow_report_inventory_result_apply USING btree (workflow_id);


--
-- Name: workflow_software_batch_io_apply_sosiki_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_software_batch_io_apply_sosiki_pkey ON workflow_software_batch_io_apply USING btree (sosiki_pkey);


--
-- Name: workflow_software_batch_io_apply_workflow_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_software_batch_io_apply_workflow_id ON workflow_software_batch_io_apply USING btree (workflow_id);


--
-- Name: workflow_software_licence_procurement_apply_install_su; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_software_licence_procurement_apply_install_su ON workflow_software_licence_procurement_apply USING btree (install_su);


--
-- Name: workflow_software_licence_procurement_apply_licencelist_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_software_licence_procurement_apply_licencelist_pkey ON workflow_software_licence_procurement_apply USING btree (licencelist_pkey);


--
-- Name: workflow_software_licence_procurement_apply_sosiki_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_software_licence_procurement_apply_sosiki_pkey ON workflow_software_licence_procurement_apply USING btree (sosiki_pkey);


--
-- Name: workflow_software_media_copy_apply_licence_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_software_media_copy_apply_licence_pkey ON workflow_software_media_copy_apply USING btree (licence_pkey);


--
-- Name: workflow_software_media_copy_apply_workflow_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_software_media_copy_apply_workflow_id ON workflow_software_media_copy_apply USING btree (workflow_id);


--
-- Name: workflow_software_print_target_soft_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_software_print_target_soft_pkey ON workflow_software_print_target USING btree (soft_pkey);


--
-- Name: workflow_software_print_target_workflow_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_software_print_target_workflow_id ON workflow_software_print_target USING btree (workflow_id);


--
-- Name: workflow_to_ledger_pkey; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_to_ledger_pkey ON workflow_to_ledger USING btree (pkey);


--
-- Name: workflow_to_ledger_version; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_to_ledger_version ON workflow_to_ledger USING btree (version);


--
-- Name: workflow_to_ledger_workflow_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workflow_to_ledger_workflow_id ON workflow_to_ledger USING btree (workflow_id);


--
-- Name: yukou; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX yukou ON sosiki USING btree (yukou);


--
-- PostgreSQL database dump complete
--

