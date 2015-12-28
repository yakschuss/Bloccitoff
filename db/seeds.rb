require 'faker'

5.times do
    user = User.create!(

    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: Faker::Internet.password
    )
end



users = User.all

25.times do

    item = Item.create!(
      user: users.sample,
      name: Faker::Lorem.sentence
    )
    item.update_attribute(:created_at, rand(10.minutes .. 1.year).ago)

end

items = Item.all








puts "Seed Done."
puts "#{User.count} users created"
puts "#{Item.count} items created"
