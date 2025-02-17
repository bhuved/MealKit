CREATE TABLE member (
  id INT IDENTITY(1,1) PRIMARY KEY,
  Name NVARCHAR(40),
  Card_number CHAR(10));


create table book(
Id int identity(1,1) primary key,
Title nvarchar(60),
Author nvarchar(60),
Checked_out_by_id int foreign key references member(id));

insert into member(Name,Card_number) values
('Annabelle Aster', '772-93-110'),
('Boris Berceli', '000-00-000'),
('Carter Corbin', '282-09-382');

INSERT INTO book (title, author, checked_out_by_id) VALUES ('In Search of Lost Time', 'Marcel Proust', 1);
INSERT INTO book (title, author, checked_out_by_id) VALUES ('Ulysses', 'James Joyce', 1);
INSERT INTO book (title, author, checked_out_by_id) VALUES ('Don Quixote', 'Miguel de Cervantes', 3);
INSERT INTO book (title, author) VALUES ('Moby Dick', 'Herman Melville');

select * from member;
select * from book;

update member set Card_number = '357-15-964' where id = 2;
delete from member where id=2;

SELECT * FROM member WHERE card_number = '772-93-110';

SELECT * FROM book ORDER BY title;

UPDATE book SET checked_out_by_id = 1 WHERE id = 4;

UPDATE book SET checked_out_by_id = NULL WHERE title = 'Ulysses';

select * from book left join member on book.Checked_out_by_id = member.id;

SELECT book.title FROM book JOIN member ON book.checked_out_by_id = member.id WHERE member.name = 'Annabelle Aster';

select member.Name, member.Card_number from member left join book on member.id = book.Checked_out_by_id where book.Author = 'Herman Melville';