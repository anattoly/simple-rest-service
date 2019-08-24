CREATE TABLE Book (
			id integer primary key, 
			title varchar (100) NULL,
			genre varchar (20) NULL,
			description varchar (250) NULL,
			rate float NULL
);

CREATE TABLE Author (
		id integer primary key,
		firstName varchar (20) NOT NULL,
		lastName varchar (20) NULL,
		country varchar (20) NULL,
		age integer
);

ALTER TABLE Book ADD COLUMN idAuthor integer REFERENCES author (id);

ALTER TABLE author RENAME COLUMN age TO year_born;
ALTER TABLE book RENAME COLUMN idAuthor TO id_author;

CREATE SEQUENCE id_book START 1;

INSERT INTO author (id, firstname, lastname, country, year_born) 
VALUES
(1,'Suzanne', 'Collins', 'USA', 1962),
(2, 'Joanne', 'Rowling', 'England', 1965),
(3, ' Harper', 'Lee', 'USA', 1926),
(4, 'Jane', 'Austen', 'England', 1775),
(5, 'Stephenie', 'Meyer', 'USA', 1973),
(6, ' George', 'Orwell', 'British India', 1903),
(7, 'Markus', 'Zusak', 'Australia', 1975),
(8, 'Clive', 'Lewis', 'Ireland', 1898),
(9, 'John Ronald Reuel', 'Tolkien', 'South Africa', 1892),
(10, 'Margaret', 'Mitchell', 'USA', 1900),
(11, 'John', 'Green', 'USA', 1977),
(12, 'Shel', 'Silverstein', 'USA', 1930),
(13, 'Emily', 'Brontë', 'England', 1818),
(14, 'Dan', 'Brown', 'USA', 1964),
(15, 'Arthur', 'Golden', 'USA', 1956),
(16, 'Lewis', 'Carroll', 'England', 1832),
(17, 'Oscar', 'Wilde', 'Ireland', 1854),
(18, 'Charlotte', 'Brontë', 'England', 1816),
(19, 'Veronica', 'Roth', 'USA', 1988),
(20, 'William', 'Shakespeare', 'England', 1616);

