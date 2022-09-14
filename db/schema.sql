CREATE DATABASE fantasy_heart_db;
\c fantasy_heart_db

CREATE TABLE characters(
    id SERIAL PRIMARY KEY,
    name TEXT,
    quote TEXT,
    image_url TEXT
);

INSERT INTO characters(name, quote, image_url)
VALUES('Spongebob Squarepants', 'I`ll have you know that I stubbed my toe last week and only cried for 20 minutes.', 'https://upload.wikimedia.org/wikipedia/en/3/3b/SpongeBob_SquarePants_character.svg');

INSERT INTO characters(name, quote, image_url)
VALUES('Patrik Star', 'Knowledge can never replace friendship. I prefer to be an idiot!', 'https://upload.wikimedia.org/wikipedia/en/thumb/3/33/Patrick_Star.svg/800px-Patrick_Star.svg.png');

INSERT INTO characters(name, quote, image_url)
VALUES('Mr. Krabs', 'I can think of 10 good reasons to never let go of a dime.', 'https://upload.wikimedia.org/wikipedia/en/thumb/f/f8/Mr._Krabs.svg/800px-Mr._Krabs.svg.png');

CREATE TABLE users(
    id SERIAL PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    email TEXT,
    password_digest TEXT
);

CREATE TABLE hearts(
    id SERIAL PRIMARY KEY,
    user_id INTEGER,
    char_id INTEGER
);

ALTER TABLE hearts
ADD CONSTRAINT unique_hearts
UNIQUE (user_id, char_id);