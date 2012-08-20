# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :creature do
    popular_name "MyString"
    scientific_name "MyString"
    place_of_origin "MyString"
    characteristic "MyText"
  end
end
