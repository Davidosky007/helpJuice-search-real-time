class SearchesController < ApplicationController
  def index
    @user_searches = Search.where(user: current_user).group(:query).order(count: :desc).count
  end
end
