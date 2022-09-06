-- auto-generated definition
create table report_installer
(
    rid  int         not null,
    name varchar(50) not null,
    constraint report_installer_pk
        unique (rid, name),
    constraint report_installer_report_rid_fk
        foreign key (rid) references report (rid)
            on update cascade on delete cascade
);

create index reportInstaller_user_uid_fk
    on report_installer (name);