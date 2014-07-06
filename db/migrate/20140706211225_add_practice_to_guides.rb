class AddPracticeToGuides < ActiveRecord::Migration
  def change
  	 add_column :guides, :practice, :string
  end
end
