require 'rails_helper'

describe "Edit author page", type: :feature do
  it "no error should occour" do 
    @alan = FactoryBot.create :author
    visit edit_author_path(@alan)
  end
end
