class RemoveNumberofCarToUser < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :cars_count, :integer, default: 0
  end
end
