-- auto-generated definition
create table report_subtrade
(
    rid  int         not null,
    name varchar(50) not null,
    constraint report_subtrade_pk
        unique (rid, name),
    constraint report_subtrade_report_rid_fk
        foreign key (rid) references report (rid)
);

create index reportSubtrade_user_uid_fk
    on report_subtrade (name);
