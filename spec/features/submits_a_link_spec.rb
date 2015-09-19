require "rails_helper"

RSpec.feature "Submits a link" do
  scenario "should see the page for the submitted link" do
    title = "deppbot"
    url = "https://www.deppbot.com"

    visit root_path
    click_on "submit"

    fill_in "Title", with: title
    fill_in "Url", with: url
    click_on "Submit"

    expect(page).to have_link title, href: url
  end
end
