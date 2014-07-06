class CreateEnrollments < ActiveRecord::Migration
  def change
    create_table :enrollments do |t|
    	t.string :status

    	#Foreign Key: Each Enrollment belongs_to a User
    	t.integer :user_id

    	#Foreign Key: Each Enrollment belongs_to a Task
    	t.integer :task_id

    	t.timestamps
    end
  end
end
