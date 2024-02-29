 CREATE TABLE IF NOT EXISTS Artist (
 artist_id SERIAL PRIMARY KEY,
 name VARCHAR(40) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS Genre (
 id_music_genre SERIAL PRIMARY KEY,
 name VARCHAR(40) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS Performs_Genre (
 artist_id INTEGER REFERENCES Artist(artist_id),
 id_music_genre INTEGER REFERENCES Genre(id_music_genre),
 CONSTRAINT cpk_PG PRIMARY KEY (artist_id, id_music_genre)
);

CREATE TABLE IF NOT EXISTS Album (
 album_id SERIAL PRIMARY KEY,
 name VARCHAR(40) NOT NULL,
 year_release DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS Album_Artist (
 artist_id INTEGER REFERENCES Artist(artist_id),
 album_id INTEGER REFERENCES Album(album_id),
 CONSTRAINT cpk_AA PRIMARY KEY (artist_id, album_id)
);

CREATE TABLE IF NOT EXISTS Track (
 id_track SERIAL PRIMARY KEY,
 name VARCHAR(40) NOT NULL,
 duration INTERVAL NOT NULL CHECK (duration > '00:00:00'),
 album_id INTEGER REFERENCES Album(album_id)
);

CREATE TABLE IF NOT EXISTS Collection (
 collection_id SERIAL PRIMARY KEY,
 name VARCHAR(40) NOT NULL,
 year_release DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS Collection_Track (
 collection_id INTEGER REFERENCES Collection(collection_id),
 track_id INTEGER REFERENCES Track(id_track),
 CONSTRAINT cpk_CT PRIMARY KEY (collection_id, track_id)
);