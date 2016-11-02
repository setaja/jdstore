class Cart < ApplicationRecord
  has_many :cart_items
  has_many :goods, through: :cart_items, source: :good

  def add_good_to_cart(good)
    ci = cart_items.build
    ci.good = good
    ci.quantity = 1
    ci.save
  end
end
