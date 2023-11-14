/* Formatted on 6/5/2023 8:40:23 AM (QP5 v5.227.12220.39754) */
SELECT c.pid AS oid,
       a.group_name AS group_title,
       (c.menu_link || ' - ' || c.menu_name) AS page_name,
       c.menu_link,
       c.description,
       b.permission AS permission,
       (SELECT g.group_name
          FROM user_group g
         WHERE g.id = b.pid_group)
          AS pid_group
  FROM user_group a, user_menu b, t_menu c
 WHERE     b.pid_group = a.id
       AND (b.page_id = c.pid)
       AND (b.pid_group IS NULL OR b.pid_group = :p1000_user_group)