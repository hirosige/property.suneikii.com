-- workflow_common_soft テーブルの sotf_pkey の NOT NULL 制約を解除
ALTER TABLE workflow_common_soft ALTER COLUMN soft_pkey DROP NOT NULL;
