class Supply < ApplicationRecord
 
  # belongs_to :station
  validates :name, presence:true, length: {minimum: 2, maximum: 25}
  validates :amount, presence:true
  scope :low_stock, -> { where("amount <= 10")}
  scope :normal_stock, -> { where("amount > 10")}
end