class Station < ApplicationRecord
  # has_many :supplies
  has_many :users
  validates :name, presence: true, length: {minimum: 4, maximum: 15}
end