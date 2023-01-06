/* Formatted on 1/6/2023 7:40:58 PM (QP5 v5.227.12220.39754) */
CREATE OR REPLACE TRIGGER trg_cash_sub_pk
   BEFORE INSERT OR UPDATE
   ON cash_sub
   FOR EACH ROW
BEGIN
   IF :new.id IS NULL
   THEN
      SELECT NVL (MAX (id), 0) + 1 INTO :new.id FROM cash_sub;
   END IF;
END trg_cash_sub_pk;
/

CREATE OR REPLACE TRIGGER trg_mess_name_pk
   BEFORE INSERT OR UPDATE
   ON mess_name
   FOR EACH ROW
BEGIN
   IF :new.id IS NULL
   THEN
      SELECT NVL (MAX (id), 0) + 1 INTO :new.id FROM mess_name;
   END IF;
END trg_mess_name_pk;
/


CREATE OR REPLACE TRIGGER trg_items_pk
   BEFORE INSERT OR UPDATE
   ON item_master
   FOR EACH ROW
BEGIN
   IF :new.id IS NULL
   THEN
      SELECT NVL (MAX (id), 0) + 1 INTO :new.id FROM item_master;
   END IF;
END trg_items_pk;
/


CREATE OR REPLACE TRIGGER trg_shop_exp_pk
   BEFORE INSERT OR UPDATE
   ON SHOP_EXP
   FOR EACH ROW
BEGIN
   IF :new.id IS NULL
   THEN
      SELECT NVL (MAX (id), 0) + 1 INTO :new.id FROM SHOP_EXP;
   END IF;
END trg_shop_exp_pk;
/

CREATE OR REPLACE TRIGGER trg_shop_exp_d_pk
   BEFORE INSERT OR UPDATE
   ON SHOP_EXP_D
   FOR EACH ROW
BEGIN
   IF :new.id IS NULL
   THEN
      SELECT NVL (MAX (id), 0) + 1 INTO :new.id FROM SHOP_EXP_D;
   END IF;
END trg_shop_exp_d_pk;
/
