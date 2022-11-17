class Bookmark < ApplicationRecord
  validates :comment, length: { minimum: 6 }
  validates :movie_id, presence: true
  validates :list_id, presence: true
  validates :list, uniqueness: { scope: :movie }

  belongs_to :movie
  belongs_to :list
end
