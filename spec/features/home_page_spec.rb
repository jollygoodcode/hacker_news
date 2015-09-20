require "rails_helper"

RSpec.feature "Home Page" do
  scenario "should see submitted links" do
    link = FactoryGirl.create(:link)

    visit root_path

    expect(page).to have_link link.title, href: link.url
  end
end
