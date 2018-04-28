class Order < ActiveRecord::Base

  belongs_to :user
  has_many :line_items

  monetize :total_cents, numericality: true

  validates :stripe_charge_id, presence: true
  

  def allItems 
  findProducts 
    prodName = []
     Order.first.line_items.each do |line|
      prodName << line.product
     end    
  end

private

  def findProducts
    prod = []
     Order.first.line_items.each do |line|
      prod << line.product
     end    
  end

end
