require 'rails_helper'

describe "Edit paper page", type: :feature do
  it "no error should occour" do 
    @comp = FactoryBot.create :paper
    visit edit_paper_path(@comp)
  end

  it "should have a multi select for authors" do
    @comp = FactoryBot.create :paper
    visit edit_paper_path(@comp)

    expect(page).to have_css("select[multiple]")
  end
end
