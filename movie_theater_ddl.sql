CREATE TABLE customers(
    customer_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(50),
    phone INTEGER
    FOREIGN KEY (tickets_id) REFERENCES tickets(tickets_id)
) CREATE TABLE tickets(
    tickets_id SERIAL PRIMARY KEY,
    price NUMERIC(10, 2),
    date_and_time TIMESTAMP,
    FOREIGN KEY (movies_id) REFERENCES movies(movies_id)
    FOREIGN KEY (concessions_id) REFERENCES concessions(concessions_id)
) CREATE TABLE movies(
    movies_id SERIAL PRIMARY KEY,
    movie_name VARCHAR(60),
    release_date DATE,
) CREATE TABLE concessions(
    concessions_id SERIAL PRIMARY KEY,
    products VARCHAR(50)
    cost INTEGER