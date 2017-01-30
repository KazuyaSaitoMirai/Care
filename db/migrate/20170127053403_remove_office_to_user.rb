class RemoveOfficeToUser < ActiveRecord::Migration
  def change
    remove_column :users, :office, :string
  end
end
