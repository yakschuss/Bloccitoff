require 'faker'

users = User.all


 if users.count == 5

 else
     until users.count == 5
     User.create!(
     first_name: Faker::Name.first_name,
     last_name: Faker::Name.last_name,
     email: Faker::Internet.email,
     password: "password"
     )
    end

end



items = Item.all

    if items.count >= 25

    else
        until items.count == 25

        item = Item.create!(
          user: users.sample,
          name: Faker::Lorem.sentence
        )
        item.update_attribute(:created_at, rand(10.minutes .. 1.year).ago)
        end
    end










puts "Seed Done."
puts "#{User.count} users created"
puts "#{Item.count} items created"
