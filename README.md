# 🚗 BMW Sales Dashboard – Power BI Project

An interactive data analytics project that provides detailed insights into **BMW car sales**, combining **Power BI**, **SQL**, and **image embedding** (car models and country flags). The dashboard is designed to help stakeholders understand performance metrics across regions and car models.

---

## 📂 Data Sources

BMW_Sales_Data.csv — Sales performance of BMW cars (units sold, revenue, cost, profit)

Car Images.csv — URLs for car model images

Countries with Flags URL.csv — URLs for country flags

cars_db.sql — SQL script to merge sales, car images, and flag data

BWM Sales Dashboard.pbix — Power BI file for final interactive dashboard

---

## 🧰 Tools & Technologies Used

- **Power BI Desktop** – Data modeling & visualization
- **SQL (MySQL)** – Data integration using joins
- **CSV / Excel** – Raw and supporting data storage
- **DAX** – KPIs and calculated measures
- **Image URLs** – For embedding car images and country flags

---

## 🗃️ Data Description

### ✅ BMW_Sales_Data.csv
Main dataset containing:
- `Model`
- `Country`
- `Units Sold`
- `Revenue`
- `Cost`
- `Profit`

### ✅ Car Images.csv
Supporting dataset with:
- `Model`
- `Image URL` (used to show car visuals in dashboard)

### ✅ Countries with Flags URL.csv
Supporting dataset with:
- `Country`
- `Flag Image URL` (used to show flag next to country in dashboard)

### ✅ cars_db.sql
SQL script used to join the data before feeding into Power BI.

```sql
SELECT 
    s.*, 
    ci.img AS Car_Image, 
    f.Flag AS Country_Flag
FROM sales_data s
LEFT JOIN car_images ci ON s.Model = ci.Model
LEFT JOIN flags f ON s.Country = f.Country;

```

## 📊 Dashboard Features
📌 Country-wise Sales Overview with flag visuals

🚘 Model-wise Sales Breakdown with car images

💰 KPIs: Revenue, Cost, Profit

📈 Trend Analysis over sales and profit

📍 Filters/Slicers for dynamic analysis by Country or Model

🌍 Clean, responsive visuals for executive-level reporting

### Author

Namrata Jambhulkar
