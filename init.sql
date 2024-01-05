CREATE TABLE user_roles (
  id SERIAL PRIMARY KEY,
  "createdAt" TIMESTAMP WITHOUT TIME ZONE NOT NULL,
  "updatedAt" TIMESTAMP WITHOUT TIME ZONE NOT NULL,
  "deletedAt" TIMESTAMP WITHOUT TIME ZONE,
  name VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE user_shifts (
  id SERIAL PRIMARY KEY,
  "createdAt" TIMESTAMP WITHOUT TIME ZONE NOT NULL,
  "updatedAt" TIMESTAMP WITHOUT TIME ZONE NOT NULL,
  "deletedAt" TIMESTAMP WITHOUT TIME ZONE,
  name VARCHAR(255) NOT NULL UNIQUE,
  start_at VARCHAR(255) NOT NULL,
  end_at VARCHAR(255) NOT NULL
);

CREATE TYPE weekday_enum AS ENUM ('saturday', 'sunday', 'monday', 'tuesday', 'wednesday', 'thursday', 'friday');

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  "createdAt" TIMESTAMP WITHOUT TIME ZONE NOT NULL,
  "updatedAt" TIMESTAMP WITHOUT TIME ZONE NOT NULL,
  "deletedAt" TIMESTAMP WITHOUT TIME ZONE,
  "userName" VARCHAR(255) NOT NULL UNIQUE,
  password VARCHAR(255) NOT NULL,
  role_id INTEGER NOT NULL,
  "phoneNumber" VARCHAR(255) NOT NULL UNIQUE,
  email VARCHAR(255) UNIQUE,
  "fullName" VARCHAR(255) NOT NULL,
  "avatarUri" VARCHAR(255),
  is_active BOOLEAN DEFAULT FALSE,
  shift_id INTEGER,
  weekday_start weekday_enum,
  weekday_end weekday_enum
);

INSERT INTO user_roles (id, name, "createdAt", "updatedAt")
VALUES
  (1, 'Administrator', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  (2, 'Supervisor', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  (3, 'Employee', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

