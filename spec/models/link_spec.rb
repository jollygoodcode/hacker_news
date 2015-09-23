require "rails_helper"

RSpec.describe Link do
  context "validations" do
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:url)   }
  end

  describe "#upvote" do
    it "increments scores by 1" do
      link = build(:link, scores: 1)

      link.upvote

      expect(link.scores).to eq 2
    end
  end
end
