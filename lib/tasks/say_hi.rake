namespace :say_hi do
  desc "test cron jobs by saying hi every minute"
  task hi: :environment do
    puts "hi"
  end

end
