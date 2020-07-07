class Vegetable < ApplicationRecord
  belongs_to :shop
  has_many :favorites, dependent: :destroy
  has_many :comments, dependent: :destroy

  mount_uploader :image, ImageUploader
end
