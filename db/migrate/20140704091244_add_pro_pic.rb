class AddProPicToUsers < ActiveRecord::Migration
  def change
  	add_attachment :users, :pro_pic
  end

  def self.up
    add_attachment :users, :pro_pic
  end

  def self.down
    remove_attachment :users, :pro_pic
  end
end
