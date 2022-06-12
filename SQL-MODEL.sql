
create table Customer 
(
   customerId           varchar(20)                    not null,
   customerName         varchar(20)                    not null,
   customerTel          number                         null,
   constraint PK_CUSTOMER primary key (customerId)
);

create table Product 
(
   productId            varchar(20)                    not null,
   productName          varchar(20)                    not null,
   price                number                         CHECK (price>0),
   constraint PK_PRODUCT primary key (productId)
);
create table Orders 
(
   customerId           varchar(20)                    not null,
   productId            varchar(20)                    not null,
   Quantity             number                         null,
   Total_amount         number                         null,
   constraint Orders primary key  (customerId, productId)
);
alter table Orders 
   add constraint FK_CUSTOMER foreign key (customerId)
      references Customer (customerId);

alter table Orders 
   add constraint FK_PRODUCT foreign key (productId)
      references Product (productId);

/*Ajoutez une colonne Category (VARCHAR2(20)) à la table PRODUCT. */
ALTER TABLE Product ADD Category VARCHAR2(20);
/*Ajoutez une colonne OrderDate (DATE) à la table ORDERS qui a SYSDATE comme valeur par défaut.*/
ALTER TABLE ORDERS ADD OrderDate (DATE) DEFAULT SYSDATE();