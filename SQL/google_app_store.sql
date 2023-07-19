--Drop tables if they exist

DROP TABLE IF EXISTS app_data;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS genre;
DROP TABLE IF EXISTS reviews;



--Create category table and set category as primary key

CREATE TABLE category (category_id varchar(10) NOT NULL, category varchar(100) NOT NULL, primary key (category));
COPY category FROM '/Users/talieh/code/Google_Play_Store_Apps_EDA/Output/category.csv' DELIMITER ',' CSV HEADER;
 
 
--Create genre table and set genre as primary key

CREATE TABLE genre (genre_id varchar(10) NOT NULL, genre varchar(100) NOT NULL, primary key (genre));
COPY genre FROM '/Users/talieh/code/Google_Play_Store_Apps_EDA/Output/genre.csv' DELIMITER ',' CSV HEADER;
 


--Create review table
CREATE TABLE reviews (app_name text NOT NULL, translated_review text, sentiment text,Sentiment_Polarity float, Sentiment_Subjectivity float);
COPY reviews FROM '/Users/talieh/code/Google_Play_Store_Apps_EDA/Resources/googleplaystore_user_reviews.csv' DELIMITER ',' CSV HEADER;



--Creat app_data table 

CREATE TABLE app_data (app_name text NOT NULL,
					   category varchar(100) NOT NULL, rating float ,
					   reviews integer, size float, installs integer,
					   type text,price float,
					   content_rating text,
					   genre varchar(100) NOT NULL,
					   last_updated text,
					   PRIMARY KEY(app_name),
					   FOREIGN KEY(category) REFERENCES category(category),
					   FOREIGN KEY(genre) REFERENCES genre(genre));

COPY app_data FROM '/Users/talieh/code/Google_Play_Store_Apps_EDA/Output/app_cleaned_data.csv' DELIMITER ',' CSV HEADER;


SELECT * FROM app_data ;
SELECT * FROM genre;
SELECT * FROM category ;
SELECT * FROM reviews ;
