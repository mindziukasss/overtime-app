## Overtime App

## Key requirement: company needs documentation that salaried employees did or did not get overtimme each week

## Models

- x Post -> data:data rationale:text
- x User -> Devise
- x AdminUser -> STI

## Features:

- Approval Workflow
- Sms Sending -> link to approval or avertime input
- Administrate admin dashboard
- Email summary to managers for approval
- Needs to be documented if employee did not long overtime

## UI:

- x Bootstrap -> formatting

## Refactor TODOS:
- x Add full_name method for users
-Refactor user association integration test in post_spec