@user = User.create(email: "test@test.com", password: "asdasd", password_confirmation: "asdasd",
                         first_name: "Jon", last_name: "Snow")
puts "1 User created"


AdminUser.create(email: "admin@admin.com", password: "asdasd", password_confirmation: "asdasd",
                         first_name: "Admin", last_name: "Admin")
puts "1 Admin User created"

20.times do |post|
	Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id, overtime_request: 3.5)
end

puts "100 Posts have been created"