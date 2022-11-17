class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :movie_id, uniqueness: { scope: :list_id, message: 'This movie is already in the list.' }

  validates :comment, length: { minimum: 6, message: 'The comment must be at least 6 characters.' }
end
