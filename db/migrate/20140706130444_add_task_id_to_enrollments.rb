class AddTaskIdToEnrollments < ActiveRecord::Migration
  def change
    add_column :enrollments, :task_id, :integer
  end
end
