--DELETE FROM Жанры;
--TRUNCATE TABLE Жанры RESTART IDENTITY CASCADE;
--DELETE FROM Жанры WHERE Название_жанра = 'Поп';
--ABORT;
BEGIN;
--Жанры
INSERT INTO Жанры(Название_жанра) VALUES('Pop');
INSERT INTO Жанры(Название_жанра) VALUES('Rock');
INSERT INTO Жанры(Название_жанра) VALUES('Country');
INSERT INTO Жанры(Название_жанра) VALUES('Folk');
INSERT INTO Жанры(Название_жанра) VALUES('Blues');
INSERT INTO Жанры(Название_жанра) VALUES('Disco');
INSERT INTO Жанры(Название_жанра) VALUES('Metall');

--Исполнители
INSERT INTO Исполнители(Имя_исполнителя) VALUES('Madonna');
INSERT INTO Исполнители(Имя_исполнителя) VALUES('Алла Пугачева');

INSERT INTO Исполнители(Имя_исполнителя) VALUES('Bon Jovi');
INSERT INTO Исполнители(Имя_исполнителя) VALUES('Rammstein');

INSERT INTO Исполнители(Имя_исполнителя) VALUES('Taylor Swift');
INSERT INTO Исполнители(Имя_исполнителя) VALUES('Johnny Cash');

INSERT INTO Исполнители(Имя_исполнителя) VALUES('Bob Dylan');
INSERT INTO Исполнители(Имя_исполнителя) VALUES('Ray LaMontagne');

INSERT INTO Исполнители(Имя_исполнителя) VALUES('Eric Clapton');
INSERT INTO Исполнители(Имя_исполнителя) VALUES('Etta James');

INSERT INTO Исполнители(Имя_исполнителя) VALUES('Boney M.');
INSERT INTO Исполнители(Имя_исполнителя) VALUES('Мираж');


--Альбомы
INSERT INTO Альбомы(Название_альбома, Год_выпуска_альбома) VALUES('Dare To Be Truthful', 2020);
INSERT INTO Альбомы(Название_альбома, Год_выпуска_альбома) VALUES('Lucky Star', 1983);
INSERT INTO Альбомы(Название_альбома, Год_выпуска_альбома) VALUES('Confessions on a Dance Floor', 2005);

INSERT INTO Альбомы(Название_альбома, Год_выпуска_альбома) VALUES('Речной трамвайчик', 2001);
INSERT INTO Альбомы(Название_альбома, Год_выпуска_альбома) VALUES('То ли ещё будет...', 1982);
INSERT INTO Альбомы(Название_альбома, Год_выпуска_альбома) VALUES('Зеркало души', 1977);


INSERT INTO Альбомы(Название_альбома, Год_выпуска_альбома) VALUES('Crush', 2000);
INSERT INTO Альбомы(Название_альбома, Год_выпуска_альбома) VALUES('Cross Road', 1994);
INSERT INTO Альбомы(Название_альбома, Год_выпуска_альбома) VALUES('Fooking Lancy - Single', 2021);

INSERT INTO Альбомы(Название_альбома, Год_выпуска_альбома) VALUES('Sonne', 2001);
INSERT INTO Альбомы(Название_альбома, Год_выпуска_альбома) VALUES('RAMMSTEIN', 2019);
INSERT INTO Альбомы(Название_альбома, Год_выпуска_альбома) VALUES('Rosenrot', 2005);


INSERT INTO Альбомы(Название_альбома, Год_выпуска_альбома) VALUES('Lover', 2019);
INSERT INTO Альбомы(Название_альбома, Год_выпуска_альбома) VALUES('1989', 2014);
INSERT INTO Альбомы(Название_альбома, Год_выпуска_альбома) VALUES('Midnights (Lavender Edition)', 2022);

INSERT INTO Альбомы(Название_альбома, Год_выпуска_альбома) VALUES('American IV: The Man Comes Around', 2002);
INSERT INTO Альбомы(Название_альбома, Год_выпуска_альбома) VALUES('The Legend of Johnny Cash', 2005);
INSERT INTO Альбомы(Название_альбома, Год_выпуска_альбома) VALUES('Super Hits', 1984);


INSERT INTO Альбомы(Название_альбома, Год_выпуска_альбома) VALUES('The Essential Bob Dylan', 1963);
INSERT INTO Альбомы(Название_альбома, Год_выпуска_альбома) VALUES('The Freewheelin'' Bob Dylan', 1963);
INSERT INTO Альбомы(Название_альбома, Год_выпуска_альбома) VALUES('Oh Mercy', 1989);

