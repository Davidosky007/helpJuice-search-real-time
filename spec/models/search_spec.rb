require 'rails_helper'

RSpec.describe Search, type: :model do
  before(:each) do
        @test_user = User.create(name: ' Mr David', email: 'david@test.com', password: '123456')
        @test_search = Search.create(query: "how to make money", user: @test_user)

  end

it 'should be valid with the right attributes' do
  expect(@test_search).to be_valid
end

it 'should not be valid without a query' do
        @test1_search = Search.create( user: @test_user)
  expect(@test1_search).to_not be_valid
end
end