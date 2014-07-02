class CreateBadges < ActiveRecord::Migration
  def change
    create_table :badges do |t|
    	t.string :icon
    	t.string :name

    	#Foreign Key: Each badge has_one course
    	t.integer :course_id

    	t.timestamps
    end
  end
end
