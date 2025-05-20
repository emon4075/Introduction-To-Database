USE my_db;
ALTER TABLE customers
ADD (
        customerMail VARCHAR(250),
        buyDate DATE
    );