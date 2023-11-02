SELECT LEVEL,
                  MENU_NAME label,
                  DECODE (
                     MENU_LINK,
                     NULL, '',
                     DECODE (
                        CONNECT_BY_ISLEAF,
                        0, '',
                        'f?p=&APP_ID.:' || TO_CHAR (MENU_LINK) || ':&SESSION.:::::'))
                     target,
                  'NO:' AS is_current,
                  NVL (icon_img, 'fa-list-ul') image,
                  PARENT_PID
             FROM MENUS
            WHERE     status = 1
                  AND PID IN (SELECT PAGE_ID
                                FROM USER_MENU
                               WHERE PID_GROUP = :P0_USER_GROUP)
       START WITH PARENT_PID IS NULL
       CONNECT BY PRIOR PID = PARENT_PID
ORDER SIBLINGS BY SORT_BY;