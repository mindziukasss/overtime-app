## Overtime App

## Key requirement: company needs documentation that salaried employees did or did not get overtimme each week

## Models

- x Post -> data:data rationale:text
- x User -> Devise
- x AdminUser -> STI
- AuditLog

## Features:

- Approval Workflow
- Sms Sending -> link to approval or avertime input
- x Administrate admin dashboard
- x Block non admin and guest users
- Email summary to managers for approval
- Needs to be documented if employee did not long overtime

## UI:

- x Bootstrap -> formatting
- x Icons from glyphicons
- x Update the styles for forms

## Refactor TODOS:
- x Add full_name method for users
- x Refactor user association integration test in post_spec
- x Refactor posts/_form for admin user with status
- x Fix post_spec.rb 85  to user factories
- x Fix post_spec.rb 46  to have coorect user reference and not require update

## TODOS:
- Integrate validation for phone attr in User:
	# No space or dashes
	# exatly 10 characters
	# all characters have to be number