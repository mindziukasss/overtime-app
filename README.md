## Overtime App

## Key requirement: company needs documentation that salaried employees did or did not get overtimme each week

## Models

- x Post -> data:data rationale:text
- x User -> Devise
- x AdminUser -> STI
- x AuditLog

## Features:

- x Approval Workflow
- x Sms Sending -> link to approval or avertime input -> integrate with Heroku schelduler
- x Administrate admin dashboard
- x Block non admin and guest users
-  Email summary to managers for approval
- x Needs to be documented if employee did not long overtime
- Create audit log for each text message

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
- x Integrate validation for phone attr in User:
	# x No space or dashes
	# x exatly 10 characters
	# x all characters have to be number