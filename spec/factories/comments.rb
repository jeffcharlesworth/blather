FactoryGirl.define do
  factory :comment do
    body RandomData.random_paragraph
    user :user
    id 1
  end
end