INSERT INTO Альбомы(Название_альбома, Год_выпуска_альбома) VALUES('Gossip In The Grain', 2008);
INSERT INTO Альбомы(Название_альбома, Год_выпуска_альбома) VALUES('Trouble', 2004);
INSERT INTO Альбомы(Название_альбома, Год_выпуска_альбома) VALUES('Part of the Light', 2018);


INSERT INTO Альбомы(Название_альбома, Год_выпуска_альбома) VALUES('The Cream of Clapton', 1994);
INSERT INTO Альбомы(Название_альбома, Год_выпуска_альбома) VALUES('Eric Clapton''s Rainbow Concert', 1973);
INSERT INTO Альбомы(Название_альбома, Год_выпуска_альбома) VALUES('Every Little Thing', 2013);

INSERT INTO Альбомы(Название_альбома, Год_выпуска_альбома) VALUES('At Last', 1961);
INSERT INTO Альбомы(Название_альбома, Год_выпуска_альбома) VALUES('Her Best', 1997);
INSERT INTO Альбомы(Название_альбома, Год_выпуска_альбома) VALUES('The Chess Box', 2000);


INSERT INTO Альбомы(Название_альбома, Год_выпуска_альбома) VALUES('Daddy Cool', 1976);
INSERT INTO Альбомы(Название_альбома, Год_выпуска_альбома) VALUES('Take the Heat Off Me', 1976);
INSERT INTO Альбомы(Название_альбома, Год_выпуска_альбома) VALUES('Nightflight to Venus', 1978);

INSERT INTO Альбомы(Название_альбома, Год_выпуска_альбома) VALUES('Снова вместе', 1988);
INSERT INTO Альбомы(Название_альбома, Год_выпуска_альбома) VALUES('Звёзды Нас Ждут', 2021);
INSERT INTO Альбомы(Название_альбома, Год_выпуска_альбома) VALUES('Отпусти меня', 2013);


