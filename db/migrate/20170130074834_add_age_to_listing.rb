class AddAgeToListing < ActiveRecord::Migration
  def change
    add_column :listings, :age, :integer
  end
end
