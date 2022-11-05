require 'rails_helper'

RSpec.describe Paper, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  it "should not validate without venue" do
    paper = Paper.new
    paper.title="TEST"
    paper.year=2022
    expect(paper).to_not be_valid
  end

  it "should not validate without year" do
    paper = Paper.new
    paper.title="TEST"
    paper.venue="Germany"
    expect(paper).to_not be_valid
  end

  it "should not validate without title" do
    paper = Paper.new
    paper.venue="Germany"
    paper.year=2022
    expect(paper).to_not be_valid
  end

  it "should not validate with non-integer year" do
    paper = Paper.new
    paper.title="TEST"
    paper.venue="Germany"
    paper.year="abc"
    expect(paper).to_not be_valid
  end
end
