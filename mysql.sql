create table image_table(
id integer auto_increment,
cname varchar(255),
firstname varchar(1000),
lastname varchar(1000),
sname varchar(1000),
filename varchar(1000),
path varchar(1000),
added_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
primary key(id));



create table employee1 (
 id integer auto_increment,
 firstname varchar(255) NOT NULL,
 lastname varchar(255) NOT NULL,
 pas varchar(255) NOT NULL,
 et varchar(255) NOT NULL,
 bh varchar(255) NOT NULL,
 loc varchar(255) NOT NULL,
 wlp varchar(255) NOT NULL,
 pn varchar(255) NOT NULL,
 an varchar(255) NOT NULL,
 emi varchar(255) NOT NULL,
 cou varchar(255) NOT NULL,
 mot varchar(255) NOT NULL,
 adt varchar(255) NOT NULL,
 filename varchar(255) NOT NULL,
 PRIMARY KEY (id)
)

     


create table employee3 (
 id integer auto_increment,
 firstname varchar(255) NOT NULL,
 lastname varchar(255) NOT NULL,
 pas varchar(255) NOT NULL,
 fy varchar(255) NOT NULL,
 cp varchar(255) NOT NULL,
 loc varchar(255) NOT NULL,
 web varchar(255) NOT NULL,
 pn varchar(255) NOT NULL,
 an varchar(255) NOT NULL,
 emi varchar(255) NOT NULL,
 ido varchar(255) NOT NULL,
 adt varchar(255) NOT NULL,
 filename varchar(255) NOT NULL,
 PRIMARY KEY (id)
)
      

create table employee4 (
 id integer auto_increment,
 firstname varchar(255) NOT NULL,
 lastname varchar(255) NOT NULL,
 mob varchar(255) NOT NULL,
 filename varchar(255) NOT NULL,
 PRIMARY KEY (id)
)


create table internship (
 id integer auto_increment,
 name varchar(255) NOT NULL,
 jt varchar(255) NOT NULL,
 req varchar(255) NOT NULL,
 qua varchar(255) NOT NULL,
 exp varchar(255) NOT NULL,
 loc varchar(255) NOT NULL,
 sal varchar(255) NOT NULL,
 jd varchar(255) NOT NULL,
 PRIMARY KEY (id)
)

create table Institutes (
 id integer auto_increment,
 noi varchar(255) NOT NULL,
 pss varchar(255) NOT NULL,
 fy varchar(255) NOT NULL,
 cp varchar(255) NOT NULL,
 loc varchar(255) NOT NULL,
 web varchar(255) NOT NULL,
 pn varchar(255) NOT NULL,
 an varchar(255) NOT NULL,
 emi varchar(255) NOT NULL,
 co varchar(255) NOT NULL,
 nots varchar(255) NOT NULL,
 mot varchar(255) NOT NULL,
 adt varchar(255) NOT NULL,
 PRIMARY KEY (id)
)


create table employee2 (
 id integer auto_increment,
 noi varchar(255) NOT NULL,
 pss varchar(255) NOT NULL,
 cp varchar(255) NOT NULL,
 loc varchar(255) NOT NULL,
 eb varchar(255) NOT NULL,
 web varchar(255) NOT NULL,
 pn varchar(255) NOT NULL,
 an varchar(255) NOT NULL,
 emi varchar(255) NOT NULL,
 adt varchar(255) NOT NULL,
 PRIMARY KEY (id)
)

create table collegepost (
 id integer auto_increment,
 noi varchar(255) NOT NULL,
 rc varchar(255) NOT NULL,
 dur varchar(255) NOT NULL,
 tfps varchar(255) NOT NULL,
 loc varchar(255) NOT NULL,
 mot varchar(255) NOT NULL,
 nots varchar(255) NOT NULL,
 PRIMARY KEY (id)
)

create table adminpost (
 id integer auto_increment,
 cou varchar(255) NOT NULL,
 dur varchar(255) NOT NULL,
 loc varchar(255) NOT NULL,
 mot varchar(255) NOT NULL,
 bt varchar(255) NOT NULL,
 cd varchar(255) NOT NULL,
 nots varchar(255) NOT NULL,
 sta varchar(255) NOT NULL,
 PRIMARY KEY (id)
)

create table tenderfilled (
 id integer auto_increment,
 noit varchar(255) NOT NULL,
 tn varchar(255) NOT NULL,
 tpl varchar(255) NOT NULL,
 rat varchar(255) NOT NULL,
 cou varchar(255) NOT NULL,
 dur varchar(255) NOT NULL,
 loc varchar(255) NOT NULL,
 mot varchar(255) NOT NULL,
 fps varchar(255) NOT NULL,
 tt varchar(255) NOT NULL,
 tie varchar(255) NOT NULL,
 tte varchar(255) NOT NULL,
 ph varchar(255) NOT NULL,
 bt varchar(255) NOT NULL,
 cbe varchar(255) NOT NULL,
 mh varchar(255) NOT NULL,
 sta varchar(255) NOT NULL,
 PRIMARY KEY (id)
)

create table subadmin(ID integer auto_increment,Name varchar(50) not null,passord varchar(50) not null unique,
email varchar(50) not null,mobile varchar(20) not null,city varchar(50) not null,primary key(id));
insert into subadmin(name,passord,email,mobile,city) values ('jack','jack123','jack@gmail.com','123456','london');
insert into subadmin(name,passord,email,mobile,city) values ('bob','bob123','bob@gmail.com','123457','paris');
insert into subadmin(name,passord,email,mobile,city) values ('satya','satya123','satya@gmail.com','123489','new york');
select * from subadmin;