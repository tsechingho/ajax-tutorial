class Creature < ActiveRecord::Base
  attr_accessible :characteristic, :place_of_origin, :popular_name, :scientific_name, :animal_handbook_ids, :photos_attributes

  validates :popular_name, presence: true

  has_many :animal_handbook_creatures
  has_many :animal_handbooks, through: :animal_handbook_creatures
  has_many :photos, class_name: 'CreaturePhoto'
  accepts_nested_attributes_for :photos, allow_destroy: true, reject_if: proc { |obj| obj.blank? }

  def name
    popular_name
  end
end
