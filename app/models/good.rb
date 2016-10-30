class Good < ApplicationRecord
  scope :published, -> { where(is_hidden: false) }
  scope :recent, -> { order('created_at DESC')}
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
