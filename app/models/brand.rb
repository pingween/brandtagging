class Brand < ActiveRecord::Base
  belongs_to :category
  attr_accessible :logo, :name, :visible, :category_id
  validates :name, :logo, :category_id, :presence => true
  validates :name, :uniqueness => true
  
  mount_uploader :logo, LogoUploader
  
  def self.random 
    ids = pluck(:id)
    find(ids[rand(ids.length)])
  end
  
end
