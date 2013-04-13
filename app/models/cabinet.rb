class Cabinet < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :cabinet_id, :brand, :type
  has_many :cabinet_items, :dependent => :destroy
end
