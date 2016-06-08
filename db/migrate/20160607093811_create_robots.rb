class CreateRobots < ActiveRecord::Migration
  def change
    create_table :robots do |t|
      t.string :name
      t.string :namejp
      t.integer :required_level
      t.integer :price_ag
      t.integer :price_au
      t.integer :price_wsp
      t.string :robot_class
      t.integer :hp
      t.integer :hp_max
      t.integer :speed
      t.integer :speed_max
      t.string :slot
      t.string :slot1
      t.string :slot2
      t.string :slot3
      t.string :slot4
      t.string :ability
      t.text :note
      t.float :rating

      t.timestamps null: false
    end
  end
end
