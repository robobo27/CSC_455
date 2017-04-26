
use narayan11;
DROP TRIGGER IF EXISTS update_quantity;

DELIMITER ///

CREATE TRIGGER update_quantity AFTER INSERT ON OurOrders
    FOR EACH ROW
    BEGIN
        UPDATE OurProducts
        SET QTY = 0
        WHERE PNO = NEW.PNO;
    END;

///

DELIMITER ;
