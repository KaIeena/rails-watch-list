class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks, dependent: :destroy
  has_many_attached :photos

  validates :name, uniqueness: true, presence: true
end
