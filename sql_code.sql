
CREATE STREAM youtube_videos (
  video_id VARCHAR KEY,
  title VARCHAR,
  views INTEGER,
  comments INTEGER,
  likes INTEGER
) WITH (
  KAFKA_TOPIC = 'youtube_videos',
  PARTITIONS = 1,
  VALUE_FORMAT = 'avro'
);


SELECT *
FROM youtube_videos
EMIT CHANGES;


CREATE TABLE youtube_changes WITH (KAFKA_TOPIC = 'youtube_changes') AS
SELECT
  video_id,
  LATEST_BY_OFFSET(title) AS title,
  LATEST_BY_OFFSET(comments, 2) AS comments_previous,
  LATEST_BY_OFFSET(comments, 1) AS comments_current,
  LATEST_BY_OFFSET(views, 2) AS views_previous,
  LATEST_BY_OFFSET(views, 1) AS views_current,
  LATEST_BY_OFFSET(likes, 2) AS likes_previous,
  LATEST_BY_OFFSET(likes, 1) AS likes_current
FROM youtube_videos
GROUP BY video_id;


SELECT *
FROM youtube_changes
WHERE likes_previous = likes_current
EMIT CHANGES;


