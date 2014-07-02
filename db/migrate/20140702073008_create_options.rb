class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
    	t.string :body

    	#Foreign Key: Each Option belongs_to a Question
    	t.integer :option_id

    	t.timestamps
    end
  end
end
