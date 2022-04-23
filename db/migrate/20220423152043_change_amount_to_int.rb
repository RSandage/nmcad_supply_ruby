class ChangeAmountToInt < ActiveRecord::Migration[6.1]
  def change
    change_column :supplies, :amount, :int
  end
end
