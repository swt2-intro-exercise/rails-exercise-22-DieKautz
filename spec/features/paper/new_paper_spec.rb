require 'rails_helper'

describe "New paper page", type: :feature do
  it "should exist at 'new_paper_path' and render withour error" do
    # https://guides.rubyonrails.org/routing.html#path-and-url-helpers
    visit new_paper_path
  end

  it "should allow to input title, venue and year" do
    visit new_paper_path
    # these are the standard names given to inputs by the Rails form builder
    expect(page).to have_field('paper[title]')
    expect(page).to have_field('paper[venue]')
    expect(page).to have_field('paper[year]')
  end

  it "should save new user on submit" do
    before_count = Paper.count

    visit new_paper_path
    page.fill_in 'paper[title]', with: 'Test Paper'
    page.fill_in 'paper[venue]', with: 'Germany'
    page.fill_in 'paper[year]', with: 1999

    find('input[type="submit"]').click
    expect(Paper.count).not_to eq(before_count)
  end

  it "should show validation errors" do
    visit new_paper_path
    page.fill_in 'paper[title]', with: 'TEST'
    page.fill_in 'paper[year]', with: 1999

    find('input[type="submit"]').click

    expect(page).to have_text('error')

  end
end
