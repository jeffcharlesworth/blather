FactoryGirl.define do
  factory :post do
    title RandomData.random_sentence
    body RandomData.random_paragraph
    topic
    rank 0.0
    user { FactoryGirl.create(:user) } 
  end
end
