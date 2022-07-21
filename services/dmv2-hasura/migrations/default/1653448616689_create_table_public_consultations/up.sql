CREATE TABLE "public"."consultations" ("id" uuid NOT NULL DEFAULT gen_random_uuid(), "contact_name" text NOT NULL, "contact_email" text NOT NULL, "contact_bio" text NOT NULL, "contact_discord" text, "contact_telegram" text, "contact_twitter" text, "contact_github" text, "project_name" text NOT NULL, "project_link" text NOT NULL, "project_type" text NOT NULL, "project_specs" text NOT NULL, "project_desc" text, "desired_delivery" date, "budget" text NOT NULL, "delivery_priorities" text NOT NULL, "additional_info" text, "submission_type" text NOT NULL, "submission_hash" text, "consultation_hash" text, PRIMARY KEY ("id") , FOREIGN KEY ("project_type") REFERENCES "public"."project_types"("project_type") ON UPDATE restrict ON DELETE restrict, FOREIGN KEY ("project_specs") REFERENCES "public"."available_project_specs"("available_project_spec") ON UPDATE restrict ON DELETE restrict, FOREIGN KEY ("delivery_priorities") REFERENCES "public"."budget_options"("budget_option") ON UPDATE restrict ON DELETE restrict, FOREIGN KEY ("additional_info") REFERENCES "public"."delivery_priorities"("delivery_priority") ON UPDATE restrict ON DELETE restrict, FOREIGN KEY ("submission_type") REFERENCES "public"."submission_types"("submission_type") ON UPDATE restrict ON DELETE restrict, UNIQUE ("id"));
CREATE EXTENSION IF NOT EXISTS pgcrypto;
