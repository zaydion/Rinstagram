class AddAvatarColumnsToUsers < ActiveRecord::Migration
  def change
  end

  def up
    add_attachment :users, :avatar
  end

  def down
    remove_attachment :users, :avatar
  end

end
