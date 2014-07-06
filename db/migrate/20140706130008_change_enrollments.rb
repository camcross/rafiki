class ChangeEnrollments < ActiveRecord::Migration
  def change
  end

  def self.up
    rename_column :enrollments, :module_id, :task_id
  end
end
