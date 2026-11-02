-- Bytebase's 3.4 migrator ran this in Go at startup, before the 3.4 migrations; no SQL file records it (backend/migrator/migrator.go at 73094e2a61).
	ALTER TABLE instance_change_history
	DROP COLUMN IF EXISTS row_status,
	DROP COLUMN IF EXISTS creator_id,
	DROP COLUMN IF EXISTS updater_id,
	DROP COLUMN IF EXISTS created_ts,
	DROP COLUMN IF EXISTS updated_ts,
	DROP COLUMN IF EXISTS instance_id,
	DROP COLUMN IF EXISTS database_id,
	DROP COLUMN IF EXISTS project_id,
	DROP COLUMN IF EXISTS issue_id,
	DROP COLUMN IF EXISTS release_version,
	DROP COLUMN IF EXISTS sequence,
	DROP COLUMN IF EXISTS source,
	DROP COLUMN IF EXISTS type,
	DROP COLUMN IF EXISTS description,
	DROP COLUMN IF EXISTS sheet_id,
	DROP COLUMN IF EXISTS statement,
	DROP COLUMN IF EXISTS schema,
	DROP COLUMN IF EXISTS schema_prev,
	DROP COLUMN IF EXISTS payload;
	CREATE UNIQUE INDEX IF NOT EXISTS idx_instance_change_history_unique_version ON instance_change_history (version);
