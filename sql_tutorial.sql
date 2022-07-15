CREATE TABLE sales_order (
cust_id INT UNSIGNED NOT NULL,
sales_person_id INT UNSIGNED NOT NULL,
FOREIGN KEY (cust_id)
REFERENCES customer(id), 
FOREIGN KEY (sales_person_id)
REFERENCES sales_person(id), 
time_order_taken TIMESTAMP NOT NULL,
purchase_order_number INT NOT NULL,
credit_card_number VARCHAR(16) NOT NULL,
credit_card_exper_month TINYINT NOT NULL,
credit_card_exper_year TINYINT NOT NULL,
credit_card_secret_code TINYINT NOT NULL,
name_on_card VARCHAR(60) NOT NULL,
id INT UNSIGNED NOT NULL
AUTO_INCREMENT PRIMARY KEY);