--Увязка Альбомов и Исполнителей
INSERT INTO Исполнители_Альбомы(id_исполнителя, id_альбома) 
VALUES
((SELECT id_исполнителя FROM Исполнители WHERE Имя_исполнителя = 'Madonna'), (SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Dare To Be Truthful')),
((SELECT id_исполнителя FROM Исполнители WHERE Имя_исполнителя = 'Madonna'), (SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Lucky Star')),
((SELECT id_исполнителя FROM Исполнители WHERE Имя_исполнителя = 'Madonna'), (SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Confessions on a Dance Floor'));

INSERT INTO Исполнители_Альбомы(id_исполнителя, id_альбома) 
VALUES
((SELECT id_исполнителя FROM Исполнители WHERE Имя_исполнителя = 'Алла Пугачева'), (SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Речной трамвайчик')),
((SELECT id_исполнителя FROM Исполнители WHERE Имя_исполнителя = 'Алла Пугачева'), (SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'То ли ещё будет...')),
((SELECT id_исполнителя FROM Исполнители WHERE Имя_исполнителя = 'Алла Пугачева'), (SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Зеркало души'));

INSERT INTO Исполнители_Альбомы(id_исполнителя, id_альбома) 
VALUES
((SELECT id_исполнителя FROM Исполнители WHERE Имя_исполнителя = 'Bon Jovi'), (SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Crush')),
((SELECT id_исполнителя FROM Исполнители WHERE Имя_исполнителя = 'Bon Jovi'), (SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Cross Road')),
((SELECT id_исполнителя FROM Исполнители WHERE Имя_исполнителя = 'Bon Jovi'), (SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Fooking Lancy - Single'));

INSERT INTO Исполнители_Альбомы(id_исполнителя, id_альбома) 
VALUES
((SELECT id_исполнителя FROM Исполнители WHERE Имя_исполнителя = 'Rammstein'), (SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Sonne')),
((SELECT id_исполнителя FROM Исполнители WHERE Имя_исполнителя = 'Rammstein'), (SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'RAMMSTEIN')),
((SELECT id_исполнителя FROM Исполнители WHERE Имя_исполнителя = 'Rammstein'), (SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Rosenrot'));

INSERT INTO Исполнители_Альбомы(id_исполнителя, id_альбома) 
VALUES
((SELECT id_исполнителя FROM Исполнители WHERE Имя_исполнителя = 'Taylor Swift'), (SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Lover')),
((SELECT id_исполнителя FROM Исполнители WHERE Имя_исполнителя = 'Taylor Swift'), (SELECT id_альбома FROM Альбомы WHERE Название_альбома = '1989')),
((SELECT id_исполнителя FROM Исполнители WHERE Имя_исполнителя = 'Taylor Swift'), (SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Midnights (Lavender Edition)'));

INSERT INTO Исполнители_Альбомы(id_исполнителя, id_альбома) 
VALUES
((SELECT id_исполнителя FROM Исполнители WHERE Имя_исполнителя = 'Johnny Cash'), (SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'American IV: The Man Comes Around')),
((SELECT id_исполнителя FROM Исполнители WHERE Имя_исполнителя = 'Johnny Cash'), (SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'The Legend of Johnny Cash')),
((SELECT id_исполнителя FROM Исполнители WHERE Имя_исполнителя = 'Johnny Cash'), (SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Super Hits'));

INSERT INTO Исполнители_Альбомы(id_исполнителя, id_альбома) 
VALUES
((SELECT id_исполнителя FROM Исполнители WHERE Имя_исполнителя = 'Bob Dylan'), (SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'The Essential Bob Dylan')),
((SELECT id_исполнителя FROM Исполнители WHERE Имя_исполнителя = 'Bob Dylan'), (SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'The Freewheelin'' Bob Dylan')),
((SELECT id_исполнителя FROM Исполнители WHERE Имя_исполнителя = 'Bob Dylan'), (SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Oh Mercy'));

INSERT INTO Исполнители_Альбомы(id_исполнителя, id_альбома) 
VALUES
((SELECT id_исполнителя FROM Исполнители WHERE Имя_исполнителя = 'Ray LaMontagne'), (SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Gossip In The Grain')),
((SELECT id_исполнителя FROM Исполнители WHERE Имя_исполнителя = 'Ray LaMontagne'), (SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Trouble')),
((SELECT id_исполнителя FROM Исполнители WHERE Имя_исполнителя = 'Ray LaMontagne'), (SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Part of the Light'));

INSERT INTO Исполнители_Альбомы(id_исполнителя, id_альбома) 
VALUES
((SELECT id_исполнителя FROM Исполнители WHERE Имя_исполнителя = 'Eric Clapton'), (SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'The Cream of Clapton')),
((SELECT id_исполнителя FROM Исполнители WHERE Имя_исполнителя = 'Eric Clapton'), (SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Eric Clapton''s Rainbow Concert')),
((SELECT id_исполнителя FROM Исполнители WHERE Имя_исполнителя = 'Eric Clapton'), (SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Every Little Thing'));

INSERT INTO Исполнители_Альбомы(id_исполнителя, id_альбома) 
VALUES
((SELECT id_исполнителя FROM Исполнители WHERE Имя_исполнителя = 'Etta James'), (SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'At Last')),
((SELECT id_исполнителя FROM Исполнители WHERE Имя_исполнителя = 'Etta James'), (SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Her Best')),
((SELECT id_исполнителя FROM Исполнители WHERE Имя_исполнителя = 'Etta James'), (SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'The Chess Box'));

INSERT INTO Исполнители_Альбомы(id_исполнителя, id_альбома) 
VALUES
((SELECT id_исполнителя FROM Исполнители WHERE Имя_исполнителя = 'Boney M.'), (SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Daddy Cool')),
((SELECT id_исполнителя FROM Исполнители WHERE Имя_исполнителя = 'Boney M.'), (SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Take the Heat Off Me')),
((SELECT id_исполнителя FROM Исполнители WHERE Имя_исполнителя = 'Boney M.'), (SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Nightflight to Venus'));

INSERT INTO Исполнители_Альбомы(id_исполнителя, id_альбома) 
VALUES
((SELECT id_исполнителя FROM Исполнители WHERE Имя_исполнителя = 'Мираж'), (SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Снова вместе')),
((SELECT id_исполнителя FROM Исполнители WHERE Имя_исполнителя = 'Мираж'), (SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Звёзды Нас Ждут')),
((SELECT id_исполнителя FROM Исполнители WHERE Имя_исполнителя = 'Мираж'), (SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Отпусти меня'));


--Увязка Жанров и Исполнителей
INSERT INTO Исполнители_Жанры(id_исполнителя, id_жанра)
VALUES
((SELECT id_исполнителя FROM Исполнители WHERE Имя_исполнителя = 'Madonna'), (SELECT id_жанра FROM Жанры WHERE Название_жанра = 'Pop')),
((SELECT id_исполнителя FROM Исполнители WHERE Имя_исполнителя = 'Madonna'), (SELECT id_жанра FROM Жанры WHERE Название_жанра = 'Disco'));

INSERT INTO Исполнители_Жанры(id_исполнителя, id_жанра)
VALUES
((SELECT id_исполнителя FROM Исполнители WHERE Имя_исполнителя = 'Алла Пугачева'), (SELECT id_жанра FROM Жанры WHERE Название_жанра = 'Pop'));

INSERT INTO Исполнители_Жанры(id_исполнителя, id_жанра)
VALUES
((SELECT id_исполнителя FROM Исполнители WHERE Имя_исполнителя = 'Bon Jovi'), (SELECT id_жанра FROM Жанры WHERE Название_жанра = 'Rock'));

INSERT INTO Исполнители_Жанры(id_исполнителя, id_жанра)
VALUES
((SELECT id_исполнителя FROM Исполнители WHERE Имя_исполнителя = 'Rammstein'), (SELECT id_жанра FROM Жанры WHERE Название_жанра = 'Rock')),
((SELECT id_исполнителя FROM Исполнители WHERE Имя_исполнителя = 'Rammstein'), (SELECT id_жанра FROM Жанры WHERE Название_жанра = 'Metall'));

INSERT INTO Исполнители_Жанры(id_исполнителя, id_жанра)
VALUES
((SELECT id_исполнителя FROM Исполнители WHERE Имя_исполнителя = 'Taylor Swift'), (SELECT id_жанра FROM Жанры WHERE Название_жанра = 'Country')),
((SELECT id_исполнителя FROM Исполнители WHERE Имя_исполнителя = 'Taylor Swift'), (SELECT id_жанра FROM Жанры WHERE Название_жанра = 'Pop'));

INSERT INTO Исполнители_Жанры(id_исполнителя, id_жанра)
VALUES
((SELECT id_исполнителя FROM Исполнители WHERE Имя_исполнителя = 'Johnny Cash'), (SELECT id_жанра FROM Жанры WHERE Название_жанра = 'Country')),
((SELECT id_исполнителя FROM Исполнители WHERE Имя_исполнителя = 'Johnny Cash'), (SELECT id_жанра FROM Жанры WHERE Название_жанра = 'Folk'));

INSERT INTO Исполнители_Жанры(id_исполнителя, id_жанра)
VALUES
((SELECT id_исполнителя FROM Исполнители WHERE Имя_исполнителя = 'Bob Dylan'), (SELECT id_жанра FROM Жанры WHERE Название_жанра = 'Folk')),
((SELECT id_исполнителя FROM Исполнители WHERE Имя_исполнителя = 'Bob Dylan'), (SELECT id_жанра FROM Жанры WHERE Название_жанра = 'Rock'));

INSERT INTO Исполнители_Жанры(id_исполнителя, id_жанра)
VALUES
((SELECT id_исполнителя FROM Исполнители WHERE Имя_исполнителя = 'Ray LaMontagne'), (SELECT id_жанра FROM Жанры WHERE Название_жанра = 'Folk'));

INSERT INTO Исполнители_Жанры(id_исполнителя, id_жанра)
VALUES
((SELECT id_исполнителя FROM Исполнители WHERE Имя_исполнителя = 'Eric Clapton'), (SELECT id_жанра FROM Жанры WHERE Название_жанра = 'Blues')),
((SELECT id_исполнителя FROM Исполнители WHERE Имя_исполнителя = 'Eric Clapton'), (SELECT id_жанра FROM Жанры WHERE Название_жанра = 'Rock'));

INSERT INTO Исполнители_Жанры(id_исполнителя, id_жанра)
VALUES
((SELECT id_исполнителя FROM Исполнители WHERE Имя_исполнителя = 'Etta James'), (SELECT id_жанра FROM Жанры WHERE Название_жанра = 'Blues'));

INSERT INTO Исполнители_Жанры(id_исполнителя, id_жанра)
VALUES
((SELECT id_исполнителя FROM Исполнители WHERE Имя_исполнителя = 'Boney M.'), (SELECT id_жанра FROM Жанры WHERE Название_жанра = 'Disco')),
((SELECT id_исполнителя FROM Исполнители WHERE Имя_исполнителя = 'Boney M.'), (SELECT id_жанра FROM Жанры WHERE Название_жанра = 'Pop'));

INSERT INTO Исполнители_Жанры(id_исполнителя, id_жанра)
VALUES
((SELECT id_исполнителя FROM Исполнители WHERE Имя_исполнителя = 'Мираж'), (SELECT id_жанра FROM Жанры WHERE Название_жанра = 'Disco')),
((SELECT id_исполнителя FROM Исполнители WHERE Имя_исполнителя = 'Мираж'), (SELECT id_жанра FROM Жанры WHERE Название_жанра = 'Pop'));


--Треки
INSERT INTO Треки(id_альбома, Название_трека, Длительность_трека) 
VALUES
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Dare To Be Truthful'), 'No Substitute For Love', '00:05:07'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Dare To Be Truthful'), 'Cherish', '00:03:52'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Dare To Be Truthful'), 'I''ll Be Gone', '00:04:33'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Dare To Be Truthful'), 'Never Love A Stranger', '00:04:56'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Dare To Be Truthful'), 'Frozen', '00:06:18');

INSERT INTO Треки(id_альбома, Название_трека, Длительность_трека) 
VALUES
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Lucky Star'), 'I Know It', '00:04:50');

INSERT INTO Треки(id_альбома, Название_трека, Длительность_трека) 
VALUES
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Confessions on a Dance Floor'), 'Hung Up', '00:05:38'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Confessions on a Dance Floor'), 'Sorry', '00:03:58'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Confessions on a Dance Floor'), 'Forbidden Love', '00:04:07'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Confessions on a Dance Floor'), 'Jump', '00:03:47'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Confessions on a Dance Floor'), 'How High?', '00:04:40');


INSERT INTO Треки(id_альбома, Название_трека, Длительность_трека) 
VALUES
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Речной трамвайчик'), 'Речной трамвайчик', '00:03:18'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Речной трамвайчик'), 'Белый снег', '00:04:02'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Речной трамвайчик'), 'Непогода', '00:04:48'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Речной трамвайчик'), 'Свеча горела на столе…', '00:04:46'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Речной трамвайчик'), 'Будь или не будь ', '00:03:35');

INSERT INTO Треки(id_альбома, Название_трека, Длительность_трека) 
VALUES
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'То ли ещё будет...'), 'Улетай, туча', '00:04:58'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'То ли ещё будет...'), 'Этот мир', '00:02:38'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'То ли ещё будет...'), 'Ты возьми меня с собой', '00:02:49'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'То ли ещё будет...'), 'Песенка первоклассника', '00:02:30');

INSERT INTO Треки(id_альбома, Название_трека, Длительность_трека) 
VALUES
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Зеркало души'), 'Песенка про меня', '00:03:37'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Зеркало души'), 'Женщина, которая поёт', '00:04:16'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Зеркало души'), 'Все могут короли', '00:03:05'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Зеркало души'), 'Куда уходит детство', '00:04:48'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Зеркало души'), 'Волшебник-недоучка', '00:03:19');


INSERT INTO Треки(id_альбома, Название_трека, Длительность_трека) 
VALUES
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Crush'), 'It''s My Life', '00:03:44'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Crush'), 'Thank You For Loving Me', '00:04:06'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Crush'), 'Two Story Town', '00:05:22'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Crush'), 'Mystery Train', '00:05:19'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Crush'), 'I Got The Girl', '00:04:36');

INSERT INTO Треки(id_альбома, Название_трека, Длительность_трека) 
VALUES
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Cross Road'), 'Livin'' on a Prayer', '00:04:11'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Cross Road'), 'Wanted Dead or Alive', '00:08:44'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Cross Road'), 'You Give Love a Bad Name', '00:03:33'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Cross Road'), 'Bed Of Roses', '00:07:55'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Cross Road'), 'I''ll Be There For You', '00:05:46');

INSERT INTO Треки(id_альбома, Название_трека, Длительность_трека) 
VALUES
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Fooking Lancy - Single'), 'Fooking Lancy', '00:03:45');


INSERT INTO Треки(id_альбома, Название_трека, Длительность_трека) 
VALUES
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Sonne'), 'Sonne', '00:04:37');

INSERT INTO Треки(id_альбома, Название_трека, Длительность_трека) 
VALUES
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'RAMMSTEIN'), 'DEUTSCHLAND', '00:12:37'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'RAMMSTEIN'), 'RADIO', '00:05:01'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'RAMMSTEIN'), 'WAS ICH LIEBE', '00:09:22'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'RAMMSTEIN'), 'DIAMANT', '00:03:13'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'RAMMSTEIN'), 'Mein Land', '00:03:52');

INSERT INTO Треки(id_альбома, Название_трека, Длительность_трека) 
VALUES
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Rosenrot'), 'Benzin', '00:03:46'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Rosenrot'), 'Rosenrot', '00:03:54'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Rosenrot'), 'Spring', '00:05:31'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Rosenrot'), 'Wo bist du', '00:04:24'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Rosenrot'), 'Ein Lied', '00:04:23');


INSERT INTO Треки(id_альбома, Название_трека, Длительность_трека) 
VALUES
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Lover'), 'I Forgot That You Existed', '00:02:50'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Lover'), 'Cruel Summer', '00:02:58'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Lover'), 'Lover', '00:03:41'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Lover'), 'The Man', '00:03:10'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Lover'), 'Paper Rings', '00:03:42');

INSERT INTO Треки(id_альбома, Название_трека, Длительность_трека) 
VALUES
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = '1989'), 'Welcome to New York', '00:03:32'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = '1989'), 'Blank Space', '00:03:52'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = '1989'), 'Style', '00:03:47'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = '1989'), 'I Wish You Would', '00:03:27'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = '1989'), 'Bad Blood', '00:03:32');

INSERT INTO Треки(id_альбома, Название_трека, Длительность_трека) 
VALUES
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Midnights (Lavender Edition)'), 'Lavender Haze', '00:03:22'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Midnights (Lavender Edition)'), 'Maroon', '00:03:38'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Midnights (Lavender Edition)'), 'Labyrinth', '00:04:08'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Midnights (Lavender Edition)'), 'Karma', '00:03:22'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Midnights (Lavender Edition)'), 'Sweet Nothing', '00:03:09');


INSERT INTO Треки(id_альбома, Название_трека, Длительность_трека) 
VALUES
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'American IV: The Man Comes Around'), 'The Man Comes Around', '00:04:26'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'American IV: The Man Comes Around'), 'Give My Love to Rose', '00:02:45'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'American IV: The Man Comes Around'), 'I Hung My Head', '00:03:53'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'American IV: The Man Comes Around'), 'Personal Jesus', '00:03:20'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'American IV: The Man Comes Around'), 'Tear Stained Letter', '00:03:41');

INSERT INTO Треки(id_альбома, Название_трека, Длительность_трека) 
VALUES
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'The Legend of Johnny Cash'), 'Cry, Cry, Cry', '00:02:27'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'The Legend of Johnny Cash'), 'Hey Porter', '00:02:12'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'The Legend of Johnny Cash'), 'Big River', '00:02:31'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'The Legend of Johnny Cash'), 'Jackson', '00:02:40'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'The Legend of Johnny Cash'), 'A Boy Named Sue', '00:03:38');

INSERT INTO Треки(id_альбома, Название_трека, Длительность_трека) 
VALUES
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Super Hits'), 'Ring of Fire', '00:02:36'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Super Hits'), 'I Walk the Line', '00:02:46'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Super Hits'), 'Folsom Prison Blues', '00:02:49'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Super Hits'), 'Big River', '00:02:31'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Super Hits'), 'A Boy Named Sue', '00:03:38');


INSERT INTO Треки(id_альбома, Название_трека, Длительность_трека) 
VALUES
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'The Essential Bob Dylan'), 'Blowin'' in the Wind', '00:05:30'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'The Essential Bob Dylan'), 'Just Like a Woman', '00:07:34'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'The Essential Bob Dylan'), 'All Along the Watchtower', '00:05:26'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'The Essential Bob Dylan'), 'Lay Lady Lay', '00:03:20'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'The Essential Bob Dylan'), 'Forever Young - slow version', '00:04:55');

