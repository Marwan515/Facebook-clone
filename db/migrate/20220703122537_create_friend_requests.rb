class CreateFriendRequests < ActiveRecord::Migration[7.0]
  def change
    create_table :friend_requests do |t|
      t.integer :friend_id
      t.references :user
      t.boolean :confirmed, :default => false
      #Ex:- :default =>''

      t.timestamps
    end
  end
end
