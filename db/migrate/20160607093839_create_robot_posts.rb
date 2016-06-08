class CreateRobotPosts < ActiveRecord::Migration
  def change
    create_table :robot_posts do |t|
      t.integer :robot_id
      t.float :rating
      t.text :post

      t.timestamps null: false
    end
  end
end
