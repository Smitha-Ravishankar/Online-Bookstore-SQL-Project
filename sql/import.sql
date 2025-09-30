-- Import Data into Books Table
COPY Books(
    Book_ID,
    Title,
    Author,
    Genre,
    Published_Year,
    Price,
    Stock
)
FROM
    'C:\Program Files\PostgreSQL\17\Books.csv' CSV HEADER;

-- Import Data into Customers Table
COPY Customers(Customer_ID, Name, Email, Phone, City, Country)
FROM
    'C:\Program Files\PostgreSQL\17\Customers.csv' CSV HEADER;

-- Import Data into Orders Table
COPY Orders(
    Order_ID,
    Customer_ID,
    Book_ID,
    Order_Date,
    Quantity,
    Total_Amount
)
FROM
    'C:\Program Files\PostgreSQL\17\Orders.csv' CSV HEADER;

SELECT
    *
FROM
    Books;

SELECT
    *
FROM
    Customers;

SELECT
    *
FROM
    Orders;