INSERT INTO Треки(id_альбома, Название_трека, Длительность_трека) 
VALUES
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'The Freewheelin'' Bob Dylan'), 'Girl From the North Country', '00:02:34'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'The Freewheelin'' Bob Dylan'), 'Masters of War', '00:05:37'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'The Freewheelin'' Bob Dylan'), 'Down the Highway', '00:03:19'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'The Freewheelin'' Bob Dylan'), 'Oxford Town', '00:01:47'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'The Freewheelin'' Bob Dylan'), 'Corrina, Corrina', '00:02:40');

INSERT INTO Треки(id_альбома, Название_трека, Длительность_трека) 
VALUES
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Oh Mercy'), 'Political World', '00:03:40'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Oh Mercy'), 'Ring Them Bells', '00:03:18'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Oh Mercy'), 'Disease of Conceit', '00:08:08'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Oh Mercy'), 'Shooting Star', '00:03:09'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Oh Mercy'), 'What Was It You Wanted', '00:07:06');


INSERT INTO Треки(id_альбома, Название_трека, Длительность_трека) 
VALUES
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Gossip In The Grain'), 'You Are the Best Thing', '00:03:38'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Gossip In The Grain'), 'Let It Be Me', '00:04:40'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Gossip In The Grain'), 'Sarah', '00:04:31'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Gossip In The Grain'), 'Meg White', '00:04:16'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Gossip In The Grain'), 'A Falling Through', '00:04:28');

