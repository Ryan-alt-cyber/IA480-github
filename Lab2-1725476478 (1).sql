CREATE TABLE IF NOT EXISTS "name" (
	"fips" varchar(4) NOT NULL,
	"name" varchar(120) NOT NULL UNIQUE,
	PRIMARY KEY ("fips")
);

CREATE TABLE IF NOT EXISTS "Income" (
	"fips" varchar(255) NOT NULL,
	"income" bigint NOT NULL,
	"year" bigint NOT NULL,
	PRIMARY KEY ("fips", "year")
);

CREATE TABLE IF NOT EXISTS "population" (
	"fips" varchar(255) NOT NULL,
	"pop" bigint NOT NULL,
	"year" bigint NOT NULL,
	PRIMARY KEY ("fips", "year")
);


ALTER TABLE "Income" ADD CONSTRAINT "Income_fk0" FOREIGN KEY ("fips") REFERENCES "name"("fips");
ALTER TABLE "population" ADD CONSTRAINT "population_fk0" FOREIGN KEY ("fips") REFERENCES "name"("fips");