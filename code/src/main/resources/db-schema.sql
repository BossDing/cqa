drop database if exists cqanswer;

/*==============================================================*/
/* Database: cqanswer                                           */
/*==============================================================*/
create database cqanswer;

use cqanswer;

/*==============================================================*/
/* Table: ANSWER                                                */
/*==============================================================*/
create table ANSWER
(
   UUID                 char(32),
   Q_UUID               char(32),
   TITLE                varchar(50),
   CONTENT              varchar(500),
   R_COUNT              int comment '�ûش�ÿ����ͬһ�ν����ۼ�',
   NR_COUNT             int comment '�ûش�ÿ���������ۼ�',
   A_DATE               date
);

alter table ANSWER comment '�ش�';

/*==============================================================*/
/* Table: QUESTION                                              */
/*==============================================================*/
create table QUESTION
(
   UUID                 char(32),
   TITLE                varchar(100),
   CONTENT              varchar(500) comment 'ճ������',
   U_UUID               char(32),
   Q_TIME               date,
   A_COUNT              int,
   Q_COUNT              int,
   Q_LEVER              int,
   M_CODE               varchar(20)
);

alter table QUESTION comment '����';

/*==============================================================*/
/* Table: SYS_MODULE                                            */
/*==============================================================*/
create table SYS_MODULE
(
   UUID                 char(32),
   NAME                 varchar(20),
   CODE                 varchar(20),
   INFO                 varchar(500),
   REMARK               varchar(500),
   PARENT_CODE          varchar(20)
);

alter table SYS_MODULE comment 'ϵͳģ��';

/*==============================================================*/
/* Table: SYS_NOTICE_TYPE                                       */
/*==============================================================*/
create table SYS_NOTICE_TYPE
(
   UUID                 char(32),
   TYPE_CODE            varchar(10),
   TYPE_NAME            varchar(10)
);

alter table SYS_NOTICE_TYPE comment 'ϵͳ֪ͨ����';

/*==============================================================*/
/* Table: SYS_USER                                              */
/*==============================================================*/
create table SYS_USER
(
   UUID                 char(32),
   ACCOUNTS             varchar(30),
   PASSWORD             varchar(30),
   LAST_LOGIN_TIME      date
);

alter table SYS_USER comment 'ע���û���½��Ϣ';

/*==============================================================*/
/* Table: SYS_USER_INFO                                         */
/*==============================================================*/
create table SYS_USER_INFO
(
   UUID                 char(32),
   NAME                 varchar(50),
   TEL                  varchar(20),
   EMAIL                varchar(50),
   ACCEPT_Q             varchar(1),
   ACCEPT_Q_NOTICE      varchar(1),
   ACCEPT_A_NOTICE      varchar(1),
   Q_NOTICE_TYPE        varchar(2),
   A_NOTICE_TYPE        varchar(2)
);

alter table SYS_USER_INFO comment '�û�������Ϣ';

/*==============================================================*/
/* Table: USER_ANSWER                                           */
/*==============================================================*/
create table USER_ANSWER
(
   U_UUID               char(32),
   Q_UUID               char(32),
   A_UUID               char(32),
   A_DATE               date
);

alter table USER_ANSWER comment '�û��ش���¼�û���ĳ���ش����ͬ����';

/*==============================================================*/
/* Table: USER_QUESTION                                         */
/*==============================================================*/
create table USER_QUESTION
(
   U_UUID               char(32),
   Q_UUID               char(32),
   Q_DATE               date
);

alter table USER_QUESTION comment '�û�������¼�û���ĳ�������ͬ�ʲ���';
