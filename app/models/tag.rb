class Tag < ActiveRecord::Base
  belongs_to :brand
  attr_accessible :text
end
