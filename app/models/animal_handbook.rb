class AnimalHandbook < ActiveRecord::Base
  attr_accessible :name, :creature_ids, :creatures_attributes

  validates :name, presence: true

  has_many :animal_handbook_creatures
  has_many :creatures, through: :animal_handbook_creatures
  accepts_nested_attributes_for :creatures, allow_destroy: true, reject_if: proc { |obj| obj.blank? }
end
