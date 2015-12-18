FactoryGirl.define do
  factory :example_user, class: User  do
    email "example@example.com"
    password "example123"
    password_confirmation "example123"
  end

  # factory :user do
  # email Faker::
  # password
  # password_confirmation
#  end
end
