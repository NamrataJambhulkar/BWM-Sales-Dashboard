CREATE DATABASE cars;
USE cars;


SELECT 
    s.*,
    ci.img AS Car_Image,
    f.Flag AS Country_Flag
FROM sales_data s
LEFT JOIN car_images ci ON s.Model = ci.Model
LEFT JOIN flags f ON s.Country = f.Country;


