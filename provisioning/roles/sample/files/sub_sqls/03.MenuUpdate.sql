SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

-- Story #8953 Ticket #8954 「収集情報メニュー表示権限変更」 y.kawaguchi 2015/12/02 Start
update public.mt_menu set menu_action = 'system

eturan

sinsei

syonin' where menu_code = 29;
-- Story #8953 Ticket #8954 「収集情報メニュー表示権限変更」 y.kawaguchi 2015/12/02 Start

-- Story #8953 Ticket #8955 「齟齬集計メニュー表示権限変更」 y.kawaguchi 2015/12/02 Start
update public.mt_menu set menu_action = 'system

eturan

sinsei

syonin' where menu_code = 3;
-- Story #8953 Ticket #8955 「齟齬集計メニュー表示権限変更」 y.kawaguchi 2015/12/02 Start