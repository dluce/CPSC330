USE S12-CPSC348_dluce;

DROP TABLE IF EXISTS users_330;
DROP TABLE IF EXISTS posts_330;

--table of users
CREATE TABLE users_330 (
	id INTEGER NOT NULL,
	username VARCHAR(50),
	password VARCHAR(40),
	PRIMARY KEY (id)
);

--table of all posts made by users
CREATE TABLE posts_330 (
	
	--the actual post
	content VARCHAR(140),
	
	--user who wrote the post
	user_id INTEGER NOT NULL,
	
	--Whether or not a post is public; default is always public
	public_post BIT(1) DEFAULT 1,
	
	--When the post was first submitted to the website
	time DATETIME NOT NULL,
	
	--defines what topic the post is made for
	topic_id INTEGER DEFAULT NULL,
	
	FOREIGN KEY (user_id) REFERENCES users_330(id)
);

--table that represents users subscribed to other users
--through use of user.id's.
CREATE TABLE subs (
	--original user
	user_o INTEGER NOT NULL,
	
	--user to which original user is subscribed
	user_s INTEGER NOT NULL,
	
	FOREIGN KEY (user_o) REFERENCES user_330(id),
	FOREIGN KEY (user_s) REFERENCES user_330(id)
);

CREATE TABLE topics (
	id INTEGER NOT NULL,
	name VARCHAR(100),
);

