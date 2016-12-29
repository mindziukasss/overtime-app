@employee = Employee.create(email: "test@test.com",
    password: "asdasd",
    password_confirmation: "asdasd",
    first_name: "Jon",
    last_name: "Snow",
    phone: "850935010",
    ssn: 1234,
    company: "ABC company")

puts "1 employee created"


AdminUser.create(email: "admin@admin.com",
       password: "asdasd",
       password_confirmation: "asdasd",
       first_name: "Admin",
       last_name: "Admin",
       phone: "850935010",
       ssn: 1234,
       company: "ABC company")

puts "1 Admin User created"


AuditLog.create!(user_id: @employee.id, status: 0, start_date: (Date.today - 6.days))
AuditLog.create!(user_id: @employee.id, status: 0, start_date: (Date.today - 13.days))
AuditLog.create!(user_id: @employee.id, status: 0, start_date: (Date.today - 20.days))

puts "3 Audit_logs have been created"

20.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content Mustache vinyl raw denim pork belly synth normcore ramps
   ennui offal, post-ironic dreamcatcher woke tbh enamel pin. Chartreuse 90's iPhone roof party, succulents hexagon vegan drinking
    vinegar iceland lo-fi man braid. Woke schlitz listicle microdosing. Authentic intelligentsia actually, disrupt cold-pressed
     vaporware cornhole four loko hella umami skateboard vape.", user_id: @employee.id, overtime_request: 3.5)
end
puts "20 Posts have been created"



