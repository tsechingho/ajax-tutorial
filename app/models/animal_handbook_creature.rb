class AnimalHandbookCreature < ActiveRecord::Base
  belongs_to :animal_handbook
  belongs_to :creature
  # attr_accessible :title, :body
end
