class HomeController < ApplicationController
  def index
    
    @brand = Brand.random
    
  end
end
