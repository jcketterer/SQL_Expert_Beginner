-- Finding 5 oldest users

# SELECT * 
# FROM users
# ORDER BY created_at LIMIT 5; 

-- Day of the week users register 

# SELECT 
#     DATE_FORMAT(created_at, '%W') AS 'Day Registered',
#     COUNT(*) AS '# of Reg/Day'
# FROM users
# GROUP BY 1
# ORDER BY 2 DESC;

-- User that never posted photo

# SELECT username
# FROM users
# LEFT JOIN photos
#     ON photos.user_id = users.id
# WHERE photos.id IS NULL;

-- most likes on one photo
# SELECT 
#     photos.id,
#     users.username,
#     photos.image_url,
#     COUNT(*) AS total
# FROM photos
# JOIN likes
#     ON likes.photo_id = photos.id
# JOIN users
#     ON users.id = photos.user_id 
# GROUP BY photos.id
# ORDER BY total DESC
# LIMIT 1;

-- AVG # of times a user posts
# SELECT 
#     (SELECT COUNT(*) FROM photos) / (SELECT COUNT(*) FROM users) AS avg;

-- Top 5 Most popular Tags
# SELECT 
#     tags.tag_name,
#     COUNT(*) as total
# FROM photo_tags 
# JOIN tags
#     ON photo_tags.tag_id = tags.id
# GROUP BY tags.id
# ORDER BY total DESC LIMIT 5;

-- Users that have liked every single photo 
# SELECT 
#     username,
#     COUNT(*) AS num_likes
# FROM users
# JOIN likes
#     ON users.id = likes.user_id
# GROUP BY likes.user_id
# HAVING num_likes = (SELECT COUNT(*) FROM photos);















