CREATE TABLE "public"."comments" (
  "id" uuid NOT NULL DEFAULT gen_random_uuid(),
  "comment" text NOT NULL,
  "member" uuid NOT NULL,
  "raid" uuid NOT NULL,
  "created_at" timestamptz NOT NULL DEFAULT NOW(),
  "updated_at" timestamptz NOT NULL DEFAULT NOW(),
  PRIMARY KEY ("id") ,
  FOREIGN KEY ("member") REFERENCES "public"."members"("id") ON UPDATE restrict ON DELETE restrict,
  FOREIGN KEY ("raid") REFERENCES "public"."raids"("id") ON UPDATE restrict ON DELETE restrict,
  UNIQUE ("id")
);
CREATE EXTENSION IF NOT EXISTS pgcrypto;