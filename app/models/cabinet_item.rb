class CabinetItem < ActiveRecord::Base
  attr_accessible :cabinet_id, :ingredient_id
  belongs_to :ingredient
  belongs_to :cabinet
end
