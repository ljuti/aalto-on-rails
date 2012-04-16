# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :todo do
    title       "Take out the trash"
    completed   false
  end
end
