require 'rails_helper'

RSpec.describe 'Articles', type: :feature do
  before(:each) do
    @test_user = User.create(name: ' Mr David', email: 'david@test.com', password: '123456')
    @test_articles = Article.create(name: 'hello world i am a test', user: @test_user)
end

it 'should allow logged-in users' do
  sign_in @test_user
  visit articles_path
  expect(current_path).to eql(articles_path)
end

it 'should contain title Articles' do
  sign_in @test_user
  visit articles_path
  expect(page).to have_content('Articles')
end

it 'it should have a search button ' do
  sign_in @test_user
  visit articles_path
  expect(page).to have_content('Search')
end

it 'should have 1 visible Article' do
  sign_in @test_user
  visit articles_path

  expect(page).to have_content('hello world')
end
end