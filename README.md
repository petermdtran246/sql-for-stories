# 📚 Books Database Analysis (SQL Project)

This project contains a series of SQL queries to analyze a book inventory system. The data is assumed to come from a `books` table, which includes information such as book title, author, release year, number of pages, and stock quantity.

## 🧠 Objective

Use SQL to extract meaningful insights from the books database, including:
- Total number of books
- Yearly publication trends
- Inventory totals
- Author contributions
- Longest book information

---

## 🗃️ Assumed Table Structure (`books`)

| Column           | Type        | Description                         |
|------------------|-------------|-------------------------------------|
| title            | TEXT        | Title of the book                   |
| author_fname     | TEXT        | Author's first name                 |
| author_lname     | TEXT        | Author's last name                  |
| released_year    | INTEGER     | Year the book was released          |
| pages            | INTEGER     | Number of pages in the book         |
| stock_quantity   | INTEGER     | Number of copies available in stock |

---

## 🔍 SQL Tasks Included

1. **Total number of books:**
   ```sql
   SELECT COUNT(*) FROM books;
