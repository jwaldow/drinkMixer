class Ingredient < ActiveRecord::Base
  attr_accessible :brand, :type
  has_many :cabinet_items
end
