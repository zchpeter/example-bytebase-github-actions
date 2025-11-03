CREATE TABLE "public"."class_student" (
    "class_no" integer NOT NULL,
    "student_no" integer NOT NULL,
    "from_date" date NOT NULL,
    "to_date" date NOT NULL,
    CONSTRAINT "class_student_pkey" PRIMARY KEY (class_no, student_no),
    CONSTRAINT "class_student_class_no_fkey" FOREIGN KEY ("class_no") REFERENCES "public"."class" ("class_no") ON DELETE CASCADE,
    CONSTRAINT "class_student_student_no_fkey" FOREIGN KEY ("student_no") REFERENCES "public"."student" ("student_no") ON DELETE CASCADE
);

