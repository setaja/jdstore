class Cart < ApplicationRecord
  has_many :cart_items
  has_many :goods, through: :cart_items, source: :good

  def add_good_to_cart(good)
    ci = cart_items.build
    ci.good = good
    ci.quantity = 1
    ci.save
  end

  def total_price
    sum = 0
    cart_items.each do |cart_item|
      sum += cart_item.quantity * cart_item.good.stuff_price
    end
    sum
  end

  
end
