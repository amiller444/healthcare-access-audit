# Healthcare Access Audit

A beginner SQL project that shows how to audit user access in a healthcare office system.

## Why I'm building this
In my healthcare operations work, I set up user permissions, ran access reports, and audited who could see what. This project recreates that kind of audit using SQL.

## Important
All data in this project is **fake**. No real patient, employee, or company information is used.

## Files
- `user_access.sql`: creates the sample table and fills it with 10 fake users
- `audit_queries.sql`: SQL queries that answer audit questions

## Audit findings
| Finding | Risk | Recommended action |
|---|---|---|
| A former employee (Drew) still has an active account | Unauthorized access to PHI | Disable the account immediately |
| A front desk employee (Morgan) has Admin access, while other front desk staff have Standard | Excess privilege | Review and reduce access to match the role |
| A billing specialist (Sam) has Admin access, while another billing specialist has Billing | Excess privilege | Review and reduce access to match the role |
| One user (Quinn) has not logged in for 90+ days | Stale account | Confirm the user still needs access, or disable |
| A dental assistant (Casey) has Standard access, which may be too limited for the role | Access may not match job duties | Review against the office's access policy |

## What I practiced
- Writing SQL with `SELECT`, `WHERE`, `GROUP BY`, and `COUNT`
- Reviewing access against job roles (role-based access control)
- Documenting audit findings and recommended actions

## Tools
- SQL
- GitHub
