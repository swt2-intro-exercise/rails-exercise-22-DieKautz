require 'rails_helper'

describe "Show Paper page", type: :feature do

  it "should not error when visiting paper page" do
    @comp = FactoryBot.create :paper
    visit paper_path(@comp)

    expect(page).to have_text('COMPUTING MACHINERY AND INTELLIGENCE')
    expect(page).to have_text('Mind 49: 433-460')
  end

  it "should link to papers's edit page" do
    @comp = FactoryBot.create :paper
    visit paper_path(@comp)

    expect(page).to have_link 'Edit', href: edit_paper_path(@comp)
  end

  it "should link to papers's delete request" do
    @comp = FactoryBot.create :paper
    visit paper_path(@comp)

    expect(page).to have_css("a[data-turbo-method='delete'][href='#{paper_path(@comp)}']")
  end

  it "should display all authors full name" do
    @comp = FactoryBot.create :paper
    visit paper_path(@comp)

    expect(page).to have_text(@comp.authors[0].name)
  end


end