INSERT INTO Треки(id_альбома, Название_трека, Длительность_трека) 
VALUES
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Trouble'), 'Trouble', '00:04:01'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Trouble'), 'Shelter', '00:04:36'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Trouble'), 'Hold You in My Arms', '00:05:04'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Trouble'), 'Burn', '00:02:52'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Trouble'), 'Forever My Friend', '00:03:58');

INSERT INTO Треки(id_альбома, Название_трека, Длительность_трека) 
VALUES
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Part of the Light'), 'To the Sea', '00:06:11'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Part of the Light'), 'Paper Man', '00:04:26'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Part of the Light'), 'Part of the Light', '00:04:20'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Part of the Light'), 'As Black As Blood Is Blue', '00:04:45'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Part of the Light'), 'Such A Simple Thing', '00:04:58');


INSERT INTO Треки(id_альбома, Название_трека, Длительность_трека) 
VALUES
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'The Cream of Clapton'), 'Layla', '00:06:57'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'The Cream of Clapton'), 'Wonderful Tonight', '00:03:41'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'The Cream of Clapton'), 'Cocaine', '00:08:52'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'The Cream of Clapton'), 'Crossroads', '00:04:09'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'The Cream of Clapton'), 'White Room', '00:06:37'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'The Cream of Clapton'), 'Sunshine of Your Love', '00:05:21'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'The Cream of Clapton'), 'I Feel Free', '00:02:53');

