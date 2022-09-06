-- auto-generated definition
create table report
(
    rid            int auto_increment,
    rname          varchar(50)             not null,
    pid            int                     not null,
    date           datetime                not null,
    humidity       double                  null,
    weather        varchar(255) default '' null,
    siteConditions varchar(255) default '' null,
    obstacles      varchar(255) default '' null,
    notes          varchar(255) default '' null,
    toDo           varchar(255) default '' null,
    nextDayPlan    varchar(255) default '' null,
    creatorUid     int                     not null,
    supervisorUid  int          default -1 null,
    constraint report_rid_uindex
        unique (rid),
    constraint report_project_pid_fk
        foreign key (pid) references project (pid)
            on update cascade on delete cascade
);

alter table report
    add primary key (rid);