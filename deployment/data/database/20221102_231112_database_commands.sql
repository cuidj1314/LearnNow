CREATE TABLE "myfirstmodule$training" (
	"id" BIGINT NOT NULL,
	"startdate" TIMESTAMP NULL,
	"enddate" TIMESTAMP NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", 
"entity_name", 
"table_name", 
"remote", 
"remote_primary_key")
 VALUES ('4b8ff126-dfd8-4452-a534-4ee73c6e97fc', 
'MyFirstModule.Training', 
'myfirstmodule$training', 
false, 
false);
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('e29d67e0-d2aa-4947-be1b-8505eb8ffcb0', 
'4b8ff126-dfd8-4452-a534-4ee73c6e97fc', 
'StartDate', 
'startdate', 
20, 
0, 
'', 
false);
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('fdb2fdb6-295e-4a02-a26f-6f612c2188d7', 
'4b8ff126-dfd8-4452-a534-4ee73c6e97fc', 
'EndDate', 
'enddate', 
20, 
0, 
'', 
false);
CREATE TABLE "myfirstmodule$training_course" (
	"myfirstmodule$trainingid" BIGINT NOT NULL,
	"myfirstmodule$courseid" BIGINT NOT NULL,
	PRIMARY KEY("myfirstmodule$trainingid","myfirstmodule$courseid"),
	CONSTRAINT "uniq_myfirstmodule$training_course_myfirstmodule$trainingid" UNIQUE ("myfirstmodule$trainingid"));
CREATE INDEX "idx_myfirstmodule$training_course_myfirstmodule$course_myfirstmodule$training" ON "myfirstmodule$training_course" ("myfirstmodule$courseid" ASC,"myfirstmodule$trainingid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('fb78abfc-c5cb-403d-91d9-9457ce6996de', 
'MyFirstModule.Training_Course', 
'myfirstmodule$training_course', 
'4b8ff126-dfd8-4452-a534-4ee73c6e97fc', 
'2fa67016-7929-41d9-bb04-2ff7a3e26de1', 
'myfirstmodule$trainingid', 
'myfirstmodule$courseid', 
'idx_myfirstmodule$training_course_myfirstmodule$course_myfirstmodule$training');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_myfirstmodule$training_course_myfirstmodule$trainingid', 
'fb78abfc-c5cb-403d-91d9-9457ce6996de', 
'09724a48-ebf4-33bd-bec6-92c293d82ed5');
CREATE TABLE "myfirstmodule$training_teacher" (
	"myfirstmodule$trainingid" BIGINT NOT NULL,
	"myfirstmodule$teacherid" BIGINT NOT NULL,
	PRIMARY KEY("myfirstmodule$trainingid","myfirstmodule$teacherid"),
	CONSTRAINT "uniq_myfirstmodule$training_teacher_myfirstmodule$trainingid" UNIQUE ("myfirstmodule$trainingid"));
CREATE INDEX "idx_myfirstmodule$training_teacher_myfirstmodule$teacher_myfirstmodule$training" ON "myfirstmodule$training_teacher" ("myfirstmodule$teacherid" ASC,"myfirstmodule$trainingid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('659cf759-26ff-496c-ab57-0221b5a982f7', 
'MyFirstModule.Training_Teacher', 
'myfirstmodule$training_teacher', 
'4b8ff126-dfd8-4452-a534-4ee73c6e97fc', 
'be827cf2-5986-4f5b-8fe5-dc67815cbaff', 
'myfirstmodule$trainingid', 
'myfirstmodule$teacherid', 
'idx_myfirstmodule$training_teacher_myfirstmodule$teacher_myfirstmodule$training');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_myfirstmodule$training_teacher_myfirstmodule$trainingid', 
'659cf759-26ff-496c-ab57-0221b5a982f7', 
'43a3ace3-219e-3283-9ae2-73976ca0f54e');
CREATE TABLE "myfirstmodule$training_location" (
	"myfirstmodule$trainingid" BIGINT NOT NULL,
	"myfirstmodule$locationid" BIGINT NOT NULL,
	PRIMARY KEY("myfirstmodule$trainingid","myfirstmodule$locationid"),
	CONSTRAINT "uniq_myfirstmodule$training_location_myfirstmodule$trainingid" UNIQUE ("myfirstmodule$trainingid"));
CREATE INDEX "idx_myfirstmodule$training_location_myfirstmodule$location_myfirstmodule$training" ON "myfirstmodule$training_location" ("myfirstmodule$locationid" ASC,"myfirstmodule$trainingid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('094a0a59-ffb5-463e-a93b-033e64129722', 
'MyFirstModule.Training_Location', 
'myfirstmodule$training_location', 
'4b8ff126-dfd8-4452-a534-4ee73c6e97fc', 
'48a19232-b731-41ea-8ac4-763f74bc3f15', 
'myfirstmodule$trainingid', 
'myfirstmodule$locationid', 
'idx_myfirstmodule$training_location_myfirstmodule$location_myfirstmodule$training');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_myfirstmodule$training_location_myfirstmodule$trainingid', 
'094a0a59-ffb5-463e-a93b-033e64129722', 
'afbea754-a3a7-3a25-bc51-35d2b72f316d');
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20221102 23:11:12';