INSERT INTO Треки(id_альбома, Название_трека, Длительность_трека) 
VALUES
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Eric Clapton''s Rainbow Concert'), 'After Midnight', '00:05:54'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Eric Clapton''s Rainbow Concert'), 'Roll It Over', '00:06:55'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Eric Clapton''s Rainbow Concert'), 'Presence Of The Lord', '00:05:37');

INSERT INTO Треки(id_альбома, Название_трека, Длительность_трека) 
VALUES
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Every Little Thing'), 'Every Little Thing', '00:04:31'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Every Little Thing'), 'No Sympathy', '00:04:07');


INSERT INTO Треки(id_альбома, Название_трека, Длительность_трека) 
VALUES
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'At Last'), 'At Last', '00:03:01'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'At Last'), 'I Just Want to Make Love to You', '00:03:04');

INSERT INTO Треки(id_альбома, Название_трека, Длительность_трека) 
VALUES
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Her Best'), 'My Dearest Darling', '00:06:11'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Her Best'), 'Trust in Me', '00:02:58'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Her Best'), 'Next Door To The Blues', '00:02:46'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Her Best'), 'Fool That I Am', '00:02:58'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Her Best'), 'Pushover', '00:02:54');

INSERT INTO Треки(id_альбома, Название_трека, Длительность_трека) 
VALUES
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'The Chess Box'), 'All I Could Do Was Cry - 1960 Single Version', '00:02:55'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'The Chess Box'), 'In My Diary', '00:02:37'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'The Chess Box'), 'Spoonful - Single Version', '00:02:46'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'The Chess Box'), 'Stormy Weather', '00:03:07'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'The Chess Box'), 'I Don''t Want It', '00:02:18');


