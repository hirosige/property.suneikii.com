DROP VIEW IF EXISTS workflow_list_all;
CREATE VIEW workflow_list_all AS
 SELECT workflow.id,
    workflow.workflow_no,
    workflow.workflow_category,
    ( SELECT code.code_name
           FROM code
          WHERE code.code_bunrui::text = '10006'::text AND code.code::text = workflow.workflow_category::text) AS workflow_category_name,
    workflow.sinseisyozoku,
    sosiki.syozoku_name,
    sosiki.syozoku_fullname AS sosiki_fullname,
    workflow.sinseisya,
    workflow.sinsei_date,
    workflow.progress,
    ( SELECT code.code_name
           FROM code
          WHERE code.code_bunrui::text = '10007'::text AND code.code::text = workflow.progress::text) AS progress_name,
        CASE
            WHEN workflow.progress::text = 'd005'::text OR workflow.progress::text = 'd006'::text THEN workflow.update_datetime
            ELSE NULL::timestamp with time zone
        END AS max_syonin_date,
    sosiki.sosiki_sortkey,
    workflow.email_ad,
    workflow.application_note
   FROM workflow
     LEFT JOIN sosiki ON workflow.sinseisyozoku::text = sosiki.sosiki_pkey::text
  WHERE workflow.delete_flag = 0;