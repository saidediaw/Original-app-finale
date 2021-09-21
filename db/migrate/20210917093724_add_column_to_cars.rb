class AddColumnToCars < ActiveRecord::Migration[6.1]
  def change
    add_column :cars, :comment, :string
    add_reference :cars, :user, foreign_key: true
  end
end
