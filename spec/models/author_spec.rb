require 'rails_helper'

RSpec.describe Author, type: :model do
  it "should return its full given name when invoking 'name'" do
    author = Author.new
    author.first_name="Max"
    author.last_name="Mustermann"
    expect(author.name).to eq("Max Mustermann")
  end

  it "should not validate without last name" do
    author = Author.new
    author.first_name="Max"
    expect(author).to_not be_valid
  end
end
