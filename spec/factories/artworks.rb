# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :artwork do
    name "Awesome Statue"
    artist_id 1
    date_of_creation "2013-12-19"
    date_put_on_market "2013-12-19"
    cost 1.5
    type_id 1
    sale_id 1
    available true
  end
end
