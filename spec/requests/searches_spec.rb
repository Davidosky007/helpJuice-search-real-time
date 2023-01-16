require 'rails_helper'

RSpec.describe 'Articles', type: :request do
  describe 'GET/searches' do
      before(:each) do
    @test_user = User.create(name: ' Mr David', email: 'david@test.com', password: '123456')
       @test_search = Search.create(query: "how to make money", user: @test_user)
    sign_in @test_user
    get '/searches'
end
it 'returns an http success response' do
  expect(response).to have_http_status(:success)
end
it 'renders the right template' do
  expect(response).to render_template('searches/index')
end
  end
end