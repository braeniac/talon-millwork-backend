-- auto-generated definition
create table report_preimage
(
    imgId int auto_increment,
    rid   int      not null,
    image longblob not null,
    constraint report_preimage_imgId_uindex
        unique (imgId),
    constraint report_preimage___fk
        foreign key (rid) references report (rid)
            on update cascade on delete cascade
);

alter table report_preimage
    add primary key (imgId)