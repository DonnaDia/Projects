-- creating tables
create table restaurant (
  id integer primary key,
  name varchar(20),
  description varchar(100), 
  rating decimal,
  telephone char(10),
  hours varchar(100)
);

create table address (
  id integer primary key references restaurant(id) unique,
  street_number varchar(10),
  street_name varchar(20),
  city varchar(20),
  state varchar(15),
  google_map_link varchar(50)
);

create table category (
  id char(2) primary key,
  name varchar(20),
  description varchar(200)
);

create table dish (
  id integer primary key,
  name varchar(50),
  description varchar(200),
  hot_and_spicy boolean
);

create table review (
  id integer primary key,
  restaurant_id integer references restaurant(id),
  rating decimal,
  description varchar(100),
  date date
);

create table categories_dishes (
  dish_id integer references dish(id) unique,
  category_id char(2) references category(id),
  primary key (dish_id, category_id),
  price money
  );


-- verifying primary keys
select constraint_name, column_name, table_name
from information_schema.key_column_usage
where table_name in ('restaurant', 'address','category', 'dish', 'review', 'categories_dishes');


/* 
 *--------------------------------------------
 Insert values for restaurant
 *--------------------------------------------
 */
INSERT INTO restaurant VALUES (
  1,
  'Bytes of China',
  'Delectable Chinese Cuisine',
  3.9,
  '6175551212',
  'Mon - Fri 9:00 am to 9:00 pm, Weekends 10:00 am to 11:00 pm'
);

/* 
 *--------------------------------------------
 Insert values for address
 *--------------------------------------------
 */
INSERT INTO address VALUES (
  1,
  '2020',
  'Busy Street',
  'Chinatown',
  'MA',
  'http://bit.ly/BytesOfChina'
);

/* 
 *--------------------------------------------
 Insert values for review
 *--------------------------------------------
 */
INSERT INTO review VALUES (
  1,
  1,
  5.0,
  'Would love to host another birthday party at Bytes of China!',
  '05-22-2020'
);

INSERT INTO review VALUES (
  2,
  1,
  4.5,
  'Other than a small mix-up, I would give it a 5.0!',
  '04-01-2020'
);

INSERT INTO review VALUES (
  3,
  1,
  3.9,
  'A reasonable place to eat for lunch, if you are in a rush!',
  '03-15-2020'
);

/* 
 *--------------------------------------------
 Insert values for category
 *--------------------------------------------
 */
INSERT INTO category VALUES (
  'C',
  'Chicken',
  null
);

INSERT INTO category VALUES (
  'LS',
  'Luncheon Specials',
  'Served with Hot and Sour Soup or Egg Drop Soup and Fried or Steamed Rice  between 11:00 am and 3:00 pm from Monday to Friday.'
);

INSERT INTO category VALUES (
  'HS',
  'House Specials',
  null
);

/* 
 *--------------------------------------------
 Insert values for dish
 *--------------------------------------------
 */
INSERT INTO dish VALUES (
  1,
  'Chicken with Broccoli',
  'Diced chicken stir-fried with succulent broccoli florets',
  false
);

INSERT INTO dish VALUES (
  2,
  'Sweet and Sour Chicken',
  'Marinated chicken with tangy sweet and sour sauce together with pineapples and green peppers',
  false
);

INSERT INTO dish VALUES (
  3,
  'Chicken Wings',
  'Finger-licking mouth-watering entree to spice up any lunch or dinner',
  true
);

INSERT INTO dish VALUES (
  4,
  'Beef with Garlic Sauce',
  'Sliced beef steak marinated in garlic sauce for that tangy flavor',
  true
);

INSERT INTO dish VALUES (
  5,
  'Fresh Mushroom with Snow Peapods and Baby Corns',
  'Colorful entree perfect for vegetarians and mushroom lovers',
  false
);

INSERT INTO dish VALUES (
  6,
  'Sesame Chicken',
  'Crispy chunks of chicken flavored with savory sesame sauce',
  false
);

INSERT INTO dish VALUES (
  7,
  'Special Minced Chicken',
  'Marinated chicken breast sauteed with colorful vegetables topped with pine nuts and shredded lettuce.',
  false
);

INSERT INTO dish VALUES (
  8,
  'Hunan Special Half & Half',
  'Shredded beef in Peking sauce and shredded chicken in garlic sauce',
  true
);

/*
 *--------------------------------------------
 Insert valus for cross-reference table, categories_dishes
 *--------------------------------------------
 */
INSERT INTO categories_dishes VALUES (
  1,
  'C',
  6.95
);

INSERT INTO categories_dishes VALUES (
  2,
  'C',
  6.95
);

INSERT INTO categories_dishes VALUES (
  3,
  'LS',
  8.95
);

INSERT INTO categories_dishes VALUES (
  4,
  'LS',
  8.95
);

INSERT INTO categories_dishes VALUES (
  5,
  'LS',
  8.95
);

INSERT INTO categories_dishes VALUES (
  6,
  'HS',
  15.95
);

INSERT INTO categories_dishes VALUES (
  7,
  'HS',
  16.95
);

INSERT INTO categories_dishes VALUES (
  8,
  'HS',
  17.95
);

-- checking restaurant's contact information
select restaurant.name, address.street_number ,address.street_name, restaurant.telephone
from restaurant join address
on restaurant.id = address.id;

-- getting the highest rating
select max(rating) as best_rating
from restaurant;

-- checking the dishes, sorting by name of the dish
select dish.name as dish_name,
category.name as category,
categories_dishes.price
from dish, category, categories_dishes
where dish.id = categories_dishes.dish_id 
and category.id = categories_dishes.category_id
order by dish_name;

-- checking the dishes, ordering by category
select category.name as category,
dish.name as dish_name,
categories_dishes.price
from dish, category, categories_dishes
where dish.id = categories_dishes.dish_id 
and category.id = categories_dishes.category_id
order by category;

-- getting spicy dishes
select dish.name as spicy_dish_name,
category.name as category,
categories_dishes.price
from dish, category, categories_dishes
where dish.hot_and_spicy = true 
and dish.id = categories_dishes.dish_id 
and category.id = categories_dishes.category_id
order by spicy_dish_name;

-- elaborating on best rating
select rating, name, description
from restaurant 
where rating = (select max(rating) from restaurant);
