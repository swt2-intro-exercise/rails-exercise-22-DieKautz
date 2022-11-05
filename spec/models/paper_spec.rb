require 'rails_helper'

RSpec.describe Paper, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  it "should not validate without vanue" do
    paper = Paper.new
    paper.title="TEST"
    expect(paper).to_not be_valid
  end
end
