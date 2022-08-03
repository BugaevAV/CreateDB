CREATE TABLE IF NOT EXISTS musical_genres (
	id SERIAL primary key,
	name VARCHAR(60) not null
);

CREATE TABLE IF NOT EXISTS music_artists (
	id SERIAL primary key,
	name VARCHAR(80) not null
);

CREATE TABLE IF NOT EXISTS albums (
	id SERIAL primary key,
	name VARCHAR(80) not null,
	release_year CHAR(4)
);

CREATE TABLE IF NOT EXISTS genres_artists_albums (
	genre_id INTEGER not null references musical_genres (id),
	artist_id INTEGER not null references music_artists (id),
	album_id INTEGER not null references albums (id),
	constraint pk primary key (genre_id, artist_id, album_id)
);

CREATE TABLE IF NOT EXISTS music_tracks (
	id SERIAL primary key,
	name VARCHAR(80) not null,
	length TIME not null,
	album_id INTEGER not null references albums (id)
);

CREATE TABLE IF NOT EXISTS music_collections (
	id SERIAL primary key,
	name VARCHAR(80) not null,
	release_year CHAR(4)
);

CREATE TABLE IF NOT EXISTS tracks_collections (
	track_id INTEGER not null references music_tracks(id),
	collection_id INTEGER not null references music_collections(id),
	constraint pk primary key (track_id, collection_id)
);

