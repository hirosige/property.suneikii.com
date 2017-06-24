INSERT INTO code VALUES ('10004','d008','申請時備考',80);

DROP VIEW IF EXISTS workflow_list;
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
    workflow.application_note,
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