class AddOfficeToUser < ActiveRecord::Migration
  def change
    add_column :users, :office_name, :string
    add_column :users, :office_address, :text
    add_column :users, :occupation, :string
  end
end
