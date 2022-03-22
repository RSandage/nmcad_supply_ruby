class AddAmountToSupplies < ActiveRecord::Migration[6.1]
  def change
    # table | field | type
    add_column :supplies, :amount, :text
  end
end
