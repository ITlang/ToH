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

insert into users values ( '001' , '15631140586' , '�ɹ���' , '123' , 'uu' );
insert into users values ( '002' , '15732115396' , '�Ƿ���' , '123' , 'uu' );
insert into users values ( '003' , '18330180757' , '�ݺ���' , '123' , 'uu' );
insert into users values ( '004' , '12345678' , '���������ض�ʹ' , '123' , 'uu' );


insert into caipin values ( '001' , '11.png' , '�ݺ���' , '����С��1.2km' , '����300+����4.9�֣��˾�27���ӱ� ��̨��' );
insert into caipin values ( '002' , '12.png' , '�Ƿ���' , '��Ժ��·450m' , '����230+����3.8�֣��˾�50��ɽ�� ̫ԭ��' );
insert into caipin values ( '003' , '13.png' , '���������ض�ʹ' , 'ʯ��·1km' , '����220+����2.9�֣��˾�10��������' );
insert into caipin values ( '004' , '14.png' , '�͵����' , '���μ�԰2km' , '����120+����4.5�֣��˾�37�������' );

Create table caidan(
    cdID varchar(20) primary key,
    uPhone varchar(20) null,
    cdName varchar(20) null,
    cdmonthnum  varchar(20) null,
    cdzan varchar(20) null,
    cdmoney varchar(20) null,
 )
 
insert into caidan values('1','18330180757','С��Ϻ������','54','3','7');
insert into caidan values('2','15732115396','����ͷ','34','2','0.5');
insert into caidan values('3','18330180757','�׷�','54','3','1');
insert into caidan values('4','18330180757','������','24','30','20');
insert into caidan values('5','18330180757','�Ļƹ�','20','3','8');


