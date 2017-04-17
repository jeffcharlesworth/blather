require 'rails_helper'

RSpec.describe Answer, type: :model do
  let(:post) {Post.create!(title: "New Post Title", body: "New Post Body")}
  let(:question) {Question.create!(title: "New Question Title", body: "New Question Body", resolved: false)}
  let(:answer) {Answer.create!(body: "New Answer")}

  describe "attributes" do
    it "has body attribute" do
      expect(answer).to have_attributes(body: "New Answer")
    end
  end
end
