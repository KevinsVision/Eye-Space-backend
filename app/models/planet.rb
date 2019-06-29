class Planet < ApplicationRecord
  has_many :user_planets
  has_many :users, through: :user_planets
end
