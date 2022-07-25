Create database userControlGym;

use userControlGym;


'Employee'
create table Employee
(
 IdUser
 , UserName
 , LastnameUser
 , DateOfAdmissionUser
 , PasswordUser
 , EmailUser
 , ActiveUser
)

'Permisos'

GRANT SELECT, UPDATE, DELETE ON Employee TO 'falta poner permisos'



'Cliente'
create table Client
(
  IdClient varchar(20) unique not null default 'Usuario00Perez123'
  , ClientName varchar(200) not null default 'Usuario00'
  , LastNameClient varchar(200) not null default 'perez'
  , PaymentConceptClient varchar(300) not null default 'mes'
  , ValidityStartDateClient datetime not null default '19000101'
  , EndOfValidityDateClient datetime not null default '19000101'
  , SelfieClient blob
  , AmountClient float not null default 150.00
  , ActiveClient bool not null default 0
  , ModifyDateClient datetime not null default '19000101'
  , NameClient varchar(200) not null default 'Usuario00Perez123'
  , HappyBirthdayClient datetime null
);


'Cierre de caja'
create table CloseTheBox
(
 idSale int primary key auto_increment
 , Amount
 , turn
 , EmployeeName
 , DateCutOfSale
)

insert into Usuario
( IdUser
  , UserName
  , LastName
  , PaymenMmethod
  , ValidityStartDate
  , EndOfValidityDate
  , Selfie
  , Amount
  , ActiveUser
  , ModifyDate
  , NameUser
)
values
(
 'Usuario00Perez123'
 , 'Usuario00'
 , 'perez'
 , 'mes'
 , '19000101'
 , '19000101'
 , 'https://elpais.com/elpais/2016/02/23/icon/1456228401_881729.html'
 , 150.00
 , 1
 , '19000101'
 , 'Donaldo'
);


select
  IdUser
  , UserName
  , LastName
  , PaymenMmethod
  , ValidityStartDate
  , EndOfValidityDate
  , Amount
  , ActiveUser
  , ModifyDate
  , NameUser
from 
  Usuario