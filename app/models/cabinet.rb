class Cabinet < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :cabinet_items, :dependent => :destroy
  belongs_to :user
  
end
