class User < ApplicationRecord
  has_secure_password
  validates_presence_of :username
  validates_uniqueness_of :username

  has_many :favourites
  has_many :favourite_shoes, through: :favourites, source: :shoe
end
