require 'rails_helper'

describe "New author page", type: :feature do
  it "should display all authors in a table" do 
    visit authors_path

    expect(find('tr')).to have_text('Name')
    expect(find('tr')).to have_text('Homepage')
    expect(page).to have_link 'New', href: new_author_path
  end
end
