class LineItem < ActiveRecord::Base

  belongs_to :order
  belongs_to :product

  monetize :item_price_cents, numericality: true
  monetize :total_price_cents, numericality: true

  # def allItems
  #   @order_items = findingItem(LineItem.all)
  #   @order_items
  # end



# private
  
#   def fidingItem(arr)
#     arr.each do |item|
#       item.order_id
#     end
#   end

end
