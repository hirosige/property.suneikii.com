-- workflow_lan_connect_apply テーブルに new_ipaddress1, new_ipaddress2 を追加
ALTER TABLE workflow_lan_connect_apply ADD new_ipaddress1 character varying(255), ADD new_ipaddress2 text;
