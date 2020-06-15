CREATE DATABASE okolidata;

CREATE TABLE users (
    user_id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
    user_name VARCHAR(200) NOT NULL,
    user_email VARCHAR(200) NOT NULL,
    user_password VARCHAR(255) NOT NULL,
    UNIQUE (user_email)
);

--insert users
INSERT INTO users (user_name, user_email, user_password) VALUES ('Nnamdi', 'okoli@gmail.com', 'okolinnamdi');


--insert an extention
create extension if not exists "uuid-ossp";
