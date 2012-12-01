USE S12-CPSC348_dluce;

DROP TABLE IF EXISTS users_330;
DROP TABLE IF EXISTS posts_330;
DROP TABLE IF EXISTS subs;
DROP TABLE IF EXISTS topics;
DROP TABLE IF EXISTS profile;

-- table of users
CREATE TABLE users_330 (
	id INTEGER NOT NULL,
	username VARCHAR(50),
	password VARCHAR(40),
	PRIMARY KEY (id)
);

-- table of all posts made by users
CREATE TABLE posts_330 (
	
	-- the actual post
	content VARCHAR(140),
	
	-- user who wrote the post
	user_id INTEGER NOT NULL,
	
	-- Whether or not a post is public; default is public
	public_post BIT(1) DEFAULT 1,
	
	-- When the post was first submitted to the website
	time TIMESTAMP NOT NULL,
	
	-- defines what topic the post is made for, if any.
	-- This is determined by server-side Java code.
	topic_id INTEGER DEFAULT NULL,
	
	FOREIGN KEY (user_id) REFERENCES users_330(id)
);

CREATE TABLE profile (
	id INTEGER NOT NULL,
	gender CHAR(1),
	rltnship ENUM('Single', 'Married', 'In a Relationship', 'Not Available'),
	
	-- Public profile by default, otherwise only viewable 
	-- by subscribers
	public_profile BIT(1) DEFAULT 1,
	
	FOREIGN KEY (id) REFERENCES users_330(id)
);

-- table that represents users subscribed to other users
-- through association of users_330(id)'s.
CREATE TABLE subs (
	-- original user
	o_user INTEGER NOT NULL,
	
	-- subscribed user
	s_user INTEGER NOT NULL,
	
	FOREIGN KEY (o_user) REFERENCES user_330(id),
	FOREIGN KEY (s_user) REFERENCES user_330(id)
);

CREATE TABLE topics (
	id INTEGER NOT NULL,
	title VARCHAR(100)
);

