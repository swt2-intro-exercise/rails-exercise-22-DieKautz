require 'rails_helper'

describe "Edit paper page", type: :feature do
  it "no error should occour" do 
    @comp = FactoryBot.create :paper
    visit edit_paper_path(@comp)
  end
end
