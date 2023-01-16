require 'rails_helper'

RSpec.describe Article, type: :model do
  context 'Article must have a name' do
     it 'should not be with valid without min name length ' do
        @test_user = User.create(name: ' Mr David1', email: 'david1@test.com', password: '123456'),
            @test_articles = Article.create(name: 'hello world', user: @test_user)
              expect(@test_articles).to_not be_valid
  end

  
  it 'should not be valid without a name' do
    @test1_articles = Article.create( user: @test_user)
   
    expect(@test1_articles).to_not be_valid
  end
end
end