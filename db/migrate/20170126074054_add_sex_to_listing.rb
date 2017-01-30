class AddSexToListing < ActiveRecord::Migration
  def change
    add_column :listings, :sex, :string
  end
end
