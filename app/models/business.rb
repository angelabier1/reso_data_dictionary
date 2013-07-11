class Business < ActiveRecord::Base

  has_and_belongs_to_many :addresses, foreign_key: "business_id"

  validates_presence_of :name
  validates_presence_of :type

end

class Brokerage < Business
end

class Builder < Business
end

class Franchise < Business
end
