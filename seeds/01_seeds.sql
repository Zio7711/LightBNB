DELETE FROM users;
ALTER SEQUENCE users_id_seq RESTART WITH 1;
ALTER SEQUENCE properties_id_seq RESTART WITH 1;
ALTER SEQUENCE reservations_id_seq RESTART WITH 1;
ALTER SEQUENCE property_reviews_id_seq RESTART WITH 1;

INSERT INTO users (name, email, password)
VALUES ('Zio', 'zio@1.com', '$2a$10$FB'),
('Matt', 'matt@1.com', 'BOAVhpuLvpOREQVmvmezD4ED'),
('Andy', 'andy@1.com', '.JBIDRh70tGevYzYzQgFId2u');

INSERT INTO properties (owner_id, title, description, thumbnail_photo_url, cover_photo_url, country, street, city, province, post_code)
VALUES (1, 'house of Zio', 'Big house with basketball court', 'www.photozio.com', 'www.coverzio.com', 'CA', '142', 'Surrey', 'BC', 'V3T2M2'),
(2, 'house of Matt', 'Big apartment with garage', 'www.photoMatt.com', 'www.coverMatt.com', 'CA', 'downside', 'Richmond', 'BC', '1G1E2E'),
(3, 'house of Andy', 'Townhose of Andy', 'www.photoAndy.com', 'www.coverAndy.com', 'CA', 'Lennex', 'Burnaby', 'BC', 'F2G3WQ');

INSERT INTO reservations (guest_id, property_id, start_date, end_date)
VALUES (1, 1, '2018-09-11', '2018-09-26'),
(2, 2, '2019-01-04', '2019-02-01'),
(3, 3, '2021-10-01', '2021-10-14');

INSERT INTO property_reviews (guest_id, property_id, reservation_id, rating, message)
VALUES (1, 1, 1, 5, 'Hello Zio'),
(2, 2, 2, 2, 'Hello Matt'),
(3, 3, 3, 3, 'Hello Andy');