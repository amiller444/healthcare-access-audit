-- Healthcare Access Audit: JOIN queries (fake data)

-- 1. Terminated employees who still have system access
SELECT u.full_name, u.access_level, e.employment_status, e.termination_date
FROM user_access u
JOIN employees e ON u.user_id = e.user_id
WHERE e.employment_status = 'Terminated';

-- 2. Anyone who logged in AFTER their termination date
SELECT u.full_name, e.termination_date, u.last_login
FROM user_access u
JOIN employees e ON u.user_id = e.user_id
WHERE e.termination_date IS NOT NULL
  AND u.last_login > e.termination_date;

-- 3. Accounts with no matching HR record
SELECT u.full_name, u.job_role, u.access_level
FROM user_access u
LEFT JOIN employees e ON u.user_id = e.user_id
WHERE e.user_id IS NULL;
