require 'rails_helper'

RSpec.feature "User wants to create a new rad guy" do
  scenario "they will enter all the data to create a new rad guy" do
    guy_name = "Brrah"
    guy_title = "Speed Racer"
    guy_description = "Opening day, need the speed suit. Nobody is radder than this guy today."

    visit '/'
    click_on "Create new Rad Guy"
    fill_in "rad_guy_name", with: guy_name
    fill_in "rad_guy_title", with: guy_title
    fill_in "rad_guy_description", with: guy_description
    attach_file("Upload image", Rails.root + "spec/fixtures/images/rad_guy_1.png")

    click_on "Create Rad Guy"

    expect(page).to have_content guy_name
    expect(page).to have_content guy_title
    expect(page).to have_content guy_description
    
  end
end