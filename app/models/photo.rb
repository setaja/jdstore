class Photo < ApplicationRecord::Base
  belongs_to :good
  mount_uploader :image, ImageUploader
end
