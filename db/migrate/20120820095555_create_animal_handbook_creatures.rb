class CreateAnimalHandbookCreatures < ActiveRecord::Migration
  def change
    create_table :animal_handbook_creatures do |t|
      t.references :animal_handbook
      t.references :creature

      t.timestamps
    end
    add_index :animal_handbook_creatures, :animal_handbook_id
    add_index :animal_handbook_creatures, :creature_id
  end
end
