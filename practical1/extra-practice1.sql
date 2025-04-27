CREATE TABLE users (
	user_id SERIAL PRIMARY KEY,
	username VARCHAR(255) NOT NULL UNIQUE,
	email VARCHAR(255) NOT NULL UNIQUE,
	date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE video (
	video_id SERIAL PRIMARY KEY,
	title VARCHAR(255) NOT NULL,
	upload_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	user_id INT,
   	CONSTRAINT fk_user
      FOREIGN KEY(user_id)
      REFERENCES users(user_id)
);

CREATE TABLE hashtag (
	hashtag_id SERIAL PRIMARY KEY,
	tag_name VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE "comment" (
	comment_id SERIAL PRIMARY KEY,
	comment_text VARCHAR(255) NOT NULL,
	comment_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	user_id INT,
	video_id INT,
	CONSTRAINT fk_user
      FOREIGN KEY(user_id)
      REFERENCES users(user_id),
	CONSTRAINT fk_video
      FOREIGN KEY(video_id)
      REFERENCES video(video_id)
);

CREATE TABLE vidhash (
	video_id INT,
	hashtag_id INT,
	CONSTRAINT fk_video
	 	FOREIGN KEY(video_id)
		REFERENCES video(video_id),
	CONSTRAINT fk_hashtag
	 	FOREIGN KEY(hashtag_id)
		REFERENCES hashtag(hashtag_id)
);