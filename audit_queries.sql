-- Healthcare Access Audit: audit queries (fake data)

-- 1. Who has Admin access?
SELECT full_name, job_role, access_level
FROM user_access
WHERE access_level = 'Admin';

-- 2. Who has not logged in for 90+ days? (as of 2026-10-29)
SELECT full_name, job_role, last_login
FROM user_access
WHERE last_login < '2026-07-31';

-- 3. Do former employees still have access?
SELECT full_name, job_role, access_level
FROM user_access
WHERE job_role = 'Former Employee';

-- 4. Do people in the same role have different access levels?
SELECT job_role, access_level, COUNT(*) AS people
FROM user_access
GROUP BY job_role, access_level
ORDER BY job_role;
