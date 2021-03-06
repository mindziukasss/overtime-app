FactoryGirl.define do
	sequence :email do |n|
		"test#{n}@example.com"

	end
	
	factory :user do
		first_name 'Jon'	
		last_name 'Snow'
		email { generate :email }
		password "asdasd"
		password_confirmation "asdasd"
		phone "555555555"
		ssn 1234
		company "ABC company"
	end

	factory :admin_user, class: "AdminUser" do
		first_name 'Admin'	
		last_name 'User'
		email { generate :email }
		password "asdasd"
		password_confirmation "asdasd"
		phone "555555555"
		ssn 1234
		company "ABC company"
	end

	factory :non_authorized_user, class: "User" do
		first_name 'Non'	
		last_name 'Authorized'
		email { generate :email }
		password "asdfasd"
		password_confirmation "asdfasd"
		phone "555555555"
		ssn 1234
		company "ABC company"
	end
end