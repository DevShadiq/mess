SELECT MENU_LINK || ' - ' || MENU_NAME d, PID r
    FROM MENUS
   WHERE status = '1'
   and pid not in ( SELECT c.pid       
  FROM user_group a, user_menu b, menus c
 WHERE     b.pid_group = a.id
       AND b.page_id = c.pid
       AND b.pid_group = :P1000_GROUP)
ORDER BY MENU_LINK;


