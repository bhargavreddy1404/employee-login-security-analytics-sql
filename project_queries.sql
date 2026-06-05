-- Query 1
SELECT u.username,l.login_status
FROM users u
JOIN login_logs l
ON u.user_id=l.user_id;

-- Query 2
SELECT d.department_name,
COUNT(u.user_id)
FROM departments d
JOIN users u
ON d.department_id=u.department_id
GROUP BY d.department_name;
