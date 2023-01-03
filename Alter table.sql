/* Formatted on 1/3/2023 9:59:51 PM (QP5 v5.227.12220.39754) */
ALTER TABLE cash_sub ADD
CONSTRAINT cash_sub_r01
 FOREIGN KEY (m_member_id)
 REFERENCES m_member (id);
