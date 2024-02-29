insert into genre(name, id_music_genre)
values ('Rap', 1);

insert into genre(name, id_music_genre)
values ('Hip-Hop', 2);

insert into genre(name, id_music_genre)
values ('Pop', 3);

insert into genre(name, id_music_genre)
values ('R&B', 4);

insert into artist(name, artist_id)
values ('Kizaru',11);

insert into performs_genre(artist_id, id_music_genre)
values (11, 1);

insert into artist(name, artist_id)
values ('Big Baby Tape', 22);

insert into performs_genre(artist_id, id_music_genre)
values (22, 1);

insert into performs_genre(artist_id, id_music_genre)
values (22, 2);

insert into artist(name, artist_id)
values ('ЛСП', 33);

insert into performs_genre(artist_id, id_music_genre)
values (33, 2);

insert into performs_genre(artist_id, id_music_genre)
values (33, 4);

insert into artist(name, artist_id)
values ('Егор Крид', 44);

insert into performs_genre(artist_id, id_music_genre)
values (44, 3);

insert into performs_genre(artist_id, id_music_genre)
values (44, 4);

insert into performs_genre(artist_id, id_music_genre)
values (44, 2);

insert into artist(name, artist_id)
values ('The Limba', 55);

insert into performs_genre(artist_id, id_music_genre)
values (55, 3);

insert into performs_genre(artist_id, id_music_genre)
values (55, 4);

insert into artist(name, artist_id)
values ('Feduk', 66);

insert into performs_genre(artist_id, id_music_genre)
values (66, 2);

insert into album(name, year_release, album_id)
values ('Bandana1', '2021-10-22',12);

insert into album_artist(artist_id, album_id)
values (11, 12);

insert into album_artist(artist_id, album_id)
values (22, 12);

insert into album(name, year_release, album_id)
values ('VARSKVA', '2023-11-24', 13);

insert into album_artist(artist_id, album_id)
values (22, 13);

insert into album(name, year_release, album_id)
values ('One More City', '2020-09-18', 14);

insert into album_artist(artist_id, album_id)
values (33, 14);

insert into album(name, year_release, album_id)
values ('Холостяк', '2018-04-2', 15);

insert into album_artist(artist_id, album_id)
values (44, 15);

insert into album_artist(artist_id, album_id)
values (33, 15);

insert into album_artist(artist_id, album_id)
values (66, 15);

insert into album(name, year_release, album_id)
values ('Anima', '2021-07-23', 16);

insert into album_artist(artist_id, album_id)
values (55, 16);

insert into album(name, year_release, album_id)
values ('Моряк', '2017-07-25',17);

insert into album_artist(artist_id, album_id)
values (66, 17);

insert into track(name, duration, album_id, id_track)
values ('99 Problem', '0:2:39', 12, 111);

insert into track(name, duration, album_id, id_track)
values ('Million', '0:2:15', 12, 112);

insert into track(name, duration, album_id, id_track)
values ('4x4', '0:3:14', 13, 222);

insert into track(name, duration, album_id, id_track)
values ('Bentayga', '0:2:16', 13, 221);

insert into track(name, duration, album_id, id_track)
values ('Мой Белый', '0:2:33', 13, 223);

insert into track(name, duration, album_id, id_track)
values ('Бинокль', '0:3:55', 14, 333);

insert into track(name, duration, album_id, id_track)
values ('Холостяк', '0:3:01', 15, 444);

insert into track(name, duration, album_id, id_track)
values ('Анима', '0:2:55', 16, 555);

insert into track(name, duration, album_id, id_track)
values ('Моряк', '0:2:49', 17, 666);

insert into collection(name, year_release, collection_id)
values ('Сборник поп-музыки', '2023-01-01', 101);

insert into collection_track(collection_id, track_id)
values (101, 666);

insert into collection_track(collection_id, track_id)
values (101, 555);

insert into collection_track(collection_id, track_id)
values (101, 444);

insert into collection(name, year_release, collection_id)
values ('Сборник реп-музыки', '2018-01-01', 202);

insert into collection_track(collection_id, track_id)
values (202, 111);

insert into collection_track(collection_id, track_id)
values (202, 222);

insert into collection_track(collection_id, track_id)
values (202, 112);

insert into collection(name, year_release, collection_id)
values ('Сборник для поездки', '2019-10-01', 303);

insert into collection_track(collection_id, track_id)
values (303, 666);
insert into collection_track(collection_id, track_id)
values (303, 666);
insert into collection_track(collection_id, track_id)
values (303, 555);

insert into collection(name, year_release, collection_id)
values ('Сборник для души', '2020-01-01', 404);

insert into collection_track(collection_id, track_id)
values (404, 111);

insert into collection_track(collection_id, track_id)
values (404, 666);

insert into collection_track(collection_id, track_id)
values (404, 555);