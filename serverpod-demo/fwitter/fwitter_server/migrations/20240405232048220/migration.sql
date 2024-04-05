BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "post" (
    "id" serial PRIMARY KEY,
    "author" text NOT NULL,
    "body" text NOT NULL,
    "createdAt" timestamp without time zone NOT NULL
);

-- Indexes
CREATE INDEX "post_uid_idx" ON "post" USING btree ("author");


--
-- MIGRATION VERSION FOR fwitter
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('fwitter', '20240405232048220', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240405232048220', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240115074235544', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240115074235544', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod_auth
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod_auth', '20240115074239642', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240115074239642', "timestamp" = now();


COMMIT;
