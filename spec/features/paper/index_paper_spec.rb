require 'rails_helper'

describe "Index paper page", type: :feature do
  it "should display all papers in a table" do 
    visit papers_path

    expect(find('tr')).to have_text('Title')
    expect(find('tr')).to have_text('Venue')
    expect(find('tr')).to have_text('Year')
    expect(page).to have_link 'New', href: new_paper_path
  end
end
