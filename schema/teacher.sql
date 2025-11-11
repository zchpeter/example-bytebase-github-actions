CREATE TABLE "public"."teacher" (
    "teacher_no" integer DEFAULT nextval('public.teacher_no_seq'::regclass) NOT NULL,
    "first_name" text NOT NULL,
    "last_name" text NOT NULL,
    "email" text NOT NULL,
    CONSTRAINT "teacher_pkey" PRIMARY KEY (teacher_no)
);
