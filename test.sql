-- Écrire 3 requêtes SQL sur la structure proposée :

-- Request 1
SELECT TOP 10 P.name, SUM(I.quantity) as quantity
    FROM Orders O 
        JOIN OrderItems I ON O.order_id = I.order_id
        JOIN Products P ON I.product_id = P.product_id
    GROUP BY P.name
    ORDER BY quantity DESC;

-- Request 2
SELECT
    SUM(O.quantity * OI.price) AS total_amount
FROM
    Orders O
JOIN
    OrderItems OI ON O.order_id = OI.order_id
WHERE
    O.order_date >= (CURRENT_DATE - INTERVAL '1 month')
    AND O.order_date < CURRENT_DATE;

-- Request 3
SELECT SUM(shipping_price) as total_amount
FROM
    Shipping S
    JOIN Order O ON O.shipping_id = O.shipping_id
WHERE
    O.total_amount >= 50
    AND O.order_date >= (CURRENT_DATE - INTERVAL '12 months')
    AND O.order_date < CURRENT_DATE;