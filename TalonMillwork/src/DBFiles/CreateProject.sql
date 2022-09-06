-- auto-generated definition
create table project
(
    pid   int auto_increment,
    pname varchar(50) not null,
    constraint project_pid_uindex
        unique (pid)
);

alter table project
    add primary key (pid);