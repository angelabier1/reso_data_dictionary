class Place < ActiveRecord::Base
  has_and_belongs_to_many :schools, foreign_key: "place_id"
end
