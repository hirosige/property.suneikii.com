DROP VIEW IF EXISTS licencelist_delete_detail;
CREATE VIEW licencelist_delete_detail AS
   SELECT l.licencelist_pkey,
    l.soft_name,
    l.licence_keitai,
    ( SELECT code.code_name
           FROM code
          WHERE code.code_bunrui::text = '00005'::text AND code.code::text = l.licence_keitai::text) AS licence_keitai_name,
    l.hard_kotei,
    ( SELECT code.code_name
           FROM code
          WHERE code.code_bunrui::text = '00004'::text AND code.code::text = l.hard_kotei::text) AS hard_kotei_name,
    l.upgrade,
    ( SELECT code.code_name
           FROM code
          WHERE code.code_bunrui::text = '00004'::text AND code.code::text = l.upgrade::text) AS upgrade_name,
    l.brand,
    array_to_string(ARRAY( SELECT regexp_replace(p.program_add_del::text, '
'::text, '(RETURN)'::text) AS regexp_replace
           FROM licencelistprogram_delete p
          WHERE p.licencelist_pkey = l.licencelist_pkey
          ORDER BY p.program_add_del), '
'::text) AS program_add_del,
    array_to_string(ARRAY( SELECT regexp_replace(p.program_add_del::text, '
'::text, '(RETURN)'::text) AS regexp_replace
           FROM licencelistprogram_down_delete p
          WHERE p.licencelist_pkey = l.licencelist_pkey
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
          WHERE code.code_bunrui::text = '00006'::text AND code.code::text = l.useproposal_kakunin::text) AS useproposal_kakunin_name,
    l.yukou,
    ( SELECT code.code_name
           FROM code
          WHERE code.code_bunrui::text = '00007'::text AND code.code::text = l.yukou::text) AS yukou_name,
    l.permit,
    ( SELECT code.code_name
           FROM code
          WHERE code.code_bunrui::text = '10001'::text AND code.code::text = l.permit::text) AS permit_name,
    l.version,
    l.newkbn,
    COALESCE(sosiki.sosiki_sortkey::integer, 0) AS sosiki_sortkey,
    sosiki.syozoku_name AS sosiki_name,
    sosiki.syozoku_fullname AS sosiki_fullname,
    l.delete_user_id,
    l.delete_user_name,
    l.delete_datetime
   FROM licencelist_delete l
     LEFT JOIN sosiki ON l.upd_syozoku = sosiki.sosiki_pkey;


DROP VIEW IF EXISTS rireki_detail_group;
CREATE VIEW rireki_detail_group AS
 SELECT min(main.history_pkey) AS history_pkey,
    main.history_type,
    main.history_type_name,
    main.ledger_manager_number AS history_kanrino,
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
            rireki.note,
            rireki.ledger_manager_number
           FROM ((rireki
             LEFT JOIN sosiki ON (((rireki.sinseisyozoku)::text = (sosiki.sosiki_pkey)::text)))
             LEFT JOIN rireki_numbering ON (((rireki.history_pkey = rireki_numbering.history_pkey) AND ((rireki.history_type)::text = (rireki_numbering.history_type)::text))))) main
  GROUP BY main.history_type, main.history_type_name, main.ledger_manager_number, main.sinseisyozoku, main.syozoku_name, main.sosiki_fullname, main.sinseisya, main.sinsei_date, main.syonin_kbn, main.syonin_kbn_name, main.syoninsya, main.syonin_date, main.sosiki_sortkey, main.email_ad, main.rireki_no, main.note;

