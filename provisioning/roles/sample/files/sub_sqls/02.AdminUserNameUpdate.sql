SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

-- Story #8492 Ticket #8493 「管理者ユーザー名変更」 y.kawaguchi 2015/11/27 Start

-- 管理者ユーザー名変更 「hiroshimainfo」 -> 「hiroshimasaminfo」
update public.user set user_id = 'hiroshimasaminfo' where user_id = 'hiroshimainfo';
update public.workflow_apply_route set user_id = 'hiroshimasaminfo' where user_id = 'hiroshimainfo';
update public.sso_user_master set master_user_id = 'hiroshimasaminfo', user_id = 'hiroshimasaminfo' where master_user_id = 'hiroshimainfo' and user_id = 'hiroshimainfo';
update public.sso_administrator set master_user_id = 'hiroshimasaminfo', user_id = 'hiroshimasaminfo' where master_user_id = 'hiroshimainfo' and user_id = 'hiroshimainfo';

-- 管理者ユーザー名変更 「supportadmin」 -> 「supportsamadmin」
update public.user set user_id = 'supportsamadmin' where user_id = 'supportadmin';
update public.workflow_apply_route set user_id = 'supportsamadmin' where user_id = 'supportadmin';
update public.sso_user_master set master_user_id = 'supportsamadmin', user_id = 'supportsamadmin' where master_user_id = 'supportadmin' and user_id = 'supportadmin';
update public.sso_administrator set master_user_id = 'supportsamadmin', user_id = 'supportsamadmin' where master_user_id = 'supportadmin' and user_id = 'supportadmin';

-- 管理者ユーザー名変更 「hiroshimaadmin」 -> 「hiroshimasamadmin」
update public.user set user_id = 'hiroshimasamadmin' where user_id = 'hiroshimaadmin';
update public.workflow_apply_route set user_id = 'hiroshimasamadmin' where user_id = 'hiroshimaadmin';
update public.sso_user_master set master_user_id = 'hiroshimasamadmin', user_id = 'hiroshimasamadmin' where master_user_id = 'hiroshimaadmin' and user_id = 'hiroshimaadmin';
update public.sso_administrator set master_user_id = 'hiroshimasamadmin', user_id = 'hiroshimasamadmin' where master_user_id = 'hiroshimaadmin' and user_id = 'hiroshimaadmin';

-- Story #8492 Ticket #8493 「管理者ユーザー名変更」 y.kawaguchi 2015/11/27 Start