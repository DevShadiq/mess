SELECT id
  FROM (SELECT a.*, ROW_NUMBER () OVER (ORDER BY id ASC) first_project
          FROM (SELECT p.mess_name, p.id
                  FROM mess_name p, user_mess cu
                 WHERE p.id = cu.mess_id AND cu.MEMBER_ID = :P9999_memid) a)
 WHERE first_project = 1