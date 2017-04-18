-- no-auto-rehash


/* Fulfills join and difference requirement. Checks which customers do not have
   addresses through a MySQL implementation of set difference */

SELECT OurCustomers.CEMAIL
FROM OurCustomers
LEFT OUTER JOIN LivesAt
ON OurCustomers.CEMAIL NOT IN (LivesAt.STREETADD)
WHERE LivesAt.STREETADD IS NULL;
