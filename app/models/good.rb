class Good < ApplicationRecord
  validates :title, presence:true
  vaiidates :description, presence:true
  validates :stuff_size, presence:true
  validates :stuff_price, numericality: {greater_than:0}
  vailsates :stuff_quantity, numericality: {greater_than:0}
end
