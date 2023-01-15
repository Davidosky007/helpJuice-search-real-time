class Article < ApplicationRecord
    belongs_to :user

  validates :name, presence: true, length: { minimum: 10, maximum: 1000 }
end
