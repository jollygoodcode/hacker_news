require "rails_helper"

RSpec.feature "Sees score of link" do
  scenario "should be displayed prior to link" do
    link = create(:link, scores: 1)

    visit root_path

    expect(page).to have_css "#link_#{link.id} [data-spec=score]", text: "1"
  end
end
