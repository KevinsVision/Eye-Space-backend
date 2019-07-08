class User < ApplicationRecord
  has_secure_password
  validates :username, uniqueness: true
  has_many :user_planets
  has_many :rename_planets
  # has_many :planets, through: [ :rename_planets]
  # has_many :planets, through: :rename_planets
end