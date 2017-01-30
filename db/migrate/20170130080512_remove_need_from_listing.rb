class RemoveNeedFromListing < ActiveRecord::Migration
  def change
    remove_column :listings, :need, :date
  end
end
