class AddColsToUser < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :email, :string, limit: 255, after: :existing_column_name
  end
end
