
 ALTER TABLE licencelistrireki ADD sinsei_date TIMESTAMP WITH TIME ZONE;
 ALTER TABLE licencelistrireki ADD sinseisya   CHARACTER VARYING(80);
 ALTER TABLE licencelistrireki ADD syonin_kbn  CHARACTER VARYING(6);
 ALTER TABLE licencelistrireki ADD syonin_kbn_name CHARACTER VARYING;
 ALTER TABLE licencelistrireki ADD syoninsya   CHARACTER VARYING(80);
 ALTER TABLE licencelistrireki ADD syonin_date TIMESTAMP WITH TIME ZONE;
 ALTER TABLE licencelistrireki ADD email_ad    TEXT;
 ALTER TABLE licencelistrireki ADD note TEXT;
 ALTER TABLE licencelistrireki ADD rireki_no   CHARACTER VARYING(255);

COMMENT ON COLUMN licencelistrireki.sinseisya   IS '申請者';
COMMENT ON COLUMN licencelistrireki.syonin_kbn  IS '承認区分';
COMMENT ON COLUMN licencelistrireki.syonin_kbn_name IS '承認区分_名称';
COMMENT ON COLUMN licencelistrireki.syoninsya   IS '承認者';
COMMENT ON COLUMN licencelistrireki.syonin_date IS '承認日';
COMMENT ON COLUMN licencelistrireki.email_ad    IS 'メールアドレス';
COMMENT ON COLUMN licencelistrireki.note IS '承認コメント';
COMMENT ON COLUMN licencelistrireki.rireki_no   IS '申請書番号';
