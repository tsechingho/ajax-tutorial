class CreateAnimalHandbooks < ActiveRecord::Migration
  def change
    create_table :animal_handbooks do |t|
      t.string :name

      t.timestamps
    end
  end
end
