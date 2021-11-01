drop table if exists attempts;
drop table if exists personinfo;
CREATE TABLE personinfo(
personid int auto_increment,
FirstName VARCHAR(20) not null,
LastName VARCHAR(20) not null,
Age INT,
Testscore ENUM('pass','fail') default 'pass',
primary key (personid)
);
INSERT INTO personinfo VALUES 
(null,'bob','marley',20,'pass'),
(null,'jon','jhones',25,'fail'),
(null,'dan','matthew',19,'pass'),
(null,'scarlet','witch',22,'fail'),
(null,'daniel','james',22,'PASS'),
(null,'ben','afflick',35,'fail');
update personinfo set FirstName="billy" where personid=1;
delete from personinfo where personid=6;

CREATE TABLE attempts(
attempts_id int auto_increment,
attempt_number int,
person_id int not null,
primary key (attempts_id),
foreign key (person_id) references personinfo(personid)
);
insert into attempts values
(null,3,1),
(null,1,4),
(null,4,5),
(null,1,2),
(null,2,3);



