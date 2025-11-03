CREATE TABLE "public"."student" (
    "student_no" integer DEFAULT nextval('public.student_no_seq'::regclass) NOT NULL,
    "birth_date" date NOT NULL,
    "first_name" text NOT NULL,
    "last_name" text NOT NULL,
    "gender" text NOT NULL,
    CONSTRAINT "student_pkey" PRIMARY KEY (student_no),
    CONSTRAINT "student_gender_check" CHECK (gender = ANY (ARRAY['M'::text, 'F'::text]))
);

