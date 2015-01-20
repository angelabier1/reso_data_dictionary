class ListingOffice < ActiveRecord::Base

  belongs_to :listing
  belongs_to :office

  def address
    self.addresses.first
  end

end
