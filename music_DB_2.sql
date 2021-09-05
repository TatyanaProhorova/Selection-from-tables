
CREATE TABLE IF NOT EXISTS artists (
id SERIAL PRIMARY KEY, 
artist_name VARCHAR(70) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS albums (
id SERIAL PRIMARY KEY, 
album_name VARCHAR(40) UNIQUE NOT NULL,
album_year INTEGER CHECK(album_year>=1000 and album_year<=3000) NOT NULL
);

CREATE TABLE IF NOT EXISTS tracks (
id SERIAL PRIMARY KEY,
track_name VARCHAR(90) UNIQUE NOT NULL,
track_duration INTERVAL HOUR TO second (1) NOT NULL,
track_albumname VARCHAR(40) references albums(album_name) NOT NULL
); 

CREATE TABLE IF NOT EXISTS genres (
id SERIAL PRIMARY KEY, 
genre_name VARCHAR(30) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS artist_genre (
artist_id INTEGER references artists(id) NOT NULL,
genre_id INTEGER references genres(id) NOT NULL,
CONSTRAINT pkag PRIMARY KEY(artist_id, genre_id)
);

CREATE TABLE IF NOT EXISTS artist_album (
artist_id INTEGER references artists(id) NOT NULL,
album_id INTEGER references albums(id) NOT NULL,
CONSTRAINT pkaa PRIMARY KEY(artist_id, album_id)
);

CREATE TABLE IF NOT EXISTS mixtapes (
id SERIAL PRIMARY KEY, 
mixtape_name VARCHAR(90) UNIQUE NOT NULL,
mixtape_year NUMERIC(4, 0) CHECK(mixtape_year>=1000 and mixtape_year<=3000) NOT NULL
);

CREATE TABLE IF NOT EXISTS mixtape_track (
mixtape_id INTEGER references mixtapes(id) NOT NULL,
track_id INTEGER references tracks(id) NOT NULL,
CONSTRAINT pkmt PRIMARY KEY(mixtape_id, track_id)
);
