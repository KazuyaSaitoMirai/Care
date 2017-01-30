class RemoveOfficeNameToUser < ActiveRecord::Migration
  def change
    remove_column :users, :office_name, :string
    remove_column :users, :office_address, :text
  end
end
