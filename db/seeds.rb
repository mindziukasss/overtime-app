@user = User.create(email: "test@test.com",
    password: "asdasd",
    password_confirmation: "asdasd",
    first_name: "Jon",
    last_name: "Snow",
    phone: "4322386131")
puts "1 User created"


AdminUser.create(email: "admin@admin.com",
       password: "asdasd",
       password_confirmation: "asdasd",
       first_name: "Admin",
       last_name: "Admin",
       phone: "4322386131")
puts "1 Admin User created"

20.times do |post|
	Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id, overtime_request: 3.5)
end
puts "20 Posts have been created"

20.times do |audit_log|
        AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 6.days))
end

puts "20 Audit_logs have been created"

