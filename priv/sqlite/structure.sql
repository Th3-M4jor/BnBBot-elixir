CREATE TABLE IF NOT EXISTS "schema_migrations" ("version" INTEGER PRIMARY KEY, "inserted_at" TEXT_DATETIME);
CREATE TABLE IF NOT EXISTS "bot_log" ("id" INTEGER PRIMARY KEY, "level" TEXT, "message" TEXT, "inserted_at" TEXT_DATETIME NOT NULL);
CREATE TABLE IF NOT EXISTS "banlist" ("id" INTEGER PRIMARY KEY, "added_by" INTEGER NOT NULL, "to_ban" INTEGER NOT NULL, "inserted_at" TEXT_DATETIME NOT NULL);
CREATE TABLE IF NOT EXISTS "created_commands" ("name" TEXT NOT NULL PRIMARY KEY, "state" BLOB NOT NULL, "inserted_at" TEXT_DATETIME NOT NULL, "updated_at" TEXT_DATETIME NOT NULL, "cmd_ids" BLOB);
INSERT INTO schema_migrations VALUES(20211003173517,'2021-10-03T18:33:03');
INSERT INTO schema_migrations VALUES(20211015184140,'2021-10-15T19:41:05');
INSERT INTO schema_migrations VALUES(20220612195711,'2022-06-12T20:07:30');
INSERT INTO schema_migrations VALUES(20220626160455,'2022-06-26T19:56:01');
