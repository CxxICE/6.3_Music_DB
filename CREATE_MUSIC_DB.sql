--удаление всех отношений в обратном порядке

DROP TABLE IF EXISTS Сборники_Треки;
DROP TABLE IF EXISTS Сборники;
DROP TABLE IF EXISTS Треки;
DROP TABLE IF EXISTS Исполнители_Альбомы;
DROP TABLE IF EXISTS Альбомы;
DROP TABLE IF EXISTS Исполнители_Жанры;
DROP TABLE IF EXISTS Исполнители;
DROP TABLE IF EXISTS Жанры;


--создание отношений для БД

CREATE TABLE IF NOT EXISTS Жанры (
id_жанра SERIAL PRIMARY KEY,
Название_жанра VARCHAR UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS Исполнители (
id_исполнителя SERIAL PRIMARY KEY,
Имя_исполнителя VARCHAR NOT NULL
);

CREATE TABLE IF NOT EXISTS Исполнители_Жанры (
id_исполнителя INTEGER REFERENCES Исполнители(id_исполнителя) ON DELETE RESTRICT ON UPDATE CASCADE,
id_жанра INTEGER REFERENCES Жанры(id_жанра) ON DELETE RESTRICT ON UPDATE CASCADE,
PRIMARY KEY(id_исполнителя, id_жанра)
);

CREATE TABLE IF NOT EXISTS Альбомы (
id_альбома SERIAL PRIMARY KEY,
Название_альбома VARCHAR NOT NULL,
Год_выпуска_альбома INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS Исполнители_Альбомы (
id_исполнителя INTEGER REFERENCES Исполнители(id_исполнителя) ON DELETE RESTRICT ON UPDATE CASCADE,
id_альбома INTEGER REFERENCES Альбомы(id_альбома) ON DELETE RESTRICT ON UPDATE CASCADE,
PRIMARY KEY(id_исполнителя, id_альбома)
);

CREATE TABLE IF NOT EXISTS Треки (
id_трека SERIAL PRIMARY KEY,
id_альбома INTEGER REFERENCES Альбомы(id_альбома) ON DELETE RESTRICT ON UPDATE CASCADE,
Название_трека VARCHAR NOT NULL,
Длительность_трека INTERVAL NOT NULL
);

CREATE TABLE IF NOT EXISTS Сборники (
id_сборника SERIAL PRIMARY KEY,
Название_сборника VARCHAR NOT NULL,
Год_выпуска_сборника INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS Сборники_Треки (
id_сборника INTEGER REFERENCES Сборники(id_сборника) ON DELETE RESTRICT ON UPDATE CASCADE,
id_трека INTEGER REFERENCES Треки(id_трека) ON DELETE RESTRICT ON UPDATE CASCADE,
PRIMARY KEY(id_сборника, id_трека)
);
