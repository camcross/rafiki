class CreateGuides < ActiveRecord::Migration
  def change
    create_table :guides do |t|
    	t.string :body

    	#Foreign Key: Each Guide belongs_to a Module
    	t.integer :lesson_id

    	t.timestamps
    end
  end
end
