-- auto-generated definition
create table user
(
    uid              int auto_increment,
    f_name           varchar(50)                    not null,
    l_name           varchar(50)                    not null,
    uname            varchar(50)                    not null,
    password         varchar(60)                    not null,
    active           tinyint(1)  default 1          not null,
    role             varchar(50) default 'EMPLOYEE' not null,
    recoveryAnswer   varchar(60) default ''         null,
    recoveryQuestion varchar(60) default ''         null,
    constraint User_uid_uindex
        unique (uid),
    constraint User_uname_uindex
        unique (uname)
);

alter table user
    add primary key (uid);