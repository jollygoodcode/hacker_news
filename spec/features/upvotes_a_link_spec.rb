require "rails_helper"

RSpec.feature "Upvotes a link" do
  scenario "should see the page for the submitted link" do
    link = create(:link, scores: 1)

    visit root_path

    within "#link_#{link.id}" do
      click_on "+1"
    end

    expect(page).to have_css "#link_#{link.id} [data-spec=score]", text: "2"
  end
end
