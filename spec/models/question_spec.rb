require 'rails_helper'

RSpec.describe Question, type: :model do
  let(:post) {Post.create!(title: "New Post Title", body: "New Post Body")}
  let(:question) {Question.create!(title: "New Question Title", body: "New Question Body", resolved: false)}

  describe "attributes" do
    it "has title, resolution and body attributes" do
      expect(question).to have_attributes(title: "New Question Title", body: "New Question Body", resolved: false)
    end
  end
end
