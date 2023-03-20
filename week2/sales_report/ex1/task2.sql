SELECT
    c.customer_id AS CustomerID,
    cd.full_name AS FullName,
    o.order_id AS OrderID,
    o.total_cost AS Cost,
    m.name AS MenuName,
    mi.course AS CourseName,
    mi.starter AS StarterName
FROM customers c
INNER JOIN contactdetails cd ON c.contact_id = cd.contact_id
INNER JOIN orders o ON c.customer_id = o.customer_id
INNER JOIN menus m ON o.menu_id = m.menu_id
INNER JOIN menuitems mi on m.menu_item_id = mi.menu_item_id
WHERE o.total_cost > 150;
