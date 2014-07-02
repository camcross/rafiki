class CreateEnrollments < ActiveRecord::Migration
  def change
    create_table :enrollments do |t|
    	t.string :status

    	#Foreign Key: Each Enrollment belongs_to a User
    	t.integer :user_id

    	#Foreign Key: Each Enrollment belongs_to a Module
    	t.integer :module_id

    	t.timestamps
    end
  end
end
