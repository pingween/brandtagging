class Category < ActiveRecord::Base
  has_many :brand
  attr_accessible :name
  
  validates :name, :presence => true
  validates :name, :uniqueness => true
end
