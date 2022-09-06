-- auto-generated definition
create table report_postimage
(
    imgId int auto_increment,
    rid   int      not null,
    image longblob not null,
    constraint report_postimage_imgId_uindex
        unique (imgId),
    constraint report_postimage___fk
        foreign key (rid) references report (rid)
            on update cascade on delete cascade
);

alter table report_postimage
    add primary key (imgId)