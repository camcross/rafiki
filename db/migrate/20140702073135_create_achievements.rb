class CreateAchievements < ActiveRecord::Migration
  def change
    create_table :achievements do |t|
    	t.string :name

    	#Example of a description: "Completed Pythagorean Theorem Module"
    	t.string :description
    	t.integer :points

    	#Foreign Key: Each Achievement belongs_to a Badge
    	t.integer :badge_id

    	#Foreign Key: Each Achievement belongs_to a User
    	t.integer :user_id

    	t.timestamps
    end
  end
end
