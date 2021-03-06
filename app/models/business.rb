class Business < ActiveRecord::Base

  has_and_belongs_to_many :addresses, foreign_key: "business_id"
  has_and_belongs_to_many :listings, foreign_key: "business_id"

  validates_presence_of :name
  validates_presence_of :type

  def address
    self.addresses.first
  end

end
