require 'rails_helper'

describe "Show author page", type: :feature do

  it "should not error when visiting users page" do
    @alan = FactoryBot.create :author
    visit author_path(@alan)

    expect(page).to have_text('Alan Turing')
    expect(page).to have_text('http://wikipedia.de/alan_turing')
  end

  it "should link to author's edit page" do
    @alan = FactoryBot.create :author
    visit author_path(@alan)

    expect(page).to have_link 'Edit', href: edit_author_path(@alan)
  end


end