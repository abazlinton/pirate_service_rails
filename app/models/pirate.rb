class Pirate < ApplicationRecord
  has_many :pirates_raids
  belongs_to :ship
  has_many :raids, through: :pirates_raids
end
