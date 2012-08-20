# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :creature_photo do
    creature nil
    content_type "MyString"
    file_name "MyString"
    file_size 1
  end
end
