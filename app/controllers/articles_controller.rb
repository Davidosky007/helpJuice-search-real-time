class ArticlesController < ApplicationController
  include ArticlesHelper
  before_action :authenticate_user!

  def index
    query = params[:query]

    if query.present?
      @articles = Article.search_by_title(query)

      create_search(query, current_user.id)
    else
      @articles = Article.all
    end
  end

  private

  def create_search(query, user_id)
    return unless query.present? && query.length >= 3

    last_unconfirmed_search = Search.where(user_id: current_user.id, confirmed: false).last

    last_unconfirmed_search.update(confirmed: true) if last_unconfirmed_search && params[:confirmed].present?

    if last_unconfirmed_search && similar_strings?(query, last_unconfirmed_search.query)
      last_unconfirmed_search.update(query: query)
    else
      Search.create(query: query, user_id: current_user.id)
    end
  end
end
