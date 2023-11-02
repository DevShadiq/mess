/* Formatted on 6/4/2023 11:55:01 PM (QP5 v5.227.12220.39754) */
SELECT group_name, id FROM user_group;

SELECT mess_name, id FROM mess_name;


SELECT STATUS, PID 
FROM IS_ACTIVATE;


SELECT PAGE_NAME || ' ( P -' || PAGE_ID || ')' AS d, PAGE_ID AS r
  FROM apex_application_pages
 WHERE application_id = :APP_ID;
 
 SELECT LPAD (' ', 3 * (LEVEL - 1), '-') || menu_name, pid
    FROM MENUS
       START WITH parent_pid IS NULL
       CONNECT BY PRIOR pid = parent_pid
ORDER SIBLINGS BY menu_name 
 