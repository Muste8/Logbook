class RemoveTotalFromCustomers < ActiveRecord::Migration[7.1]
  def change
    remove_column :customers, :total, :string
  end
end
