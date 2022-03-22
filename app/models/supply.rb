class Supply < ApplicationRecord
  validates :name, presence:true, length: {minimum: 2, maximum: 25}
  validates :amount, presence:true
end