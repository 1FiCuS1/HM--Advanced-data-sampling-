

--ЗАДАНИЕ 2
--Название и продолжительность самого длительного трека.
select 	name, duration from track 
where duration >= (select max(duration) from track )
order by duration  desc ;

--Название треков, продолжительность которых не менее 3,5 минут.

select 	name, duration from track
group by name, duration 
having  duration >= '0:3:50' ;

--Названия сборников, вышедших в период с 2018 по 2020 год включительно
select name, year_release from collection 
group by name, year_release 
having year_release >= '2018-01-01' and year_release <= '2020-01-01' ;

--Исполнители, чьё имя состоит из одного слова.
select name  FROM artist 
where name not like '% %';

--Название треков, которые содержат слово «мой» или «my».
select name from track 
where name like '%My%' or name like '%Мой%'
order by name ;


--ЗАДАНИЕ 3
--Количество исполнителей в каждом жанре.
SELECT g.name AS genre_name, COUNT(pg.artist_id) AS artist_count
FROM Genre g
LEFT JOIN Performs_Genre pg ON g.id_music_genre = pg.id_music_genre
GROUP BY g.name
ORDER BY artist_count DESC;


--Количество треков, вошедших в альбомы 2019–2020 годов.
SELECT a.name AS album_name, COUNT(t.id_track) AS track_count
FROM Album a
LEFT JOIN Track t ON a.album_id = t.album_id
WHERE a.year_release BETWEEN '2019-01-01' AND '2020-12-31'
GROUP BY a.name
ORDER BY track_count DESC;

--Средняя продолжительность треков по каждому альбому.

select a.name, avg(t.duration) from track t
left join album a ON  t.album_id  = a.album_id 
group by a.name 

--Все исполнители, которые не выпустили альбомы в 2020 году.
SELECT ar.name 
FROM album a 
LEFT JOIN album_artist aa ON a.album_id = aa.album_id 
LEFT JOIN artist ar ON ar.artist_id = aa.artist_id 
WHERE a.year_release NOT BETWEEN '2020-01-01' AND '2022-01-01'
GROUP BY ar.name;

--Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
select c.name collection_name from collection c 
left join collection_track ct on c.collection_id = ct.collection_id 
left join track t on ct.track_id = t.id_track 
left join album a on t.album_id = a.album_id 
left join album_artist aa on a.album_id = aa.album_id 
left join artist a1 on aa.artist_id = a1.artist_id 
where a1."name" like 'Big Baby Tape';

--Задание 4(необязательное)
--Названия альбомов, в которых присутствуют исполнители более чем одного жанра.
select a.name  from album a
join album_artist aa on a.album_id = aa.album_id 
join artist a1 on aa.artist_id = a1.artist_id 
join performs_genre pg on a1.artist_id = pg.artist_id 
group by a.name 
having  count(pg.id_music_genre) > 1;

--Наименования треков, которые не входят в сборники.
select t.name, ct.collection_id from track t
left join collection_track ct on t.id_track = ct.track_id 
where ct.collection_id is null;

--Исполнитель или исполнители, написавшие самый короткий по продолжительности трек, — теоретически таких треков может быть несколько.
select a1.name from track t
left join album a on t.album_id  = a.album_id 
left join album_artist aa on a.album_id = aa.album_id 
left join artist a1 on aa.artist_id = a1.artist_id 
where t.duration = (select MIN(duration) from track)

--Названия альбомов, содержащих наименьшее количество треков.
select a.name, count(*) from album a
left join track t on a.album_id = t.album_id 
group by a.name
having count(*)= (select count(*) from album a
				  left join track t on a.album_id = t.album_id 
				  group by a.name
				  order by count(*)
				  limit 1);