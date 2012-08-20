class CreateCreaturePhotos < ActiveRecord::Migration
  def change
    create_table :creature_photos do |t|
      t.references :creature
      t.string :content_type
      t.string :file_name
      t.integer :file_size

      t.timestamps
    end
    add_index :creature_photos, :creature_id
  end
end
