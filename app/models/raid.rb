class Raid < ApplicationRecord
  has_many :pirates_raids
  has_many :pirates, through: :pirates_raids
end
