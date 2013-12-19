# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :artist do
    name "Harry Potter"
    email "hp@hogwarts.edu"
    birthplace "London"
    style_id 1
  end
end
