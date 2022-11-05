require 'rails_helper'

describe "Index author page", type: :feature do
  it "should display all authors in a table" do 
    visit authors_path

    expect(find('tr')).to have_text('Name')
    expect(find('tr')).to have_text('Homepage')
    expect(page).to have_link 'New', href: new_author_path
  end

  it "should display delete links" do
    visit authors_path
    expect(page).to have_css("a[data-turbo-method='delete'][href='#{author_path(1)}']")
  end
end
