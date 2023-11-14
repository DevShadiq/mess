CREATE TABLE t_menu
(
   PID                      NUMBER NOT NULL,
   PARENT_PID               NUMBER,
   MENU_NAME                NVARCHAR2 (100),
   MENU_LINK                NVARCHAR2 (200),
   STATUS                   NVARCHAR2 (1),
   DESCRIPTION              NVARCHAR2 (200),
   SORT_BY                  NUMBER,
   PID_EMPLOYEE_INSERT_BY   NUMBER,
   PID_EMPLOYEE_UPDATE_BY   NUMBER,
   UPDATE_DATE              DATE,
   INSERT_DATE              DATE DEFAULT SYSDATE,
   ICON_IMG                 VARCHAR2 (250 BYTE),
   MENU_NAME_BANGLA         VARCHAR2 (250 BYTE)
);


CREATE OR REPLACE TRIGGER t_t_menu_pk_auto
   BEFORE INSERT OR UPDATE
   ON t_menu
   FOR EACH ROW
BEGIN
   IF :NEW.PID IS NULL
   THEN
      SELECT NVL (MAX (PID), 0) + 1 INTO :NEW.PID FROM t_menu;
   END IF;
END t_t_menu_pk_auto;
/


ALTER TABLE t_menu ADD (
  CONSTRAINT t_menu_C01
  CHECK (PARENT_PID <> PID)
  ENABLE VALIDATE,
  CONSTRAINT t_menu_CON_PK
  PRIMARY KEY
  (PID));

ALTER TABLE t_menu ADD (
  CONSTRAINT t_menu_CON
  FOREIGN KEY (PARENT_PID)
  REFERENCES t_menu (PID));

CREATE TABLE user_menu
(
   pid          NUMBER NOT NULL,
   pid_group    NUMBER NOT NULL,
   page_id      NUMBER,
   permission   NUMBER (1) DEFAULT 1
);


ALTER TABLE user_menu ADD (
  CONSTRAINT c_user_menu_pk
  PRIMARY KEY
  (pid),
  CONSTRAINT c_user_menu_u01
  UNIQUE (pid_group, page_id));