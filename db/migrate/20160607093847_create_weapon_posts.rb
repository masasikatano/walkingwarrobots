class CreateWeaponPosts < ActiveRecord::Migration
  def change
    create_table :weapon_posts do |t|
      t.integer :weapon_id
      t.float :rating
      t.text :post

      t.timestamps null: false
    end
  end
end
