class List < ApplicationRecord
  has_one_attached :photo # many

  has_many :bookmarks
  has_many :movies, through: :bookmarks, dependent: :destroy

  validates :name, uniqueness: true, presence: true
end