INSERT INTO Треки(id_альбома, Название_трека, Длительность_трека) 
VALUES
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Daddy Cool'), 'Daddy Cool', '00:03:29'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Daddy Cool'), 'No Women no cry', '00:05:00');

INSERT INTO Треки(id_альбома, Название_трека, Длительность_трека) 
VALUES
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Take the Heat Off Me'), 'Take the Heat Off Me', '00:04:48'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Take the Heat Off Me'), 'Sunny', '00:04:01'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Take the Heat Off Me'), 'Baby Do You Wanna Bump', '00:04:05'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Take the Heat Off Me'), 'Fever', '00:04:28'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Take the Heat Off Me'), 'Got a Man on My Mind', '00:03:30');

INSERT INTO Треки(id_альбома, Название_трека, Длительность_трека) 
VALUES
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Nightflight to Venus'), 'Nightflight to Venus', '00:07:11'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Nightflight to Venus'), 'Rasputin', '00:04:27'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Nightflight to Venus'), 'Painter Man', '00:03:16'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Nightflight to Venus'), 'King of the Road', '00:02:35'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Nightflight to Venus'), 'Rivers of Babylon', '00:04:18');


INSERT INTO Треки(id_альбома, Название_трека, Длительность_трека) 
VALUES
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Снова вместе'), 'Музыка нас связала', '00:04:08'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Снова вместе'), 'Наступает ночь', '00:03:49'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Снова вместе'), 'Я не шучу', '00:03:11'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Снова вместе'), 'Снова вместе', '00:05:37'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Снова вместе'), 'Я больше не прошу', '00:03:56');

INSERT INTO Треки(id_альбома, Название_трека, Длительность_трека) 
VALUES
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Звёзды Нас Ждут'), 'Звёзды Нас Ждут', '00:05:42'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Звёзды Нас Ждут'), 'Видео', '00:04:05'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Звёзды Нас Ждут'), 'Электричество', '00:04:12'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Звёзды Нас Ждут'), 'Безумный мир', '00:03:49'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Звёзды Нас Ждут'), 'Эта ночь', '00:04:30');

