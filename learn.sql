-- INSERT INTO mehras(name)
-- VALUES ('Amir')

-- CREATE TABLE phone(
--     name VARCHAR(50),
--     company VARCHAR(50),
--     price INTEGER ,
--     units_sold INTEGER
-- );
--


-- INSERT INTO phone(name, company, price, units_sold)
-- VALUES
--     ('galaxy', 'samsung', 100, 2000)


--
-- SELECT name, price * phone.units_sold as R FROM phone;
--
--

--
-- INSERT into dreams(name, nickname, age)
-- VALUES
--     ('Amir', 'fast', 17)





--
-- SELECT nickname, age FROM dreams WHERE age NOT IN (15) OR name = 'Dreams';
--
--
--
-- -- TODO: Ask the pooria what meaning of <>
--
--
-- -- That not good
--



-- ALTER TABLE phone add column test char default '' Add the column the the table


--
-- SELECT name,
--        price * phone.units_sold AS
--             total
--
-- FROM
--     phone
-- WHERE
--     price * phone.units_sold > 20000 Some filer

--
-- UPDATE phone
-- SET price = 1333
-- WHERE company = 'apple';
--


-- DELETE FROM phone
-- WHERE name = 'iphone'  # Delete the row from the table




--
-- DELETE FROM phone
-- WHERE company = 'samsung';
--
--
--




-- INSERT INTO phone(name, company, price, units_sold)
--
--     VALUES
--         ('galaxy', 'samsung', 13, 1000);



--
-- DELETE FROM phone
-- WHERE company = 'samsung' or price = 13;
--
-- SELECT * from phone
--
--
--




-- CREATE TABLE users(
--   id SERIAL PRIMARY KEY,
--   username VARCHAR(50)
--
--
-- );
--
-- This say how we can automate generate the user with serial and primary key


--
-- INSERT INTO users(username)
--
-- VALUES
--     ('Mehras'),
--     ('Dreams'),
--     ('Mmad'),
--     ('parsa');
--





-- CREATE TABLE photos(
--  id SERIAL PRIMARY KEY,
--  url varchar(200),
--  user_id INTEGER REFERENCES users(id)
--
-- );

--
-- INSERT INTO photos(url, user_id)
-- VALUES
--     ('https:/a.com', 1),
--     ('https:/an.com', 1),
--     ('https:/fuck.com', 1),
--     ('https:/afdsf.com', 2),
--     ('https:/bullshit.com', 2),
--     ('https:/pashm.com', 2);





-- SELECT url, username from photos
-- JOIN users On users.id = photos.user_id # This query help you to get username from photos :)



-- INSERT INTO photos(url, user_id)
-- VALUES
--     ('fuck.com', null); # Put the value null for the user_id
--


-- SELECT * FROM photos






-- DELETE FROM users
-- WHERE
--     id = 1;
--
-- SELECT * FROM users



--
--
--
-- INSERT INTO photos(url, user_id)
-- VALUES
--     ('https:/a.com', 1),
--     ('https:/an.com', 1),
--     ('https:/fuck.com', 1),
--     ('https:/afdsf.com', 2),
--     ('https:/bullshit.com', 2),
--     ('https:/pashm.com', 2);





-- CREATE TABLE comments(
--   id SERIAL PRIMARY KEY,
--   contents VARCHAR(50),
--   photo_id INTEGER REFERENCES photos(id),
--   user_id INTEGER  REFERENCES users(id)
--
--
-- -- );
-- --
-- --
--
-- INSERT INTO comments(photo_id, user_id, contents)
-- VALUES
--     (4, 2, 'Fuck you');



-- SELECT contents, url
-- FROM comments
--
-- JOIN photos ON photos.id = comments.photo_id



--
-- CREATE TABLE authors(
--     id SERIAL  PRIMARY KEY,
--     name VARCHAR(50)
--
-- );
--


-- INSERT INTO authors(name)
-- VALUES
--     ('Amir'),
--     ('Mehras'),
--     ('Balesh')


-- CREATE TABLE books(
--   id SERIAL PRIMARY KEY,
--   title VARCHAR(200),
--   author_id INTEGER REFERENCES authors(id)
--
-- );





-- INSERT INTO books(title, author_id)
-- VALUES
--     ('Darenshon', 1),
--     ('RedHed', 1),
--     ('Bigbagn', 2),
--     ('TheFuck', 3),
--     ('Life', 5)

;


--
-- SELECT title, name
-- FROM books
-- JOIN authors ON authors.id = books.author_id
--
--
--




--
-- SELECT url, username
-- FROM photos
-- FULL JOIN users ON users.id = photos.user_id
--




-- SELECT * from photos
-- WHERE user_id is null
--


-- SELECT * from photos
-- JOIN users ON photos.user_id = users.id
-- WHERE username = 'Dreams'
--
--
--


--
-- SELECT contents, username, url
-- FROM comments
-- JOIN users ON comments.user_id = users.id
-- JOIN photos ON comments.photo_id = photos.id
--
--
--

-- SELECT count(id)
-- FROM comments
-- GROUP BY user_id;




--
-- SELECT username
-- FROM photos
-- JOIN users ON users.id = user_id
-- GROUP BY username having count(username) > 2

--
-- SELECT user_id, COUNT(id) AS total_comment
-- FROM comments
-- GROUP BY user_id;
--
--
--
--
--




--
-- SELECT url
-- FROM comments
-- JOIN photos ON comments.photo_id = photos.id
-- GROUP BY photo_id




-- SELECT photo_id, COUNT(*) AS TOTAL
-- FROM comments
-- GROUP BY photo_id
--
--







SELECT name, COUNT(*)
FROM books
JOIN authors ON authors.id = books.author_id


GROUP BY authors.name;
