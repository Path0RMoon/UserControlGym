Create database userControlGym;

use userControlGym;


create table Usuario
(
  IdUser varchar(20) not null default 'Usuario00Perez123'
  , UserName varchar(200) not null default 'Usuario00'
  , LastName varchar(200) not null default 'perez'
  , PaymenMmethod varchar(300) not null default 'mes'
  , ValidityStartDate datetime not null default '19000101'
  , EndOfValidityDate datetime not null default '19000101'
  , Selfie blob
  , Amount float not null default 150.00
  , ActiveUser bool not null default 0
);


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
from 
  Usuario