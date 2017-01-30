class AddBirthDateToListing < ActiveRecord::Migration
  def change
    add_column :listings, :birth_date, :date
  end
end
