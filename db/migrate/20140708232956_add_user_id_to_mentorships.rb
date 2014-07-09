class AddUserIdToMentorships < ActiveRecord::Migration
  def change
  	add_column :mentorships, :user_id, :integer
  end
end
