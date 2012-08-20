class CreaturePhoto < ActiveRecord::Base
  belongs_to :creature
  attr_accessible :content_type, :file_name, :file_size
end
