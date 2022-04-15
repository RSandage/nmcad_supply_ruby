class Supply < ApplicationRecord
  belongs_to :user
  belongs_to :station
  validates :name, presence:true, length: {minimum: 2, maximum: 25}
  validates :amount, presence:true
end