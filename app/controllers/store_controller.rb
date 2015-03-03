class StoreController < ApplicationController
  def index
  	@products = Product.order(:title)
  	@count = increment
  end
  def increment
  	session[:counter] ||= 0
  	session[:counter] += 1  	
  end
end