require 'file_size_validator'

class CreaturePhoto < ActiveRecord::Base
  attr_accessible :content_type, :file_name, :file_size, :creature_id, :source, :source_cache, :remove_source

  validates :source,
    file_size: {
      maximum: 3.megabytes.to_i
    }

  mount_uploader :source, CreaturePhotoUploader, mount_on: :file_name
  delegate :url, :current_path, :size, :filename, to: :source

  belongs_to :creature

  before_save :update_attributes_with_source

  protected

  def update_attributes_with_source
    if file_name.present? && file_name_changed?
      self.content_type = source.file.content_type
      self.file_size = source.file.size
    elsif file_name.blank?
      self.content_type = self.file_size = nil
    end
  end
end
