# 📚 Project on Online Bookstore  

## 📌 Overview  
This project simulates an **Online Bookstore Database** using PostgreSQL.  
It uses 3 CSV files (`Books.csv`, `Customers.csv`, `Orders.csv`) and demonstrates:  
- Database schema creation  
- Data import from CSV files  
- 20 SQL queries (11 Basic + 9 Advanced) for analysis  

---

## 📂 Project Structure  
project-on-online-bookstore/
│── data/
│   ├── Books.csv
│   ├── Customers.csv
│   └── Orders.csv
│
│── sql/
│   ├── schema.sql
│   ├── import.sql
│   ├── basic_queries.sql
│   └── advanced_queries.sql
│
└── README.md

---

## 🗄️ Database Schema  

- **Books**  
  - Book_ID (PK)  
  - Title  
  - Author  
  - Genre  
  - Published_Year  
  - Price  
  - Stock  

- **Customers**  
  - Customer_ID (PK)  
  - Name  
  - Email  
  - Phone  
  - City  
  - Country  

- **Orders**  
  - Order_ID (PK)  
  - Customer_ID (FK → Customers)  
  - Book_ID (FK → Books)  
  - Order_Date  
  - Quantity  
  - Total_Amount  

---

## 📊 Sample Queries  

1. Retrieve all Fiction books    
SELECT * FROM Books WHERE Genre = 'Fiction';

2. Find the most expensive book   
SELECT * FROM Books ORDER BY Price DESC LIMIT 1;

3. Calculate total revenue   
SELECT SUM(total_amount) AS Revenue FROM Orders;

4. Find customer who spent the most   
SELECT c.customer_id, c.name, SUM(o.total_amount) AS Total_Spent
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.customer_id, c.name
ORDER BY Total_Spent DESC
LIMIT 1;


📈 Features
✅ Clean database schema
✅ Import data directly from CSV files
✅ 11 Basic SQL Queries
✅ 9 Advanced SQL Queries
✅ Realistic bookstore use cases – revenue, stock, customer analysis

---

🚀 How to Run

1.Clone this repository:
git clone https://github.com/Smitha-Ravishankar/project-on-online-bookstore.git

2.Open PostgreSQL and run:
\i sql/schema.sql
\i sql/import.sql
\i sql/basic_queries.sql
\i sql/advanced_queries.sql

3.Explore results 🎉

---

🔗 GitHub:https://www.linkedin.com/in/smitha-r/490033264
🔗 LinkedIn:https://github.com/Smitha-Ravishankar





