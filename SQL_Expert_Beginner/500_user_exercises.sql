-- Challenge One

# SELECT 
#     DATE_FORMAT(MIN(created_at), '%M %D %Y') AS earliest_date
# FROM users;

-- Challenge Two

# SELECT *
# FROM users
# WHERE created_at = (SELECT MIN(created_at) FROM users);

-- Challenge Three

# SELECT 
#     DATE_FORMAT(created_at, '%M') as month,
#     COUNT(*) AS count
# FROM users
# GROUP BY month
# ORDER BY count DESC;

-- Challenge Four

# SELECT 
#     COUNT(*) AS yahoo_users
# FROM users
# WHERE email LIKE '%@yahoo.com%';

-- Challenge Five

# SELECT
#     CASE
#         WHEN email LIKE '%yahoo.com' THEN 'yahoo'
#         WHEN email LIKE '%gmail.com' THEN 'gmail'
#         WHEN email LIKE '%hotmail.com' THEN 'hotmail'
#         ELSE 'other'
#     END AS provider,
#     COUNT(*) as total_user
# FROM users
# GROUP BY provider
# ORDER BY total_user DESC;
