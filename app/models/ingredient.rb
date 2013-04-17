class Ingredient < ActiveRecord::Base
  attr_accessible :brand, :ingredient_type
  has_many :cabinet_items
end
