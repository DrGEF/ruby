class CopyPriceToLineItem < ActiveRecord::Migration
  def change
  	Products.all.each do |i|
  		Cart.line_item[:product_id].price = i[:product_id].price
  	end
  end
end
