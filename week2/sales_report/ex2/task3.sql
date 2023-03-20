DROP PROCEDURE IF EXISTS CancelOrder;

DELIMITER $$

CREATE PROCEDURE CancelOrder(IN OrderID INT)
	BEGIN
		DELETE FROM orders
        WHERE order_id = OrderID;

    END$$

DELIMITER ;

CALL CancelOrder(4);