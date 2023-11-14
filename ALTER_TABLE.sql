/* Formatted on 6/4/2023 10:52:27 PM (QP5 v5.227.12220.39754) */
ALTER TABLE CASH_SUB
ADD (MES_ID NUMBER);

ALTER TABLE MEAL_COUNT
ADD (MES_ID NUMBER);

ALTER TABLE MEAL_PERIOD
ADD (MES_ID NUMBER);

ALTER TABLE SHOP_EXP
ADD (MES_ID NUMBER);

ALTER TABLE SHOP_EXP_D
ADD (MES_ID NUMBER);

ALTER TABLE M_MEMBER
ADD (MES_ID NUMBER);

ALTER TABLE M_MEMBER ADD
CONSTRAINT M_MEMBER_R01
 FOREIGN KEY (MES_ID)
 REFERENCES MESS_NAME (ID);
/

 ALTER TABLE M_MEMBER ADD
CONSTRAINT M_MEMBER_R02
 FOREIGN KEY (USER_GROUP)
 REFERENCES USER_GROUP (ID)
 ENABLE
 VALIDATE
/

ALTER TABLE MESS.CASH_SUB ADD 
CONSTRAINT CASH_SUB_R02
 FOREIGN KEY (MES_ID)
 REFERENCES MESS.MESS_NAME (ID)
 ENABLE
 VALIDATE
/
ALTER TABLE MESS_NAME
RENAME COLUMN MESS_NAME TO m_name
/