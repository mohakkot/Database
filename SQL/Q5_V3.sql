/* ORACLE DATABASE */

SELECT K.CHEF FROM HOTEL K
    WHERE K.DISH ='Apple pie' AND 
    K.CHEF IN (SELECT L.CHEF FROM HOTEL L
                WHERE L.DISH ='Upside down pineapple cake' AND 
                L.CHEF IN (SELECT M.CHEF FROM HOTEL M
                            WHERE M.DISH ='Creme brulee'));