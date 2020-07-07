class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :vegetable

  validates_uniqueness_of :vetetable_id, scope: :user_id
end
