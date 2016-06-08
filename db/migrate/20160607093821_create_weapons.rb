class CreateWeapons < ActiveRecord::Migration
  def change
    create_table :weapons do |t|
      t.string :name
      t.string :namejp
      t.integer :required_level
      t.integer :price_ag
      t.integer :price_au
      t.integer :price_wsp
      t.string :weapon_class
      t.string :weapon_type
      t.integer :damage
      t.integer :damage_max
      t.integer :hp
      t.integer :hp_max
      t.string :shooting_range
      t.string :rounds
      t.float :rps
      t.float :reload_sec
      t.float :whole_rounds_sec
      t.float :cycle_sec
      t.float :cycle_damage
      t.float :cycle_damage_max
      t.float :cycle_dps
      t.float :cycle_dps_max
      t.text :note
      t.float :rating

      t.timestamps null: false
    end
  end
end
