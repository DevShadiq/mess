/* Formatted on 1/3/2023 11:07:35 PM (QP5 v5.227.12220.39754) */
CREATE OR REPLACE VIEW v_member_cash
AS
     SELECT m.full_name,
            m.phone,
            m.nid,
            m.address,
            m.id member_id,
            SUM (c.cash_amt) cash
       FROM m_member m, cash_sub c
      WHERE m.id = c.m_member_id
   GROUP BY m.full_name,
            m.phone,
            m.nid,
            m.address,
            m.id