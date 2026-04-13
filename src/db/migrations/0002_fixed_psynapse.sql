CREATE TYPE "public"."gender" AS ENUM('girl', 'boy');--> statement-breakpoint
ALTER TABLE "master" ALTER COLUMN "crossTime" DROP DEFAULT;--> statement-breakpoint
ALTER TABLE "master" ADD COLUMN "Gender" "gender";--> statement-breakpoint
ALTER TABLE "master" ADD CONSTRAINT "master_unique_code_unique" UNIQUE("unique_code");--> statement-breakpoint
ALTER TABLE "public"."master" ALTER COLUMN "category" SET DATA TYPE text;--> statement-breakpoint
DROP TYPE "public"."category";--> statement-breakpoint
CREATE TYPE "public"."category" AS ENUM('girls', 'boys', 'walkathon_f', 'walkathon_m');--> statement-breakpoint
ALTER TABLE "public"."master" ALTER COLUMN "category" SET DATA TYPE "public"."category" USING "category"::"public"."category";