INSERT INTO book (id, title, genre, description, rate, id_author) 
VALUES 
(
nextval('id_book'),
'The Hunger Games',
'Adventure',
'In the ruins of a place once known as North America lies the nation of Panem, a shining Capitol surrounded by twelve outlying districts',
4.33,
1
),
(
nextval('id_book'),
'Harry Potter and the Order of the Phoenix',
'Fantasy',
'Harry has a lot on his mind for this, his fifth year at Hogwarts: a Defense Against the Dark Arts teacher with a personality like poisoned honey',
4.49,
2
),
(
nextval('id_book'),
'To Kill a Mockingbird',
'Classics',
'The unforgettable novel of a childhood in a sleepy Southern town and the crisis of conscience that rocked it, To Kill A Mockingbird became both an instant bestseller and a critical success when it was first published in 1960',
4.27,
3
),
(
nextval('id_book'),
'Go Set a Watchman',
'Historical',
'From Harper Lee comes a landmark new novel set two decades after her beloved Pulitzer Prize-winning masterpiece, To Kill a Mockingbird. Maycomb, Alabama',
3.31,
3
),
(
nextval('id_book'),
'Pride and Prejudice',
'Romance',
'Since its immediate success in 1813, Pride and Prejudice has remained one of the most popular novels in the English language',
4.25,
4
),
(
nextval('id_book'),
'Lady Susan',
'Romance',
'Beautiful, flirtatious, and recently widowed, Lady Susan Vernon seeks an advantageous second marriage for herself, while attempting to push her daughter into a dismal match',
3.60,
4
),
(
nextval('id_book'),
'Twilight',
'Fantasy',
'In the first book of the Twilight Saga, internationally bestselling author Stephenie Meyer introduces Bella Swan and Edward Cul',
3.84,
5
),
(
nextval('id_book'),
'The Host',
'Young Adult',
'Melanie Stryder refuses to fade away. The earth has been invaded by a species that take over the minds of human hosts while leaving their bodies intact',
3.59,
5
),
(
nextval('id_book'),
'Animal Farm',
'Classics',
'George Orwell’s timeless and timely allegorical novel—a scathing satire on a downtrodden society’s blind march towards totalitarianism',
3.92,
6
),
(
nextval('id_book'),
'Coming Up for Air',
'Fiction',
'George Bowling, the hero of Orwell’s comic novel, is a middle-aged insurance salesman who lives in an average English suburban row house with a wife and two children',
3.79,
6
),
(
nextval('id_book'),
'The Book Thief',
'Historical',
'By her brother’s graveside, Liesel’s life is changed when she picks up a single object, partially hidden in the snow',
4.37,
7
),
(
nextval('id_book'),
'The Chronicles of Narnia',
'Fantasy',
'The book that has it all is The Lion, the Witch and the Wardrobe, written in 1949 by Clive Staples Lewis',
4.26,
8
),
(
nextval('id_book'),
'The Hobbit and The Lord of the Rings',
'Fantasy',
'In The Hobbit, Bilbo Baggins is whisked away from his comfortable, unambitious life in Hobbiton by the wizard Gandalf and a company of dwarves',
4.59,
9
),
(
nextval('id_book'),
'Gone with the Wind',
'Classics',
'Margaret Mitchell’s monumental epic of the South won a Pulitzer Prize, gave rise to the most popular motion picture of our time, and inspired a sequel that became the fastest selling novel of the century',
4.29,
10
),
(
nextval('id_book'),
'The Fault in Our Stars',
'Young Adult',
'Despite the tumor-shrinking medical miracle that has bought her a few years, Hazel has never been anything but terminal, her final chapter inscribed upon diagnosis',
4.23,
11
),
(
nextval('id_book'),
'The Giving Tree',
'Childrens',
'Every day the boy would come to the tree to eat her apples, swing from her branches, or slide down her trunk...and the tree was happy',
4.37,
12
),
(
nextval('id_book'),
'Wuthering Heights',
'Classics',
'This best-selling Norton Critical Edition is based on the 1847 first edition of the novel',
3.84,
13
),
(
nextval('id_book'),
'The Da Vinci Code',
'Mystery',
'While in Paris, Harvard symbologist Robert Langdon is awakened by a phone call in the dead of the night',
3.83,
14
),
(
nextval('id_book'),
'Memoirs of a Geisha',
'Fiction',
'In Memoirs of a Geisha, we enter a world where appearances are paramount; where a girl’s virginity is auctioned to the highest bidder',
4.10,
15
),
(
nextval('id_book'),
'Alice’s Adventures in Wonderland & Through the Looking-Glass',
'Fantasy',
'When Alice sees a white rabbit take a watch out of its waistcoat pocket she decides to follow it, and a sequence of most unusual events is set in motion',
4.07,
16
),
(
nextval('id_book'),
'The Picture of Dorian Gray',
'Classics',
'Written in his distinctively dazzling manner, Oscar Wilde’s story of a fashionable young man who sells his soul for eternal youth and beauty is the author’s most popular work',
4.07,
17
),
(
nextval('id_book'),
'Jane Eyre',
'Classics',
'Orphaned as a child, Jane has felt an outcast her whole young life. Her courage is tested once again when she arrives at Thornfield Hall, where she has been hired by the brooding, proud Edward Rochester to care for his ward Adèle',
4.11,
18
),
(
nextval('id_book'),
'Divergent',
'Young Adult',
'In Beatrice Prior’s dystopian Chicago world, society is divided into five factions, each dedicated to the cultivation of a particular virtue',
4.21,
19
),
(
nextval('id_book'),
'Romeo and Juliet',
'Classics',
'In this death-filled setting, the movement from love at first sight to the lovers’ final union in death seems almost inevitable',
3.74,
20
);
----------------------------------------------------------
select  bk.id,
		bk.title
from book bk
join author ar on ar.id = bk.id_author
where bk.genre = 'Classics';
----------------------------------------------------------
select  bk.title,
		bk.genre
from book bk
join author ar on ar.id = bk.id_author
order by bk.rate desc;
----------------------------------------------------------
select  bk.title,
		bk.rate
from book bk
group by bk.title,
		 bk.rate
having bk.rate = (select max(mr.rate)
				  from book mr);
----------------------------------------------------------
select bk.*
from book bk
join author ar on ar.id = bk.id_author
where ar.firstname = 'Jane' and ar.lastname = 'Austen';
----------------------------------------------------------
select (ar.firstname || ' ' || ar.lastname) as Authors,
		ar.year_born
from book bk
join author ar on ar.id = bk.id_author
group by ar.firstname,
		 ar.lastname,
		 ar.year_born
order by ar.year_born desc;
----------------------------------------------------------
select  mb.Authors,
		mb.QntBook
from (
select (ar.firstname || ' ' || ar.lastname) as Authors,
		count(bk.id) as QntBook
from book bk
join author ar on ar.id = bk.id_author
group by ar.firstname, 
		 ar.lastname,
		 ar.year_born)mb
group by mb.Authors,
		 mb.QntBook
having mb.qntBook > 1

