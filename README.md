# Healthcare Access Audit

A beginner SQL project that shows how to audit user access in a healthcare office system.

## Why I'm building this
In my healthcare operations work, I set up user permissions, ran access reports, and audited who could see what. This project recreates that kind of audit using SQL.

## Important
All data in this project is **fake**. No real patient, employee, or company information is used.

## Files
- `user_access.sql`: creates the sample table and fills it with 10 fake users
- `employees.sql`: creates a fake HR table with employment status and termination dates
- `audit_queries.sql`: queries that audit access within one table
- `join_queries.sql`: queries that cross-check system access against HR records

## Audit findings
| Finding | Risk | Recommended action |
|---|---|---|
| A terminated employee (Drew) still has an active account, and it was used 15 days after termination | Unauthorized access to PHI | Disable the account immediately and start a security review |
| A front desk employee (Morgan) has Admin access, while other front desk staff have Standard | Excess privilege | Review and reduce access to match the role |
| A billing specialist (Sam) has Admin access, while another billing specialist has Billing | Excess privilege | Review and reduce access to match the role |
| One user (Quinn) has not logged in for 90+ days | Stale account | Confirm the user still needs access, or disable |
| A dental assistant (Casey) has Standard access, which may be too limited for the role | Access may not match job duties | Review against the office's access policy |
| An active account (Taylor) has no matching HR record | Unverified account | Confirm employment with HR, or disable |

## What I practiced
- Writing SQL with `SELECT`, `WHERE`, `GROUP BY`, and `COUNT`
- Combining tables with `JOIN` and `LEFT JOIN`
- Reviewing access against job roles (role-based access control)
- Cross-checking system accounts against HR records
- Documenting audit findings and recommended actions

## Tools
- SQL
- GitHub
