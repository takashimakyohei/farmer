class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :vegetable

  validates_uniqueness_of :vegetable_id, scope: :user_id
end
