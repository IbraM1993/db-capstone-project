USE littlelemondb;

SET FOREIGN_KEY_CHECKS = 0;

INSERT INTO customers (customer_id, contact_id)
VALUES
(1, 1),
(2, 2),
(3, 3);

INSERT INTO staff (staff_id, salary, role_id, staff_contact_id)
VALUES
(1, 1000, 1, 4),
(2, 700, 2, 5);

INSERT INTO contactdetails (contact_id, full_name, email, phone_number, address, country, city)
VALUES
(1, 'Ibrahim Ibrahim', 'ibrahim@gmail.com', 111, 'Lebanon', 'Lebanon', 'Lebanon'),
(2, 'Rose Rose', 'rose@gmail.com', 222, 'Lebanon', 'Lebanon', 'Lebanon'),
(3, 'Mike Mike','mike@gmail.com', 333, 'USA', 'USA', 'USA'),
(4, 'Nora Nora', 'Nora@gmail.com', 444, 'Dubai', 'Dubai', 'Dubai'),
(5, 'John John', 'john@gmail.com', 444, 'UK', 'UK', 'UK');

INSERT INTO roles (role_id, role)
VALUES
(1, 'Manager'),
(2, 'Waiter');

INSERT INTO bookings (booking_id, date, table_number, customer_id)
VALUES
(1, '2023-3-20', 1, 1),
(2, '2023-3-21', 2, 1),
(3, '2023-3-20', 2, 2),
(4, '2023-3-21', 1, 4);

INSERT INTO menus (menu_id, name, cuisine, menu_item_id)
VALUES
(1, 'Menu1', 'Greek', 1),
(2, 'Menu1', 'Lebanese', 2),
(3, 'Menu2', 'Unknown', 3),
(4, 'Menu2', 'Italian', 4);

INSERT INTO menuitems (menu_item_id, course, starter, desert)
VALUES
(1, 'Greek salad', 'Olives','Cheesecake'),
(2, 'Bean soup', 'Flatbread','Ice cream'),
(3, 'Pizza', 'Tomato bread','Cheesecake'),
(4, 'Kabasa', 'Falafel','Ice cream');

INSERT INTO orders (order_id, date, quantity, total_cost, customer_id, menu_id)
VALUES
(1, '2023-03-20', 5, 70, 1, 1),
(2, '2023-03-21', 2, 190, 2, 2),
(3, '2023-03-20', 1, 10, 2, 3),
(4, '2023-03-21', 3, 15, 1, 4);

INSERT INTO orderdeliverystatus (delivery_id, date, status, order_id, staff_id)
VALUES
(1, '2023-03-20', 'Delivered', 1, 1),
(2, '2023-03-21', 'Waiting', 2, 2),
(3, '2023-03-20', 'Delivered', 3, 1),
(4, '2023-03-21', 'Delivered', 4, 1);
