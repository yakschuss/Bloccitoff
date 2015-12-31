require 'faker'




users = User.all

(users.count+1).upto(5) do
    # (users.count..5).each do
    u =  User.create!(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        email: Faker::Internet.email,
        password: "password",
        password_confirmation: 'password',
        confirmed_at: Time.now,
    )
    u.skip_confirmation!

end



items = Item.all


(items.count+1).upto(25) do
    item = Item.create!(
        user: users.sample,
        name: Faker::Lorem.sentence
    )
    item.update_attribute(:created_at, rand(10.minutes .. 1.year).ago)
end



puts "Seed Done."
puts "#{User.count} users exist"
puts "#{Item.count} items exist"
