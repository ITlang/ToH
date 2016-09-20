create table users (
  ID varchar(20) primary key,
  Phone varchar(20) null,
  Name varchar(20) null,
  Pwd varchar(20) null,
  Roles varchar(20) null,
)

create table caipin(
  cID varchar(20) primary key,
  cImg varchar(20) null,
  cName varchar(20) null,
  cAddress varchar(20) null,
  cIntro varchar(40) null,
)

insert into users values ( '001' , '15631140586' , '郎国杰' , '123' , 'uu' );
insert into users values ( '002' , '15732115396' , '非非是' , '123' , 'uu' );
insert into users values ( '003' , '18330180757' , '逸寒烟' , '123' , 'uu' );
insert into users values ( '004' , '12345678' , '心若动，必定痛' , '123' , 'uu' );


insert into caipin values ( '001' , '11.png' , '逸寒烟' , '棉六小区1.2km' , '月售300+单，4.9分，人均27，河北 邢台人' );
insert into caipin values ( '002' , '12.png' , '非非是' , '铁院北路450m' , '月售230+单，3.8分，人均50，山西 太原人' );
insert into caipin values ( '003' , '13.png' , '心若动，必定痛' , '石坊路1km' , '月售220+单，2.9分，人均10，北京人' );
insert into caipin values ( '004' , '14.png' , '巴蒂青葱' , '众鑫家园2km' , '月售120+单，4.5分，人均37，天津人' );

Create table caidan(
    cdID varchar(20) primary key,
    uPhone varchar(20) null,
    cdName varchar(20) null,
    cdmonthnum  varchar(20) null,
    cdzan varchar(20) null,
    cdmoney varchar(20) null,
 )
 
insert into caidan values('1','18330180757','小龙虾鸡蛋羹','54','3','7');
insert into caidan values('2','15732115396','蒸馒头','34','2','0.5');
insert into caidan values('3','18330180757','米饭','54','3','1');
insert into caidan values('4','18330180757','红烧肉','24','30','20');
insert into caidan values('5','18330180757','拍黄瓜','20','3','8');


