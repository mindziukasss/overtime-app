namespace :notification do
  desc "Send SMS notification to employees asking them to log if they had overtime or not"
  task sms: :environment do
  	#1.Schedule to run Sunday at 5pm
  	#2.Iterate over all employees
  	#3.Skip AdminUser
  	#4.Send a message that has instrucyions and a like to log time
  	# User.all.each do |user|
  	# 	SmsTool.send_sms()
  	# 	end



  end

end
