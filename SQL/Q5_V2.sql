/* ORACLE DATABASE */

SELECT DISTINCT(H.CHEF)
FROM HOTEL H
WHERE NOT EXISTS (
                    SELECT * FROM DISHES D 
                    WHERE NOT EXISTS (
                                        SELECT * FROM HOTEL K 
                                        WHERE H.CHEF = K.CHEF AND 
                                        D.DISH = K.DISH
                                      )
                 );