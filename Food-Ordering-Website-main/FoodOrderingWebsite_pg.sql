-- PostgreSQL Schema for Hungry To Eat

-- Drop tables if they exist
DROP TABLE IF EXISTS "admin";
DROP TABLE IF EXISTS "menu";
DROP TABLE IF EXISTS "order_dispatch";
DROP TABLE IF EXISTS "orders";
DROP TABLE IF EXISTS "users";

-- Table structure for table "admin"
CREATE TABLE "admin" (
  "admin_id" SERIAL PRIMARY KEY,
  "admin_name" varchar(45) NOT NULL,
  "admin_email" varchar(45) NOT NULL,
  "admin_password" varchar(45) NOT NULL,
  "admin_mobile" varchar(45) NOT NULL
);

-- Dumping data for table "admin"
INSERT INTO "admin" ("admin_name", "admin_email", "admin_password", "admin_mobile") VALUES 
('admin_fury','admin_fury@gmail.com','123456789','7563259210');

-- Table structure for table "menu"
CREATE TABLE "menu" (
  "item_id" SERIAL PRIMARY KEY,
  "item_name" varchar(45) NOT NULL,
  "item_type" varchar(45) NOT NULL,
  "item_category" varchar(45) NOT NULL,
  "item_serving" varchar(45) NOT NULL,
  "item_calories" int NOT NULL,
  "item_price" int NOT NULL,
  "item_rating" varchar(45) NOT NULL,
  "item_img" varchar(255) NOT NULL
);

-- Dumping data for table "menu"
INSERT INTO "menu" ("item_name", "item_type", "item_category", "item_serving", "item_calories", "item_price", "item_rating", "item_img") VALUES 
('Omelette','Non-Veg','breakfast','1',60,60,'4.3','Omelette.jpg'),
('Vegetable Sandwich','Veg','breakfast','1',60,40,'5.0','Vegetable Sandwich.jpg'),
('Fruit Salad','Veg','breakfast','1',80,80,'5.0','FriutSalad.jpg'),
('Egg Briyani','Non-Veg','lunch','1',180,120,'4.5','Egg Briyani.jpg'),
('Fish Curry','Non-Veg','lunch','1',180,200,'4.8','Fish Curry.jpg'),
('Masala Dosa','Veg','lunch','1',100,100,'4.6','MasalaDosa.jpg'),
('Veg Platter','Veg','dinner','1',120,200,'4.3','Thaali.jpg'),
('Chicken Roti','Non-Veg','dinner','1',180,200,'4.5','Chicken Roti.jpg'),
('Fried Rice','Veg','dinner','1',150,120,'4.0','Fried Rice.jpg'),
('Oreo Shake','Veg','beverages','1',80,90,'4.1','Oreao Shake.jpg'),
('Pineapple Juice','Veg','beverages','1',50,60,'4.4','Pineapple Juice.jpg'),
('Lemonade','Veg','beverages','1',50,60,'5.0','Lemonade.jpg'),
('Strawberry Icecream','Veg','desserts','2',80,90,'4.8','Icecream.jpg'),
('CupCake','Non-Veg','desserts','2',100,60,'4.2','Cupcake.jpg'),
('Gulab Jammun','Veg','desserts','2',100,90,'5.0','Gulabjammun.jpg'),
('Khaman-Dhokla With Pudina Chutney','Veg','breakfast','1',110,100,'5.0','Khaman-Dhokla.jpg');

-- Table structure for table "order_dispatch"
CREATE TABLE "order_dispatch" (
  "order_id" varchar(500) NOT NULL PRIMARY KEY,
  "user_id" int NOT NULL,
  "item_id" int NOT NULL,
  "quantity" int NOT NULL,
  "price" int NOT NULL,
  "datetime" timestamp NOT NULL
);

-- Table structure for table "orders"
CREATE TABLE "orders" (
  "order_id" varchar(500) NOT NULL PRIMARY KEY,
  "user_id" int NOT NULL,
  "item_id" int NOT NULL,
  "quantity" int NOT NULL,
  "price" int NOT NULL,
  "datetime" timestamp NOT NULL
);

-- Table structure for table "users"
CREATE TABLE "users" (
  "user_id" SERIAL PRIMARY KEY,
  "user_name" varchar(30) NOT NULL,
  "user_address" varchar(255) NOT NULL,
  "user_email" varchar(45) NOT NULL,
  "user_password" varchar(1000) NOT NULL,
  "user_mobileno" varchar(45) NOT NULL
);

-- Dumping data for table "users"
INSERT INTO "users" ("user_name", "user_address", "user_email", "user_password", "user_mobileno") VALUES 
('Tom Holland','B-54, Downtown, Queens, Newyork','iamspiderman@gmail.com','123456789','9632012542'),
('Ironman','LA','iamironman@gmail.com','123456789','7854120365');
