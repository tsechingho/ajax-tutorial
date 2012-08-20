class AnimalHandbook < ActiveRecord::Base
  attr_accessible :name, :creature_ids

  validates :name, presence: true

  has_many :animal_handbook_creatures
  has_many :creatures, through: :animal_handbook_creatures
end
