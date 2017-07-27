class AddUserIdToTwits < ActiveRecord::Migration
  def change
    add_column :twits, :user_id, :integer
  end
end
