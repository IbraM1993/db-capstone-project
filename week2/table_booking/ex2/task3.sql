DROP PROCEDURE IF EXISTS CancelBooking;

DELIMITER $$

CREATE PROCEDURE CancelBooking(IN BookingID INT)
	BEGIN
		DELETE FROM bookings
        WHERE booking_id = BookingID;
    END$$

DELIMITER ;

CALL CancelBooking(9);