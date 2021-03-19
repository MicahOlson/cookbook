class Tag < ApplicationRecord
  has_and_belongs_to_many(:recipes)
  validates :tag, presence: true, uniqueness: true

  scope :most_recipes, -> {(
    select("tags.id, tags.tag, count(recipes.id) as recipes_count")
    .joins(:recipes)
    .group("tags.id")
    .order("recipes_count DESC")
    .limit(5)
    )}
end
