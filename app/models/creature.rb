class Creature < ActiveRecord::Base
  attr_accessible :characteristic, :place_of_origin, :popular_name, :scientific_name
end
