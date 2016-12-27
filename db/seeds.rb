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
	Post.create!(date: Date.today, rationale: "#{post} rationale content Mustache vinyl raw denim pork belly synth normcore ramps ennui offal, post-ironic dreamcatcher woke tbh enamel pin. Chartreuse 90's iPhone roof party, succulents hexagon vegan drinking vinegar iceland lo-fi man braid. Woke schlitz listicle microdosing. Authentic intelligentsia actually, disrupt cold-pressed vaporware cornhole four loko hella umami skateboard vape.", user_id: @user.id, overtime_request: 3.5)
end
puts "20 Posts have been created"

20.times do |audit_log|
        AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 6.days))
end

puts "20 Audit_logs have been created"

