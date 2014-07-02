class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
    	t.string :name

    	#Foreign Key: Each Course belongs_to a Subject
    	t.integer :subject_id

    	t.timestamps
    end
  end
end
