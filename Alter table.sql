/* Formatted on 1/6/2023 7:46:55 PM (QP5 v5.227.12220.39754) */
ALTER TABLE cash_sub ADD
CONSTRAINT cash_sub_r01
 FOREIGN KEY (m_member_id)
 REFERENCES m_member (id);
/

ALTER TABLE CASH_SUB ADD
CONSTRAINT CASH_SUB_C01
 CHECK (m_member_id IS NOT NULL);
/

ALTER TABLE SHOP_EXP_D ADD 
CONSTRAINT SHOP_EXP_D_R01
 FOREIGN KEY (EXP_ID)
 REFERENCES SHOP_EXP (ID);
 /

