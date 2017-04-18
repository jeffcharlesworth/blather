require 'rails_helper'

RSpec.describe Advertisement, type: :model do
  let(:advertisement) { Advertisement.create!(title: "New Advertisement Title", body: "New Advertisement Body", price: 3)}

  describe "attributes" do
    it "has price, title and body attributes" do
      expect(advertisement).to have_attributes(title: "New Advertisement Title", body: "New Advertisement Body", price: 3)
    end
  end
end
