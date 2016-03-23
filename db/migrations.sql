CREATE DATABASE sinatra_coupon;
\c sinatra_coupon
CREATE TABLE coupons (id SERIAL PRIMARY KEY, title VARCHAR(255), description TEXT, product TEXT, discount_price INTEGER, expiration_date DATE);
