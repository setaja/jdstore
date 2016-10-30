class Good < ApplicationRecord
  validates :title, presence:true
  validates :description, presence:true
  validates :stuff_size, presence:true
  validates :stuff_price, numericality: {greater_than:0}
  validates :stuff_quantity, numericality: {greater_than:0}

  def publish!
    self.is_hidden = false
    self.save
  end

  def hide!
    self.is_hidden = true
    self.save
  end
end
