require 'rails_helper'

RSpec.describe 'Search page', type: :feature do
  before(:each) do
        @test_user = User.create(name: ' Mr David', email: 'david@test.com', password: '123456')
        @test_search = Search.create(query: "how to make money", user: @test_user)

  end

  it 'should allow logged-in users' do
    sign_in @test_user
    visit searches_path
    expect(current_path).to eq(searches_path)
  end

it 'Should display 1 search' do
  sign_in @test_user
  visit searches_path
  expect(page).to have_content("how to make money")
end
end