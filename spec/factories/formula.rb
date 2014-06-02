FactoryGirl.define do

  factory :formula do
    name Faker::Company.bs
    formula Faker::Lorem.paragraph
    description Faker::Lorem.paragraph
    example Faker::Lorem.paragraph
  end

end