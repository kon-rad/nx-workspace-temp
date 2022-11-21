CREATE TABLE "public"."raids" (
  "id" uuid NOT NULL DEFAULT gen_random_uuid(),
  "v1_id" text,
  "name" text NOT NULL,
  "status" text NOT NULL,
  "category" text NOT NULL,
  "cleric" uuid,
  "invoice_address" text,
  "start_date" timestamptz,
  "end_date" timestamptz,
  "consultation" uuid NOT NULL,
  "portfolio" uuid,
  "airtable_id" text,
  "escrow_index" integer,
  "locker_hash" text,
  "created_at" timestamptz NOT NULL DEFAULT NOW(),
  "updated_at" timestamptz NOT NULL DEFAULT NOW(),
  PRIMARY KEY ("id") ,
  FOREIGN KEY ("status") REFERENCES "public"."raid_statuses"("raid_status") ON UPDATE restrict ON DELETE restrict,
  FOREIGN KEY ("category") REFERENCES "public"."raid_categories"("raid_category") ON UPDATE restrict ON DELETE restrict,
  FOREIGN KEY ("cleric") REFERENCES "public"."members"("id") ON UPDATE restrict ON DELETE restrict,
  FOREIGN KEY ("consultation") REFERENCES "public"."consultations"("id") ON UPDATE restrict ON DELETE restrict,
  UNIQUE ("id")
);
CREATE EXTENSION IF NOT EXISTS pgcrypto;
