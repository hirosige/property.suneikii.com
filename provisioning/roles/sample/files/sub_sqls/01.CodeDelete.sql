SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

-- Story #8466 Ticket #8931 「インポートメニュー 組織情報 削除」 y.kawaguchi 2015/11/26 Start
delete from public.code where code.code_bunrui = '00009' and code.code = 'd009';
-- Story #8466 Ticket #8931 「インポートメニュー 組織情報 削除」 y.kawaguchi 2015/11/26 End
