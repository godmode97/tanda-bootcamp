class Friendship < ActiveRecord::Migration[5.2]
  def change
	create_table :friendship do |t|
      t.text :friend_a, null: false
	t.text :friend_b, null: false

      t.timestamps
    end
  end
end
