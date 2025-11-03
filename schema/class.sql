CREATE TABLE "public"."class" (
    "class_no" integer DEFAULT nextval('public.class_no_seq'::regclass) NOT NULL,
    "class_name" text NOT NULL,
    "grade" integer NOT NULL,
    "min_credit" integer NOT NULL DEFAULT 0,
    CONSTRAINT "class_pkey" PRIMARY KEY (class_no),
    CONSTRAINT "class_grade_check" CHECK (grade > 0 AND grade <= 12)
);