INSERT INTO Треки(id_альбома, Название_трека, Длительность_трека) 
VALUES
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Отпусти меня'), 'Отпусти меня', '00:03:44'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Отпусти меня'), 'Солнечный зайчик', '00:04:09'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Отпусти меня'), 'Дух ночи', '00:04:05'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Отпусти меня'), 'Скорость', '00:03:34'),
((SELECT id_альбома FROM Альбомы WHERE Название_альбома = 'Отпусти меня'), 'Звезда', '00:06:09');


--Сборники
INSERT INTO Сборники(Название_сборника, Год_выпуска_сборника) 
VALUES
('Random Hits', '2023'),
('Pop Hits', '2018'),
('Disco Hits', '2019'),
('Folk Hits', '2001'),
('Blues Hits', '2005');

/*
UPDATE Сборники
SET Год_выпуска_сборника = 2023 WHERE Название_сборника = 'Random Hits';
UPDATE Сборники
SET Год_выпуска_сборника = 2018 WHERE Название_сборника = 'Pop Hits';
UPDATE Сборники
SET Год_выпуска_сборника = 2019 WHERE Название_сборника = 'Rock Hits';
UPDATE Сборники
SET Год_выпуска_сборника = 2001 WHERE Название_сборника = 'Folk Hits';
UPDATE Сборники
SET Год_выпуска_сборника = 2005 WHERE Название_сборника = 'Blues Hits';
*/

--Увязка сборников и Треков
INSERT INTO Сборники_Треки(id_сборника, id_трека)
SELECT u1.id_сборника, u2.id_трека
FROM (SELECT id_сборника FROM Сборники WHERE Название_сборника = 'Random Hits') u1
CROSS JOIN 
(SELECT t.id_трека 
FROM Треки t 
WHERE t.id_трека%7 = 0) u2;

INSERT INTO Сборники_Треки(id_сборника, id_трека)
SELECT u1.id_сборника, u2.id_трека
FROM (SELECT id_сборника FROM Сборники WHERE Название_сборника = 'Pop Hits') u1
CROSS JOIN 
(SELECT t.id_трека 
FROM Треки t 
JOIN Исполнители_Альбомы ia ON t.id_альбома = ia.id_альбома
JOIN Исполнители i ON i.id_исполнителя = ia.id_исполнителя
JOIN Исполнители_Жанры ij ON i.id_исполнителя = ij.id_исполнителя
JOIN Жанры j ON ij.id_жанра = j.id_жанра
WHERE j.Название_жанра = 'Pop') u2;

INSERT INTO Сборники_Треки(id_сборника, id_трека)
SELECT u1.id_сборника, u2.id_трека
FROM (SELECT id_сборника FROM Сборники WHERE Название_сборника = 'Disco Hits') u1
CROSS JOIN 
(SELECT t.id_трека 
FROM Треки t 
JOIN Исполнители_Альбомы ia ON t.id_альбома = ia.id_альбома
JOIN Исполнители i ON i.id_исполнителя = ia.id_исполнителя
JOIN Исполнители_Жанры ij ON i.id_исполнителя = ij.id_исполнителя
JOIN Жанры j ON ij.id_жанра = j.id_жанра
WHERE j.Название_жанра = 'Disco') u2;

INSERT INTO Сборники_Треки(id_сборника, id_трека)
SELECT u1.id_сборника, u2.id_трека
FROM (SELECT id_сборника FROM Сборники WHERE Название_сборника = 'Folk Hits') u1
CROSS JOIN 
(SELECT t.id_трека 
FROM Треки t 
JOIN Исполнители_Альбомы ia ON t.id_альбома = ia.id_альбома
JOIN Исполнители i ON i.id_исполнителя = ia.id_исполнителя
JOIN Исполнители_Жанры ij ON i.id_исполнителя = ij.id_исполнителя
JOIN Жанры j ON ij.id_жанра = j.id_жанра
WHERE j.Название_жанра = 'Folk') u2;

INSERT INTO Сборники_Треки(id_сборника, id_трека)
SELECT u1.id_сборника, u2.id_трека
FROM (SELECT id_сборника FROM Сборники WHERE Название_сборника = 'Country Hits') u1
CROSS JOIN 
(SELECT t.id_трека 
FROM Треки t 
JOIN Исполнители_Альбомы ia ON t.id_альбома = ia.id_альбома
JOIN Исполнители i ON i.id_исполнителя = ia.id_исполнителя
JOIN Исполнители_Жанры ij ON i.id_исполнителя = ij.id_исполнителя
JOIN Жанры j ON ij.id_жанра = j.id_жанра
WHERE j.Название_жанра = 'Country') u2;


COMMIT;






