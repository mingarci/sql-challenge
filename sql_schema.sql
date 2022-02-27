--Create tables 
CREATE TABLE "customer" (
    "cust_id" INT   NOT NULL,
    "first_name" VARCHAR   NOT NULL,
    "last_name" Varchar   NOT NULL,
    CONSTRAINT "pk_customer" PRIMARY KEY (
        "cust_id"
     )
);

CREATE TABLE "customer_email" (
    "email" varchar   NOT NULL,
    "cust_id" varchar   NOT NULL,
    "first_name" VARCHAR   NOT NULL,
    "last_name" VARCHAR   NOT NULL
);

CREATE TABLE "customer_phone" (
    "cust_id" INT   NOT NULL,
    "phone_number" VARCHAR   NOT NULL
);

ALTER TABLE "customer_email" ADD CONSTRAINT "fk_customer_email_cust_id" FOREIGN KEY("cust_id")
REFERENCES "customer" ("cust_id");

ALTER TABLE "customer_phone" ADD CONSTRAINT "fk_customer_phone_cust_id" FOREIGN KEY("cust_id")
REFERENCES "customer" ("cust_id");

