class Creature < ActiveRecord::Base
  attr_accessible :characteristic, :place_of_origin, :popular_name, :scientific_name, :animal_handbook_ids

  validates :popular_name, presence: true

  has_many :animal_handbook_creatures
  has_many :animal_handbooks, through: :animal_handbook_creatures
  has_many :photos, class_name: 'CreaturePhoto'

  def name
    popular_name
  end
end
