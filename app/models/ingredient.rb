class Ingredient < ActiveRecord::Base
  attr_accessible :brand, :ingredient_type
  belongs_to :cabinet
end
