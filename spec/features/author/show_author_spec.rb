require 'rails_helper'

describe "New author page", type: :feature do

  it "should not error when visiting users page" do
    @alan = FactoryBot.create :author
    visit author_path(@alan)

    expect(page).to have_text('Alan Turing')
    expect(page).to have_text('http://wikipedia.de/alan_turing')
  end

end