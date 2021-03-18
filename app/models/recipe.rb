class Recipe < ApplicationRecord
  has_and_belongs_to_many(:tags)
  validates :title, presence: true, uniqueness: true
end
