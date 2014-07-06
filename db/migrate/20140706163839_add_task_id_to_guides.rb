class AddTaskIdToGuides < ActiveRecord::Migration
  def change
  	add_column :guides, :task_id, :integer
  end
end
