class Cabinet < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :ingredients
  belongs_to :user
end
