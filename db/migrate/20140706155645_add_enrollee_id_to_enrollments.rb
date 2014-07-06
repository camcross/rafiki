class AddEnrolleeIdToEnrollments < ActiveRecord::Migration
  def change
  	add_column :enrollments, :enrollee_id, :integer
  end
end
