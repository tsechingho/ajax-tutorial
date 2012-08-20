class CreaturePhoto < ActiveRecord::Base
  attr_accessible :content_type, :file_name, :file_size, :creature_id

  belongs_to :creature
end
