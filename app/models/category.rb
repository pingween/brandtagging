class Category < ActiveRecord::Base
  belongs_to :brand
  attr_accessible :name
end
