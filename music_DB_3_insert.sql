INSERT INTO public.albums (album_name,album_year) VALUES
	 ('white',1966),
	 ('green',2004),
	 ('red',1994),
	 ('blue',2000),
	 ('gray',2006),
	 ('gold',1991),
	 ('black',2020),
	 ('yellow',2019);

INSERT INTO public.artists (artist_name) VALUES
	 ('The Beatles'),
	 ('Green Day'),
	 ('Franz Ferdinand'),
	 ('Bob Dilan   '),
	 ('The Notorious  '),
	 ('Daft Punk'),
	 ('Led Zeppelin'),
	 ('Eminem'),
	 ('MGMT'),
	 ('Gnarls Barkley');
INSERT INTO public.artists (artist_name) VALUES
	 ('Metallica'),
	 ('Nirvana');

INSERT INTO public.mixtapes (mixtape_name,mixtape_year) VALUES
	 ('My Life',1966),
	 ('Crazy  crazy',2006),
	 ('One',2000),
	 ('Bloom',1991),
	 ('Juicy',1994),
	 (' Idiot',2020),
	 ('Outside',2021),
	 ('Time',2018);

INSERT INTO public.genres (genre_name) VALUES
	 ('Electronic'),
	 ('Rock'),
	 ('Disco'),
	 ('Fusion'),
	 ('Pop Music');

INSERT INTO public.artist_genre (artist_id,genre_id) VALUES
	 (1,1),
	 (2,2),
	 (3,3),
	 (4,4),
	 (5,5),
	 (6,1),
	 (7,2),
	 (8,3),
	 (9,4),
	 (10,5);
INSERT INTO public.artist_genre (artist_id,genre_id) VALUES
	 (11,1),
	 (12,2);

INSERT INTO public.artist_album (artist_id,album_id) VALUES
	 (1,1),
	 (2,2),
	 (3,3),
	 (4,4),
	 (5,4),
	 (6,5),
	 (7,6),
	 (8,6),
	 (9,6),
	 (10,7);
INSERT INTO public.artist_album (artist_id,album_id) VALUES
	 (11,8),
	 (12,3);

INSERT INTO public.tracks (track_name,track_duration,track_albumname) VALUES
	 ('Rain','00:03:50'::interval,'white'),
	 ('In My Life','00:02:14'::interval,'white'),
	 ('American Idiot','00:05:10'::interval,'black'),
	 ('Take Me Out','00:05:02'::interval,'green'),
	 ('Crazy','01:23:05'::interval,'gray'),
	 ('Mr. Tambourine Man','00:02:45'::interval,'red'),
	 ('One More Time','00:06:08'::interval,'blue'),
	 ('Heartbreaker','00:03:56'::interval,'yellow'),
	 ('Lose Yourself','30:03:16'::interval,'yellow'),
	 ('Time to Pretend','00:06:33'::interval,'yellow');
INSERT INTO public.tracks (track_name,track_duration,track_albumname) VALUES
	 ('In Bloom','00:12:55'::interval,'gold'),
	 ('Juicy','00:04:45'::interval,'red'),
	 ('Enter Sandman','00:03:43'::interval,'green'),
	 ('Come as You Are','00:05:12'::interval,'green'),
	 ('Norwegian Wood','00:08:10'::interval,'black');

INSERT INTO public.mixtape_track (mixtape_id,track_id) VALUES
	 (2,2),
	 (3,3),
	 (4,4),
	 (5,5),
	 (6,6),
	 (7,7),
	 (8,8),
	 (1,9),
	 (2,10),
	 (3,11);
INSERT INTO public.mixtape_track (mixtape_id,track_id) VALUES
	 (4,12),
	 (5,13),
	 (6,14);




