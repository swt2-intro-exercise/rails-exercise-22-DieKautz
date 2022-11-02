require 'rails_helper'

RSpec.describe Author, type: :model do
  it "should return its full given name when invoking 'name'" do
    author = Author.new
    author.first_name="Max"
    author.last_name="Mustermann"
    expect(author.name).to eq("Max Mustermann")
  end
end
