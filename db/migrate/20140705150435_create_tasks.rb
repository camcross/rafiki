class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
    	t.string :name
    	t.integer :points
    	t.text :description

    	#Foreign Key: Each task belongs_to a Course
    	t.integer :course_id

    	#Foreign Key: Each Task belongs_to an author
    	t.integer :author_id

    	#Foreign Key: Each Task belongs to many enrollees
    	t.integer :enrollee_id

    	t.timestamps
    end
  end
end
