require 'rails_helper'

describe "Index paper page", type: :feature do
  it "should display all papers in a table" do 
    visit papers_path

    expect(find('tr')).to have_text('Title')
    expect(find('tr')).to have_text('Venue')
    expect(find('tr')).to have_text('Year')
    expect(page).to have_link 'New', href: new_paper_path
  end

  it "should filter papers by year" do
    p1 = FactoryBot.create(:paper, title: "50er paper", year: 1950)
    p2 = FactoryBot.create(:paper, title: "68er paper", year: 1968)

    visit papers_path(year: 1950)

    expect(page).to have_text(p1.title)
    expect(page).to_not have_text(p2.title)
  end
end
