class AddInitialHmPlanDateToUser < ActiveRecord::Migration
  def change
    add_column :listings, :initial_hm_plan_date, :date
    add_column :listings, :hm_plan_date, :date
    add_column :listings, :certification_date, :date
    add_column :listings, :need, :date
    add_column :listings, :period_of_the_certification, :date
    add_column :listings, :personal_needs, :string
    add_column :listings, :family_needs, :string
    add_column :listings, :service_category, :string
    add_column :listings, :comprehensive_aid_policy, :string
  end
end
