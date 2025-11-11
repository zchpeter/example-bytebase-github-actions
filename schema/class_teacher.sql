CREATE TABLE "public"."class_teacher" (
    "class_no" integer NOT NULL,
    "teacher_no" integer NOT NULL,
    "from_date" date NOT NULL,
    "to_date" date NOT NULL,
    CONSTRAINT "class_teacher_pkey" PRIMARY KEY (class_no, teacher_no),
    CONSTRAINT "class_teacher_class_no_fkey" FOREIGN KEY ("class_no") REFERENCES "public"."class" ("class_no") ON DELETE CASCADE,
    CONSTRAINT "class_teacher_teacher_no_fkey" FOREIGN KEY ("teacher_no") REFERENCES "public"."teacher" ("teacher_no") ON DELETE CASCADE
);
