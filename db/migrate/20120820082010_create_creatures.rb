class CreateCreatures < ActiveRecord::Migration
  def change
    create_table :creatures do |t|
      t.string :popular_name
      t.string :scientific_name
      t.string :place_of_origin
      t.text :characteristic

      t.timestamps
    end
  end
end
