class Article < ApplicationRecord
  include PgSearch::Model
  belongs_to :user
  pg_search_scope :search_by_title,
                  against: :name,
                  using: {
                    tsearch: { prefix: true, any_word: true },
                    trigram: {
                      only: [:name],
                      threshold: 0.25
                    }
                  }

  validates :name, presence: true, length: { minimum: 10, maximum: 1000 }
end
