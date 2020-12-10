class Favourite < ApplicationRecord
  belongs_to :shoe
  belongs_to :user
  validates_uniqueness_of :shoe_id, scope: :user_id
end
