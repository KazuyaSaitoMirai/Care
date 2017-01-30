class Listing < ActiveRecord::Base
  belongs_to :user
  has_many :photos



  #必須項目
  validates :birth_date, presence: true
  validates :name, presence: true
 


  geocoded_by :address
  after_validation :geocode, :if => :address_changed?
end