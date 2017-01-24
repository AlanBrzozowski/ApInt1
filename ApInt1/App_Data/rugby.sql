/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2012                    */
/* Created on:     2017-01-24 17:38:32                          */
/*==============================================================*/


/*==============================================================*/
/* Table: Klub                                                  */
/*==============================================================*/
create table Klub (
   ID_KLUB              int                  not null,
   ID_LIGA              int                  null,
   NAZWA                 varchar(50)          not null,
   primary key (ID_KLUB)
)
go


/*==============================================================*/
/* Table: Kolejka                                               */
/*==============================================================*/
create table Kolejka (
   ID_KOLEJKA           int                  not null,
   ID_LIGA              int                  null,
   SEZON                varchar(5)           not null,
   NUMER                varchar(2)           not null,
   DATA_KOLEJKI                 datetime             null,
   primary key (ID_KOLEJKA)
)
go


/*==============================================================*/
/* Table: Liga                                                  */
/*==============================================================*/
create table Liga (
   ID_LIGA              int                  not null,
   NAZWA                varchar(50)          not null,
   KRAJ                 varchar(50)          null,
   primary key (ID_LIGA)
)
go

/*==============================================================*/
/* Table: Mecz                                                  */
/*==============================================================*/
create table Mecz (
   ID_MECZ              int                  not null,
   ID_KOLEJKA           int                  null,
   ID_GOSC              int                  null,
   ID_GOSPODARZ         int                  null,
   ID_STADION           int                  null,
   WYNIK_GOSPODARZ      integer              null,
   WYNIK_GOSC           integer              null,
   primary key (ID_MECZ)
)
go


/*==============================================================*/
/* Table: Stadion                                               */
/*==============================================================*/
create table Stadion (
   ID_STADION           int                  not null,
   ID_KLUB              int                  null,
   NAZWA                varchar(50)          not null,
   MIASTO               varchar(50)          not null,
   POJEMNOSC            int                  null,
   primary key (ID_STADION)
)
go


/*==============================================================*/
/* Table: Zawodnik                                              */
/*==============================================================*/
create table Zawodnik (
   ID_ZAWODNIK          int                  not null,
   ID_KLUB              int                  null,
   IMIE                 varchar(50)          not null,
   NAZWISKO             varchar(50)          not null,
   DATA_URODZENIA       datetime             null,
   NARODOWOSC                 varchar(50)          not null,
   primary key (ID_ZAWODNIK)
)
go


/*==============================================================*/
/* Table: Zdarzenie                                             */
/*==============================================================*/
create table Zdarzenie (
   ID_ZDARZENIE         integer              not null,
   ID_MECZ              int                  null,
   ID_KLUB              int                  null,
   NAZWA                varchar(50)          not null,
   MINUTA               varchar(3)           not null,
   primary key (ID_ZDARZENIE)
)
go


alter table Klub add constraint FK_klub foreign key (ID_LIGA)
      references Liga (ID_LIGA) on delete no action on update no action;
go

alter table Kolejka add constraint FK_kolejka foreign key (ID_LIGA)
      references Liga (ID_LIGA) on delete no action on update no action;
go

alter table Mecz add constraint FK_gosc foreign key (ID_GOSC)
      references Klub (ID_KLUB) on delete no action on update no action;
go

alter table Mecz add constraint FK_gospodarz foreign key (ID_GOSPODARZ)
      references Klub (ID_KLUB) on delete no action on update no action;
go

alter table Mecz add constraint FK_mecz foreign key (ID_KOLEJKA)
      references Kolejka (ID_KOLEJKA) on delete no action on update no action;
go

alter table Mecz add constraint FK_mecz2 foreign key (ID_STADION)
      references Stadion (ID_STADION) on delete no action on update no action;
go

alter table Stadion add constraint FK_stadion foreign key (ID_KLUB)
      references Klub (ID_KLUB) on delete no action on update no action;
go

alter table Zawodnik add constraint FK_zawodnik foreign key (ID_KLUB)
      references Klub (ID_KLUB) on delete no action on update no action;
go

alter table Zdarzenie add constraint FK_zdarzenie foreign key (ID_KLUB)
      references Klub (ID_KLUB) on delete no action on update no action;
go

alter table Zdarzenie add constraint FK_zdarzenie2 foreign key (ID_MECZ)
      references Mecz (ID_MECZ) on delete no action on update no action;
go

